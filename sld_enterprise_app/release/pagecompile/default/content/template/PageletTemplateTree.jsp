<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"content/Modules", null, "3");} %><% processOpenTag(response, pageContext, "contentpermissionmap", new TagParameter[] {
new TagParameter("ContentRepository",getObject("ContentRepository")),
new TagParameter("PermissionMap","PermissionMap")}, 4); %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ApplicationBO:getExtension(\"(Class)com.intershop.sellside.enterprise.capi.application.ApplicationBOApplicationSelectorExtension\"):Type"),null).equals(context.getFormattedValue("organization",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",5,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PageFlag"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",6,e);}if (_boolean_result) { %><% {Object temp_obj = (localizeText(context.getFormattedValue("PageletTemplateTree.MasterPageTemplates.value",null))); getPipelineDictionary().put("BreadcrumbText", temp_obj);} %><% } else { %><% {Object temp_obj = (localizeText(context.getFormattedValue("PageletTemplateTree.MasterComponentTemplates.value",null))); getPipelineDictionary().put("BreadcrumbText", temp_obj);} %><% } %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("hide","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewOverview-MasterContent",null))))),
new TagParameter("start","true"),
new TagParameter("text",localizeText(context.getFormattedValue("PageletTemplateTree.MasterContent.text",null)))}, 11); %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("listview","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewPageletTemplatesTree-List",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("PageFlag",null),context.getFormattedValue(getObject("PageFlag"),null))).addURLParameter(context.getFormattedValue("ContentRepositoryUUID",null),context.getFormattedValue(getObject("ContentRepository:UUID"),null)).addURLParameter(context.getFormattedValue("continuedSession",null),context.getFormattedValue(getObject("continuedSession"),null)).addURLParameter(context.getFormattedValue("SelectedMenuItem",null),context.getFormattedValue(getObject("SelectedMenuItem"),null)))),
new TagParameter("id","PageTemplates"),
new TagParameter("text",getObject("BreadcrumbText"))}, 12); %><% } else { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PageFlag"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",14,e);}if (_boolean_result) { %><% {Object temp_obj = (localizeText(context.getFormattedValue("PageletTemplateTree.PageTemplates.value",null))); getPipelineDictionary().put("BreadcrumbText", temp_obj);} %><% } else { %><% {Object temp_obj = (localizeText(context.getFormattedValue("PageletTemplateTree.ComponentTemplates.value",null))); getPipelineDictionary().put("BreadcrumbText", temp_obj);} %><% } %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("hide","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewOverview-Content",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null))))),
new TagParameter("start","true"),
new TagParameter("text",localizeText(context.getFormattedValue("PageletTemplateTree.Content.text",null)))}, 19); %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("listview","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewPageletTemplatesTree-List",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("PageFlag",null),context.getFormattedValue(getObject("PageFlag"),null))).addURLParameter(context.getFormattedValue("ContentRepositoryUUID",null),context.getFormattedValue(getObject("ContentRepository:UUID"),null)).addURLParameter(context.getFormattedValue("continuedSession",null),context.getFormattedValue(getObject("continuedSession"),null)).addURLParameter(context.getFormattedValue("SelectedMenuItem",null),context.getFormattedValue(getObject("SelectedMenuItem"),null)))),
new TagParameter("id","PageTemplates"),
new TagParameter("text",getObject("BreadcrumbText"))}, 20); %><% } %><table border="0" cellspacing="0" cellpadding="0" class="w100">
<tr>
<td class="w e n table_tabs_en_background" nowrap="nowrap"><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","content.view.tree")}, 26); %></td>
<td class="e n s table_tabs_dis_background" nowrap="nowrap">
<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPageletTemplatesList-List",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("PageFlag",null),context.getFormattedValue(getObject("PageFlag"),null))).addURLParameter(context.getFormattedValue("ContentRepositoryUUID",null),context.getFormattedValue(getObject("ContentRepository:UUID"),null))),null)%>" class="table_tabs_dis"><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","content.view.list")}, 30); %></a>
</td>
<td width="100%" class="s"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="1" alt="" border="0"/></td>
</tr>
</table>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" class="table_title w e s"><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ApplicationBO:getExtension(\"(Class)com.intershop.sellside.enterprise.capi.application.ApplicationBOApplicationSelectorExtension\"):Type"),null).equals(context.getFormattedValue("organization",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",39,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PageFlag"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",40,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","cms.mastercontent.pagetemplates.title")}, 40); %><% } else { %><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","cms.mastercontent.componenttemplates.title")}, 40); %><% } %><% } else { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PageFlag"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",42,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","content.pagetemplates.title")}, 42); %><% } else { %><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","content.componenttemplates.title")}, 42); %><% } %><% } %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PermissionMap:SLD_MANAGE_TEMPLATES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",46,e);}if (_boolean_result) { %><!-- delete confirmation --><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("confirmDelete"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",48,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("SelectedPageletTemplate"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",49,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SelectedPageletTemplate:DomainID"),null).equals(context.getFormattedValue(getObject("ContentRepository:RepositoryDomainID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",50,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PageFlag"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",51,e);}if (_boolean_result) { %><% {Object temp_obj = (localizeText(context.getFormattedValue("PageletTemplateTree.AreYouSureThatYouWantToDeleteTheSelectedPageTempla.value",null))); getPipelineDictionary().put("MessageText", temp_obj);} %><% } else { %><% {Object temp_obj = (localizeText(context.getFormattedValue("PageletTemplateTree.AreYouSureThatYouWantToDeleteTheSelectedComponentT.value",null))); getPipelineDictionary().put("MessageText", temp_obj);} %><% } %><tr>
<td><% URLPipelineAction action456 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPageletTemplatesTree-Dispatch",null)))),null));String site456 = null;String serverGroup456 = null;String actionValue456 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPageletTemplatesTree-Dispatch",null)))),null);if (site456 == null){  site456 = action456.getDomain();  if (site456 == null)  {      site456 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup456 == null){  serverGroup456 = action456.getServerGroup();  if (serverGroup456 == null)  {      serverGroup456 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPageletTemplatesTree-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("deleteForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue456, site456, serverGroup456,true)); %><table border="0" cellpadding="0" cellspacing="0" width="100%"><% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("parametervalue4","true"),
new TagParameter("parametervalue3",getObject("PageFlag")),
new TagParameter("parametername1","SelectedPageletTemplateUUID"),
new TagParameter("parametervalue2",getObject("ContentRepository:UUID")),
new TagParameter("subject",localizeText(context.getFormattedValue("PageletTemplateTree.Page.subject",null))),
new TagParameter("parametervalue1",getObject("SelectedPageletTemplate:UUID")),
new TagParameter("parametername2","ContentRepositoryUUID"),
new TagParameter("parametername3","PageFlag"),
new TagParameter("okbtnname","delete"),
new TagParameter("type","sdc"),
new TagParameter("message",getObject("MessageText")),
new TagParameter("cancelbtnname","cancelDelete"),
new TagParameter("parametername4","continuedSession")}, 60); %></table><% out.print("</form>"); %></td>
</tr> 
<% } else { %><tr>
<td>
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr>
<td class="error_icon middle e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error top" width="100%"><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","content.pagelettemplate.confirmdelete.sharedtemplate")}, 85); %></td>
</tr>
</table>
</td>
</tr><% } %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("SelectedPageletDefinition"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",92,e);}if (_boolean_result) { %><tr>
<td>
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr>
<td class="error_icon middle e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error top" width="100%"><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","content.pagelettemplate.confirmdelete.mastertemplate")}, 99); %></td>
</tr>
</table>
</td>
</tr><% } else { %> 
<tr>
<td>
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr>
<td class="error_icon middle e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error top" width="100%"><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","content.pagelettemplate.confirmdelete.noselection")}, 112); %></td>
</tr>
</table>
</td>
</tr> 
<% }} %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PageletLockedForOther"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",119,e);}if (_boolean_result) { %><tr>
<td>
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr>
<td class="error_icon middle e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error top" width="100%"><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","content.pagelettemplate.confirmdelete.locked")}, 126); %></td>
</tr>
</table>
</td>
</tr><% }} %><% _boolean_result=false;try {_boolean_result=((Boolean)(((disableErrorMessages().isDefined(getObject("PreviewPageletTemplateError")))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",133,e);}if (_boolean_result) { %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"preview/Modules", null, "134");} %><tr>
<td>
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr>
<td class="error_icon e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error" width="100%"><% processOpenTag(response, pageContext, "previewerror", new TagParameter[] {
new TagParameter("previewError",getObject("PreviewPageletTemplateError"))}, 140); %></td>
</tr>
</table>
</td>
</tr><% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((disableErrorMessages().isDefined(getObject("confirmpreview")))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",145,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "previewmessagebox", new TagParameter[] {
new TagParameter("itemType","pagelet"),
new TagParameter("cmsItemType","template"),
new TagParameter("previewMessage",getObject("confirmpreview"))}, 146); %><% }} %><% } %></table><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("PageletDefinitions") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",151,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("SelectedPageletTemplate"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",152,e);}if (_boolean_result) { %><% {Object temp_obj = (getObject("SelectedPageletTemplate:UUID")); getPipelineDictionary().put("SelectionValue", temp_obj);} %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("SelectedPageletDefinition"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",154,e);}if (_boolean_result) { %><% {Object temp_obj = (getObject("SelectedPageletDefinition:QualifiedName")); getPipelineDictionary().put("SelectionValue", temp_obj);} %><% }} %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PermissionMap:SLD_MANAGE_TEMPLATES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",158,e);}if (_boolean_result) { %><% URLPipelineAction action457 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPageletTemplatesTree-Dispatch",null)))),null));String site457 = null;String serverGroup457 = null;String actionValue457 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPageletTemplatesTree-Dispatch",null)))),null);if (site457 == null){  site457 = action457.getDomain();  if (site457 == null)  {      site457 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup457 == null){  serverGroup457 = action457.getServerGroup();  if (serverGroup457 == null)  {      serverGroup457 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPageletTemplatesTree-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("PageletTemplatesForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue457, site457, serverGroup457,true)); %> 
<input type="hidden" name="TemplateFlag" value="true" />
<input type="hidden" name="PageFlag" value="<% {String value = null;try{value=context.getFormattedValue(getObject("PageFlag"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {161}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" />
<input type="hidden" name="ContentRepositoryUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ContentRepository:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {162}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" />
<input type="hidden" name="LocaleId" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Locale:LocaleID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {163}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" />
<input type="hidden" name="continuedSession" value="true" /><% processOpenTag(response, pageContext, "pagelettemplatetree", new TagParameter[] {
new TagParameter("Site",getObject("CurrentDomain")),
new TagParameter("Locale",getObject("Locale")),
new TagParameter("SubmitButtonsTemplate","content/template/inc/PageletTemplateButtons"),
new TagParameter("parametername0","ContentRepositoryUUID"),
new TagParameter("parametervalue3",getObject("PageFlag")),
new TagParameter("parametername1","SelectedPageletTemplateUUID"),
new TagParameter("parametervalue2",getObject("SelectedPageletDefinitionQualifiedName")),
new TagParameter("parametervalue1",getObject("SelectedPageletTemplateUUID")),
new TagParameter("parametername2","SelectedPageletDefinitionQualifiedName"),
new TagParameter("parametervalue0",getObject("ContentRepository:UUID")),
new TagParameter("parametername3","PageFlag"),
new TagParameter("ContextPipeline","ViewPageletTemplatesTree-List"),
new TagParameter("SelectedApplicationTypeID",getObject("CurrentSession:Object(\"CMS_SELECTED_APP\")")),
new TagParameter("PageFlag",getObject("PageFlag")),
new TagParameter("ContentRepository",getObject("ContentRepository")),
new TagParameter("SelectionValue",getObject("SelectionValue"))}, 165); %><% out.print("</form>"); %><% } else { %><% processOpenTag(response, pageContext, "pagelettemplatetree", new TagParameter[] {
new TagParameter("Site",getObject("CurrentDomain")),
new TagParameter("Locale",getObject("Locale")),
new TagParameter("parametername0","ContentRepositoryUUID"),
new TagParameter("parametervalue3",getObject("PageFlag")),
new TagParameter("parametername1","SelectedPageletTemplateUUID"),
new TagParameter("parametervalue2",getObject("SelectedPageletDefinitionQualifiedName")),
new TagParameter("parametervalue1",getObject("SelectedPageletTemplateUUID")),
new TagParameter("parametername2","SelectedPageletDefinitionQualifiedName"),
new TagParameter("parametervalue0",getObject("ContentRepository:UUID")),
new TagParameter("parametername3","PageFlag"),
new TagParameter("ContextPipeline","ViewPageletTemplatesTree-List"),
new TagParameter("SelectedApplicationTypeID",getObject("CurrentSession:Object(\"CMS_SELECTED_APP\")")),
new TagParameter("PageFlag",getObject("PageFlag")),
new TagParameter("ContentRepository",getObject("ContentRepository")),
new TagParameter("SelectionValue",getObject("SelectionValue"))}, 185); %><% } %><% } else { %><table cellspacing="0" cellpadding="0" border="0" width="100%">
<tr>
<td class="table_detail w e s"><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","content.pagelettemplate.emptylist")}, 208); %></td>
</tr>
</table><% } %><% printFooter(out); %>