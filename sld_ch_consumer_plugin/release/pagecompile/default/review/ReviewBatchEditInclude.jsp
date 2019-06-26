<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %>

<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("BatchEditTarget"),null).equals(context.getFormattedValue("all",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",4,e);}if (_boolean_result) { %>
	<% {Object temp_obj = (localizeText(context.getFormattedValue("ReviewBatchEditInclude.EditAllRatingsAndReviews.value",null))); getPipelineDictionary().put("BreadcrumbText", temp_obj);} %>
<% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("BatchEditTarget"),null).equals(context.getFormattedValue("selected",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",6,e);}if (_boolean_result) { %>
	<% {Object temp_obj = (localizeText(context.getFormattedValue("ReviewBatchEditInclude.EditSelectedRatingsAndReviews.value",null))); getPipelineDictionary().put("BreadcrumbText", temp_obj);} %>
<% }} %>

<% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("wizard","true"),
new TagParameter("id",getObject("Review:ID")),
new TagParameter("text",getObject("BreadcrumbText"))}, 10); %>

<table border="0" cellpadding="0" cellspacing="0" width="100%">
	<tr>
		<td colspan="2" width="100%" class="table_title aldi"><% {out.write(localizeISText("ReviewBatchEditInclude.EditingAllRatingsAndReviews.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
	</tr>
	
	<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("NoApprovalActionSelected"))))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("NoApprovalActionSelected"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",17,e);}if (_boolean_result) { %>
		<tr>
			<td colspan="2">
				<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
					<tr valign="top">
						<td class="error_icon top e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
						<td class="error top" width="100%">
							<% {out.write(localizeISText("ReviewBatchEditInclude.HaveNotSelectedAction.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
					</tr>
				</table>
			</td>
		</tr>
	<% } %>
	
	<tr>
		<td colspan="2" class="table_title_description w e s">
			<% {out.write(localizeISText("ReviewBatchEditInclude.SelectActionForAllRatingsAndReviews.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %>
		</td>
	</tr>
</table>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
	<tr>
		<td class="center w e s" width="70"><input type="radio" name="approve" value="approve"></td>
		<td class="table_detail e s"><% {out.write(localizeISText("ReviewBatchEditInclude.ApproveSelectedRatingsAndReviews.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
	</tr>
	<tr>
		<td class="center w e s" width="70"><input type="radio" name="approve" value="reject"></td>
		<td class="table_detail e s"><% {out.write(localizeISText("ReviewBatchEditInclude.RejectSelectedRatingsAndReviews.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
	</tr>
	<tr>
		<table cellspacing="4" cellpadding="0" border="0" class="w e s" width="100%">
			<tr>
				<td colspan="2" align="right">
					<input class="button" type="submit" name="applyBatchEdit" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ReviewBatchEditInclude.Apply.button",null)),null)%>"/>
					<input class="button" type="submit" name="cancelBatchEdit" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ReviewBatchEditInclude.Cancel.button",null)),null)%>"/>
				</td>
			</tr>
		</table>
	</tr>
</table>
<input type="hidden" name="PageableID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("PageableID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {57}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="BatchEditTarget" value="<% {String value = null;try{value=context.getFormattedValue(getObject("BatchEditTarget"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {58}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="LocaleId" value="<% {String value = null;try{value=context.getFormattedValue(getObject("LocaleId"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {59}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>">
<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("StatusNew"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",60,e);}if (_boolean_result) { %><input type="hidden" name="StatusNew" value="<% {String value = null;try{value=context.getFormattedValue(getObject("StatusNew"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {60}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% } %>
<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("StatusApproved"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",61,e);}if (_boolean_result) { %><input type="hidden" name="StatusApproved" value="<% {String value = null;try{value=context.getFormattedValue(getObject("StatusApproved"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {61}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% } %>
<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("StatusRejected"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",62,e);}if (_boolean_result) { %><input type="hidden" name="StatusRejected" value="<% {String value = null;try{value=context.getFormattedValue(getObject("StatusRejected"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {62}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% } %><% printFooter(out); %>