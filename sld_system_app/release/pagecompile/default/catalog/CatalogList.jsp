<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><%@page import="com.intershop.beehive.core.internal.environment.ServerEnvironment"%><%@page import="com.intershop.beehive.core.capi.pipeline.PipelineDictionary"%><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("hide","true"),
new TagParameter("listview","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewCatalogList-ListAll",null))))),
new TagParameter("start","true"),
new TagParameter("text",localizeText(context.getFormattedValue("CatalogList.ClassificationCatalogs.text",null)))}, 4); %><table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" class="table_title aldi" colspan="6"><% {out.write(localizeISText("CatalogList.ClassificationCatalogs.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<!-- delete confirmation for Classification Catalogs --><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("PermissionMap:SLD_MANAGE_ENTERPRISES")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("confirmDeleteClassificationCatalog")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",12,e);}if (_boolean_result) { %><tr>
<td colspan="6"><% URLPipelineAction action49 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCatalog-Dispatch",null)))),null));String site49 = null;String serverGroup49 = null;String actionValue49 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCatalog-Dispatch",null)))),null);if (site49 == null){  site49 = action49.getDomain();  if (site49 == null)  {      site49 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup49 == null){  serverGroup49 = action49.getServerGroup();  if (serverGroup49 == null)  {      serverGroup49 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCatalog-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("deleteCatalogForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue49, site49, serverGroup49,true)); %><table border="0" cellpadding="0" cellspacing="0" width="100%"><% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan","1"),
new TagParameter("parametername1","CatalogID"),
new TagParameter("subject",localizeTextEx(context.getFormattedValue("CatalogList.ClassificationCatalogDisplayName",null),new ParameterList().addParameter(encodeString(context.getFormattedValue(getObject("DisplayName"),null))))),
new TagParameter("cancelbtnname","BackToList"),
new TagParameter("parametervalue1",getObject("CatalogID")),
new TagParameter("okbtnname","RemoveCatalog"),
new TagParameter("type","sdc"),
new TagParameter("class","w e s")}, 17); %></table><% out.print("</form>"); %></td>
</tr><% } %><tr>
<td class="table_title_description w e s" colspan="6"><% {out.write(localizeISText("CatalogList.TheCatalogsDisplayedHereAreGlobalProduct.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PermissionMap:SLD_MANAGE_ENTERPRISES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",33,e);}if (_boolean_result) { %><% {out.write(localizeISText("CatalogList.ClickNewToCreateANewClassificationCatalog.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %></td>
</tr><% {Object temp_obj = ("false"); getPipelineDictionary().put("foundClassificationCatalog", temp_obj);} %><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("ClassificationCatalogs") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",39,e);}if (_boolean_result) { %><tr>
<td width="30%" class="table_header w e s"><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("classificationSortOrder")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("classificationSortOrder"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",42,e);}if (_boolean_result) { %><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCatalogList-ListAll",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("classificationSortAttribute",null),context.getFormattedValue("DisplayName",null))).addURLParameter(context.getFormattedValue("classificationSortOrder",null),context.getFormattedValue("false",null))),null)%>" class="tableheader"><% {out.write(localizeISText("CatalogList.Name.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a><% } else { %><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCatalogList-ListAll",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("classificationSortAttribute",null),context.getFormattedValue("DisplayName",null))).addURLParameter(context.getFormattedValue("classificationSortOrder",null),context.getFormattedValue("true",null))),null)%>" class="tableheader"><% {out.write(localizeISText("CatalogList.Name.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a><% } %></td>
<td width="10%" class="table_header e s"><% {out.write(localizeISText("CatalogList.ID.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td width="30%" class="table_header e s"><% {out.write(localizeISText("CatalogList.Description.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td width="10%" class="table_header e s"><% {out.write(localizeISText("CatalogList.Type.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td width="10%" class="table_header e s">&nbsp;</td><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PermissionMap:SLD_MANAGE_ENTERPRISES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",52,e);}if (_boolean_result) { %><td width="10%" class="table_header e s">&nbsp;</td><% } %></tr><% while (loop("ClassificationCatalogs","Catalog",null)) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("Catalog:ClassificationSystem:Name"),null).equals(context.getFormattedValue("System",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",57,e);}if (_boolean_result) { %><% {Object temp_obj = ("true"); getPipelineDictionary().put("foundClassificationCatalog", temp_obj);} %><tr>
<td class="catalog_cell w e s"><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCatalog-Browse",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("CatalogID",null),context.getFormattedValue(getObject("Catalog:Id"),null))).addURLParameter(context.getFormattedValue("CatalogCategoryID",null),context.getFormattedValue(getObject("Catalog:Root:UUID"),null))),null)%>" class="table_detail_link"><% {String value = null;try{value=context.getFormattedValue(getObject("Catalog:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {60}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></a>&nbsp;</td>
<td class="catalog_cell e s"><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCatalog-Browse",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("CatalogID",null),context.getFormattedValue(getObject("Catalog:Id"),null))).addURLParameter(context.getFormattedValue("CatalogCategoryID",null),context.getFormattedValue(getObject("Catalog:Root:UUID"),null))),null)%>" class="table_detail_link"><% {String value = null;try{value=context.getFormattedValue(getObject("Catalog:Id"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {61}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></a>&nbsp;</td>
<td class="catalog_description e s"><% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("Catalog:ShortDescription"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",63,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("Catalog:ShortDescription"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {63}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %>&nbsp;<% } %></td>
<td class="table_detail e s"><% {String value = null;try{value=context.getFormattedValue(getObject("Catalog:ClassificationSystem:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {66}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
<td nowrap="nowrap" class="table_detail e s center"><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCatalog-Dispatch",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("CatalogID",null),context.getFormattedValue(getObject("Catalog:Id"),null))).addURLParameter(context.getFormattedValue("EditCatalog",null),context.getFormattedValue("",null))),null)%>" class="action_link"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PermissionMap:SLD_MANAGE_ENTERPRISES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",68,e);}if (_boolean_result) { %><% {out.write(localizeISText("CatalogList.Edit.link",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else { %><% {out.write(localizeISText("CatalogList.View.link",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %></a></td><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PermissionMap:SLD_MANAGE_ENTERPRISES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",69,e);}if (_boolean_result) { %><td class="table_detail e s center"><% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("Catalog:ClassificationSystem:Name"),null).equals(context.getFormattedValue("System",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",71,e);}if (_boolean_result) { %> 
<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCatalogList-ListAll",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("CatalogID",null),context.getFormattedValue(getObject("Catalog:Id"),null))).addURLParameter(context.getFormattedValue("DisplayName",null),context.getFormattedValue(getObject("Catalog:DisplayName"),null)).addURLParameter(context.getFormattedValue("confirmDeleteClassificationCatalog",null),context.getFormattedValue("",null))),null)%>" class="action_link"><% {out.write(localizeISText("CatalogList.Delete.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a><% } %></td><% } %></tr><% } %><% } %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("foundClassificationCatalog"),null).equals(context.getFormattedValue("false",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",80,e);}if (_boolean_result) { %><tr>
<td class="table_detail w e s" colspan="6"><% {out.write(localizeISText("CatalogList.ThereAreNoGlobalClassificationCatalogsAvailable.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PermissionMap:SLD_MANAGE_ENTERPRISES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",86,e);}if (_boolean_result) { %><tr>
<td class="w e s" align="right" colspan="6"><% URLPipelineAction action50 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCatalog-Dispatch",null)))),null));String site50 = null;String serverGroup50 = null;String actionValue50 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCatalog-Dispatch",null)))),null);if (site50 == null){  site50 = action50.getDomain();  if (site50 == null)  {      site50 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup50 == null){  serverGroup50 = action50.getServerGroup();  if (serverGroup50 == null)  {      serverGroup50 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCatalog-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("newCatalogForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue50, site50, serverGroup50,true)); %><table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><input type="submit" name="NewCatalog" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("CatalogList.New.button",null)),null)%>" class="button"/></td>
</tr>
</table> 
<% out.print("</form>"); %></td>
</tr><% } %></table>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tbody>
<tr><%
	PipelineDictionary dict = getPipelineDictionary();
	ServerEnvironment env = ServerEnvironment.getInstance();
	String url = env.getProperty("intershop.WebServerSecureURL");
	if (url != null && !("".equals(url))) {
		dict.put("ServerURL", url);
	}
	String newMapping = env.getProperty("intershop.template.WebRootURL");
		if (newMapping != null && !("".equals(newMapping))) {
		dict.put("NewMapping", newMapping);
	}	
 %> 
<td width="100%"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"></td>
</tr>
</tbody>
</table>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" class="table_title aldi" colspan="6"><% {out.write(localizeISText("CatalogList.SystemClassificationCatalogs.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td class="table_title_description w e s" colspan="6"><% {out.write(localizeISText("CatalogList.TheCatalogsDisplayedHereAreGlobalSystem.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% {Object temp_obj = ("false"); getPipelineDictionary().put("foundCC", temp_obj);} %><% {Object temp_obj = ("false"); getPipelineDictionary().put("foundSCC", temp_obj);} %><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("ClassificationCatalogs") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",139,e);}if (_boolean_result) { %><% while (loop("ClassificationCatalogs","Catalog",null)) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Catalog:ClassificationSystem:Name"),null).equals(context.getFormattedValue("System",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",141,e);}if (_boolean_result) { %><% {Object temp_obj = ("true"); getPipelineDictionary().put("foundSCC", temp_obj);} %><% } else { %><% {Object temp_obj = ("true"); getPipelineDictionary().put("foundCC", temp_obj);} %><% } %><% } %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("foundSCC"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",149,e);}if (_boolean_result) { %><tr>
<td width="30%" class="table_header w e s"><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("classificationSortOrder")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("classificationSortOrder"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",152,e);}if (_boolean_result) { %><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCatalogList-ListAll",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("classificationSortAttribute",null),context.getFormattedValue("DisplayName",null))).addURLParameter(context.getFormattedValue("classificationSortOrder",null),context.getFormattedValue("false",null))),null)%>" class="tableheader"><% {out.write(localizeISText("CatalogList.Name.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a><% } else { %><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCatalogList-ListAll",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("classificationSortAttribute",null),context.getFormattedValue("DisplayName",null))).addURLParameter(context.getFormattedValue("classificationSortOrder",null),context.getFormattedValue("true",null))),null)%>" class="tableheader"><% {out.write(localizeISText("CatalogList.Name.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a><% } %></td>
<td width="10%" class="table_header e s"><% {out.write(localizeISText("CatalogList.ID.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td width="30%" class="table_header e s"><% {out.write(localizeISText("CatalogList.Description.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td width="10%" class="table_header e s"><% {out.write(localizeISText("CatalogList.Type.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td width="10%" class="table_header e s">&nbsp;</td><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PermissionMap:SLD_MANAGE_ENTERPRISES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",162,e);}if (_boolean_result) { %><td width="10%" class="table_header e s">&nbsp;</td><% } %></tr><% } %><% while (loop("ClassificationCatalogs","Catalog",null)) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("foundSCC"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",169,e);}if (_boolean_result) { %><tr>
<td class="catalog_cell w e s"><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCatalog-Browse",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("CatalogID",null),context.getFormattedValue(getObject("Catalog:Id"),null))).addURLParameter(context.getFormattedValue("CatalogCategoryID",null),context.getFormattedValue(getObject("Catalog:Root:UUID"),null))),null)%>" class="table_detail_link"><% {String value = null;try{value=context.getFormattedValue(getObject("Catalog:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {171}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></a>&nbsp;</td>
<td class="catalog_cell e s"><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCatalog-Browse",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("CatalogID",null),context.getFormattedValue(getObject("Catalog:Id"),null))).addURLParameter(context.getFormattedValue("CatalogCategoryID",null),context.getFormattedValue(getObject("Catalog:Root:UUID"),null))),null)%>" class="table_detail_link"><% {String value = null;try{value=context.getFormattedValue(getObject("Catalog:Id"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {172}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></a>&nbsp;</td>
<td class="catalog_description e s"><% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("Catalog:ShortDescription"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",174,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("Catalog:ShortDescription"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {174}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %>&nbsp;<% } %></td>
<td class="table_detail e s"><% {String value = null;try{value=context.getFormattedValue(getObject("Catalog:ClassificationSystem:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {177}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
<td nowrap="nowrap" class="table_detail e s center"><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCatalog-Dispatch",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("CatalogID",null),context.getFormattedValue(getObject("Catalog:Id"),null))).addURLParameter(context.getFormattedValue("EditCatalog",null),context.getFormattedValue("",null))),null)%>" class="action_link"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PermissionMap:SLD_MANAGE_ENTERPRISES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",179,e);}if (_boolean_result) { %><% {out.write(localizeISText("CatalogList.Edit.link",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else { %><% {out.write(localizeISText("CatalogList.View.link",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %></a></td><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PermissionMap:SLD_MANAGE_ENTERPRISES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",180,e);}if (_boolean_result) { %><td class="table_detail e s center"><% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("Catalog:ClassificationSystem:Name"),null).equals(context.getFormattedValue("System",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",182,e);}if (_boolean_result) { %> 
<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCatalogList-ListAll",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("CatalogID",null),context.getFormattedValue(getObject("Catalog:Id"),null))).addURLParameter(context.getFormattedValue("DisplayName",null),context.getFormattedValue(getObject("Catalog:DisplayName"),null)).addURLParameter(context.getFormattedValue("confirmDeleteClassificationCatalog",null),context.getFormattedValue("",null))),null)%>" class="action_link"><% {out.write(localizeISText("CatalogList.Delete.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a><% } %></td><% } %></tr><% } %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("foundSCC"),null).equals(context.getFormattedValue("false",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",191,e);}if (_boolean_result) { %><tr>
<td class="table_detail w e s" colspan="6"><% {out.write(localizeISText("CatalogList.ThereAreNoGlobalSystemClassificationCatalogsAvailable.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% } %> 
</table><% printFooter(out); %>