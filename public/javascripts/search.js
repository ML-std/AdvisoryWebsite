

$(function () {

    var tags = ["Contact Us","Market Analysis","Account Advisor","General Consultancy","Structured Assessments"];

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
    let searchInput = $("#autoComplete").val();
    switch(searchInput) {
        case "Contact Us":
          doAction("/Contact");
            break;
        case "about Us" :
            break;
        case "Services" :
            break;
        case "Free Consulting" :
            doAction("#Consulting");
            break;
        case "Market Analysis":
            break;
        case "Account Advisor":
            break;
        case "General Consultancy":
            break;
        case "Structured Assessments":
            break;

        default:
       alert("No search found accordingly.")
    }
});
});

function doAction(goTo)
{
    console.log(goTo);
    let form=document.getElementById('searchForm');
    form.target='_self';
    form.action=goTo;



}




