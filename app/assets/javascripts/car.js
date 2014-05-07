$(document).ready(function () {

    $('div#drop_location').hide();
    $('div#pick_location').hide();
    $('div#return_at_same').hide();

    $('div#pcity_name').text('Pick at: '+$('select#pick_city option:selected').text());
    $('div#dcity_name').text('Drop at: '+$('select#drop_city option:selected').text());

    $('input#return_at_same_location').on('change',function(){
        $('div#drop_location').slideToggle();
    });

    $('a.change_pick_location').on('click',function(){
        $('div#pick_location').slideToggle();
        $('div#return_at_same').slideToggle();
        $('div#drop_location').hide();
    });

    $('select#pick_country').on('change', function () {

        var pick_country_id = $(this).val();
        var pick_city = $('select#pick_city');

        $('select#pick_subsidiary').attr('disabled', true);
        $('select#pick_city > option:gt(0)').remove();
        $('select#pick_subsidiary > option:gt(0)').remove();
        $('select#drop_country').val('Please Select');
        $('select#drop_city > option:gt(0)').remove();
        $('select#drop_city').attr('disabled', true);
        $('select#drop_subsidiary > option:gt(0)').remove();

        if (pick_country_id != '') {
            fill_data('pick_city/' + pick_country_id, pick_city);
        } else {
            pick_city.attr('disabled', true);
        }
    });

    $('select#pick_city').on('change', function () {
        var pick_city_id = $(this).val();
        var pick_subsidiary = $('select#pick_subsidiary');

        $('select#pick_subsidiary > option:gt(0)').remove();
        $('select#drop_country').val('Please Select');
        $('select#drop_city > option:gt(0)').remove();
        $('select#drop_city').attr('disabled', true);
        $('select#drop_subsidiary > option:gt(0)').remove();
        $('select#drop_subsidiary').attr('disabled',true);
        $('select#pick_subsidiary > option:gt(0)').remove();

        if (pick_city_id != '') {
            fill_data('pick_subsidiary/' + pick_city_id, pick_subsidiary);
        } else {
            pick_subsidiary.attr('disabled', true);
        }
    });

    $('select#pick_subsidiary').on('change', function () {
        var pick_subsidiary_id = $(this).val();
        if(pick_subsidiary_id != ''){

            var drop_country =  $('select#drop_country');
            var pick_country =  $('select#pick_country');
            var subsidiary = $('select#pick_subsidiary');
            var drop_city = $('select#drop_city');
            var subsidiary_id = subsidiary.val();
            drop_country.val(pick_country.val());

            $('select#drop_subsidiary > option:gt(0)').remove();
            $('select#drop_subsidiary').attr('disabled',true);
            drop_country.attr('disabled', true);

            get_agency(subsidiary_id,function(agency_id){
                drop_city.empty().append("<option value='0'>Please Select</option>");
                fill_data('drop_city/country/'+pick_country.val()+'/agency/'+agency_id,drop_city);
            });
        }
    });

    $('select#drop_city').on('change', function () {

        var drop_city = $('select#drop_city');
        var drop_subsidiary = $('select#drop_subsidiary');
        var pick_subsidiary = $('select#pick_subsidiary');

        get_agency(pick_subsidiary.val(),function(agency_id){
            drop_subsidiary.empty().append("<option value='0'>Please Select</option>");
            fill_data('drop_subsidiary/city/'+drop_city.val()+'/agency/'+agency_id,drop_subsidiary);
        });
    });

    $('select#gps_quantity').on('change', function(){
       if($(this).val() > 0){
           $('input#gps').prop('checked', true);
       }else{
           $('input#gps').prop('checked', false);
       }
    });


    $('select#additional_driver_quantity').on('change', function(){
        if($(this).val() > 0){
            $('input#additional_driver').prop('checked', true);
        }else{
            $('input#additional_driver').prop('checked', false);
        }
    });


    $('select#baby_seat_quantity').on('change', function(){
        if($(this).val() > 0){
            $('input#baby_seat').prop('checked', true);
        }else{
            $('input#baby_seat').prop('checked', false);
        }
    });


    $('input#baby_seat').on('change', function(){
        if($(this).is(":checked") && $('select#baby_seat_quantity').val()==0 ){
            $('select#baby_seat_quantity').val(1);
        }else{
            $('select#baby_seat_quantity').val(0);
        }
    });

    $('input#additional_driver').on('change', function(){
        if($(this).is(":checked") && $('select#additional_driver_quantity').val()==0 ){
            $('select#additional_driver_quantity').val(1);
        }else{
            $('select#additional_driver_quantity').val(0);
        }
    });

    $('input#gps').on('change', function(){
        if($(this).is(":checked") && $('select#gps_quantity').val()==0 ){
            $('select#gps_quantity').val(1);
        }else{
            $('select#gps_quantity').val(0);
        }
    });

    $('#begin_timepicker').timepicker({
        showOn: 'button',
        button: $('.begin_timepicker_button_trigger'),
        timeSeparator: 'h'
    });

    $('#end_timepicker').timepicker({
        showOn: 'button',
        button: $('.end_timepicker_button_trigger'),
        timeSeparator: 'h'
    });


    function fill_data(url, html_select) {
        $.get(url, function (data) {
            html_select.attr('disabled', false);
            $.each(data, function (index, value) {
                console.log(value.name);
                var option = $('<option>').text(value.name).attr('value', value.id);
                html_select.append(option);
            });
        }, "json");
    }

    function get_agency(subsidiary_id,callback){
        var agency_id;
        $.get('get_agency/'+subsidiary_id.toString(), function (data) {
            $.each(data, function (index, value) {
                agency_id = value.id;
                if(typeof callback === "function") callback(agency_id);
            });
        }, "json");
    }
});
