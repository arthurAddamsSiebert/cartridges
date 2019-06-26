<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- Working Area -->
<!-- Page Navigator --><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("hide","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewOnlineMarketing-Overview",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null))))),
new TagParameter("start","true"),
new TagParameter("text",localizeText(context.getFormattedValue("marketing.title",null)))}, 6); %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotionCodeImpex-Status",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null))))),
new TagParameter("text",localizeText(context.getFormattedValue("promotioncodeimpex.title",null)))}, 7); %><!-- EO Page Navigator --><% URLPipelineAction action192 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotionCodeImpex-Dispatch",null)))),null));String site192 = null;String serverGroup192 = null;String actionValue192 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotionCodeImpex-Dispatch",null)))),null);if (site192 == null){  site192 = action192.getDomain();  if (site192 == null)  {      site192 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup192 == null){  serverGroup192 = action192.getServerGroup();  if (serverGroup192 == null)  {      serverGroup192 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotionCodeImpex-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("ImpexForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue192, site192, serverGroup192,true)); %><input type="hidden" name="ChannelID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("CurrentChannel:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {11}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="aldi">
<tr>
<td class="table_title" width="100%" nowrap="nowrap"><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","promotioncodeimpex.title")}, 15); %></td>
</tr>
</table><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_MARKETING"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",19,e);}if (_boolean_result) { %><table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td class="table_title2" width="100%" nowrap="nowrap"><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","promotioncodeimpex.promotionsxml.title")}, 22); %></td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr class="table_title_description">
<td width="100%"><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","promotioncodeimpex.manageallpromotion.message")}, 28); %><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotionImport-ListAll",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null))).addURLParameter(context.getFormattedValue("PromotionImport",null),context.getFormattedValue("Import",null))),null)%>" class="selection_link" id="PromotionImportLink"><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","promotioncodeimpex.imports")}, 29); %></a> &amp;
<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotionExportList-ListAll",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null)))),null)%>" class="selection_link"><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","promotioncodeimpex.exports")}, 30); %></a>&nbsp;
<% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","promotioncodeimpex.available.message")}, 31); %></td>
<td>
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button">
<input type="submit" class="button" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("readOnly"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",38,e);}if (_boolean_result) { %>disabled="disabled"<% } %> name="PromotionImport" value="<% {out.write(localizeISText("promotioncodeimpex.button.import","",null,null,null,null,null,null,null,null,null,null,null));} %>"/>
</td>
<td class="button"><input type="submit" class="button" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("readOnly"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",40,e);}if (_boolean_result) { %>disabled="disabled"<% } %> name="PromotionExport" value="<% {out.write(localizeISText("promotioncodeimpex.button.export","",null,null,null,null,null,null,null,null,null,null,null));} %>"/></td>
</tr>
</table>
</td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td class="table_title2" width="100%" nowrap="nowrap"><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","promotioncodeimpex.promotionscsv.title")}, 50); %></td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr class="table_title_description">
<td width="100%"><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","promotioncodeimpex.managepromotioncode.message")}, 56); %><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotionCodeImport-InitPromotionCodeImport",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null)))),null)%>" class="selection_link"><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","promotioncodeimpex.imports")}, 57); %></a> &amp;
<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotionCodeExport-SelectDetails",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null)))),null)%>" class="selection_link"><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","promotioncodeimpex.exports")}, 58); %></a>. 
<% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","promotioncodeimpex.impexcsv.message")}, 59); %></td>
<td>
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><input type="submit" class="button" name="PromotionCodeImport" value="<% {out.write(localizeISText("promotioncodeimpex.button.import","",null,null,null,null,null,null,null,null,null,null,null));} %>"/></td>
<td class="button"><input type="submit" class="button" name="PromotionCodeExport" value="<% {out.write(localizeISText("promotioncodeimpex.button.export","",null,null,null,null,null,null,null,null,null,null,null));} %>"/></td>
</tr>
</table>
</td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td class="table_title2" width="100%" nowrap="nowrap"><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","promotioncodeimpex.promotioncodegroupsxml.title")}, 74); %></td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr class="table_title_description">
<td width="100%"><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","promotioncodeimpex.managepromotioncodegroup.message")}, 80); %><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotionCodeGroupImport-Start",null)))),null)%>" class="selection_link"><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","promotioncodeimpex.imports")}, 80); %></a> &amp;
<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotionCodeGroupExport-ListAll",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null)))),null)%>" class="selection_link"><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","promotioncodeimpex.exports")}, 81); %></a>. 
</td>
<td>
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><input type="submit" class="button" name="PromotionCodeGroupImport" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("readOnly"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",87,e);}if (_boolean_result) { %>disabled="disabled"<% } %> value="<% {out.write(localizeISText("promotioncodeimpex.button.import","",null,null,null,null,null,null,null,null,null,null,null));} %>"/></td>
<td class="button"><input type="submit" class="button" name="PromotionCodeGroupExport" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("readOnly"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",88,e);}if (_boolean_result) { %>disabled="disabled"<% } %> value="<% {out.write(localizeISText("promotioncodeimpex.button.export","",null,null,null,null,null,null,null,null,null,null,null));} %>"/></td>
</tr>
</table>
</td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td class="table_title2" width="100%" nowrap="nowrap"><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","promotioncodeimpex.impexfiles")}, 98); %></td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr class="table_title_description">
<td width="100%">
<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotionCodeImportUploadFile-BrowseDirectory",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null)))),null)%>" class="selection_link"><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","promotioncodeimpex.upload")}, 105); %></a> 
<% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","promotioncodeimpex.importfiles.message")}, 106); %><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotionCodeExportFiles-BrowseDirectory",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null)))),null)%>" class="selection_link"><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","promotioncodeimpex.download")}, 107); %></a> 
<% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","promotioncodeimpex.exportfiles.message")}, 108); %></td>
<td>
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><input type="submit" class="button" name="UploadFiles" value="<% {out.write(localizeISText("promotioncodeimpex.button.upload","",null,null,null,null,null,null,null,null,null,null,null));} %>"/></td>
<td class="button"><input type="submit" class="button" name="ExportFiles" value="<% {out.write(localizeISText("promotioncodeimpex.button.download","",null,null,null,null,null,null,null,null,null,null,null));} %>"/></td>
</tr>
</table>
</td>
</tr>
</table><% } %><div><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></div><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_MARKETING"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",124,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "impexjoblist", new TagParameter[] {
new TagParameter("pipeline","ViewPromotionCodeImpex"),
new TagParameter("impexjobs",getObject("ImpexJobs"))}, 125); %><% } else { %><% processOpenTag(response, pageContext, "impexjoblist", new TagParameter[] {
new TagParameter("pipeline","ViewPromotionCodeImpex"),
new TagParameter("impexjobs",getObject("ImpexJobs")),
new TagParameter("readonly","true")}, 127); %><% } %><% out.print("</form>"); %><% {out.flush();processExtensionPoint((com.intershop.beehive.core.capi.request.ServletResponse)response,"PromotionCodeImpexOverview", null, "131");} %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("RefreshStatus"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",133,e);}if (_boolean_result) { %><script language="JavaScript" type="text/javascript">
window.setTimeout("self.location='<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotionCodeImpex-Status",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null)))),null)%>'", 10000)
</script><% } %><!-- EO Main Content -->
<!-- EO Working Area --><% printFooter(out); %>