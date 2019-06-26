<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %>
<% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/Modules", null, "3");} %>

<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("AuditItemBOs")))).booleanValue() && ((Boolean) (hasLoopElements("AuditItemBOs") ? Boolean.TRUE : Boolean.FALSE)).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",5,e);}if (_boolean_result) { %>
	<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (((((Boolean) ((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannel")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_EXPORT_AUDIT_REPORTS")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannel")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_EXPORT_AUDIT_REPORTS")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",6,e);}if (_boolean_result) { %>
		<% URLPipelineAction action299 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewAuditItemReport-Export",null)))),null));String site299 = null;String serverGroup299 = null;String actionValue299 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewAuditItemReport-Export",null)))),null);if (site299 == null){  site299 = action299.getDomain();  if (site299 == null)  {      site299 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup299 == null){  serverGroup299 = action299.getServerGroup();  if (serverGroup299 == null)  {      serverGroup299 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("POST");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewAuditItemReport-Export",null)))),null));out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue299, site299, serverGroup299,true)); %>
			<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
			 	<tr>
			 		<td>
						<table border="0" cellspacing="4" cellpadding="0">
							<tr>
								<td class="button">
									<input type="hidden" name="PageableID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("AuditItemBOs:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {14}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
									<input type="submit" name="export" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("AuditReportList.ExportToCSV.button",null)),null)%>" class="button"/>
								</td>
							</tr>
						</table>
					</td>
				</tr>
			</table>
		<% out.print("</form>"); %>
	<% } %>
	<table width="100%" border="0" cellspacing="0" cellpadding="0">
		<tr>
			<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("SortBy"))))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SortBy"),null).equals(context.getFormattedValue("UserRef",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) ((((context.getFormattedValue((context.getFormattedValue(getObject("SortDirection"),null).toUpperCase()),null).equals(context.getFormattedValue("ASC",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",26,e);}if (_boolean_result) { %>
				<td class="table_header w e s" nowrap="nowrap"><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewAuditItemReport-Sort",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SortBy",null),context.getFormattedValue("UserRef",null))).addURLParameter(context.getFormattedValue("SortDirection",null),context.getFormattedValue("desc",null))),null)%>" class="tableheader"><% {out.write(localizeISText("AuditReportList.UserID.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a></td>
			<% } else { %>
				<td class="table_header w e s" nowrap="nowrap"><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewAuditItemReport-Sort",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SortBy",null),context.getFormattedValue("UserRef",null))).addURLParameter(context.getFormattedValue("SortDirection",null),context.getFormattedValue("asc",null))),null)%>" class="tableheader"><% {out.write(localizeISText("AuditReportList.UserID.link1",null,null,null,null,null,null,null,null,null,null,null,null));} %></a></td>
			<% } %>
			<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("AuthorizedApplications"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",31,e);}if (_boolean_result) { %>
				<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("SortBy"))))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SortBy"),null).equals(context.getFormattedValue("ApplicationRef",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) ((((context.getFormattedValue((context.getFormattedValue(getObject("SortDirection"),null).toUpperCase()),null).equals(context.getFormattedValue("ASC",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",32,e);}if (_boolean_result) { %>
					<td class="table_header e s" nowrap="nowrap"><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewAuditItemReport-Sort",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SortBy",null),context.getFormattedValue("ApplicationRef",null))).addURLParameter(context.getFormattedValue("SortDirection",null),context.getFormattedValue("desc",null))),null)%>" class="tableheader"><% {out.write(localizeISText("AuditReportList.Context.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a></td>
				<% } else { %>
					<td class="table_header e s" nowrap="nowrap"><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewAuditItemReport-Sort",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SortBy",null),context.getFormattedValue("ApplicationRef",null))).addURLParameter(context.getFormattedValue("SortDirection",null),context.getFormattedValue("asc",null))),null)%>" class="tableheader"><% {out.write(localizeISText("AuditReportList.Context.link1",null,null,null,null,null,null,null,null,null,null,null,null));} %></a></td>
				<% } %>
			<% } %>
			<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("SortBy"))))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SortBy"),null).equals(context.getFormattedValue("EventDate",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) ((((context.getFormattedValue((context.getFormattedValue(getObject("SortDirection"),null).toUpperCase()),null).equals(context.getFormattedValue("ASC",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",38,e);}if (_boolean_result) { %>
				<td class="table_header e s" nowrap="nowrap"><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewAuditItemReport-Sort",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SortBy",null),context.getFormattedValue("EventDate",null))).addURLParameter(context.getFormattedValue("SortDirection",null),context.getFormattedValue("desc",null))),null)%>" class="tableheader"><% {out.write(localizeISText("AuditReportList.DateTime.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a></td>
			<% } else { %>
				<td class="table_header e s" nowrap="nowrap"><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewAuditItemReport-Sort",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SortBy",null),context.getFormattedValue("EventDate",null))).addURLParameter(context.getFormattedValue("SortDirection",null),context.getFormattedValue("asc",null))),null)%>" class="tableheader"><% {out.write(localizeISText("AuditReportList.DateTime.link1",null,null,null,null,null,null,null,null,null,null,null,null));} %></a></td>
			<% } %>
			<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("SortBy"))))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SortBy"),null).equals(context.getFormattedValue("ObjectType",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) ((((context.getFormattedValue((context.getFormattedValue(getObject("SortDirection"),null).toUpperCase()),null).equals(context.getFormattedValue("ASC",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",43,e);}if (_boolean_result) { %>
				<td class="table_header e s" nowrap="nowrap"><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewAuditItemReport-Sort",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SortBy",null),context.getFormattedValue("ObjectType",null))).addURLParameter(context.getFormattedValue("SortDirection",null),context.getFormattedValue("desc",null))),null)%>" class="tableheader"><% {out.write(localizeISText("AuditReportList.ObjectType.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a></td>
			<% } else { %>
				<td class="table_header e s" nowrap="nowrap"><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewAuditItemReport-Sort",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SortBy",null),context.getFormattedValue("ObjectType",null))).addURLParameter(context.getFormattedValue("SortDirection",null),context.getFormattedValue("asc",null))),null)%>" class="tableheader"><% {out.write(localizeISText("AuditReportList.ObjectType.link1",null,null,null,null,null,null,null,null,null,null,null,null));} %></a></td>
			<% } %>
			<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("SortBy"))))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SortBy"),null).equals(context.getFormattedValue("ActionType",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) ((((context.getFormattedValue((context.getFormattedValue(getObject("SortDirection"),null).toUpperCase()),null).equals(context.getFormattedValue("ASC",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",48,e);}if (_boolean_result) { %>
				<td class="table_header e s" nowrap="nowrap"><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewAuditItemReport-Sort",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SortBy",null),context.getFormattedValue("ActionType",null))).addURLParameter(context.getFormattedValue("SortDirection",null),context.getFormattedValue("desc",null))),null)%>" class="tableheader"><% {out.write(localizeISText("AuditReportList.ActionType.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a></td>
			<% } else { %>
				<td class="table_header e s" nowrap="nowrap"><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewAuditItemReport-Sort",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SortBy",null),context.getFormattedValue("ActionType",null))).addURLParameter(context.getFormattedValue("SortDirection",null),context.getFormattedValue("asc",null))),null)%>" class="tableheader"><% {out.write(localizeISText("AuditReportList.ActionType.link1",null,null,null,null,null,null,null,null,null,null,null,null));} %></a></td>
			<% } %>
			<td class="table_header e s left" nowrap="nowrap"><% {out.write(localizeISText("AuditReportList.Comment.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
			<td class="table_header e s left" nowrap="nowrap"><% {out.write(localizeISText("AuditReportList.Detail.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
		</tr>
		<% while (loop("AuditItemBOs","AuditItemBO",null)) { %>
			<% {Object temp_obj = (getObject("AuditItemBO:Extension(\"(Class)com.intershop.sellside.enterprise.capi.auditing.AuditItemBODisplayExtension\")")); getPipelineDictionary().put("AuditItemDisplayExtension", temp_obj);} %>		
			<tr>
				<td class="table_detail w e s" nowrap="nowrap">
					<% {String value = null;try{value=context.getFormattedValue(getObject("AuditItemDisplayExtension:UserID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {60}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>
				</td>
				<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("AuthorizedApplications"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",62,e);}if (_boolean_result) { %>
					<td class="table_detail e s" nowrap="nowrap">
						<% {String value = null;try{value=context.getFormattedValue(getObject("AuditItemDisplayExtension:ApplicationName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {64}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>
					</td>
				<% } %>
				<td class="table_detail e s" nowrap="nowrap">
					<% {String value = null;try{value=context.getFormattedValue(getObject("AuditItemDisplayExtension:EventDate"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {68}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>
					<% {String value = null;try{value=context.getFormattedValue(getObject("AuditItemDisplayExtension:EventDate"),new Integer(DATE_TIME),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {69}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>
				</td>
				<td class="table_detail e s" nowrap="nowrap">
					<% {String value = null;try{value=context.getFormattedValue(getObject("AuditItemDisplayExtension:ObjectType"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {72}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>
				</td>
				<td class="table_detail e s" nowrap="nowrap">
					<% {String value = null;try{value=context.getFormattedValue(getObject("AuditItemDisplayExtension:ActionType"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {75}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>
				</td>
				<td class="table_detail e s">
					<% {String value = null;try{value=context.getFormattedValue(getObject("AuditItemDisplayExtension:Comment"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {78}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>
				</td>
				<td class="table_detail e s" nowrap="nowrap">
					
					<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewAuditItemReportDetails-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("AuditItemID",null),context.getFormattedValue(getObject("AuditItemBO:ID"),null))).addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null))),null)%>" class="table_detail_link"><% {out.write(localizeISText("AuditReportList.ViewDetails.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
				</td>
			</tr>
		<% } %>
	</table>
	

	<div><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></div>
	<table width="100%">
		<tr>
			<td>
				<% URLPipelineAction action300 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewAuditItemReport-Dispatch",null)))),null));String site300 = null;String serverGroup300 = null;String actionValue300 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewAuditItemReport-Dispatch",null)))),null);if (site300 == null){  site300 = action300.getDomain();  if (site300 == null)  {      site300 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup300 == null){  serverGroup300 = action300.getServerGroup();  if (serverGroup300 == null)  {      serverGroup300 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewAuditItemReport-Dispatch",null)))),null));out.print("\"");out.print(" class=\"");out.print("auditing_report_form");out.print("\"");out.print(" name=\"");out.print(context.getFormattedValue(getObject("AuditReportForm:ID"),null));out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue300, site300, serverGroup300,true)); %>
				<% processOpenTag(response, pageContext, "flexpagingbar2", new TagParameter[] {
new TagParameter("pageable","AuditItemBOs"),
new TagParameter("variablepagesize","true")}, 94); %>
				<% out.print("</form>"); %>
			</td>
		</tr>
	</table>
	

<% } else {_boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("AuditItemBOs"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",101,e);}if (_boolean_result) { %>
	<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
		<tr>
			<td class="table_detail" width="100%">
				<% {out.write(localizeISText("AuditReportList.NoReportsFoundForYourSearchCheckYourParameterSetti.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %>
			</td>
		</tr>
	</table>
			
<% } else { %>
	<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
		<tr>
			<td class="table_detail" width="100%">
				<% {out.write(localizeISText("AuditReportList.SelectFromTheFiltersAboveAndClickGenerateReportToC.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %>
			</td>
		</tr>
	</table>
<% }} %>

			<% printFooter(out); %>