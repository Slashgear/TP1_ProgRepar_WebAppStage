/**
 * Created by Antoine on 02/02/2015.
 */
$(document).ready(function() {
    moment().format();

    $('#myDatepicker').datepicker({
        allowPastDates: true,
        setDate: new Date(),
        momentConfig: {
            culture: 'fr' // change to specific culture
        }
    });
});