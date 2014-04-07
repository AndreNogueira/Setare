// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$(document).ready(function () {
    $('select#country').on('change', function () {
        var country_id = $(this).val();
        var city = $('select#city');
        $('select#city > option:gt(0)').remove();
        if (country_id != '') {
            $.get('city/' + country_id, function (data) {
                $('select#city').attr('disabled', false);
                $.each(data, function (i, value) {
                    city.append($('<option>').text(value.name).attr('value', value.id));
                });

            }, "json");

        }
        else {
            city.attr('disabled', true);
        }


    });

});