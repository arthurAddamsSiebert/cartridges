<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% processOpenTag(response, pageContext, "pageletmodelutils", new TagParameter[] {
new TagParameter("PageletModelUtils","PageletModelUtils")}, 2); %><% processOpenTag(response, pageContext, "contentpermissionmap", new TagParameter[] {
new TagParameter("ContentRepository",getObject("ContentRepository")),
new TagParameter("PermissionMap","PermissionMap")}, 3); %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("StartFlag"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",5,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "createmap", new TagParameter[] {
new TagParameter("key1","ContextType"),
new TagParameter("key0","ViewContextUUID"),
new TagParameter("value1",getObject("ContextType")),
new TagParameter("value0",getObject("ViewContext:UUID")),
new TagParameter("mapname","InitPipelineParameters")}, 6); %><% {try{executePipeline("ViewViewContextAssignments-Initialize",((java.util.Map)(getObject("InitPipelineParameters"))),"InitResult");}catch(Exception e){Logger.error(this,"ISPIPELINE failed. Line: 9.",e);}} %><% } %><% processOpenTag(response, pageContext, "createmap", new TagParameter[] {
new TagParameter("key1","ContentRepository"),
new TagParameter("key2","Locale"),
new TagParameter("key0","ViewContext"),
new TagParameter("value2",getObject("Locale")),
new TagParameter("value1",getObject("ContentRepository")),
new TagParameter("key3","ContextType"),
new TagParameter("value3",getObject("ContextType")),
new TagParameter("value0",getObject("ViewContext")),
new TagParameter("mapname","ViewContextParams")}, 12); %><% {try{executePipeline("ViewViewContextAssignments-TemplateCallback",((java.util.Map)(getObject("ViewContextParams"))),"Result");}catch(Exception e){Logger.error(this,"ISPIPELINE failed. Line: 17.",e);}} %><% processOpenTag(response, pageContext, "populatedictionary", new TagParameter[] {
new TagParameter("map",getObject("Result"))}, 18); %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ContextType"),null).equals(context.getFormattedValue("Product",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",20,e);}if (_boolean_result) { %><% {Object temp_obj = ("Products"); getPipelineDictionary().put("Title", temp_obj);} %><% {Object temp_obj = (getObject("ViewContext:PageletEntryPointViewContextObjectAssignmentPOs(\"(Class)com.intershop.beehive.xcs.capi.product.Product\",ContentRepository:RepositoryDomain)")); getPipelineDictionary().put("PepVcObjAssignments", temp_obj);} %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ContextType"),null).equals(context.getFormattedValue("Category",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",23,e);}if (_boolean_result) { %><% {Object temp_obj = ("Categories"); getPipelineDictionary().put("Title", temp_obj);} %><% {Object temp_obj = (getObject("ViewContext:PageletEntryPointViewContextObjectAssignmentPOs(\"(Class)com.intershop.beehive.xcs.capi.catalog.CatalogCategory\",ContentRepository:RepositoryDomain)")); getPipelineDictionary().put("PepVcObjAssignments", temp_obj);} %><% }} %><% {Object temp_obj = (context.getFormattedValue("ViewContextAssignments_",null) + context.getFormattedValue(getObject("ContextType"),null)); getPipelineDictionary().put("FormName", temp_obj);} %><% URLPipelineAction action392 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewViewContextAssignments-Dispatch",null)))),null));String site392 = null;String serverGroup392 = null;String actionValue392 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewViewContextAssignments-Dispatch",null)))),null);if (site392 == null){  site392 = action392.getDomain();  if (site392 == null)  {      site392 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup392 == null){  serverGroup392 = action392.getServerGroup();  if (serverGroup392 == null)  {      serverGroup392 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewViewContextAssignments-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print(context.getFormattedValue(getObject("FormName"),null));out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue392, site392, serverGroup392,true)); %><input type="hidden" name="ViewContextUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ViewContext:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {31}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="ContentRepositoryUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ContentRepository:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {32}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="ContextType" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ContextType"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {33}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="PageLocatorName" value="<% {String value = null;try{value=context.getFormattedValue(getObject("PageLocatorName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {34}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="table_title2 w e s" colspan="4"><% {String value = null;try{value=context.getFormattedValue(getObject("Title"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {39}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
</tr>
</table><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("Result:ContainerReadFirstTime")).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("Result:confirmDelete")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",43,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Clipboard:ObjectUUIDs") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",44,e);}if (_boolean_result) { %><table border="0" cellspacing="0" cellpadding="4" width="100%" class="confirm_box w e s">
<tr>
<td class="error_icon e">
<img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/confirmation.gif" width="16" height="15" alt="" border="0"/>
</td>
<td class="confirm" width="100%"><% {out.write(localizeISText("ViewContextAssignmentsByContextType.AreYouSureThatYouWantToDeleteTheSelectedAssignment.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td>
<table border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="button">
<input type="submit" name="delete" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ViewContextAssignmentsByContextType.OK.button",null)),null)%>" class="button"/>
</td>
<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="4" height="0" alt="" border="0"/></td>
<td class="button"><input type="submit" name="cancel" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ViewContextAssignmentsByContextType.Cancel.button",null)),null)%>" class="button"/></td>
</tr>
</table>
</td>
</tr>
</table><% } else { %><table class="error_box w e s" width="100%" border="0" cellpadding="4" cellspacing="0">
<tr>
<td class="error_icon e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error" width="100%"><% {out.write(localizeISText("ViewContextAssignmentsByContextType.PleaseSelectAtLeastOneAssignment.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% } %><% } %><table width="100%" border="0" cellspacing="0" cellpadding="0"> 
<% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("PepVcObjAssignments") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",76,e);}if (_boolean_result) { %><tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PermissionMap:SLD_MANAGE_CONTENT"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",78,e);}if (_boolean_result) { %><td class="table_header w e s" nowrap="nowrap" width="80">
<div id="<%=context.getFormattedValue(encodeString(context.getFormattedValue(context.getFormattedValue(getObject("ContextType"),null) + context.getFormattedValue("_A",null),null)),null)%>">
<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
<tr>
<td nowrap="nowrap"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PermissionMap:SLD_MANAGE_CONTENT"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",84,e);}if (_boolean_result) { %> 
<a href="javascript:selectAll('<%=context.getFormattedValue(encodeString(context.getFormattedValue(getObject("FormName"),null)),null)%>','SelectedPageletEntryPointUUID','<%=context.getFormattedValue(encodeString(context.getFormattedValue(context.getFormattedValue(getObject("ContextType"),null) + context.getFormattedValue("_A",null),null)),null)%>','<%=context.getFormattedValue(encodeString(context.getFormattedValue(context.getFormattedValue(getObject("ContextType"),null) + context.getFormattedValue("_B",null),null)),null)%>');" class="tableheader"><% {out.write(localizeISText("ViewContextAssignmentsByContextType.SelectAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a><% } else { %><% {out.write(localizeISText("ViewContextAssignmentsByContextType.SelectAll.link1",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %> 
</td>
</tr>
</table>
</div>
<div id="<%=context.getFormattedValue(encodeString(context.getFormattedValue(context.getFormattedValue(getObject("ContextType"),null) + context.getFormattedValue("_B",null),null)),null)%>" style="display:none">
<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
<tr>
<td nowrap="nowrap"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PermissionMap:SLD_MANAGE_CONTENT"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",97,e);}if (_boolean_result) { %> 
<a href="javascript:selectAll('<%=context.getFormattedValue(encodeString(context.getFormattedValue(getObject("FormName"),null)),null)%>','SelectedPageletEntryPointUUID','<%=context.getFormattedValue(encodeString(context.getFormattedValue(context.getFormattedValue(getObject("ContextType"),null) + context.getFormattedValue("_A",null),null)),null)%>','<%=context.getFormattedValue(encodeString(context.getFormattedValue(context.getFormattedValue(getObject("ContextType"),null) + context.getFormattedValue("_B",null),null)),null)%>');" class="tableheader"><% {out.write(localizeISText("ViewContextAssignmentsByContextType.ClearAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a><% } else { %><% {out.write(localizeISText("ViewContextAssignmentsByContextType.ClearAll.link1",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %> 
</td>
</tr>
</table>
</div>
</td>
<td class="table_header e s" nowrap="nowrap"><% {out.write(localizeISText("ViewContextAssignmentsByContextType.Name.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td><% } else { %><td class="table_header w e s" nowrap="nowrap"><% {out.write(localizeISText("ViewContextAssignmentsByContextType.Name.table_header1",null,null,null,null,null,null,null,null,null,null,null,null));} %></td><% } %><td class="table_header e s"><% {out.write(localizeISText("ViewContextAssignmentsByContextType.Description.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s"><% {out.write(localizeISText("ViewContextAssignmentsByContextType.PageInclude.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr> 
<% while (loop("PepVcObjAssignments","PepVcOAssignment",null)) { %><tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PermissionMap:SLD_MANAGE_CONTENT"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",116,e);}if (_boolean_result) { %><td class="w e s center"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PermissionMap:SLD_MANAGE_CONTENT"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",118,e);}if (_boolean_result) { %> 
<input type="checkbox" name="SelectedPageletEntryPointUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("PepVcOAssignment:From:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {119}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" 
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PepVcOAssignment:From:UUID"),null).equals(context.getFormattedValue(getObject("Clipboard:ObjectUUID(PepVcOAssignment:From:UUID)"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",120,e);}if (_boolean_result) { %>checked="checked"<% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("PepVcOAssignment:Domain:UUID"),null).equals(context.getFormattedValue(getObject("ContentRepository:RepositoryDomain:UUID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",121,e);}if (_boolean_result) { %>disabled="disabled"<% } %>
/>
<input type="hidden" name="AllPageletEntryPointUUIDs" value="<% {String value = null;try{value=context.getFormattedValue(getObject("PepVcOAssignment:From:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {123}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>&#160;
<% } else { %><input type="checkbox" disabled name="SelectedPageletEntryPointUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("PepVcOAssignment:From:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {125}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><% } %> 
</td>
<td class="table_detail e s"><% } else { %><td class="table_detail w e s"><% } %> 
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ContextType"),null).equals(context.getFormattedValue("Product",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",132,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PermissionMap:SLD_VIEW_PRODUCTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",133,e);}if (_boolean_result) { %> 
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ApplicationBO:getExtension(\"(Class)com.intershop.sellside.enterprise.capi.application.ApplicationBOApplicationSelectorExtension\"):Type"),null).equals(context.getFormattedValue("organization",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",134,e);}if (_boolean_result) { %><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductContent-ListPageletEntryPoints",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ProductID",null),context.getFormattedValue(getObject("PepVcOAssignment:To:UUID"),null)))),null)%>" class="table_detail_link"><% } else { %><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelProductContent-ListPageletEntryPoints",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ProductID",null),context.getFormattedValue(getObject("PepVcOAssignment:To:UUID"),null)))),null)%>" class="table_detail_link"><% } %><% {String value = null;try{value=context.getFormattedValue(getObject("PepVcOAssignment:To:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {139}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></a><% } else { %><% {String value = null;try{value=context.getFormattedValue(getObject("PepVcOAssignment:To:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {141}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ContextType"),null).equals(context.getFormattedValue("Category",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",143,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PermissionMap:SLD_VIEW_CATALOGS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",144,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ApplicationBO:getExtension(\"(Class)com.intershop.sellside.enterprise.capi.application.ApplicationBOApplicationSelectorExtension\"):Type"),null).equals(context.getFormattedValue("organization",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",145,e);}if (_boolean_result) { %><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCategory-ListPageletEntryPoints",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("CatalogCategoryID",null),context.getFormattedValue(getObject("PepVcOAssignment:To:UUID"),null)))),null)%>" class="table_detail_link"><% } else { %><% processOpenTag(response, pageContext, "getcatalogbycatalogcategory", new TagParameter[] {
new TagParameter("catalogalias","Catalog"),
new TagParameter("category",getObject("PepVcOAssignment:To"))}, 148); %><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelCatalogCategoryContent-ListPageletEntryPoints",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("CatalogCategoryID",null),context.getFormattedValue(getObject("PepVcOAssignment:To:UUID"),null))).addURLParameter(context.getFormattedValue("CatalogID",null),context.getFormattedValue(getObject("Catalog:Id"),null))),null)%>" class="table_detail_link"><% } %><% {String value = null;try{value=context.getFormattedValue(getObject("PepVcOAssignment:To:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {151}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></a><% } else { %><% {String value = null;try{value=context.getFormattedValue(getObject("PepVcOAssignment:To:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {153}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %><% }} %></td>
<td class="table_detail e s"><% {String value = null;try{value=context.getFormattedValue(getObject("PepVcOAssignment:To:Description"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {158}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
<td class="table_detail e s">
<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPageletEntryPoint-View",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ContentRepositoryUUID",null),context.getFormattedValue(getObject("ContentRepository:UUID"),null))).addURLParameter(context.getFormattedValue("PageletEntryPointUUID",null),context.getFormattedValue(getObject("PepVcOAssignment:From:UUID"),null)).addURLParameter(context.getFormattedValue("LocaleId",null),context.getFormattedValue(getObject("Locale:LocaleID"),null)).addURLParameter(context.getFormattedValue("Page",null),context.getFormattedValue(getObject("PepVcOAssignment:From:Page"),null)).addURLParameter(context.getFormattedValue("StartFlag",null),context.getFormattedValue("true",null))),null)%>" class="table_detail_link"><% processOpenTag(response, pageContext, "displayname", new TagParameter[] {
new TagParameter("Nameable",getObject("PepVcOAssignment:From")),
new TagParameter("Locale",getObject("Locale")),
new TagParameter("Print","false"),
new TagParameter("NameableDisplayName","DisplayName")}, 168); %><% {String value = null;try{value=context.getFormattedValue(getObject("DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {169}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></a>
&nbsp;<% processOpenTag(response, pageContext, "pageletentrypointstatus", new TagParameter[] {
new TagParameter("PageletEntryPoint",getObject("PepVcOAssignment:From")),
new TagParameter("ContentRepository",getObject("ContentRepository"))}, 171); %></td>
</tr><% } %><tr><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (hasLoopElements("PepVcObjAssignments") ? Boolean.TRUE : Boolean.FALSE)).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("PermissionMap:SLD_MANAGE_CONTENT")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",176,e);}if (_boolean_result) { %><td class="w e s" align="right" colspan="4">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button">
<input type="submit" name="confirmDelete" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ViewContextAssignmentsByContextType.Delete.button",null)),null)%>" class="button"/>
</td>
</tr>
</table>
</td><% } %></tr><% } else { %><tr>
<td class="table_detail w e s" colspan="4"><% {out.write(localizeISText("ViewContextAssignmentsByContextType.CurrentlyThereAreNoObjectsAssigned.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% } %> 
</table><% out.print("</form>"); %><% printFooter(out); %>