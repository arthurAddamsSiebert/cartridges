<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("text1",context.getFormattedValue(" - ",null) + context.getFormattedValue(localizeText(context.getFormattedValue("RegionExcludedDeliveryDates_52.Attributes.text1",null)),null)),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewExcludedDeliveryDates_52-list",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("RegionID",null),context.getFormattedValue(getObject("Region:Id"),null))))),
new TagParameter("id",getObject("Region:Id")),
new TagParameter("text",getObject("Region:DisplayName"))}, 1); %>
    
<% {Object temp_obj = ("ExcludedDeliveryDates"); getPipelineDictionary().put("SelectedTab", temp_obj);} %>
<% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/RegionTabs_52", null, "7");} %>

<!-- Main Content -->
<% URLPipelineAction action204 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewExcludedDeliveryDates_52-List",null)))),null));String site204 = null;String serverGroup204 = null;String actionValue204 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewExcludedDeliveryDates_52-List",null)))),null);if (site204 == null){  site204 = action204.getDomain();  if (site204 == null)  {      site204 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup204 == null){  serverGroup204 = action204.getServerGroup();  if (serverGroup204 == null)  {      serverGroup204 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewExcludedDeliveryDates_52-List",null)))),null));out.print("\"");out.print(" name=\"");out.print("deleteForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue204, site204, serverGroup204,true)); %>
	<table border="0" cellpadding="0" cellspacing="0" width="100%">
		<tr>
			<td width="100%" class="table_title aldi"><% {out.write(localizeISText("ExcludedDeliveryDates.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
		</tr>
		<tr>
			<td class="table_title_description w e s">
				<% {out.write(localizeISText("ExcludedDeliveryDatesList_52.TheListShowsAllExcludedDeliveryDatesForThisChannel.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %>
			</td>
		</tr>
	</table>
<% out.print("</form>"); %>
<!-- EO Titel and Description -->
<!-- Main Content -->
<% URLPipelineAction action205 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewExcludedDeliveryDates_52-List",null)))),null));String site205 = null;String serverGroup205 = null;String actionValue205 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewExcludedDeliveryDates_52-List",null)))),null);if (site205 == null){  site205 = action205.getDomain();  if (site205 == null)  {      site205 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup205 == null){  serverGroup205 = action205.getServerGroup();  if (serverGroup205 == null)  {      serverGroup205 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewExcludedDeliveryDates_52-List",null)))),null));out.print("\"");out.print(" name=\"");out.print("search");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue205, site205, serverGroup205,true)); %>
	<table border="0" cellpadding="0" cellspacing="0" width="100%">
		<% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("ExcludedDeliveryDatesCalendar:getCalendarDates(Region:Id)") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",26,e);}if (_boolean_result) { %>
			<tr>
				<td>
					<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w">
						<tr>
							<td class="table_header e s" nowrap="nowrap"><% {out.write(localizeISText("ExcludedDeliveryDates_52.ExcludedDeliveryDatesDate.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
							<td class="table_header e s" nowrap="nowrap"><% {out.write(localizeISText("ExcludedDeliveryDates_52.ExcludedDeliveryDatesName.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
						</tr>
						<% while (loop("ExcludedDeliveryDatesCalendar:getCalendarDates(Region:Id)","ExcludedDeliveryDate",null)) { %>
							<tr>
								<td class="table_detail e s top"><% {String value = null;try{value=context.getFormattedValue(getObject("ExcludedDeliveryDate:Date"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {36}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
								<td class="table_detail e s top" nowrap="nowrap"><% {String value = null;try{value=context.getFormattedValue(getObject("ExcludedDeliveryDate:Description"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {37}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
							</tr>
						<% } %>
					</table>
					<!-- EO Main Content -->
				</td>
			</tr>
		<% } else { %>
			<tr>
				<td class="table_detail w e s"><% {out.write(localizeISText("ExcludedDeliveryDates_52.NoExcludedDeliveryDatesFound.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
			</tr>
		<% } %>
	</table>
<% out.print("</form>"); %><% printFooter(out); %>