<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>							
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %>
<tr>
	<td class="table_header e s" nowrap="nowrap"><% {out.write(localizeISText("ProcessStatus.Name.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
	<td class="table_header e s" nowrap="nowrap"><% {out.write(localizeISText("ProcessStatus.Start.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
	<td class="table_header s" nowrap="nowrap"><% {out.write(localizeISText("ProcessStatus.Status.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<% while (loop("Processes","Process",null)) { %>
	<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((( ((Number) getObject("Process:ExtendedStatus")).doubleValue() ==((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((( ((Number) getObject("Process:ExtendedStatus")).doubleValue() ==((Number)(new Double(2))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",9,e);}if (_boolean_result) { %>
		<tr>
			<td class="table_detail e s"><% {String value = null;try{value=context.getFormattedValue(getObject("Process:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {11}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
			<td class="table_detail e s">
				<!-- The last execution time is when the persistent attribute status is set to running -->
				<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) ((( ((Number) getObject("Process:Status")).doubleValue() ==((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",14,e);}if (_boolean_result) { %>
					&nbsp;
				<% } else { %>
					<% {String value = null;try{value=context.getFormattedValue(getObject("Process:LastExecutionTime"),new Integer(DATE_SHORT),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {17}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> <% {String value = null;try{value=context.getFormattedValue(getObject("Process:LastExecutionTime"),new Integer(DATE_TIME),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {17}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>
				<% } %>
			</td>
			<td class="table_detail s">
				<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) ((( ((Number) getObject("Process:Status")).doubleValue() ==((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",21,e);}if (_boolean_result) { %>
					<% {out.write(localizeISText("ProcessStatus.Pending.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %>
				<% } else { %>
					<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Process:CurrentProcess:ProgressValue"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",24,e);}if (_boolean_result) { %>
						<% {out.write(localizeISText("ProcessStatus.XOfYItemsProcessed.table_detail",null,null,context.getFormattedValue(getObject("Process:CurrentProcess:ProgressValue"),null),context.getFormattedValue(getObject("Process:CurrentProcess:ProgressSize"),null),null,null,null,null,null,null,null,null));} %>
					<% } else {_boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Process:CurrentProcess:ProgressSize"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",26,e);}if (_boolean_result) { %>
						<% {out.write(localizeISText("ProcessStatus.ProcessingXItems.table_detail",null,null,context.getFormattedValue(getObject("Process:CurrentProcess:ProgressSize"),null),null,null,null,null,null,null,null,null,null));} %>
					<% } else { %>
						<% {out.write(localizeISText("ProcessStatus.Running.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %>
					<% }} %>
				<% } %>
			</td>
		</tr>
	<% } %>
<% } %>
<tr>
	<td colspan="6" align="right" class="s">
		<table border="0" cellspacing="4" cellpadding="0">
			<tr>
				<td class="button"><input class="button" type="submit" name="refresh" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ProcessStatus.Refresh.button",null)),null)%>"/></td>
			</tr>
		</table>
	</td>
</tr>
<% printFooter(out); %>