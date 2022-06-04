

/************************* Deduction Management page ******************************/
// Hide both fields
$("#employeeData").show();
$("#designationData").hide();

$("input[type='radio']").click(function(){

    var applicableType = $("input[name='applicableType']:checked").val();

    if(applicableType == 1){
        // Hide the designation field and open employee field
        $("#designationData").hide();
        $("#employeeData").show();
    }else{
        // Hide the employee field
        $("#employeeData").hide();
        $("#designationData").show();
    }

});

/**************** Auto Search Employee Option ******************/

$('#searchEmployee').on('keyup', function () {
    var search = $(this).val();
    if (search.length > 0){
        searchEmployee(search);
    }else{
        $('.employee-area').html("");
    }
});


function searchEmployee(keyword) {
    $.ajax({
        type: "post",
        url: "functions/search-employees.php",
        data: {
            'search': keyword
        },
        success: function (response) {
            var data = JSON.parse(response);
            var option = '';
            $('.employee-area').html("");
            option += "<div class='scroller'  data-rail-visible='1' data-rail-color='yellow' data-handle-color='#a1b2bd'><ul>";
            if (data.length > 0) {
                for (var i = 0; i < data.length; i++) {
                    option += "<li class='search-item listitem' data-code='" + data[i].profile_id + "' data-title='" + data[i].FullName + "'>" +
                        "<a href='javascript:void(0)'>" +
                        "<div class='title-name'>" +
                        "<p class='category-title'>" + data[i].FullName + "</p>" +
                        "</div>" +
                        "</a>" +
                        "</li>";
                }
            }
            else {
                option += "<li class='search-item supplierlistitem'>" +
                    "<a href='javascript:void(0)'>" +
                    "<div class='title-name'>" +
                    "<p>No Data Found</p>" +
                    "</div>" +
                    "</a>" +
                    "</li>";
            }
            $('.employee-area').removeClass('hidden');
            $('.employee-area').html(option);
        },
        error: function (txt) {
            alert(txt.responseText());
        }
    });
} // End function


$(document).on('click', '.search-item', function () {
    $("#employeeID").val($(this).attr('data-code'));
    $("#searchEmployee").val($(this).attr('data-title'));
    $('.employee-area').addClass('hidden');
});
/**************** Auto Search Employee Option ******************/


/************************* Deduction Management page ******************************/


/*** SELECT2 **/
$('.select2-holiday').select2();
/*** SELECT2 **/

