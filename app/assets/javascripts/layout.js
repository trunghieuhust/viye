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