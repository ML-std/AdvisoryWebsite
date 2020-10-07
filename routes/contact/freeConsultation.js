module.exports = function(app)
{
    app.get("/freeConsultation", function(req, res) {
        res.render('contact');
    });
}