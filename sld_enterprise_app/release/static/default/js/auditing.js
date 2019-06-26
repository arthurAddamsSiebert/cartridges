$(function() {

	var ajaxRequestAuditReport;

	function showAuditingReportLoader() {
		$('.auditing-report-loading').show();
	}

	function loadAuditReportList(event) {
		event.preventDefault();

		var auditingReportURL = $('#auditing-report-url').val();
		var report = $('#audit_report_list_container');
		var form = $('.auditing_report_form');
		showAuditingReportLoader();

		ajaxRequestAuditReport = $.ajax({
			type: 'POST',
			data: form.serialize(),
			url: auditingReportURL,
			success: function(html) {
				report.replaceWith(html);
				$('.auditing-report-loading').hide();
				$('#audit_report_list_container').show();
				ajaxRequestAuditReport = null;
			},
			error: function(html) {
				report.replaceWith(html);
				$('.auditing-report-loading').hide();
				$('#audit_report_list_container').show();
			}
		});
	}

	function cancelAuditReportList(event) {
		event.preventDefault();
		$('.auditing-report-loading').hide();
		if (ajaxRequestAuditReport) {
			ajaxRequestAuditReport.abort();
		}
	}

	//load audit report list
	$('#auditing-report-url').on('select', loadAuditReportList);

	// cancel ajax request
	$('#auditreport-cancel-ajax').on('click', cancelAuditReportList);

});