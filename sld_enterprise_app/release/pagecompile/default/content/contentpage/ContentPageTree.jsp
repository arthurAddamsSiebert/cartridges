<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"content/Modules", null, "3");} %><% context.setCustomTagTemplateName("contentpagetreehaselements","content/contentpage/ContentPageTreeHasElements.isml",true,new String[]{"PageletEntryPoint","ContentRepository"},new String[]{"ContentPageTreeHasElements"}); %><% processOpenTag(response, pageContext, "contentpermissionmap", new TagParameter[] {
new TagParameter("ContentRepository",getObject("ContentRepository")),
new TagParameter("PermissionMap","PermissionMap")}, 10); %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ApplicationBO:getExtension(\"(Class)com.intershop.sellside.enterprise.capi.application.ApplicationBOApplicationSelectorExtension\"):Type"),null).equals(context.getFormattedValue("organization",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",11,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("hide","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewOverview-MasterContent",null))))),
new TagParameter("start","true"),
new TagParameter("text",localizeText(context.getFormattedValue("ContentPageTree.MasterContent.text",null)))}, 12); %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("listview","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewContentPageTree-List",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ContentRepositoryUUID",null),context.getFormattedValue(getObject("ContentRepository:UUID"),null))).addURLParameter(context.getFormattedValue("SelectedMenuItem",null),context.getFormattedValue(getObject("SelectedMenuItem"),null)))),
new TagParameter("id","Pages"),
new TagParameter("text",localizeText(context.getFormattedValue("ContentPageTree.MasterPages.text",null)))}, 13); %><% } else { %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("hide","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewOverview-Content",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null))))),
new TagParameter("start","true"),
new TagParameter("text",localizeText(context.getFormattedValue("ContentPageTree.Content.text",null)))}, 15); %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("listview","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewContentPageTree-List",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ContentRepositoryUUID",null),context.getFormattedValue(getObject("ContentRepository:UUID"),null))).addURLParameter(context.getFormattedValue("SelectedMenuItem",null),context.getFormattedValue(getObject("SelectedMenuItem"),null)))),
new TagParameter("id","Pages"),
new TagParameter("text",localizeText(context.getFormattedValue("ContentPageTree.Pages.text",null)))}, 16); %><% } %><table border="0" cellspacing="0" cellpadding="0" class="w100">
<tr>
<td class="w e n table_tabs_en_background" nowrap="nowrap"><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","content.view.tree")}, 22); %></td>
<td class="e n s table_tabs_dis_background" nowrap="nowrap">
<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewContentPageList-List",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ContentRepositoryUUID",null),context.getFormattedValue(getObject("ContentRepository:UUID"),null)))),null)%>" class="table_tabs_dis"><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","content.view.list")}, 26); %></a>
</td>
<td width="100%" class="s"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="1" alt="" border="0"/></td>
</tr>
</table>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" class="table_title w e s"><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","content.pages.title")}, 34); %></td>
</tr>
<!-- delete confirmation for Standard Product Catalogs --><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("confirmDelete"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",38,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("SelectedPage"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",39,e);}if (_boolean_result) { %><tr>
<td><% URLPipelineAction action448 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewContentPageTree-Dispatch",null)))),null));String site448 = null;String serverGroup448 = null;String actionValue448 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewContentPageTree-Dispatch",null)))),null);if (site448 == null){  site448 = action448.getDomain();  if (site448 == null)  {      site448 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup448 == null){  serverGroup448 = action448.getServerGroup();  if (serverGroup448 == null)  {      serverGroup448 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewContentPageTree-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("deleteContentPageForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue448, site448, serverGroup448,true)); %><table border="0" cellpadding="0" cellspacing="0" width="100%"><% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("parametervalue3","true"),
new TagParameter("parametername1","SelectedPageUUID"),
new TagParameter("parametervalue2",getObject("ContentRepository:UUID")),
new TagParameter("cancelbtnname","cancelDelete"),
new TagParameter("subject",localizeText(context.getFormattedValue("ContentPageTree.Page.subject",null))),
new TagParameter("parametervalue1",getObject("SelectedPage:UUID")),
new TagParameter("parametername2","ContentRepositoryUUID"),
new TagParameter("parametername3","continuedSession"),
new TagParameter("okbtnname","delete"),
new TagParameter("type","sdc"),
new TagParameter("message",localizeText(context.getFormattedValue("ContentPageTree.AreYouSureThatYouWantToDeleteTheSelectedContentPag.message",null)))}, 44); %></table><% out.print("</form>"); %></td>
</tr><% } else { %> 
<tr>
<td>
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr>
<td class="error_icon middle e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error top" width="100%"><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","content.pages.delete.noselection")}, 67); %></td>
</tr>
</table>
</td>
</tr> 
<% } %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((disableErrorMessages().isDefined(getObject("PreviewPageEntryPointError")))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",75,e);}if (_boolean_result) { %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"preview/Modules", null, "76");} %><tr>
<td>
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr>
<td class="error_icon e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error" width="100%"><% processOpenTag(response, pageContext, "previewerror", new TagParameter[] {
new TagParameter("previewError",getObject("PreviewPageEntryPointError"))}, 82); %></td>
</tr>
</table>
</td>
</tr><% } %><tr>
<td width="100%" class="table_title_description w e s"><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","content.pages.tree.description")}, 91); %></td>
</tr>
</table><% processOpenTag(response, pageContext, "contentpagetreehaselements", new TagParameter[] {
new TagParameter("ContentPageTreeHasElements","ContentPageTreeHasElements"),
new TagParameter("ContentRepository",getObject("ContentRepository"))}, 94); %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ContentPageTreeHasElements"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",95,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PermissionMap:SLD_MANAGE_CONTENT"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",96,e);}if (_boolean_result) { %><% URLPipelineAction action449 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewContentPageTree-Dispatch",null)))),null));String site449 = null;String serverGroup449 = null;String actionValue449 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewContentPageTree-Dispatch",null)))),null);if (site449 == null){  site449 = action449.getDomain();  if (site449 == null)  {      site449 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup449 == null){  serverGroup449 = action449.getServerGroup();  if (serverGroup449 == null)  {      serverGroup449 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewContentPageTree-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("ContentPageTreeForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue449, site449, serverGroup449,true)); %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("SelectedPage"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",98,e);}if (_boolean_result) { %><input type="hidden" name="SelectedPageUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("SelectedPage:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {99}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><% } %><input type="hidden" name="ContentRepositoryUUID" value="<%=context.getFormattedValue(getObject("ContentRepository:UUID"),null)%>" />
<input type="hidden" name="LocaleId" value="<%=context.getFormattedValue(encodeString(context.getFormattedValue(getObject("Locale:LocaleID"),null)),null)%>" />
<input type="hidden" name="continuedSession" value="true" /><% processOpenTag(response, pageContext, "contentpagetree", new TagParameter[] {
new TagParameter("Locale",getObject("Locale")),
new TagParameter("Site",getObject("CurrentDomain")),
new TagParameter("SubmitButtonsTemplate","content/contentpage/inc/ContentPageButtons"),
new TagParameter("SelectedApplicationTypeID",getObject("CurrentSession:Object(\"CMS_SELECTED_APP\")")),
new TagParameter("FindAction","find"),
new TagParameter("ContentRepository",getObject("ContentRepository")),
new TagParameter("PageletModelRepository",getObject("PageletModelRepository")),
new TagParameter("SelectedElement",getObject("SelectedPage"))}, 104); %><% out.print("</form>"); %><% } else { %><% processOpenTag(response, pageContext, "contentpagetree", new TagParameter[] {
new TagParameter("Locale",getObject("Locale")),
new TagParameter("Site",getObject("CurrentDomain")),
new TagParameter("SelectedApplicationTypeID",getObject("CurrentSession:Object(\"CMS_SELECTED_APP\")")),
new TagParameter("FindAction","find"),
new TagParameter("ContentRepository",getObject("ContentRepository")),
new TagParameter("PageletModelRepository",getObject("PageletModelRepository")),
new TagParameter("SelectedElement",getObject("SelectedPage"))}, 116); %><% } %><% } else { %><table cellspacing="0" cellpadding="0" border="0" width="100%">
<tr>
<td class="table_detail w e s"><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","content.pages.emptylist")}, 130); %></td>
</tr>
</table><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PermissionMap:SLD_MANAGE_CONTENT"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",134,e);}if (_boolean_result) { %><% URLPipelineAction action450 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewContentPageTree-Dispatch",null)))),null));String site450 = null;String serverGroup450 = null;String actionValue450 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewContentPageTree-Dispatch",null)))),null);if (site450 == null){  site450 = action450.getDomain();  if (site450 == null)  {      site450 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup450 == null){  serverGroup450 = action450.getServerGroup();  if (serverGroup450 == null)  {      serverGroup450 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewContentPageTree-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("ContentPageTreeForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue450, site450, serverGroup450,true)); %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("SelectedPage"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",136,e);}if (_boolean_result) { %><input type="hidden" name="SelectedPageUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("SelectedPage:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {137}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><% } %><input type="hidden" name="ContentRepositoryUUID" value="<%=context.getFormattedValue(getObject("ContentRepository:UUID"),null)%>" />
<input type="hidden" name="LocaleId" value="<%=context.getFormattedValue(encodeString(context.getFormattedValue(getObject("Locale:LocaleID"),null)),null)%>" />
<input type="hidden" name="continuedSession" value="true" />
<table border="0" cellspacing="0" cellpadding="0" class="e s w" width="100%">
<tr>
<td align="left">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td>
</td>
<td class="button"><input type="submit" name="new" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ContentPageTree.New.button",null)),null)%>" class="button"/></td>
</tr>
</table>
</td>
</tr>
</table><% out.print("</form>"); %><% } %><% } %><% printFooter(out); %>