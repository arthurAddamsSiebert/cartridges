<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %>
<script type="text/javascript">
	$(document).ready(function() {
		$('<tr class="nowrap"><td colspan="7" class="table_detail_actions"><a class="tableheader mass-action" data-action="select" href="<%=context.getFormattedValue("#",null)%>">show all</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a class="tableheader mass-action" data-action="deselect" href="<%=context.getFormattedValue("#",null)%>">hide all</a></td></tr>').insertAfter($('<%=context.getFormattedValue("#",null)%>statusForm table tr:first-child'));
		
		$(document).delegate('.mass-action', 'click', function(ev) {
			ev.preventDefault();
			var form = $(this).parents('form:eq(0)');
			form.find(':checkbox').prop('checked', $(this).data('action') == 'select' || false);
			form.submit();
		});
		
		$(document).delegate('.submit-trigger', 'click', function(ev) {
			$(this).parents('form:eq(0)').submit();
		});
	});
</script>

<table border="0" cellpadding="0" cellspacing="0" width="1">
	<tr>
		<td class="table_detail3" colspan="6">
			<% {out.write(localizeISText("ReviewSearchForm.FilterByStatus.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %>
		</td>
	</tr>
	<tr>
		<td colspan="6"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="0" height="4" alt="" border="0"/></td>
	</tr>
	<tr>
		<td class="input_checkbox">
			<input class="submit-trigger product_check" type="checkbox" id="StatusNew" name="StatusNew" value="NEW" <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("StatusNew")))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("StatusNew"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",31,e);}if (_boolean_result) { %>checked="checked"<% } %>>
		</td>
		<td class="label_checkbox_text">
			<label class="label label_checkbox_text label_light last-in-group" for="StatusNew">
				<% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("ReviewStatusNewCount")).doubleValue() >((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",35,e);}if (_boolean_result) { %> 
					<strong><% {String value = null;try{value=context.getFormattedValue(getObject("ReviewStatusNewCount"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {36}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></strong>
				<% } else { %>
					0
				<% } %>
				<% {out.write(localizeISText("ReviewSearchForm.New",null,null,null,null,null,null,null,null,null,null,null,null));} %>
			</label>
		</td>
		<td class="input_checkbox">
			<input class="submit-trigger product_check" type="checkbox" id="StatusApproved" name="StatusApproved" value="APPROVED" <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("StatusApproved")))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("StatusApproved"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",44,e);}if (_boolean_result) { %>checked="checked"<% } %>>
		</td>
		<td class="label_checkbox_text">
			<label class="label label_checkbox_text label_light last-in-group" for="StatusApproved">
			<% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("ReviewStatusApprovedCount")).doubleValue() >((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",48,e);}if (_boolean_result) { %> 
				<strong><% {String value = null;try{value=context.getFormattedValue(getObject("ReviewStatusApprovedCount"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {49}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></strong>
			<% } else { %>
				0
			<% } %>
			<% {out.write(localizeISText("ReviewSearchForm.Approved",null,null,null,null,null,null,null,null,null,null,null,null));} %>
			</label>
		</td>
		<td class="input_checkbox">
			<input class="submit-trigger product_check" type="checkbox" id="StatusRejected" name="StatusRejected" value="REJECTED" <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("StatusRejected")))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("StatusRejected"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",57,e);}if (_boolean_result) { %>checked="checked"<% } %> >
		</td>
		<td class="label_checkbox_text">
			<label class="label label_checkbox_text label_light last-in-group" for="StatusRejected">
				<% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("ReviewStatusRejectedCount")).doubleValue() >((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",61,e);}if (_boolean_result) { %> 
					<strong><% {String value = null;try{value=context.getFormattedValue(getObject("ReviewStatusRejectedCount"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {62}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></strong>
				<% } else { %>
					0
				<% } %>
				<% {out.write(localizeISText("ReviewSearchForm.Rejected",null,null,null,null,null,null,null,null,null,null,null,null));} %>
			</label>
		</td>
		<noscript>
			<td>
				<input type="submit" name="applyFilter" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ReviewSearchForm.Apply.button",null)),null)%>" class="button"/>
			</td>
		</noscript>
	</tr>
	<tr>
		<td colspan="6"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="0" height="8" alt="" border="0"/></td>
	</tr>
</table><% printFooter(out); %>