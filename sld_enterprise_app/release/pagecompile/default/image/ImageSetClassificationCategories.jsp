<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><div><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="10" alt="" border="0"/></div>
<table border="0" cellpadding="0" cellspacing="0" width="100%" >
<tr>
<td>
<table cellspacing="0" cellpadding="5" border="0" width="100%" class="infobox aldi">
<tr>
<td class="infobox_title" nowrap="nowrap"><% {out.write(localizeISText("ImageSetClassificationCategories.ClassificationCategories.infobox_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
</td>
</tr>
<!-- info message if nothing is selected--><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_PRODUCTS")))).booleanValue() && ((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("confirmUnassignCategories")))).booleanValue() && ((Boolean) ((((Boolean) ((hasLoopElements("ClipboardSelectedCategories:ObjectUUIDs") ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",17,e);}if (_boolean_result) { %><tr>
<td class="w e s">
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box">
<tr>
<td class="error_icon e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error" width="100%"><% {out.write(localizeISText("ImageSetClassificationCategories.YouHaveNotSelectedAnyClassificationCategories.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
</td>
</tr><% } %><tr>
<!-- delete confirmation if something is selected--><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_PRODUCTS")))).booleanValue() && ((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("confirmUnassignCategories")))).booleanValue() && ((Boolean) (hasLoopElements("ClipboardSelectedCategories:ObjectUUIDs") ? Boolean.TRUE : Boolean.FALSE)).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",33,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("cancelbtnname","cancelUnassignCategories"),
new TagParameter("okbtnname","unassignCategories"),
new TagParameter("type","mda")}, 34); %><% } %><td class="table_title_description w e s"><% {out.write(localizeISText("ImageSetClassificationCategories.TheListShowsAllClassificationCategories.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Categories") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",42,e);}if (_boolean_result) { %><tr>
<td>
<table cellspacing="0" cellpadding="0" border="0" width="100%" class="w">
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_PRODUCTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",48,e);}if (_boolean_result) { %><td nowrap="nowrap" width="80" class="table_header e s">
<div id="C">
<table cellspacing="0" cellpadding="0" border="0" width="80" class="table_header center">
<tr>
<td nowrap="nowrap">
<a class="tableheader" href="javascript:selectAll('ImageSetForm','SelectedCategoryUUID','C','D')"><% {out.write(localizeISText("PageletLabels.SelectAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
</td>
</tr>
</table>
</div>
<div style="display: none" id="D">
<table cellspacing="0" cellpadding="0" border="0" width="80" class="table_header center">
<tr>
<td nowrap="nowrap">
<a class="tableheader" href="javascript:selectAll('ImageSetForm','SelectedCategoryUUID','C','D')"><% {out.write(localizeISText("NewProductSetChannelAssignment.ClearAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
</td>
</tr>
</table>
</div>
</td><% } %><td nowrap="nowrap" class="table_header e s"><% {out.write(localizeISText("SelectCatalog.ClassificationCatalog.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s"><% {out.write(localizeISText("sld_enterprise_app.Category",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% while (loop("Categories","Category",null)) { %><tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_PRODUCTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",77,e);}if (_boolean_result) { %><td class="e s center top">
<input type="checkbox" value="<%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("Category:UUID"),null)),null)%>" name="SelectedCategoryUUID" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Category:UUID"),null).equals(context.getFormattedValue(getObject("ClipboardSelectedCategories:ObjectUUID(Category:UUID)"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",79,e);}if (_boolean_result) { %>checked="checked"<% } %> />
<input type="hidden" value="<%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("Category:UUID"),null)),null)%>" name="CategoryUUID" />
</td><% } %><td nowrap="nowrap" class="table_detail e s"><% while (loop("CategoryPath:get(Category:UUID)","parent_path",null)) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("parent_path:Name"),null).equals(context.getFormattedValue(getObject("Category:Name"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",89,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_VIEW_CATALOGS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",90,e);}if (_boolean_result) { %><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewBrowseCatalogCategory-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("CatalogCategoryID",null),context.getFormattedValue(getObject("Category:UUID"),null)))),null)%>" class="table_detail_link"><b><% {String value = null;try{value=context.getFormattedValue(getObject("Category:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {91}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></b></a><% } else { %><b><% {String value = null;try{value=context.getFormattedValue(getObject("Category:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {93}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></b><% } %><% } else { %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("parent_path:isRootCategory"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",96,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("parent_path:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {97}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %><% {String value = null;try{value=context.getFormattedValue(getObject("parent_path:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {99}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %>&nbsp;&gt;&nbsp;
<% } %><% } %></td>
<td nowrap="nowrap" class="table_detail e s"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_VIEW_CATALOGS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",105,e);}if (_boolean_result) { %><a class="table_detail_link" href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewBrowseCatalogCategory-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("CatalogCategoryID",null),context.getFormattedValue(getObject("Category:UUID"),null)))),null)%>"><% {String value = null;try{value=context.getFormattedValue(getObject("Category:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {106}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></a><% } else { %><% {String value = null;try{value=context.getFormattedValue(getObject("Category:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {108}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %></td>
</tr><% } %></table>
</td>
</tr><% } else { %><tr>
<td class="table_detail w e s"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_PRODUCTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",120,e);}if (_boolean_result) { %><% {out.write(localizeISText("ImageSetClassificationCategories.ThereAreNoClassificationCategoriesToShowAddOpt.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else { %><% {out.write(localizeISText("ImageSetClassificationCategories.ThereAreNoClassificationCategoriesToShow.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %></td>
</tr><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_PRODUCTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",130,e);}if (_boolean_result) { %><tr>
<td class="w e s">
<table cellspacing="0" cellpadding="0" border="0" width="100%">
<tr>
<td align="right">
<table cellspacing="4" cellpadding="0" border="0">
<tr>
<td class="button"><input type="submit" class="button" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ContentProcessingSelectLabel.Add.button",null)),null)%>" name="selectCatalog" /></td><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Categories") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",139,e);}if (_boolean_result) { %><td class="button"><input type="submit" class="button" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ProductSharingChannel.Unassign.button",null)),null)%>" name="confirmUnassignCategories" /></td><% } %></tr>
</table>
</td>
</tr>
</table>
</td>
</tr><% } %></table>
<div><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></div><% processOpenTag(response, pageContext, "flexpagingbar", new TagParameter[] {
new TagParameter("rowsperpage",getObject("RowsPerPageClassificationCategories")),
new TagParameter("pagesizeprefix","PageSizeCategories_"),
new TagParameter("pageable","Categories"),
new TagParameter("variablepagesize","true"),
new TagParameter("pagenumberprefix","PageNumberCategories_")}, 152); %><!-- EO Working Area --><% printFooter(out); %>