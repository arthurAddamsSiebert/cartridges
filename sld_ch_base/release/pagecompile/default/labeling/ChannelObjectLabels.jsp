<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/Modules", null, "2");} %><!-- Main Content -->
<!-- Page Navigator --><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("LabelObjectType"),null).equals(context.getFormattedValue("Product",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",5,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("text1",context.getFormattedValue(" - ",null) + context.getFormattedValue(localizeText(context.getFormattedValue("ChannelObjectLabels.Labels.text1",null)),null)),
new TagParameter("removewizard","true"),
new TagParameter("listview","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelObjectLabels-GetLabelsByObject",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null))).addURLParameter(context.getFormattedValue("ProductID",null),context.getFormattedValue(getObject("Product:UUID"),null)).addURLParameter(context.getFormattedValue("LabelObjectType",null),context.getFormattedValue("Product",null)))),
new TagParameter("id","ChannelProductDetails"),
new TagParameter("text",getObject("Product:Name"))}, 6); %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("LabelObjectType"),null).equals(context.getFormattedValue("CatalogCategory",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",7,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "categorydisplayname", new TagParameter[] {
new TagParameter("CatDisplayNameResult","CatDisplayName"),
new TagParameter("Category",getObject("Category")),
new TagParameter("UseIDFallback","true"),
new TagParameter("SkipPrint","true")}, 8); %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("text1",context.getFormattedValue(" - ",null) + context.getFormattedValue(localizeText(context.getFormattedValue("ChannelObjectLabels.Labels.text1",null)),null)),
new TagParameter("listview","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelObjectLabels-GetLabelsByObject",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("CatalogCategoryID",null),context.getFormattedValue(getObject("CatalogCategoryID"),null))).addURLParameter(context.getFormattedValue("CatalogID",null),context.getFormattedValue(getObject("CatalogID"),null)).addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChanelID"),null)).addURLParameter(context.getFormattedValue("LabelObjectType",null),context.getFormattedValue("CatalogCategory",null)))),
new TagParameter("id",getObject("Category:UUID")),
new TagParameter("text",getObject("CatDisplayName"))}, 9); %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("LabelObjectType"),null).equals(context.getFormattedValue("Pagelet",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",10,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("text1",context.getFormattedValue(" - ",null) + context.getFormattedValue(localizeText(context.getFormattedValue("ChannelObjectLabels.Labels.text1",null)),null)),
new TagParameter("removewizard","true"),
new TagParameter("listview","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelObjectLabels-GetLabelsByObject",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("PageletID",null),context.getFormattedValue(getObject("PageletID"),null))).addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChanelID"),null)).addURLParameter(context.getFormattedValue("LabelObjectType",null),context.getFormattedValue("Pagelet",null)))),
new TagParameter("id",getObject("PageletID")),
new TagParameter("text",getObject("Pagelet:DisplayName"))}, 11); %><% }}} %><!-- EO Page Navigator --><%
	getPipelineDictionary().put("SelectedTab", "Labels");
%><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("LabelObjectType"),null).equals(context.getFormattedValue("Product",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",17,e);}if (_boolean_result) { %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,context.getFormattedValue(context.getFormattedValue("inc/ProductTabs_",null) + context.getFormattedValue(getObject("CurrentChannel:TypeCode"),null),null), null, "18");} %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("LabelObjectType"),null).equals(context.getFormattedValue("CatalogCategory",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",19,e);}if (_boolean_result) { %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,context.getFormattedValue(context.getFormattedValue("inc/CatalogTabs_",null) + context.getFormattedValue(getObject("CurrentChannel:TypeCode"),null),null), null, "20");} %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("LabelObjectType"),null).equals(context.getFormattedValue("Pagelet",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",21,e);}if (_boolean_result) { %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,context.getFormattedValue("inc/ChannelPageComponentTabs",null), null, "22");} %><% }}} %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PRODUCTS")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("LabelObjectType"),null).equals(context.getFormattedValue("Product",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_CATALOGS")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("LabelObjectType"),null).equals(context.getFormattedValue("CatalogCategory",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_LABELS")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("LabelObjectType"),null).equals(context.getFormattedValue("Pagelet",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",24,e);}if (_boolean_result) { %><% {Object temp_obj = ("true"); getPipelineDictionary().put("ManageLabelsPermission", temp_obj);} %><% } %><!-- Labels Main Area --><% URLPipelineAction action350 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelObjectLabels-Dispatch",null)))),null));String site350 = null;String serverGroup350 = null;String actionValue350 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelObjectLabels-Dispatch",null)))),null);if (site350 == null){  site350 = action350.getDomain();  if (site350 == null)  {      site350 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup350 == null){  serverGroup350 = action350.getServerGroup();  if (serverGroup350 == null)  {      serverGroup350 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelObjectLabels-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("labelListForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue350, site350, serverGroup350,true)); %><table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" class="w e s table_title"><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("LabelObjectType"),null).equals(context.getFormattedValue("Product",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",35,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("Product:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {36}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;-&nbsp;<% {out.write(localizeISText("ChannelObjectLabels.Labels.text1",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("LabelObjectType"),null).equals(context.getFormattedValue("CatalogCategory",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",37,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("CatDisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {38}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;-&nbsp;<% {out.write(localizeISText("ChannelObjectLabels.Labels.text1",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("LabelObjectType"),null).equals(context.getFormattedValue("Pagelet",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",39,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("Pagelet:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {40}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;-&nbsp;<% {out.write(localizeISText("ChannelObjectLabels.Labels.text1",null,null,null,null,null,null,null,null,null,null,null,null));} %><% }}} %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("confirmUnassign"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",44,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Clipboard:ObjectUUIDs") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",45,e);}if (_boolean_result) { %><tr>
<td>
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="confirm_box w e s">
<tr>
<td class="error_icon e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/confirmation.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error" width="100%"><% {out.write(localizeISText("ChannelObjectLabels.UnassignTheSelectedLabels.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td>
<table border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="button">
<input type="submit" name="unassign" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ChannelObjectLabels.OK.button",null)),null)%>" class="button"/>
</td>
<td>&nbsp;</td>
<td class="button">
<input type="submit" name="cancel" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ChannelObjectLabels.Cancel.button",null)),null)%>" class="button"/>
</td>
</tr>
</table>
</td>
</tr>
</table>
</td>
</tr><% } else { %><tr>
<td>
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr>
<td class="error_icon e">
<img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/>
</td>
<td class="error" width="100%"><% {out.write(localizeISText("ChannelObjectLabels.YouHaveNotSelectedALabel.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
</td>
</tr><% } %><% } %> 
<!-- product locking information --><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("LabelObjectType"),null).equals(context.getFormattedValue("Product",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",88,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PRODUCTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",89,e);}if (_boolean_result) { %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,context.getFormattedValue(context.getFormattedValue("inc/ProductLockInformation_",null) + context.getFormattedValue(getObject("CurrentChannel:TypeCode"),null),null), null, "90");} %><% } %><% } %><!-- product sharing information --><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/ProductSharingInformation", null, "94");} %><!-- end product sharing information -->
<!-- end product locking information -->
<tr>
<td class="table_title_description w e"><% {out.write(localizeISText("ChannelObjectLabels.TheListShowsAllCurrentlyAssignedLabels.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ManageLabelsPermission"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",101,e);}if (_boolean_result) { %><br/><br/><% {out.write(localizeISText("ChannelObjectLabels.ClickNewToAssignAnotherLabel.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %></td>
</tr>
</table><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("AssignedLabels") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",108,e);}if (_boolean_result) { %><table width="100%" border="0" cellspacing="0" cellpadding="0" class="n w">
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ManageLabelsPermission"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",111,e);}if (_boolean_result) { %><td class="e s" nowrap="nowrap" width="80">
<div id="A">
<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
<tr>
<td nowrap="nowrap">
<a href="javascript:selectAll('labelListForm','SelectedObjectUUID','A','B');" class="tableheader"><% {out.write(localizeISText("ChannelObjectLabels.SelectAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
</td>
</tr>
</table>
</div>
<div id="B" style="display:none">
<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
<tr>
<td nowrap="nowrap">
<a href="javascript:selectAll('labelListForm','SelectedObjectUUID','A','B');" class="tableheader"><% {out.write(localizeISText("ChannelObjectLabels.ClearAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
</td>
</tr>
</table>
</div>
</td><% } %><td class="table_header e s"><% {out.write(localizeISText("ChannelObjectLabels.Name.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s" nowrap="nowrap"><% {out.write(localizeISText("ChannelObjectLabels.ID.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s" nowrap="nowrap"><% {out.write(localizeISText("ChannelObjectLabels.Description.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s" nowrap="nowrap"><% {out.write(localizeISText("ChannelObjectLabels.CreatedBy.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% while (loop("AssignedLabels","Label",null)) { %><tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ManageLabelsPermission"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",140,e);}if (_boolean_result) { %><td class="e s center top">
<input type="checkbox" name="SelectedObjectUUID" value="<%=context.getFormattedValue(getObject("Label:UUID"),null)%>" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Label:UUID"),null).equals(context.getFormattedValue(getObject("Clipboard:ObjectUUID(Label:UUID)"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",142,e);}if (_boolean_result) { %>checked="checked"<% } %> />
<input type="hidden" name="ObjectUUID" value="<%=context.getFormattedValue(getObject("Label:UUID"),null)%>"/>
</td><% } %><td class="table_detail e s top" >
<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelLabel-Edit",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("LabelID",null),context.getFormattedValue(getObject("Label:UUID"),null))).addURLParameter(context.getFormattedValue("ProductID",null),context.getFormattedValue(getObject("Product:UUID"),null)).addURLParameter(context.getFormattedValue("LabelObjectType",null),context.getFormattedValue("Product",null)).addURLParameter(context.getFormattedValue("backToObjectLabels",null),context.getFormattedValue("backToObjectLabels",null))),null)%>" class="table_detail_link"><% {String value = null;try{value=context.getFormattedValue(getObject("Label:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {147}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></a>&nbsp;
</td>
<td class="table_detail e s top" nowrap="nowrap">
<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelLabel-Edit",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("LabelID",null),context.getFormattedValue(getObject("Label:UUID"),null))).addURLParameter(context.getFormattedValue("ProductID",null),context.getFormattedValue(getObject("Product:UUID"),null)).addURLParameter(context.getFormattedValue("LabelObjectType",null),context.getFormattedValue("Product",null)).addURLParameter(context.getFormattedValue("backToObjectLabels",null),context.getFormattedValue("backToObjectLabels",null))),null)%>" class="table_detail_link"><% {String value = null;try{value=context.getFormattedValue(getObject("Label:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {150}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></a>&nbsp;
</td>
<td class="table_detail e s top" ><% {String value = null;try{value=context.getFormattedValue(getObject("Label:Description"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {153}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;
</td>
<td class="table_detail e s top" nowrap="nowrap"><% {String value = null;try{value=context.getFormattedValue(getObject("Label:User:Profile:FirstName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {156}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;<% {String value = null;try{value=context.getFormattedValue(getObject("Label:User:Profile:LastName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {156}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;
</td>
</tr><% } %></table><% } else { %><table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s n">
<tr>
<td class="table_detail"><% {out.write(localizeISText("ChannelObjectLabels.CurrentlyThereAreNoLabelsAssigned.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ManageLabelsPermission"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",170,e);}if (_boolean_result) { %><table class="w e s" width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button">
<input type="hidden" name="LabelObjectType" value="<% {String value = null;try{value=context.getFormattedValue(getObject("LabelObjectType"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {177}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" />
<input type="hidden" name="<% {String value = null;try{value=context.getFormattedValue(context.getFormattedValue(getObject("LabelObjectType"),null) + context.getFormattedValue("ID",null),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {178}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Object:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {178}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" />
<input type="hidden" name="SelectedMenuItem" value="<% {String value = null;try{value=context.getFormattedValue(getObject("SelectedMenuItem"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {179}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" />
<input type="submit" name="select" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ChannelObjectLabels.New.button",null)),null)%>" <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((context.getFormattedValue(getObject("LabelObjectType"),null).equals(context.getFormattedValue("Product",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && !((Boolean) (((disableErrorMessages().isDefined(getObject("ProductLockedForMe")))))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",180,e);}if (_boolean_result) { %>disabled="disabled"<% } %> class="button"/>
</td><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("AssignedLabels") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",182,e);}if (_boolean_result) { %><td class="button">
<input type="submit" name="confirmUnassign" <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((context.getFormattedValue(getObject("LabelObjectType"),null).equals(context.getFormattedValue("Product",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && !((Boolean) (((disableErrorMessages().isDefined(getObject("ProductLockedForMe")))))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",184,e);}if (_boolean_result) { %>disabled="disabled"<% } %> value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ChannelObjectLabels.Unassign.button",null)),null)%>" class="button"/>
</td><% } %></tr>
</table>
</td>
</tr>
</table><% } %></td>
</tr>
</table><% out.print("</form>"); %><% processOpenTag(response, pageContext, "objectdetailspagingbar", new TagParameter[] {
new TagParameter("nameforobjectuuid","ProductID"),
new TagParameter("pipeline","ViewChannelObjectLabels-GetLabelsByObject"),
new TagParameter("currentobject",getObject("Product")),
new TagParameter("parametervalue3",getObject("DetailsPageablePipelineName")),
new TagParameter("parametername1","ChannelID"),
new TagParameter("parametervalue2","Product"),
new TagParameter("parametervalue1",getObject("ChannelID")),
new TagParameter("parametername2","LabelObjectType"),
new TagParameter("parametername3","DetailsPageablePipelineName"),
new TagParameter("pagelocatorname","ProductList"),
new TagParameter("pagenumber",getObject("DetailsPageNumber"))}, 197); %><% printFooter(out); %>