

module.exports = function(app)
{
    app.get("/about", function(req, res) {
        res.render('about',{
            isSubmitted:false,
            isSubscribed:false
        });
    });
}