<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><!-- TEMPLATENAME: SelectCatalog.isml -->
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- Working Area -->
<!-- Page Navigator --><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewPageCategoryAssignmentFilter-SelectCatalog",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null))))),
new TagParameter("id","PageCategoryAssignmentFilterCatalogSelection"),
new TagParameter("text",localizeText(context.getFormattedValue("SelectCatalog.Step1SelectCatalog.text",null)))}, 7); %><!-- EO Page Navigator -->
<!-- Title and Description -->
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" class="table_title w e s"><% {out.write(localizeISText("SelectCatalog.Step1SelectCatalog.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<!-- Error Handling -->
<!-- confirmation if nothing is selected --><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("SelectCategory")))).booleanValue() && ((Boolean) ((((Boolean) (disableErrorMessages().isDefined(getObject("CatalogUUID")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",17,e);}if (_boolean_result) { %><tr>
<td>
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr>
<td class="error_icon e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error" width="100%"><% {out.write(localizeISText("SelectCatalog.YouHaveNotSelectedACatalogUseTheRadioButtons.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
</td>
</tr><% } %><!-- EO Error Handling -->
<tr>
<td class="w e table_title_description" colspan="5"><% {out.write(localizeISText("SelectCatalog.Step1Of2NextStepBrowseCatalogToSelectTargetCategory.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr> 
</table>
<!-- EO Titel and Description -->
<!-- Main Content --><% URLPipelineAction action355 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPageCategoryAssignmentFilter-Dispatch",null)))),null));String site355 = null;String serverGroup355 = null;String actionValue355 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPageCategoryAssignmentFilter-Dispatch",null)))),null);if (site355 == null){  site355 = action355.getDomain();  if (site355 == null)  {      site355 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup355 == null){  serverGroup355 = action355.getServerGroup();  if (serverGroup355 == null)  {      serverGroup355 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPageCategoryAssignmentFilter-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("CatalogListForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue355, site355, serverGroup355,true)); %><table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td>
<table width="100%" border="0" cellspacing="0" cellpadding="0"><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (hasLoopElements("StandardCatalogs") ? Boolean.TRUE : Boolean.FALSE)).booleanValue() || ((Boolean) (hasLoopElements("ClassificationCatalogs") ? Boolean.TRUE : Boolean.FALSE)).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",47,e);}if (_boolean_result) { %> 
<% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("StandardCatalogs") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",48,e);}if (_boolean_result) { %><tr>
<td class="table_header aldi" colspan="5" nowrap="nowrap"><% {out.write(localizeISText("SelectCatalog.StandardCatalogs.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td class="table_header w e s center"><% {out.write(localizeISText("SelectCatalog.Select.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s" nowrap="nowrap"><% {out.write(localizeISText("SelectCatalog.Name.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s" nowrap="nowrap"><% {out.write(localizeISText("SelectCatalog.Type.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s" nowrap="nowrap"><% {out.write(localizeISText("SelectCatalog.Status.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s" nowrap="nowrap"><% {out.write(localizeISText("SelectCatalog.Description.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% while (loop("StandardCatalogs","Catalog",null)) { %><tr>
<td class="center w e s" width="1%"><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("CatalogUUID"),null).equals(context.getFormattedValue(getObject("Catalog:UUID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",62,e);}if (_boolean_result) { %><input type="radio" name="CatalogUUID" value="<%=context.getFormattedValue(getObject("Catalog:UUID"),null)%>" checked="checked"/><% } else { %><input type="radio" name="CatalogUUID" value="<%=context.getFormattedValue(getObject("Catalog:UUID"),null)%>"/><% } %> 
</td>
<td class="table_detail e s" nowrap="nowrap"><% {String value = null;try{value=context.getFormattedValue(getObject("Catalog:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {68}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
<td class="table_detail e s top" nowrap="nowrap"><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Catalog:isProxy"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",69,e);}if (_boolean_result) { %><% {out.write(localizeISText("SelectCatalog.Shared.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %> <% } else { %><% {out.write(localizeISText("SelectCatalog.Local.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %> <% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("Catalog:TypeCode")).doubleValue() ==((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",69,e);}if (_boolean_result) { %><% {out.write(localizeISText("SelectCatalog.StandardCatalog.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("Catalog:TypeCode")).doubleValue() ==((Number)(new Double(7))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",69,e);}if (_boolean_result) { %><% {out.write(localizeISText("SelectCatalog.GeneralPages.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else { %><% {out.write(localizeISText("SelectCatalog.OtherCatalog.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><% }} %></td>
<td class="table_detail e s top"><% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("Catalog:Status")).doubleValue() ==((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",70,e);}if (_boolean_result) { %><% {out.write(localizeISText("SelectCatalog.Online.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else { %><% {out.write(localizeISText("SelectCatalog.Offline.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %></td>
<td class="table_detail e s top"><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("Catalog:shortDescription")))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("Catalog:shortDescription"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",71,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("Catalog:shortDescription"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {71}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %><% {out.write(localizeISText("SelectCatalog.NoDescriptionAvailable.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %></td>
</tr><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("ClassificationCatalogs") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",74,e);}if (_boolean_result) { %><tr>
<td class="table_detail w e" colspan="5"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="5" alt="" border="0"/></td>
</tr><% } %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("ClassificationCatalogs") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",80,e);}if (_boolean_result) { %><tr>
<td class="table_header aldi" colspan="5" nowrap="nowrap"><% {out.write(localizeISText("SelectCatalog.ClassificationCatalogs.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td class="table_header w e s center"><% {out.write(localizeISText("SelectCatalog.Select.table_header1",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s" nowrap="nowrap"><% {out.write(localizeISText("SelectCatalog.Name.table_header1",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s" nowrap="nowrap"><% {out.write(localizeISText("SelectCatalog.Type.table_header1",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s" nowrap="nowrap"><% {out.write(localizeISText("SelectCatalog.Status.table_header1",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s" nowrap="nowrap"><% {out.write(localizeISText("SelectCatalog.Description.table_header1",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% while (loop("ClassificationCatalogs","Catalog",null)) { %><tr>
<td class="center w e s" width="1%"><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("CatalogUUID"),null).equals(context.getFormattedValue(getObject("Catalog:UUID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",94,e);}if (_boolean_result) { %><input type="radio" name="CatalogUUID" value="<%=context.getFormattedValue(getObject("Catalog:UUID"),null)%>" checked="checked"/><% } else { %><input type="radio" name="CatalogUUID" value="<%=context.getFormattedValue(getObject("Catalog:UUID"),null)%>"/><% } %> 
</td>
<td class="table_detail e s" nowrap="nowrap"><% {String value = null;try{value=context.getFormattedValue(getObject("Catalog:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {100}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
<td class="table_detail e s top" nowrap="nowrap"><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Catalog:isProxy"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",101,e);}if (_boolean_result) { %><% {out.write(localizeISText("SelectCatalog.Shared.table_detail1",null,null,null,null,null,null,null,null,null,null,null,null));} %> <% } else { %><% {out.write(localizeISText("SelectCatalog.Local.table_detail1",null,null,null,null,null,null,null,null,null,null,null,null));} %> <% } %><% {out.write(localizeISText("SelectCatalog.ClassificationCatalog.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_detail e s top"><% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("Catalog:Status")).doubleValue() ==((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",102,e);}if (_boolean_result) { %><% {out.write(localizeISText("SelectCatalog.Online.table_detail1",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else { %><% {out.write(localizeISText("SelectCatalog.Offline.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %></td>
<td class="table_detail e s top"><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("Catalog:shortDescription")))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("Catalog:shortDescription"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",103,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("Catalog:shortDescription"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {103}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %><% {out.write(localizeISText("SelectCatalog.NoDescriptionAvailable.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %></td>
</tr><% } %><% } %><% } else { %><tr>
<td class="table_detail w e s" colspan="5"><% {out.write(localizeISText("SelectCatalog.ThisOrganizationDoesNotDefineAnyCatalogs.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% } %> 
</table>
<table class="w e s" width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (hasLoopElements("StandardCatalogs") ? Boolean.TRUE : Boolean.FALSE)).booleanValue() || ((Boolean) (hasLoopElements("ClassificationCatalogs") ? Boolean.TRUE : Boolean.FALSE)).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",118,e);}if (_boolean_result) { %> 
<td class="button">
<input type="submit" name="SelectCategory" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("SelectCatalog.Next.button",null)),null)%>&nbsp;&gt;&gt;" class="button"/>
</td><% } %><td class="button">
<input type="hidden" name="ChannelID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ChannelID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {124}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" />
<input type="submit" name="CancelSelection" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("SelectCatalog.Cancel.button",null)),null)%>" class="button"/>
</td>
</tr>
</table>
</td>
</tr>
</table>
</td>
</tr>
</table><% out.print("</form>"); %><!-- EO Main Content --><% printFooter(out); %>