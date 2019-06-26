<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/Modules", null, "2");} %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("hide","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewCustomerManagement_52-Overview",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null))))),
new TagParameter("start","true"),
new TagParameter("text",localizeText(context.getFormattedValue("customers.title",null)))}, 5); %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("listview","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewContracts-List",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null))))),
new TagParameter("text",localizeText(context.getFormattedValue("ContractManagement_52.contracts.link",null)))}, 6); %><% URLPipelineAction action4 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewContracts-Dispatch",null)))),null));String site4 = null;String serverGroup4 = null;String actionValue4 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewContracts-Dispatch",null)))),null);if (site4 == null){  site4 = action4.getDomain();  if (site4 == null)  {      site4 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup4 == null){  serverGroup4 = action4.getServerGroup();  if (serverGroup4 == null)  {      serverGroup4 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewContracts-Dispatch",null)))),null));out.print("\"");out.print(" data-testing-id=\"");out.print("page-bo-all-customers-contracts-list-channel");out.print("\"");out.print(" name=\"");out.print("ContractsForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue4, site4, serverGroup4,true)); %><table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" class="table_title aldi"><% {out.write(localizeISText("contracts.ContractsList.contracts.title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td class="table_title_description w e s"><% {out.write(localizeISText("contracts.ContractsList.contracts.description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"contract/ContractListSearchMask.isml", null, "17");} %><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (hasLoopElements("Contracts") ? Boolean.TRUE : Boolean.FALSE)).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",19,e);}if (_boolean_result) { %><tr>
<td class="table_detail w e s"><% {out.write(localizeISText("contracts.ContractsList.contracts.noContracts.text",null,null,null,null,null,null,null,null,null,null,null,null));} %></tr><% } %> 
</table><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Contracts") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",27,e);}if (_boolean_result) { %><input type="hidden" name="SortBy" value="<% {String value = null;try{value=context.getFormattedValue(getObject("SortBy"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {28}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>">
<input type="hidden" name="SortDirection" value="<% {String value = null;try{value=context.getFormattedValue(getObject("SortDirection"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {29}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% processOpenTag(response, pageContext, "createmap", new TagParameter[] {
new TagParameter("key1","CurrentChannel"),
new TagParameter("key2","SortBy"),
new TagParameter("key0","Application"),
new TagParameter("value2",getObject("SortBy")),
new TagParameter("value1",getObject("CurrentChannel")),
new TagParameter("key3","SortDirection"),
new TagParameter("value3",getObject("SortDirection")),
new TagParameter("value0",getObject("CurrentApplication")),
new TagParameter("mapname","params")}, 31); %><% processOpenTag(response, pageContext, "grid", new TagParameter[] {
new TagParameter("currentapplication",getObject("CurrentApplication")),
new TagParameter("columnstemplate","grid/ContractsColumns.isml"),
new TagParameter("configuration","contractslist"),
new TagParameter("datatemplate","grid/ContractsData.isml"),
new TagParameter("pageable",getObject("Contracts")),
new TagParameter("id","ContractsGrid"),
new TagParameter("pageablename","Contracts"),
new TagParameter("params",getObject("params"))}, 37); %><% } %><% out.print("</form>"); %><% printFooter(out); %>