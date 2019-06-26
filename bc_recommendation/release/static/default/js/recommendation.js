/**
 * Sends Request to recommendation engine
 *
 * @param url
 * @param responseHandler
 * @param errorHandler
 */
function sendRequestToEngine(url, responseHandler, errorHandler) {
	if (!url) return;
	$.ajax({
		url: url,
		dataType: "json",
		success: responseHandler,
		error: errorHandler
	});
}
