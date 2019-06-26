<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %>
<table border="0" cellpadding="5" cellspacing="0" width="100%" class="infobox w e s">
<tr>
	<td>
		<table border="0" cellpadding="0" cellspacing="0">
			<tr>
				<td class="infobox_title" nowrap="nowrap"><% {out.write(localizeISText("OrderCompletedHistoryStatus_52.SelectOrderStatusToDisplay.infobox_title",null,null,null,null,null,null,null,null,null,null,null,null));} %>:&nbsp;</td>
				<td align="left">
					<select name="status" size="1" class="inputfield_en">
						<option value="allcompleted" selected="selected"><% {out.write(localizeISText("OrderCompletedHistoryStatus_52.All.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
						<option value="completed" <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("status"))))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("status"),null).equals(context.getFormattedValue("completed",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",12,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("OrderCompletedHistoryStatus_52.Completed.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
						<option value="cancelled" <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("status"))))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("status"),null).equals(context.getFormattedValue("cancelled",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",13,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("OrderCompletedHistoryStatus_52.Cancelled.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
						<option value="rejected" <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("status"))))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("status"),null).equals(context.getFormattedValue("rejected",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",14,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("OrderCompletedHistoryStatus_52.Rejected.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
					</select>
				</td>
				<td>&nbsp;</td>
				<td>
					<table border="0" cellspacing="4" cellpadding="0">
						<tr>
							<td class="button">
								<input type="submit" name="find" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("OrderCompletedHistoryStatus_52.Apply.button",null)),null)%>" class="button"/>
							</td>
						</tr>
					</table>					
				</td>							
			</tr>
		</table>
	</td>
</tr>
</table><% printFooter(out); %>