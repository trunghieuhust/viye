// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .
//= require tinymce-jquery
//=require timelineJS/embed
//=require jquery.raty.js
$(document).ready(function(){
/*popover login & signup*/
$('button.pop-btn').popover({
		html: true,
		placement: 'bottom',
		trigger: 'manual',
	    title: function () {
	        return $(this).parent().children('.popover-head:first').html();
	    },
	    content: function () {
	        return $(this).parent().children('.popover-content:first').html();
	    }
	}).click(function() {
		$(this).parent().children('.popover').removeClass('hide');
		$('button.pop-btn').not(this).parent().children('.popover').addClass('hide');
		$('button.pop-btn').not(this).popover('hide');
		$(this).popover('toggle');
	});

$('html').click(function (e) {
        if (typeof $(e.target).data('original-title') == 'undefined' && !$(e.target).parents().is('.popover.in')) {
            $(".pop-btn").popover('hide');
        }
    });

});