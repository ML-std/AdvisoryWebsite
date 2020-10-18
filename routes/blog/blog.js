module.exports = function(app)
{
    app.get("/blog", function(req, res) {
        res.render('blog',{
                isSubmitted:false,
                isSubscribed:false
        });
    });
}