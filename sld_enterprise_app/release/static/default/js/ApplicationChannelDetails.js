// hide/show administrators of a channel or application, respectively
$(function () {
	var $details = $('.js-details-more').hide(),
		$less = $('.js-link-showless').hide(),
		$all = $('.js-link-showall');

	$all.click(function (ev) {
		ev.preventDefault();
		$details.show();
		$all.hide();
		$less.show();
	});

	$less.click(function (ev) {
		ev.preventDefault();
		$details.hide();
		$less.hide();
		$all.show();
	});
});
