<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- Working Area --><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/Modules", null, "3");} %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("listview","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewExcludedDeliveryDates_52-List",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null))))),
new TagParameter("text",localizeText(context.getFormattedValue("ExcludedDeliveryDates.text",null))),
new TagParameter("id","ExcludedDeliveryDatesList")}, 5); %><!-- Main Content --><% URLPipelineAction action324 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewExcludedDeliveryDates_52-List",null)))),null));String site324 = null;String serverGroup324 = null;String actionValue324 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewExcludedDeliveryDates_52-List",null)))),null);if (site324 == null){  site324 = action324.getDomain();  if (site324 == null)  {      site324 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup324 == null){  serverGroup324 = action324.getServerGroup();  if (serverGroup324 == null)  {      serverGroup324 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewExcludedDeliveryDates_52-List",null)))),null));out.print("\"");out.print(" name=\"");out.print("deleteForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue324, site324, serverGroup324,true)); %><table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" class="table_title aldi"><% {out.write(localizeISText("ExcludedDeliveryDates.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td class="table_title_description w e s"><% {out.write(localizeISText("ExcludedDeliveryDatesList_52.TheListShowsAllExcludedDeliveryDatesForThisChannel.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% out.print("</form>"); %><!-- EO Titel and Description -->
<!-- Main Content --><% URLPipelineAction action325 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewExcludedDeliveryDates_52-List",null)))),null));String site325 = null;String serverGroup325 = null;String actionValue325 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewExcludedDeliveryDates_52-List",null)))),null);if (site325 == null){  site325 = action325.getDomain();  if (site325 == null)  {      site325 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup325 == null){  serverGroup325 = action325.getServerGroup();  if (serverGroup325 == null)  {      serverGroup325 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewExcludedDeliveryDates_52-List",null)))),null));out.print("\"");out.print(" name=\"");out.print("search");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue325, site325, serverGroup325,true)); %><table border="0" cellpadding="0" cellspacing="0" width="100%"><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("ExcludedDeliveryDatesCalendar:CalendarDates") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",24,e);}if (_boolean_result) { %><tr>
<td>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w">
<tr>
<td class="table_header e s" nowrap="nowrap"><% {out.write(localizeISText("ExcludedDeliveryDates_52.ExcludedDeliveryDatesDate.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s" nowrap="nowrap"><% {out.write(localizeISText("ExcludedDeliveryDates_52.ExcludedDeliveryDatesName.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s" nowrap="nowrap"><% {out.write(localizeISText("ExcludedDeliveryDates_52.ExcludedDeliveryDatesRegion.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% while (loop("ExcludedDeliveryDatesCalendar:CalendarDates","ExcludedDeliveryDate",null)) { %><tr>
<td class="table_detail e s top"><% {String value = null;try{value=context.getFormattedValue(getObject("ExcludedDeliveryDate:Date"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {35}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
<td class="table_detail e s top" nowrap="nowrap"><% {String value = null;try{value=context.getFormattedValue(getObject("ExcludedDeliveryDate:Description"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {36}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
<td class="table_detail e s top" nowrap="nowrap"><% {String value = null;try{value=context.getFormattedValue(getObject("ExcludedDeliveryDate:Region"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {37}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
</tr><% } %></table>
<!-- EO Main Content -->
</td>
</tr><% } else { %><tr>
<td class="table_detail w e s"><% {out.write(localizeISText("ExcludedDeliveryDates_52.NoExcludedDeliveryDatesFound.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% } %></table><% out.print("</form>"); %><!-- EO Main Content -->
<!-- EO Working Area --><% printFooter(out); %>