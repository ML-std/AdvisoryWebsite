

$(function () {

    var tags = ["lol","lololol","lmao"];

            tags = [...tags];
            $(".autocomplete").autocomplete({
                source: tags,
                minLength: 2
            });

        });




$(function() {


    $('.search').each(function() {
        $(this).find('input').keypress(function(e) {
            // Enter pressed?
            if(e.which == 10 || e.which == 13) {
                this.form.submit();

            }
        });


    });
});





