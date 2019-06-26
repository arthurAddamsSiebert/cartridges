<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewCategoryImageSetDefinitions_32-ListImageSets",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ImageTypeUUID",null),context.getFormattedValue(getObject("ImageType:UUID"),null))))),
new TagParameter("text",localizeText(context.getFormattedValue("CatalogCategorySelectImageSets_32.AddImageSets.text",null)))}, 4); %><!-- Working Area --><% URLPipelineAction action158 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCategoryImageSetDefinitions_32-Dispatch",null)))),null));String site158 = null;String serverGroup158 = null;String actionValue158 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCategoryImageSetDefinitions_32-Dispatch",null)))),null);if (site158 == null){  site158 = action158.getDomain();  if (site158 == null)  {      site158 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup158 == null){  serverGroup158 = action158.getServerGroup();  if (serverGroup158 == null)  {      serverGroup158 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCategoryImageSetDefinitions_32-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("ImageSetListForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue158, site158, serverGroup158,true)); %><input type="hidden" name="CatalogCategoryID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Category:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {10}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" />
<input type="hidden" name="CatalogUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Catalog:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {11}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" />
<input type="hidden" name="CatalogID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Catalog:Id"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {12}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" />
<table border="0" cellpadding="0" cellspacing="0" width="100%" class="w e s n">
<tr>
<td width="100%" class="table_title s"><% {String value = null;try{value=context.getFormattedValue(getObject("Category:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {15}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> - <% {out.write(localizeISText("CatalogCategorySelectImageSets_32.AssignImageSets.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("assignImageSets"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",17,e);}if (_boolean_result) { %><tr>
<td>
<table border="0" cellspacing="0" cellpadding="4" width="100%"
class="error_box s">
<tr valign="top">
<td class="error_icon top e"><img
src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt=""
border="0" /></td>
<td class="error top" width="100%"><% {out.write(localizeISText("CatalogCategorySelectImageSets_32.YouHaveNotSelectedAnyImageSetsSelectAtLeastOne.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
</td>
</tr><% } %><tr>
<td class="table_title_description"><% {out.write(localizeISText("CatalogCategorySelectImageSets_32.TheListShowsAllImageSetsOfThisOrganizationUseThe.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("ImageSets") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",37,e);}if (_boolean_result) { %><table border="0" cellpadding="0" cellspacing="0" width="100%"
class="w e">
<tr>
<td class="e s" nowrap="nowrap" width="80">
<div id="A">
<table border="0" cellspacing="0" cellpadding="0"
class="table_header center" width="80">
<tr>
<td nowrap="nowrap"><a
href="javascript:selectAll('ImageSetListForm','SelectedImageSetID','A','B');"
class="tableheader"><% {out.write(localizeISText("CatalogCategorySelectImageSets_32.SelectAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a></td>
</tr>
</table>
</div>
<div id="B" style="display: none">
<table border="0" cellspacing="0" cellpadding="0"
class="table_header center" width="80">
<tr>
<td nowrap="nowrap"><a
href="javascript:selectAll('ImageSetListForm','SelectedImageSetID','A','B');"
class="tableheader"><% {out.write(localizeISText("CatalogCategorySelectImageSets_32.ClearAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a></td>
</tr>
</table>
</div>
</td>
<td class="table_header e s"><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("SortAttribute"))))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SortAttribute"),null).equals(context.getFormattedValue("name",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SortOrder"),null).equals(context.getFormattedValue("desc",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",65,e);}if (_boolean_result) { %><a
href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCategoryImageSetDefinitions_32-ListImageSetsSorted",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SortAttribute",null),context.getFormattedValue("name",null))).addURLParameter(context.getFormattedValue("SortOrder",null),context.getFormattedValue("asc",null)).addURLParameter(context.getFormattedValue("CatalogUUID",null),context.getFormattedValue(getObject("Catalog:UUID"),null)).addURLParameter(context.getFormattedValue("CatalogCategoryID",null),context.getFormattedValue(getObject("Category:UUID"),null))),null)%>"
class="tableheader"><% {out.write(localizeISText("CatalogCategorySelectImageSets_32.Name.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a><% } else { %><a
href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCategoryImageSetDefinitions_32-ListImageSetsSorted",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SortAttribute",null),context.getFormattedValue("name",null))).addURLParameter(context.getFormattedValue("SortOrder",null),context.getFormattedValue("desc",null)).addURLParameter(context.getFormattedValue("CatalogUUID",null),context.getFormattedValue(getObject("Catalog:UUID"),null)).addURLParameter(context.getFormattedValue("CatalogCategoryID",null),context.getFormattedValue(getObject("Category:UUID"),null))),null)%>"
class="tableheader"><% {out.write(localizeISText("CatalogCategorySelectImageSets_32.Name.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a><% } %></td>
<td class="table_header s"><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("SortAttribute"))))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SortAttribute"),null).equals(context.getFormattedValue("id",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SortOrder"),null).equals(context.getFormattedValue("desc",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",77,e);}if (_boolean_result) { %><a
href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCategoryImageSetDefinitions_32-ListImageSetsSorted",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SortAttribute",null),context.getFormattedValue("id",null))).addURLParameter(context.getFormattedValue("SortOrder",null),context.getFormattedValue("asc",null)).addURLParameter(context.getFormattedValue("CatalogUUID",null),context.getFormattedValue(getObject("Catalog:UUID"),null)).addURLParameter(context.getFormattedValue("CatalogCategoryID",null),context.getFormattedValue(getObject("Category:UUID"),null))),null)%>"
class="tableheader"><% {out.write(localizeISText("CatalogCategorySelectImageSets_32.ID.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a><% } else { %><a
href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCategoryImageSetDefinitions_32-ListImageSetsSorted",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SortAttribute",null),context.getFormattedValue("id",null))).addURLParameter(context.getFormattedValue("SortOrder",null),context.getFormattedValue("desc",null)).addURLParameter(context.getFormattedValue("CatalogUUID",null),context.getFormattedValue(getObject("Catalog:UUID"),null)).addURLParameter(context.getFormattedValue("CatalogCategoryID",null),context.getFormattedValue(getObject("Category:UUID"),null))),null)%>"
class="tableheader"><% {out.write(localizeISText("CatalogCategorySelectImageSets_32.ID.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a><% } %></td>
</tr><% while (loop("ImageSets","ImageSet",null)) { %><tr>
<td class="table_detail top e s center"><% {Object temp_obj = ("false"); getPipelineDictionary().put("isAssigned", temp_obj);} %><% while (loop("CategoryImageSets","CatImageSet",null)) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ImageSet:UUID"),null).equals(context.getFormattedValue(getObject("CatImageSet:UUID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",94,e);}if (_boolean_result) { %><% {Object temp_obj = ("true"); getPipelineDictionary().put("isAssigned", temp_obj);} %><% } %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("isAssigned"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",98,e);}if (_boolean_result) { %><input type="checkbox" checked="checked" disabled="disabled" /><% } else { %><input type="checkbox" name="SelectedImageSetID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ImageSet:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {101}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ImageSet:ID"),null).equals(context.getFormattedValue(getObject("ClipboardAvailableImageSets:ObjectUUID(ImageSet:ID)"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",101,e);}if (_boolean_result) { %>checked="checked"<% } %> /><% } %><input type="hidden" name="ObjectUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ImageSet:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {103}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
</td>
<td class="table_detail top e s"><% {String value = null;try{value=context.getFormattedValue(getObject("ImageSet:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {105}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
<td class="table_detail top s"><% {String value = null;try{value=context.getFormattedValue(getObject("ImageSet:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {107}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
</tr><% } %></table><% } else { %><table border="0" cellpadding="0" cellspacing="0" width="100%"
class="w e s">
<tr>
<td class="table_detail"><% {out.write(localizeISText("CatalogCategorySelectImageSets_32.CurrentlyThereAreNoImageSetsDefined.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></tr>
</table><% } %><table class="w e s" width="100%" border="0" cellspacing="0"
cellpadding="0">
<tr>
<td align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button">
<input type="submit" name="assignImageSets" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("CatalogCategorySelectImageSets_32.OK.button",null)),null)%>" class="button"
<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (hasLoopElements("ImageSets") ? Boolean.TRUE : Boolean.FALSE)).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",127,e);}if (_boolean_result) { %>disabled="disabled"<% } %> />
</td>
<td class="button">
<input type="submit" name="cancel" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("CatalogCategorySelectImageSets_32.Cancel.button",null)),null)%>" class="button" />
</td>
</tr>
</table>
</td>
</tr>
</table>
<!-- Start Page Cursor -->
<div>
<img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0" />
</div><% processOpenTag(response, pageContext, "flexpagingbar", new TagParameter[] {
new TagParameter("rowsperpage",getObject("RowsPerPage")),
new TagParameter("pageable","ImageSets"),
new TagParameter("variablepagesize","true")}, 141); %><!-- End Page Cursor --><% out.print("</form>"); %><!-- EO Working Area --><% printFooter(out); %>