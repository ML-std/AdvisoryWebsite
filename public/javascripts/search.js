

$(function () {

    var tags = ["Contact Us","About Us","Services","Market Analysis","Account Advisor","General Consultancy","Structured Assessments", "Free consultation"];

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
            doAction("/About")
            break;
        case "Services" :
            doAction("/Services")
            break;
        case "Free consultation" :
            doAction("#Consultation");
            break;
        case "Market Analysis":
            doAction("#Analysis");
            break;
        case "Account Advisor":
            doAction("#Advisory");
            break;
        case "General Consultancy":
            doAction("/?#Consultancy");
            break;
        case "Structured Assessments":
            doAction("#Assessment");
            break;

        default:
       alert("No search found accordingly.");
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




