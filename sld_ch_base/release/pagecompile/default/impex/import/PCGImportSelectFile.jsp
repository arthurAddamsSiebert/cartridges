<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotionCodeGroupImport-Paging",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null))))),
new TagParameter("text",localizeText(context.getFormattedValue("PCGImportSelectFile.PromotionCodeGroupImportStep1SelectFile.text",null)))}, 3); %><!-- EO Page Navigator -->
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="n">
<tr>
<td class="table_title w e s" width="100%" nowrap="nowrap"><% {out.write(localizeISText("PCGImportSelectFile.PromotionCodeGroupImportSelectFile.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (((!(context.getFormattedValue(getObject("CurrentStartNodeName"),null).equals(context.getFormattedValue("Start",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) ((((Boolean) ((disableErrorMessages().isDefined(getObject("SelectFileForm_SelectedFile"))))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("ValidateFile")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",9,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("subject","ImprexForm"),
new TagParameter("type","nse"),
new TagParameter("message",localizeText(context.getFormattedValue("PCGImportSelectFile.YouHaveNotSelectedAFileToImport.message",null)))}, 10); %><% } %><tr>
<td class="table_title_description w e s"><% {out.write(localizeISText("PCGImportSelectFile.Step1Of3NextStepValidateImportFile.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% URLPipelineAction action212 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotionCodeGroupImport-Dispatch",null)))),null));String site212 = null;String serverGroup212 = null;String actionValue212 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotionCodeGroupImport-Dispatch",null)))),null);if (site212 == null){  site212 = action212.getDomain();  if (site212 == null)  {      site212 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup212 == null){  serverGroup212 = action212.getServerGroup();  if (serverGroup212 == null)  {      serverGroup212 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotionCodeGroupImport-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("ImpexForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue212, site212, serverGroup212,true)); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/Modules", null, "22");} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"impex/ImportFileList", null, "23");} %><table class="w e s" width="100%" border="0" cellspacing="0">
<tr>
<td align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PromotionCodeGroupID"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",32,e);}if (_boolean_result) { %><input type="hidden" name="PromotionCodeGroupID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("PromotionCodeGroupID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {33}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><% } %><input type="hidden" name="JobDescription" value="Validates Promotion Code Group import file."/>
<input type="submit" name="ValidateFile" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PCGImportSelectFile.Next.button",null)),null)%>&nbsp;&gt;&gt;" class="button" <% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) ((hasLoopElements("Files") ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",36,e);}if (_boolean_result) { %>disabled="disabled"<% } %>/>
</td>
<td class="button">
<input type="submit" name="Cancel" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PCGImportSelectFile.Cancel.button",null)),null)%>" class="button"/>
</td>
</tr>
</table>
</td>
</tr>
</table><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Files"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",47,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "pagingbar", new TagParameter[] {
new TagParameter("pageable","Files")}, 48); %><% } %><% out.print("</form>"); %><% printFooter(out); %>