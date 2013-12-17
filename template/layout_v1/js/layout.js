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
	/*tooltip js*/
		$("[rel='tooltip']").tooltip();
		$("[rel='tooltip-bottom']").tooltip({
			placement: 'bottom'
		});
	/*scroll js*/
		$('#description').perfectScrollbar({
		          wheelSpeed: 20,
		          wheelPropagation: false
		});
	/*UptoTop js*/
	// Show or hide the sticky footer button
		$(window).scroll(function() {
		if ($(this).scrollTop() > 200) {
			$('.go-top').fadeIn(200);
			} else {
				$('.go-top').fadeOut(200);
			}
		});
	// Animate the scroll to top
		$('.go-top').click(function(event) {
			event.preventDefault();
			$('html, body').animate({scrollTop: 0}, 300);
		})
	//date picker
		$(function() {
		    $('#datetimepicker4').datetimepicker({
		      	pickTime: false
		    });
		});
});
