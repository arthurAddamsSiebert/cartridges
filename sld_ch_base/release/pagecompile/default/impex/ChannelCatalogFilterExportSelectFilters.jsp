<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- Working Area --><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelCatalogFilterExport-Back",null))))),
new TagParameter("wizard","true"),
new TagParameter("text",localizeText(context.getFormattedValue("ChannelCatalogFilterExportSelectFilters.CatalogViewExportStep1SelectCatalogViews.text",null)))}, 3); %><table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" class="table_title aldi"><% {out.write(localizeISText("ChannelCatalogFilterExportSelectFilters.CatalogViewExportSelectCatalogViews.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr> 
<tr>
<td class="table_title_description w e s"><% {out.write(localizeISText("ChannelCatalogFilterExportSelectFilters.Step1Of2NextStepConfigureExport.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<!-- Main Content --><% URLPipelineAction action230 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelCatalogFilterExport-Dispatch",null)))),null));String site230 = null;String serverGroup230 = null;String actionValue230 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelCatalogFilterExport-Dispatch",null)))),null);if (site230 == null){  site230 = action230.getDomain();  if (site230 == null)  {      site230 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup230 == null){  serverGroup230 = action230.getServerGroup();  if (serverGroup230 == null)  {      serverGroup230 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelCatalogFilterExport-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("CatalogFilterListForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue230, site230, serverGroup230,true)); %><table border="0" cellpadding="0" cellspacing="0" width="100%" ><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("CatalogFilters") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",16,e);}if (_boolean_result) { %><tr>
<td>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="table_header w e s" width="80">
<div id="A">
<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
<tr>
<td nowrap="nowrap">
<a href="javascript:selectAll('CatalogFilterListForm','SelectedObjectUUID','A','B');" class="tableheader"><% {out.write(localizeISText("ChannelCatalogFilterExportSelectFilters.SelectAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
</td>
</tr>
</table>
</div>
<div id="B" style="display:none">
<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
<tr>
<td nowrap="nowrap">
<a href="javascript:selectAll('CatalogFilterListForm','SelectedObjectUUID','A','B');" class="tableheader"><% {out.write(localizeISText("ChannelCatalogFilterExportSelectFilters.ClearAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
</td>
</tr>
</table>
</div>
</td>
<td class="table_header e s" nowrap="nowrap"><% {out.write(localizeISText("ChannelCatalogFilterExportSelectFilters.Name.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td> 
<td class="table_header e s" nowrap="nowrap"><% {out.write(localizeISText("ChannelCatalogFilterExportSelectFilters.Description.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s" nowrap="nowrap"><% {out.write(localizeISText("ChannelCatalogFilterExportSelectFilters.Status.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s" nowrap="nowrap"><% {out.write(localizeISText("ChannelCatalogFilterExportSelectFilters.PublishingInterval.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s" nowrap="nowrap"><% {out.write(localizeISText("ChannelCatalogFilterExportSelectFilters.Published.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% while (loop("CatalogFilters","CF",null)) { %><tr>
<td class="w e s center">
<input type="hidden" name="ObjectUUID" value="<%=context.getFormattedValue(getObject("CF:UUID"),null)%>"/>
<input type="checkbox" name="SelectedObjectUUID" value="<%=context.getFormattedValue(getObject("CF:UUID"),null)%>"
<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Clipboard:contains(CF:UUID)"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",52,e);}if (_boolean_result) { %>checked="checked"<% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("CF:State")).doubleValue() ==((Number)(new Double(4))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",53,e);}if (_boolean_result) { %>disabled="disabled"<% } %>
/>
</td>
<td class="table_detail e s top"><% {String value = null;try{value=context.getFormattedValue(getObject("CF:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {56}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td> 
<td class="table_detail e s"><% {String value = null;try{value=context.getFormattedValue(getObject("CF:Description"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {57}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
<td class="table_detail e s top"><% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("CF:State")).doubleValue() ==((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",59,e);}if (_boolean_result) { %><% {out.write(localizeISText("ChannelCatalogFilterExportSelectFilters.Online.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("CF:State")).doubleValue() ==((Number)(new Double(2))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",61,e);}if (_boolean_result) { %><% {out.write(localizeISText("ChannelCatalogFilterExportSelectFilters.Offline.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("CF:State")).doubleValue() ==((Number)(new Double(4))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",63,e);}if (_boolean_result) { %><% {out.write(localizeISText("ChannelCatalogFilterExportSelectFilters.Publishing.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else { %><% {out.write(localizeISText("ChannelCatalogFilterExportSelectFilters.Unknown.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><% }}} %></td>
<td class="table_detail e s top"><% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("CF:UpdateInterval")).doubleValue() ==((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",70,e);}if (_boolean_result) { %><% {out.write(localizeISText("ChannelCatalogFilterExportSelectFilters.Manual.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((( ((Number) getObject("CF:UpdateInterval")).doubleValue() <((Number)(((new Double( ((Number) new Double(1000)).doubleValue() *((Number) new Double(60)).doubleValue()))))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",72,e);}if (_boolean_result) { %><% {out.write(localizeISText("ChannelCatalogFilterExportSelectFilters.EveryXMinutes.table_detail",null,null,context.getFormattedValue(((new Double( ((Number) getObject("CF:UpdateInterval")).doubleValue() / ((Number) new Double(1000)).doubleValue() /((Number) new Double(60)).doubleValue()))),null),null,null,null,null,null,null,null,null,null));} %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("CF:UpdateInterval")).doubleValue() ==((Number)(((new Double( ((Number) new Double(1000)).doubleValue() * ((Number) new Double(60)).doubleValue() *((Number) new Double(60)).doubleValue()))))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",74,e);}if (_boolean_result) { %><% {out.write(localizeISText("ChannelCatalogFilterExportSelectFilters.EveryHour.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((( ((Number) getObject("CF:UpdateInterval")).doubleValue() >((Number)(((new Double( ((Number) new Double(1000)).doubleValue() * ((Number) new Double(60)).doubleValue() *((Number) new Double(60)).doubleValue()))))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) ((( ((Number) getObject("CF:UpdateInterval")).doubleValue() <((Number)(((new Double( ((Number) new Double(1000)).doubleValue() * ((Number) new Double(60)).doubleValue() * ((Number) new Double(60)).doubleValue() *((Number) new Double(24)).doubleValue()))))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",76,e);}if (_boolean_result) { %><% {out.write(localizeISText("ChannelCatalogFilterExportSelectFilters.EveryXHours.table_detail",null,null,context.getFormattedValue(context.getFormattedValue((new Double( ((Number) getObject("CF:UpdateInterval")).doubleValue() / ((Number) new Double(1000)).doubleValue() / ((Number) new Double(60)).doubleValue() /((Number) new Double(60)).doubleValue())),"0"),null),null,null,null,null,null,null,null,null,null));} %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("CF:UpdateInterval")).doubleValue() ==((Number)(((new Double( ((Number) new Double(1000)).doubleValue() * ((Number) new Double(60)).doubleValue() * ((Number) new Double(60)).doubleValue() *((Number) new Double(24)).doubleValue()))))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",78,e);}if (_boolean_result) { %><% {out.write(localizeISText("ChannelCatalogFilterExportSelectFilters.EveryDay.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((( ((Number) getObject("CF:UpdateInterval")).doubleValue() >((Number)(((new Double( ((Number) new Double(1000)).doubleValue() * ((Number) new Double(60)).doubleValue() * ((Number) new Double(60)).doubleValue() *((Number) new Double(24)).doubleValue()))))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) ((( ((Number) getObject("CF:UpdateInterval")).doubleValue() <((Number)(((new Double( ((Number) new Double(1000)).doubleValue() * ((Number) new Double(60)).doubleValue() * ((Number) new Double(60)).doubleValue() * ((Number) new Double(24)).doubleValue() *((Number) new Double(7)).doubleValue()))))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",80,e);}if (_boolean_result) { %><% {out.write(localizeISText("ChannelCatalogFilterExportSelectFilters.EveryXDays.table_detail",null,null,context.getFormattedValue(context.getFormattedValue((new Double( ((Number) getObject("CF:UpdateInterval")).doubleValue() / ((Number) new Double(1000)).doubleValue() / ((Number) new Double(60)).doubleValue() / ((Number) new Double(60)).doubleValue() /((Number) new Double(24)).doubleValue())),"0"),null),null,null,null,null,null,null,null,null,null));} %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("CF:UpdateInterval")).doubleValue() ==((Number)(((new Double( ((Number) new Double(1000)).doubleValue() * ((Number) new Double(60)).doubleValue() * ((Number) new Double(60)).doubleValue() * ((Number) new Double(24)).doubleValue() *((Number) new Double(7)).doubleValue()))))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",82,e);}if (_boolean_result) { %><% {out.write(localizeISText("ChannelCatalogFilterExportSelectFilters.EveryWeek.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((( ((Number) getObject("CF:UpdateInterval")).doubleValue() >((Number)(((new Double( ((Number) new Double(1000)).doubleValue() * ((Number) new Double(60)).doubleValue() * ((Number) new Double(60)).doubleValue() * ((Number) new Double(24)).doubleValue() *((Number) new Double(7)).doubleValue()))))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",84,e);}if (_boolean_result) { %><% {out.write(localizeISText("ChannelCatalogFilterExportSelectFilters.EveryXDays.table_detail1",null,null,context.getFormattedValue(context.getFormattedValue((new Double( ((Number) getObject("CF:UpdateInterval")).doubleValue() / ((Number) new Double(1000)).doubleValue() / ((Number) new Double(60)).doubleValue() / ((Number) new Double(60)).doubleValue() / ((Number) new Double(24)).doubleValue() /((Number) new Double(7)).doubleValue())),"0"),null),null,null,null,null,null,null,null,null,null));} %><% } else { %><% {out.write(localizeISText("ChannelCatalogFilterExportSelectFilters.XMilliseconds.table_detail",null,null,context.getFormattedValue(getObject("CF:UpdateInterval"),null),null,null,null,null,null,null,null,null,null));} %><% }}}}}}}} %></td> 
<td class="table_detail e s"><% {String value = null;try{value=context.getFormattedValue(getObject("CF:LastUpdate"),new Integer(DATE_SHORT),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {91}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> <% {String value = null;try{value=context.getFormattedValue(getObject("CF:LastUpdate"),new Integer(DATE_TIME),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {91}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;
</td>
</tr><% } %></table>
</td>
</tr>
<tr>
<td class="w e s">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button">
<input type="hidden" name="PageableID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("CatalogFilters:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {106}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="submit" name="SelectConfiguration" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ChannelCatalogFilterExportSelectFilters.Next.button",null)),null)%>&nbsp;&gt;&gt;" class="button"/>
</td>
<td class="button">
<input type="submit" name="Cancel" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ChannelCatalogFilterExportSelectFilters.Cancel.button",null)),null)%>" class="button"/>
</td>
</tr>
</table>
</td>
</tr>
</table> 
</td>
</tr>
<tr>
<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></td>
</tr>
<tr>
<td>
<div><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></div><% processOpenTag(response, pageContext, "pagingbar", new TagParameter[] {
new TagParameter("pageable","CatalogFilters")}, 125); %></td>
</tr><% } else { %><tr>
<td width="100%" class="table_detail w e s"><% {out.write(localizeISText("ChannelCatalogFilterExportSelectFilters.ThereAreCurrentlyNoCatalogViewsToShowHere.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td width="100%" class="w e s" align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button">
<input type="submit" name="Cancel" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ChannelCatalogFilterExportSelectFilters.Cancel.button",null)),null)%>" class="button"/>
</td>
</tr>
</table>
</td>
</tr><% } %></table><% out.print("</form>"); %><!-- EO Main Content -->
<!-- EO Working Area --><% printFooter(out); %>