<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><%@page import="com.intershop.beehive.core.capi.domain.AttributeValueUtil"%><%@page import="com.intershop.beehive.core.capi.domain.AttributeValue"%><!-- Working Area -->
<!-- Page Navigator --><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("text1",getObject("Catalog:DisplayName")),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductClassification_52-List",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null))).addURLParameter(context.getFormattedValue("CatalogUUID",null),context.getFormattedValue(getObject("CatalogUUID"),null)).addURLParameter(context.getFormattedValue("ProductID",null),context.getFormattedValue(getObject("Product:UUID"),null)))),
new TagParameter("text",context.getFormattedValue(localizeText(context.getFormattedValue("ProductClassificationDetails_52.ProductClassification.text",null)),null) + context.getFormattedValue(" - ",null))}, 7); %><!-- EO Page Navigator -->
<table width="100%" border="0" cellspacing="0" cellpadding="0" data-testing-id="page-bo-product-classification-details-channel">
<tr>
<td width="100%" valign="top">
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" class="table_title aldi"><% {out.write(localizeISText("ProductClassificationDetails_52.ProductClassification.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %> - <% {String value = null;try{value=context.getFormattedValue(getObject("Catalog:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {15}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
</tr>
<tr>
<td class="table_title_description w e s"><% {out.write(localizeISText("ProductClassificationDetails_52.HereYouCanClassifyThisProductUsingClassificationCatalog.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/>
</td>
</tr>
</table><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ErrorCode"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",24,e);}if (_boolean_result) { %><table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td>
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr>
<td class="error_icon top e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error top" width="100%"><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ErrorCode"),null).equals(context.getFormattedValue("ParseError",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",32,e);}if (_boolean_result) { %><% {out.write(localizeISText("ProductClassificationDetails_52.TheAttributeValueCouldNotBeParsed.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ErrorCode"),null).equals(context.getFormattedValue("MaxLimitExceeded",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",35,e);}if (_boolean_result) { %><% {out.write(localizeISText("ProductClassificationDetails_52.TheAttributeValueCouldNotBeParsedMaxLimitExceededPleaseProvideAVal.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ErrorCode"),null).equals(context.getFormattedValue("MinLimitExceeded",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",38,e);}if (_boolean_result) { %><% {out.write(localizeISText("ProductClassificationDetails_52.TheAttributeValueCouldNotBeParsedMinLimitExceededPleaseProvideAVal.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ErrorCode"),null).equals(context.getFormattedValue("AttributesTypeConflict",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",41,e);}if (_boolean_result) { %><% {out.write(localizeISText("ProductClassificationDetails_52.TheProductCannotBeAssignedDueToAttributeTypeConflict.error",null,null,context.getFormattedValue(getObject("AttributesWithDifferentTypes"),null),null,null,null,null,null,null,null,null,null));} %><% } %> 
</td>
</tr>
</table>
</td>
</tr>
</table><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("AttributesWithTheSameType")))).booleanValue() && !((Boolean) ((((context.getFormattedValue(getObject("AttributesWithTheSameType"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",52,e);}if (_boolean_result) { %><table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td>
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr>
<td class="information e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/confirmation_info.gif" alt="<%=context.getFormattedValue(localizeTextEx(context.getFormattedValue("ProductClassificationDetails_52.TheAttributesAlreadyExists.info",null),new ParameterList().addParameter(getObject("AttributesWithTheSameType"))),null)%>" border="0" align="middle"/></td>
<td class="information" width="100%"><% {out.write(localizeISText("ProductClassificationDetails_52.TheAttributesAlreadyExists.info",null,null,context.getFormattedValue(getObject("AttributesWithTheSameType"),null),null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
</td>
</tr>
</table><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("ClassificationCategory:isRootCategory")).booleanValue() && ((Boolean) ((( ((Number) getObject("ClassificationCategory:SubCategoriesCount")).doubleValue() ==((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",67,e);}if (_boolean_result) { %><table cellpadding="0" cellspacing="0" border="0" class="w e s" width="100%">
<tr>
<td class="table_detail" nowrap="nowrap"><% {out.write(localizeISText("ProductClassificationDetails_52.ThisClassificationCatalogDoesNotDefineAnyCategories.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% } else { %><table cellpadding="0" cellspacing="0" border="0" class="w e" width="100%">
<tr>
<td class="table_detail3" nowrap="nowrap"><% {out.write(localizeISText("ProductClassificationDetails_52.ClassificationCategories.table_detail3",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
</tr>
</table>
<table border="0" cellspacing="0" cellpadding="0" width="100%" class="w e s">
<tr>
<td class="table_detail3" width="100%">
<table border="0" cellspacing="0" cellpadding="0"><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("ParentCategories") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",83,e);}if (_boolean_result) { %><% while (loop("ParentCategories","ParentCategory",null)) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("ParentCategory:SubCategories") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",85,e);}if (_boolean_result) { %><tr>
<td><% URLPipelineAction action74 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductClassification_52-SelectLevel",null)))),null));String site74 = null;String serverGroup74 = null;String actionValue74 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductClassification_52-SelectLevel",null)))),null);if (site74 == null){  site74 = action74.getDomain();  if (site74 == null)  {      site74 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup74 == null){  serverGroup74 = action74.getServerGroup();  if (serverGroup74 == null)  {      serverGroup74 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductClassification_52-SelectLevel",null)))),null));out.print("\"");out.print(" name=\"");out.print(context.getFormattedValue(context.getFormattedValue("productClassification_",null) + context.getFormattedValue(getObject("ParentCategory:UUID"),null),null));out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue74, site74, serverGroup74,true)); %><table border="0" cellspacing="0" cellpadding="0">
<tr>
<td>
<input type="hidden" name="ProductID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Product:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {92}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="ChannelID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("CurrentChannel:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {93}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="CatalogUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Catalog:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {94}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="LocaleId" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Locale:LocaleID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {95}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="ParrentCategoryUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ParentCategory:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {96}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="SharedAssignment" value="<% {String value = null;try{value=context.getFormattedValue(getObject("SharedAssignment"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {97}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("SharedAssignment")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SharedAssignment"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || !((Boolean) ((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PRODUCTS"))))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",98,e);}if (_boolean_result) { %><select name="SelectedCategoryID" class="select inputfield_en" style="width:550px" disabled="disabled">
<option value="<% {String value = null;try{value=context.getFormattedValue(getObject("ParentCategory:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {100}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% {out.write(localizeISText("ProductClassificationDetails_52.None.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option><% while (loop("ParentCategory:SubCategories","SubCategory",null)) { %><% {Object temp_obj = ("false"); getPipelineDictionary().put("isInCategoriePath", temp_obj);} %><% while (loop("ParentCategories","temp",null)) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SubCategory:UUID"),null).equals(context.getFormattedValue(getObject("temp:UUID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",105,e);}if (_boolean_result) { %><% {Object temp_obj = ("true"); getPipelineDictionary().put("isInCategoriePath", temp_obj);} %><% if (getLoopStack().isEmpty()) {Logger.error(this,"ISBREAK occured outside ISLOOP. Line: {}",107);}else{getLoopStack().pop();break;} %><% } %><% } %><% processOpenTag(response, pageContext, "categorydisplayname", new TagParameter[] {
new TagParameter("CatDisplayNameResult","SubCategoryDisplayName"),
new TagParameter("Category",getObject("SubCategory")),
new TagParameter("UseIDFallback","true"),
new TagParameter("SkipPrint","true")}, 110); %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("isInCategoriePath"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",111,e);}if (_boolean_result) { %><option value="<% {String value = null;try{value=context.getFormattedValue(getObject("SubCategory:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {112}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" selected="selected"><% {String value = null;try{value=context.getFormattedValue(pad(context.getFormattedValue(getObject("SubCategoryDisplayName"),null),((Number)(new Double(80))).intValue()),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {112}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></option><% } else { %><option value="<% {String value = null;try{value=context.getFormattedValue(getObject("SubCategory:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {114}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% {String value = null;try{value=context.getFormattedValue(pad(context.getFormattedValue(getObject("SubCategoryDisplayName"),null),((Number)(new Double(80))).intValue()),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {114}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></option><% } %><% } %></select>&nbsp;
<% } else { %><select name="SelectedCategoryID" class="select inputfield_en" style="width:550px">
<option value="<% {String value = null;try{value=context.getFormattedValue(getObject("ParentCategory:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {120}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% {out.write(localizeISText("ProductClassificationDetails_52.None.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option><% while (loop("ParentCategory:SubCategories","SubCategory",null)) { %><% {Object temp_obj = ("false"); getPipelineDictionary().put("isInCategoriePath", temp_obj);} %><% while (loop("ParentCategories","temp",null)) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SubCategory:UUID"),null).equals(context.getFormattedValue(getObject("temp:UUID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",125,e);}if (_boolean_result) { %><% {Object temp_obj = ("true"); getPipelineDictionary().put("isInCategoriePath", temp_obj);} %><% if (getLoopStack().isEmpty()) {Logger.error(this,"ISBREAK occured outside ISLOOP. Line: {}",127);}else{getLoopStack().pop();break;} %><% } %><% } %><% processOpenTag(response, pageContext, "categorydisplayname", new TagParameter[] {
new TagParameter("CatDisplayNameResult","SubCategoryDisplayName"),
new TagParameter("Category",getObject("SubCategory")),
new TagParameter("UseIDFallback","true"),
new TagParameter("SkipPrint","true")}, 130); %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("isInCategoriePath"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",131,e);}if (_boolean_result) { %><option value="<% {String value = null;try{value=context.getFormattedValue(getObject("SubCategory:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {132}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" selected="selected"><% {String value = null;try{value=context.getFormattedValue(pad(context.getFormattedValue(getObject("SubCategoryDisplayName"),null),((Number)(new Double(80))).intValue()),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {132}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></option><% } else { %><option value="<% {String value = null;try{value=context.getFormattedValue(getObject("SubCategory:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {134}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% {String value = null;try{value=context.getFormattedValue(pad(context.getFormattedValue(getObject("SubCategoryDisplayName"),null),((Number)(new Double(80))).intValue()),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {134}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></option><% } %><% } %></select>&nbsp;
<% } %></td><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PRODUCTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",140,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("SharedAssignment")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SharedAssignment"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",141,e);}if (_boolean_result) { %><td class="button"><input type="submit" name="apply" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ProductClassificationDetails_52.Select.button",null)),null)%>" class="button" disabled="disabled"/></td><% } else { %> 
<td class="button"><input type="submit" name="apply" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ProductClassificationDetails_52.Select.button",null)),null)%>" class="button"/></td><% } %> 
<% } %></tr>
</table><% out.print("</form>"); %></td>
</tr>
<tr><td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="4" alt="" border="0"/></td></tr><% } %><% } %><% } %></table>
</td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("ClassificationCategory:Description"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",160,e);}if (_boolean_result) { %><tr>
<td>
<table border="0" cellspacing="0" cellpadding="0" width="100%" class="n">
<tr>
<td nowrap="nowrap" width="1%" class="table_detail bold"><% {out.write(localizeISText("ProductClassificationDetails_52.Keywords.table_detail3",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td class="table_detail"><% {String value = null;try{value=context.getFormattedValue(getObject("ClassificationCategory:Description"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {166}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
</tr>
</table>
</td>
</tr><% } %></table><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ProductType")))).booleanValue() && ((Boolean) (hasLoopElements("ProductType:CustomProductAttributes") ? Boolean.TRUE : Boolean.FALSE)).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",174,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ClassificationCategory")))).booleanValue() && !((Boolean) (hasLoopElements("ClassificationCategory:SubCategories") ? Boolean.TRUE : Boolean.FALSE)).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",175,e);}if (_boolean_result) { %><% URLPipelineAction action75 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductClassification_52-SelectLevel",null)))),null));String site75 = null;String serverGroup75 = null;String actionValue75 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductClassification_52-SelectLevel",null)))),null);if (site75 == null){  site75 = action75.getDomain();  if (site75 == null)  {      site75 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup75 == null){  serverGroup75 = action75.getServerGroup();  if (serverGroup75 == null)  {      serverGroup75 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductClassification_52-SelectLevel",null)))),null));out.print("\"");out.print(" name=\"");out.print("localeFrom");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue75, site75, serverGroup75,true)); %><input type="hidden" name="SelectedCategoryID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ClassificationCategory:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {177}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="ProductID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Product:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {178}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="CatalogUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Catalog:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {179}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="ChannelID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("CurrentChannel:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {180}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<table border="0" cellpadding="4" cellspacing="0" width="100%" class="infobox_locale w e s">
<tr>
<td>
<table border="0" cellpadding="0" cellspacing="0">
<tr>
<td class="infobox_item" nowrap="nowrap"><% {out.write(localizeISText("ProductClassificationDetails_52.SelectLanguage.infobox_item",null,null,null,null,null,null,null,null,null,null,null,null));} %>:&nbsp;</td>
<td nowrap="nowrap">
<select name="LocaleId" class="select inputfield_en"><% while (loop("Locales","Locales",null)) { %><option value="<% {String value = null;try{value=context.getFormattedValue(getObject("Locales:LocaleID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {190}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Locales:LocaleID"),null).equals(context.getFormattedValue(getObject("Locale:LocaleID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",190,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {String value = null;try{value=context.getFormattedValue(getObject("Locales:getDisplayName(CurrentSession:Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {190}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</option><% } %></select>&nbsp;&nbsp;
</td>
<td width="80%">
<table border="0" cellspacing="2" cellpadding="0">
<tr>
<td class="button"><input type="submit" name="setLocale" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ProductClassificationDetails_52.Apply.button",null)),null)%>" class="button"/></td>
</tr>
</table>
</td>
</tr>
</table>
</td>
</tr>
</table><% out.print("</form>"); %><% URLPipelineAction action76 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductClassification_52-Dispatch",null)))),null));String site76 = null;String serverGroup76 = null;String actionValue76 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductClassification_52-Dispatch",null)))),null);if (site76 == null){  site76 = action76.getDomain();  if (site76 == null)  {      site76 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup76 == null){  serverGroup76 = action76.getServerGroup();  if (serverGroup76 == null)  {      serverGroup76 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductClassification_52-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("attributeForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue76, site76, serverGroup76,true)); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"product/ChannelProductClassificationDetails.isml", null, "208");} %><% out.print("</form>"); %><% } %><% } else { %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PRODUCTS")))).booleanValue() && ((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("ClassificationCategory")))).booleanValue() && !((Boolean) (hasLoopElements("ClassificationCategory:SubCategories") ? Boolean.TRUE : Boolean.FALSE)).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",213,e);}if (_boolean_result) { %><% URLPipelineAction action77 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductClassification_52-Dispatch",null)))),null));String site77 = null;String serverGroup77 = null;String actionValue77 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductClassification_52-Dispatch",null)))),null);if (site77 == null){  site77 = action77.getDomain();  if (site77 == null)  {      site77 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup77 == null){  serverGroup77 = action77.getServerGroup();  if (serverGroup77 == null)  {      serverGroup77 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductClassification_52-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("attributeForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue77, site77, serverGroup77,true)); %><input type="hidden" name="SelectedCategoryID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ClassificationCategory:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {215}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="ProductID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Product:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {216}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="ChannelID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("CurrentChannel:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {217}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="CatalogUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Catalog:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {218}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="LocaleId" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Locale:LocaleID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {219}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="SharedAssignment" value="<% {String value = null;try{value=context.getFormattedValue(getObject("SharedAssignment"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {220}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<table border="0" cellspacing="0" cellpadding="0" width="100%" class="w e s">
<tr>
<td colspan="2" align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ProductLockedForMe"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",227,e);}if (_boolean_result) { %><input type="submit" name="update" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ProductClassificationDetails_52.Apply.button",null)),null)%>" class="button"/><% } else { %><input type="submit" name="update" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ProductClassificationDetails_52.Apply.button",null)),null)%>" class="button" disabled="disabled"/><% } %></td>
</tr>
</table>
</td>
</tr>
</table><% out.print("</form>"); %><% } %><% } %><!-- EO empty classifcation catalog -->
<!-- EO Main Content --><% } %></td>
</tr>
</table><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/BackToList", null, "247");} %><!-- EO Working Area --><% printFooter(out); %>