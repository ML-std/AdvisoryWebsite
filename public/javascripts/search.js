

$(function () {

    var tags = ["Contact","Market Analysis","Account Advisor","General Consultancy","Structured Assessments"];

            tags = [...tags];
            $("#autoComplete").autocomplete({
                source: tags,
                minLength: 2
            });

        });




$(function() {


    $('.autocomplete').each(function() {
        $(this).find('input').keypress(function(e) {
            // Enter pressed?
            if(e.which === 10 || e.which === 13) {
                console.log('boris');
                this.form.submit();

            }
        });


    });
});
$(function () {
$("#searchButton").click(function () {
    var searchInput = $("#autoComplete").val();
    switch(searchInput) {
        case "Contact":
           alert('contatc go');
            break;

            break;
        default:
        // code block
    }
});
});





