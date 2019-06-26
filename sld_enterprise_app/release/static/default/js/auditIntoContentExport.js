$(function(){
    $('input[name="SelectIncludeAuditIntoExportCheckbox"]').on('change', function(ev){
        ev.preventDefault();
		$('#SelectIncludeAuditIntoExport').val(($(this).attr('checked') == 'checked'));
		$('.js-startDateIncludeAuditIntoExport').toggle();
    });
});