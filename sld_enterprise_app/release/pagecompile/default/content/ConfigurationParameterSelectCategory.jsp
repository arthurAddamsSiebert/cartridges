<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><!-- TEMPLATENAME: content/PageComponentSelectCategory.isml -->
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- Working Area -->
<!-- Page Navigator --><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("hide","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewConfigurationParameterSelectCategory-SelectCatalog",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("CatalogUUID",null),context.getFormattedValue(getObject("Catalog:UUID"),null))))),
new TagParameter("id","ConfigurationParameterCatalogSelection"),
new TagParameter("text",localizeText(context.getFormattedValue("ConfigurationParameterSelectCategory.Step1SelectCatalog.text",null)))}, 7); %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewConfigurationParameterSelectCategory-Tree",null))))),
new TagParameter("text",localizeText(context.getFormattedValue("ConfigurationParameterSelectCategory.Step2SelectCategory.text",null)))}, 8); %><!-- EO Page Navigator -->
<!-- Titel and Description -->
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" class="table_title aldi"><% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("ConfigurationParameterCtnr:DisplayName"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",14,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("ConfigurationParameterCtnr:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {14}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %><% {String value = null;try{value=context.getFormattedValue(getObject("ConfigurationParameterCtnr:ConfigurationParameterDefinitionCtnr:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {14}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %> - <% {out.write(localizeISText("ConfigurationParameterSelectCategory.Step2SelectCategory.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<!-- Error Handling -->
<!-- confirmation if nothing is selected --><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("SetCategory")))).booleanValue() && ((Boolean) (((!((Boolean) ((disableErrorMessages().isDefined(getObject("CategoryReferences"))))).booleanValue() || ((Boolean) ((( ((Number) getObject("CategoryReferences:Size")).doubleValue() ==((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",18,e);}if (_boolean_result) { %><tr>
<td>
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr>
<td class="error_icon e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error" width="100%"><% {out.write(localizeISText("ConfigurationParameterSelectCategory.YouHaveNotSelectedACategoryUseTheCheckboxesToSelec.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
</td>
</tr><% } %><!-- EO Error Handling --> 
<tr>
<td class="w e s table_title_description" colspan="5"><% {out.write(localizeISText("ConfigurationParameterSelectCategory.Step2Of2SelectTargetCategory.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr> 
</table>
<!-- EO Titel and Description -->
<!-- Main Content --><% URLPipelineAction action361 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewConfigurationParameterSelectCategory-Dispatch",null)))),null));String site361 = null;String serverGroup361 = null;String actionValue361 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewConfigurationParameterSelectCategory-Dispatch",null)))),null);if (site361 == null){  site361 = action361.getDomain();  if (site361 == null)  {      site361 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup361 == null){  serverGroup361 = action361.getServerGroup();  if (serverGroup361 == null)  {      serverGroup361 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewConfigurationParameterSelectCategory-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("functionForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue361, site361, serverGroup361,true)); %><table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td colspan="2"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="10" alt="" border="0"/></td>
</tr>
<tr>
<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="6" height="6" alt="" border="0"/></td>
<td width="100%"><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SelectedConfigurationParameterDefinition:Multiple"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",53,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "catalogcategory", new TagParameter[] {
new TagParameter("parametervalue",getObject("Catalog:UUID")),
new TagParameter("handlerpipeline","ViewConfigurationParameterSelectCategory"),
new TagParameter("selectiontype","multiple"),
new TagParameter("parametervalue2",getObject("PageLocatorName")),
new TagParameter("parametername2","PageLocatorName"),
new TagParameter("enabledetailslink","false"),
new TagParameter("parametername","CatalogUUID"),
new TagParameter("category",getObject("Catalog:Root"))}, 54); %><% } else { %><% processOpenTag(response, pageContext, "catalogcategory", new TagParameter[] {
new TagParameter("parametervalue",getObject("Catalog:UUID")),
new TagParameter("selectedcategoryuuid",getObject("Catalog:Root:UUID")),
new TagParameter("handlerpipeline","ViewConfigurationParameterSelectCategory"),
new TagParameter("selectiontype","single"),
new TagParameter("parametervalue2",getObject("PageLocatorName")),
new TagParameter("parametername2","PageLocatorName"),
new TagParameter("enabledetailslink","false"),
new TagParameter("parametername","CatalogUUID"),
new TagParameter("category",getObject("Catalog:Root"))}, 64); %><% } %></td>
</tr>
<tr>
<td colspan="2"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></td>
</tr>
</table>
<table class="w e s" width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td align="left">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button">
<input type="hidden" name="PageLocatorName" value="<% {String value = null;try{value=context.getFormattedValue(getObject("PageLocatorName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {87}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" />
<input type="submit" name="SelectCatalog" value="&lt;&lt;&nbsp;<%=context.getFormattedValue(localizeText(context.getFormattedValue("ConfigurationParameterSelectCategory.Previous.button",null)),null)%>" class="button"/>
</td>
</tr>
</table>
</td>
<td align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button">
<input name="CatalogUUID" type="hidden" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Catalog:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {97}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="submit" name="SetCategory" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ConfigurationParameterSelectCategory.OK.button",null)),null)%>" class="button"/>
</td>
<td class="button">
<input type="submit" name="CancelSelection" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ConfigurationParameterSelectCategory.Cancel.button",null)),null)%>" class="button"/>
</td>
</tr>
</table>
</td>
</tr>
</table>
</td>
</tr>
</table> 
<% out.print("</form>"); %><!-- EO Main Content --> <% printFooter(out); %>