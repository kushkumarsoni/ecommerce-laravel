var $ = jQuery.noConflict();

$(function () {
	"use strict";
	
	$.ajaxSetup({
		headers: {
			'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
		}
	});	
	
	$("#active-settings").addClass("active");

	$("#map_submit_form").on("click", function () {
        $("#GoogleMap_formId").submit();
    });
	
});

function showPerslyError() {
    $('.parsley-error-list').show();
}

jQuery('#GoogleMap_formId').parsley({
    listeners: {
        onFieldValidate: function (elem) {
            if (!$(elem).is(':visible')) {
                return true;
            }
            else {
                showPerslyError();
                return false;
            }
        },
        onFormSubmit: function (isFormValid, event) {
            if (isFormValid) {
                onGoogleMapUpdate();
                return false;
            }
        }
    }
});

function onGoogleMapUpdate() {
    $("#map_submit_form").text('loading...');
	var is_googlemap = $('#is_googlemap').is(':checked');
    $.ajax({
		type : 'POST',
		url: base_url + '/admin/GoogleMapUpdate',
		data: $('#GoogleMap_formId').serialize() + '&is_googlemap='+is_googlemap,
		success: function (response) {
            $("#map_submit_form").text('save');
            var msgType = response.msgType;
            var msg = response.msg;
			
            if (msgType == "success") {
				onSuccessMsg(msg);
            } else {
                onErrorMsg(msg);
            }
        }
    });
}
