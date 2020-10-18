var createError = require('http-errors');
var express = require('express');
var path = require('path');
var cookieParser = require('cookie-parser');
var logger = require('morgan');
var mysql = require('mysql')
var connection = mysql.createConnection({
  host: 'localhost',
  user: 'root',
  password: '',
  database: 'advisory'
})



var indexRouter = require('./routes/index.js');
var app = express();
require("./routes/about/about")(app);
require("./routes/contact/contact")(app);
require("./routes/services/services")(app);
require("./routes/blog/blog")(app);
require("./routes/contact/consultation")(app);


// view engine setup
app.use(express.static(__dirname + '/public'));
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'ejs');

app.use(logger('dev'));
app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(cookieParser());
app.use(express.static(path.join(__dirname, 'public')));

app.use('/',indexRouter );
app.post("/consultation", function(req, res) {
  console.log('lol');
  let name = "'" + req.body.name + "'";
  let email = "'" + req.body.email  + "'";
  let subject = "'" + req.body.subject + "'";
  let message = "'" + req.body.message + "'";
  let pageName = "" + req.body.pageName;
  console.log(pageName);
  let values = name + "," + email +"," +subject + "," + message;
  console.log(values);

  connection.query('INSERT INTO `advisory`.`contact` (`Client_Name`, `Client_Mail`, `Subject`, `Message`) VALUES ('+values + ');', function (err, rows, fields) {
    if (err) {
      console.log("gg")
      res.send(JSON.stringify(err), {
        'Content-Type': 'application/json'
      }, 404);
    }
    else{
      res.render(pageName,{
        isSubmitted : true,
        isSubscribed : false
    });
  }});


});

app.post("/subscription", function (request,response) {
  let subscriptionEmail = "'" + request.body.subEmail + "'";
  console.log(subscriptionEmail);
  let pageName = "" + request.body.subsPage;
  console.log(pageName)
  connection.query('INSERT INTO `advisory`.`subscription` (`Email`) VALUES ('+ subscriptionEmail + ');', function (err, rows, fields) {
    if (err) {
      console.log("gg")
      response.send(JSON.stringify(err), {
        'Content-Type': 'application/json'
      }, 404);
    }
    else {
      response.render(pageName,{
        isSubmitted : false,
        isSubscribed : true

      });
    }
  });


});

// catch 404 and forward to error handler
app.use(function(req, res, next) {
  next(createError(404));
});
app.disable('etag');
// error handler
app.use(function(err, req, res, next) {
  // set locals, only providing error in development
  res.locals.message = err.message;
  res.locals.error = req.app.get('env') === 'development' ? err : {};

  // render the error page
  res.status(err.status || 500);
  res.render('error');
});

module.exports = app;

