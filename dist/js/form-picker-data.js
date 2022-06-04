/*FormPicker Init*/

$(document).ready(function() {
	"use strict";
	/* Daterange picker Init*/
	$('.input-daterange-datepicker').daterangepicker({
        locale: {
            format: 'YYYY-M-D'
        },
	  buttonClasses: ['btn', 'btn-sm'],
			applyClass: 'btn-info',
			cancelClass: 'btn-default'
	});
});