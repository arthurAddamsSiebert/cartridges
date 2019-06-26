<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- Working Area -->
<!-- Page Navigator --><% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("ProvidingRepository:TypeCode")).doubleValue() ==((Number)(new Double(21))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",6,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductAttributeMapping-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ProviderID",null),context.getFormattedValue(getObject("ProviderID"),null))))),
new TagParameter("id",getObject("ProviderID")),
new TagParameter("text",localizeText(context.getFormattedValue("ProductAttributeMapping.MasterRepositoryMappingRulesAttributes.text",null)))}, 7); %><% } else { %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductAttributeMapping-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ProviderID",null),context.getFormattedValue(getObject("ProviderID"),null))))),
new TagParameter("id",getObject("ProviderID")),
new TagParameter("text",localizeText(context.getFormattedValue("sld_enterprise_app.ChannelRepositoryMappingRulesAttributes.text",null)))}, 9); %><% } %><!-- EO Page Navigator -->
<table border="0" cellspacing="0" cellpadding="0" width="100%">
<tr>
<td>
<!-- Tabs --><% {Object temp_obj = ("Attributes"); getPipelineDictionary().put("SelectedTab", temp_obj);} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"syndication/ProductMappingTabs", null, "18");} %><!-- EO Tabs -->
<!-- Main Content --><% URLPipelineAction action549 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductAttributeMapping-Dispatch",null)))),null));String site549 = null;String serverGroup549 = null;String actionValue549 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductAttributeMapping-Dispatch",null)))),null);if (site549 == null){  site549 = action549.getDomain();  if (site549 == null)  {      site549 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup549 == null){  serverGroup549 = action549.getServerGroup();  if (serverGroup549 == null)  {      serverGroup549 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductAttributeMapping-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("deleteForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue549, site549, serverGroup549,true)); %><table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" class="table_title w e s"><% {out.write(localizeISText("sld_enterprise_app.ChannelRepositoryMappingRulesAttributes.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<!-- errors --><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("confirmDelete")))).booleanValue() && ((Boolean) ((hasLoopElements("Selection") ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",28,e);}if (_boolean_result) { %><!-- delete confirmation if one is selected--><% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("iterator",getObject("Selection")),
new TagParameter("hiddenname","DeclarationID"),
new TagParameter("parametername1","ProviderID"),
new TagParameter("subject",localizeText(context.getFormattedValue("sld_enterprise_app.Attribute.subject",null))),
new TagParameter("cancelbtnname","cancelAttributeDeletion"),
new TagParameter("parametervalue1",getObject("ProviderID")),
new TagParameter("okbtnname","delete"),
new TagParameter("type","mdc")}, 30); %><% } %><!-- delete confirmation if nothing is selected--><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("confirmDelete")))).booleanValue() && ((Boolean) ((((Boolean) ((hasLoopElements("Selection") ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",33,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("subject",localizeText(context.getFormattedValue("sld_enterprise_app.Attribute.subject",null))),
new TagParameter("type","mde")}, 34); %><% } %><!-- confirmation if nothing is selected and the button add is clicked--><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("add")))).booleanValue() && ((Boolean) ((((Boolean) ((hasLoopElements("Selection") ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",37,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("subject",localizeText(context.getFormattedValue("sld_enterprise_app.Attribute.subject",null))),
new TagParameter("okbtnname","Add"),
new TagParameter("type","nse")}, 38); %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ERROR_ATTRIBUTE_NAME_EMPTY"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",41,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("subject",localizeText(context.getFormattedValue("sld_enterprise_app.Attribute.subject",null))),
new TagParameter("message",localizeText(context.getFormattedValue("ProductAttributeMapping.TheNewAttributeCouldNotBeAddedPleaseProvideANonEmp.message",null))),
new TagParameter("type","mde")}, 42); %><% } %><!-- end errors-->
</table><% out.print("</form>"); %><% URLPipelineAction action550 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewImageMapping-Update",null)))),null));String site550 = null;String serverGroup550 = null;String actionValue550 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewImageMapping-Update",null)))),null);if (site550 == null){  site550 = action550.getDomain();  if (site550 == null)  {      site550 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup550 == null){  serverGroup550 = action550.getServerGroup();  if (serverGroup550 == null)  {      serverGroup550 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewImageMapping-Update",null)))),null));out.print("\"");out.print(" name=\"");out.print("imageRuleFrm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue550, site550, serverGroup550,true)); %><table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td class="table_detail left" width="100%"><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("ProductImageDataMappingRules") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",53,e);}if (_boolean_result) { %><% while (loop("ProductImageDataMappingRules","mappingRule",null)) { %><input type="hidden" name="ProductDataMappingRuleID" value="<%=context.getFormattedValue(getObject("mappingRule:UUID"),null)%>"/><% } %><% } %><input type="checkbox" name="mappingEnabled" <% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("ProductImageDataMappingRules") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",58,e);}if (_boolean_result) { %>checked="checked"<% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_SYNDICATE_CATALOGS")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",59,e);}if (_boolean_result) { %>disabled="disabled"<% } %>
/>
&nbsp;&nbsp;<% {out.write(localizeISText("ProductAttributeMapping.EnableImageSyndicationSynchronization.input",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_SYNDICATE_CATALOGS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",64,e);}if (_boolean_result) { %><tr>
<td align="right" class="n" >
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button">
<input type="hidden" name="ProviderID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ProviderID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {70}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="submit" name="apply" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ProductAttributeMapping.Apply.button",null)),null)%>" class="button"/>
</td>
</tr>
</table>
</td>
</tr><% } %></table><% out.print("</form>"); %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_SYNDICATE_CATALOGS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",82,e);}if (_boolean_result) { %><table border="0" cellpadding="4" cellspacing="0" width="100%" class="infobox e w">
<tr>
<td class="infobox_title"><% {out.write(localizeISText("ProductAttributeMapping.ProductAttributes.infobox_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td class="table_title_description w e n s" colspan="4"><% {out.write(localizeISText("ProductAttributeMapping.SelectStandardAttributesFromTheListOrAddCustomAttribute.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% URLPipelineAction action551 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductAttributeMapping-Dispatch",null)))),null));String site551 = null;String serverGroup551 = null;String actionValue551 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductAttributeMapping-Dispatch",null)))),null);if (site551 == null){  site551 = action551.getDomain();  if (site551 == null)  {      site551 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup551 == null){  serverGroup551 = action551.getServerGroup();  if (serverGroup551 == null)  {      serverGroup551 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductAttributeMapping-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("productAttr");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue551, site551, serverGroup551,true)); %><table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="table_header w e s left" nowrap="nowrap" width="80">
<div id="A">
<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
<tr>
<td nowrap="nowrap">
<a href="javascript:selectAll('productAttr','SourceDataDeclaration','A','B');" class="tableheader"><% {out.write(localizeISText("sld_enterprise_app.SelectAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
</td>
</tr>
</table>
</div>
<div id="B" style="display:none">
<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
<tr>
<td nowrap="nowrap">
<a href="javascript:selectAll('productAttr','SourceDataDeclaration','A','B');" class="tableheader"><% {out.write(localizeISText("sld_enterprise_app.ClearAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
</td>
</tr>
</table>
</div>
</td>
<td class="table_header e s"><% {out.write(localizeISText("sld_enterprise_app.Attribute.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s"><% {out.write(localizeISText("sld_enterprise_app.Language.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s"><% {out.write(localizeISText("sld_enterprise_app.Description.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td class="w e s center">
<input type="checkbox" name="SourceDataDeclaration" value="name"/>
<input type="hidden" name="name_attributeName" value="name"/>
<input type="hidden" name="name_attributeType" value="2"/>
</td>
<td class="table_detail e s" nowrap="nowrap">
<input type="hidden" name="name_DisplayName" value="Name"/><% {out.write(localizeISText("ProductAttributeMapping.Name.input",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_detail e s" nowrap="nowrap"><select name="name_localeID" class="select"><% while (loop("Locales","Locales",null)) { %><option <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Locales:LocaleID"),null).equals(context.getFormattedValue(getObject("nameLocale:LocaleID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",132,e);}if (_boolean_result) { %>selected="selected"<% } %> value="<% {String value = null;try{value=context.getFormattedValue(getObject("Locales:LocaleID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {132}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% {String value = null;try{value=context.getFormattedValue(getObject("Locales:getDisplayName(CurrentSession:Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {132}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</option><% } %></select></td> <td class="table_detail e s">
<input type="hidden" name="name_ShortDescription" value="<% {out.write(localizeISText("ProductAttributeMapping.NameOfTheProduct.input",null,null,null,null,null,null,null,null,null,null,null,null));} %>"/><% {out.write(localizeISText("ProductAttributeMapping.NameOfTheProduct.input",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td class="w e s center">
<input type="checkbox" name="SourceDataDeclaration" value="shortDescription"/>
<input type="hidden" name="shortDescription_attributeName" value="shortDescription"/>
<input type="hidden" name="shortDescription_attributeType" value="2"/>
</td>
<td class="table_detail e s" nowrap="nowrap">
<input type="hidden" name="shortDescription_DisplayName" value="Short Description"/><% {out.write(localizeISText("ProductAttributeMapping.ShortDescription.input",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_detail e s" nowrap="nowrap"><select name="shortDescription_localeID" class="select"><% while (loop("Locales","Locales",null)) { %><option <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Locales:LocaleID"),null).equals(context.getFormattedValue(getObject("shortDescriptionLocale:LocaleID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",145,e);}if (_boolean_result) { %>selected="selected"<% } %> value="<% {String value = null;try{value=context.getFormattedValue(getObject("Locales:LocaleID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {145}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% {String value = null;try{value=context.getFormattedValue(getObject("Locales:getDisplayName(CurrentSession:Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {145}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</option><% } %></select></td> <td class="table_detail e s">
<input type="hidden" name="shortDescription_ShortDescription" value="<% {out.write(localizeISText("ProductAttributeMapping.ShortDescriptionForTheProduct.input",null,null,null,null,null,null,null,null,null,null,null,null));} %>"/><% {out.write(localizeISText("ProductAttributeMapping.ShortDescriptionForTheProduct.input",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td class="w e s center">
<input type="checkbox" name="SourceDataDeclaration" value="longDescription"/>
<input type="hidden" name="longDescription_attributeName" value="longDescription"/>
<input type="hidden" name="longDescription_attributeType" value="2"/>
</td>
<td class="table_detail e s" nowrap="nowrap">
<input type="hidden" name="longDescription_DisplayName" value="Long Description"/><% {out.write(localizeISText("ProductAttributeMapping.LongDescription.input",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_detail e s" nowrap="nowrap"><select name="longDescription_localeID" class="select"><% while (loop("Locales","Locales",null)) { %><option <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Locales:LocaleID"),null).equals(context.getFormattedValue(getObject("longDescriptionLocale:LocaleID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",160,e);}if (_boolean_result) { %>selected="selected"<% } %> value="<% {String value = null;try{value=context.getFormattedValue(getObject("Locales:LocaleID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {160}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% {String value = null;try{value=context.getFormattedValue(getObject("Locales:getDisplayName(CurrentSession:Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {160}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</option><% } %></select></td> <td class="table_detail e s">
<input type="hidden" name="longDescription_ShortDescription" value="<% {out.write(localizeISText("ProductAttributeMapping.LongDescriptionForTheProduct.input",null,null,null,null,null,null,null,null,null,null,null,null));} %>"/><% {out.write(localizeISText("ProductAttributeMapping.LongDescriptionForTheProduct.input",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td class="w e s center">
<input type="checkbox" name="SourceDataDeclaration" value="min"/>
<input type="hidden" name="min_attributeName" value="MinOrderQuantityValue"/>
<input type="hidden" name="min_attributeValueType" value="java.lang.Double"/>
<input type="hidden" name="min_attributeType" value="1"/>
</td>
<td class="table_detail e s" nowrap="nowrap">
<input type="hidden" name="min_DisplayName" value="<% {out.write(localizeISText("ProductAttributeMapping.MinimumOrderQuantity.input",null,null,null,null,null,null,null,null,null,null,null,null));} %>"/><% {out.write(localizeISText("ProductAttributeMapping.MinimumOrderQuantity.input",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_detail e s" nowrap="nowrap"><% {out.write(localizeISText("sld_enterprise_app.NA.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_detail e s">
<input type="hidden" name="min_ShortDescription" value="<% {out.write(localizeISText("ProductAttributeMapping.MinimumOrderQuantity.input1",null,null,null,null,null,null,null,null,null,null,null,null));} %>"/><% {out.write(localizeISText("ProductAttributeMapping.MinimumOrderQuantity.input1",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td class="w e s center">
<input type="checkbox" name="SourceDataDeclaration" value="max"/>
<input type="hidden" name="max_attributeName" value="MaxOrderQuantityValue"/>
<input type="hidden" name="max_attributeValueType" value="java.lang.Double"/>
<input type="hidden" name="max_attributeType" value="1"/>
</td>
<td class="table_detail e s" nowrap="nowrap">
<input type="hidden" name="max_DisplayName" value="<% {out.write(localizeISText("AttributeDetails.MaximumOrderQuantity.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %>"/><% {out.write(localizeISText("ProductAttributeMapping.MaximumOrderQuantity.input",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_detail e s" nowrap="nowrap"><% {out.write(localizeISText("sld_enterprise_app.NA.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_detail e s">
<input type="hidden" name="max_ShortDescription" value="<% {out.write(localizeISText("ProductAttributeMapping.MaximumOrderQuantity.input1",null,null,null,null,null,null,null,null,null,null,null,null));} %>"/><% {out.write(localizeISText("ProductAttributeMapping.MaximumOrderQuantity.input1",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td class="w e s center">
<input type="checkbox" name="SourceDataDeclaration" value="step"/>
<input type="hidden" name="step_attributeName" value="StepQuantityValue"/>
<input type="hidden" name="step_attributeValueType" value="java.lang.Double"/>
<input type="hidden" name="step_attributeType" value="1"/>
</td>
<td class="table_detail e s" nowrap="nowrap">
<input type="hidden" name="step_DisplayName" value="Order Step Quantity"/><% {out.write(localizeISText("ProductAttributeMapping.OrderStepQuantity.input",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_detail e s" nowrap="nowrap"><% {out.write(localizeISText("sld_enterprise_app.NA.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_detail e s">
<input type="hidden" name="step_ShortDescription" value="<% {out.write(localizeISText("ProductAttributeMapping.StepQuantity.input",null,null,null,null,null,null,null,null,null,null,null,null));} %>"/><% {out.write(localizeISText("ProductAttributeMapping.StepQuantity.input",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td class="w e s center">
<input type="checkbox" name="SourceDataDeclaration" value="bu"/>
<input type="hidden" name="bu_attributeName" value="BaseUnit"/>
<input type="hidden" name="bu_attributeType" value="2"/>
</td>
<td class="table_detail e s" nowrap="nowrap">
<input type="hidden" name="bu_DisplayName" value="Base Unit"/><% {out.write(localizeISText("ProductAttributeMapping.BaseUnit.input",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_detail e s" nowrap="nowrap"><% {out.write(localizeISText("sld_enterprise_app.NA.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_detail e s">
<input type="hidden" name="bu_ShortDescription" value="<% {out.write(localizeISText("ProductAttributeMapping.TheBaseUnit.input",null,null,null,null,null,null,null,null,null,null,null,null));} %>"/><% {out.write(localizeISText("ProductAttributeMapping.TheBaseUnit.input",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td class="w e s center">
<input type="checkbox" name="SourceDataDeclaration" value="pu"/>
<input type="hidden" name="pu_attributeName" value="Unit"/>
<input type="hidden" name="pu_attributeValueType" value="java.lang.String"/>
<input type="hidden" name="pu_attributeType" value="1"/>
</td>
<td class="table_detail e s" nowrap="nowrap">
<input type="hidden" name="pu_DisplayName" value="<% {out.write(localizeISText("BulkOperationConfigurations.UpdateStandardProductAttributes.NewPackingUnit",null,null,null,null,null,null,null,null,null,null,null,null));} %>"/><% {out.write(localizeISText("ProductAttributeMapping.PackingUnitPU.input",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_detail e s" nowrap="nowrap">
<input type="hidden" name="pu_localeID" value=""/><% {out.write(localizeISText("sld_enterprise_app.NA.input",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_detail e s">
<input type="hidden" name="pu_ShortDescription" value="<% {out.write(localizeISText("ProductAttributeMapping.PackingUnit.input",null,null,null,null,null,null,null,null,null,null,null,null));} %>"/><% {out.write(localizeISText("ProductAttributeMapping.PackingUnit.input",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td class="w e s center">
<input type="checkbox" name="SourceDataDeclaration" value="ratio"/>
<input type="hidden" name="ratio_attributeName" value="RatioBasePackingUnit"/>
<input type="hidden" name="ratio_attributeType" value="2"/>
</td>
<td class="table_detail e s" nowrap="nowrap">
<input type="hidden" name="ratio_DisplayName" value="<% {out.write(localizeISText("ProductAttributeMapping.RatioBUPU.input",null,null,null,null,null,null,null,null,null,null,null,null));} %>"/><% {out.write(localizeISText("ProductAttributeMapping.RatioBUPU.input",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_detail e s" nowrap="nowrap"><% {out.write(localizeISText("sld_enterprise_app.NA.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_detail e s">
<input type="hidden" name="ratio_ShortDescription" value="<% {out.write(localizeISText("ProductAttributeMapping.RatioOfBaseAndPackingUnit.input",null,null,null,null,null,null,null,null,null,null,null,null));} %>"/><% {out.write(localizeISText("ProductAttributeMapping.RatioOfBaseAndPackingUnit.input",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td class="w e s center">
<input type="checkbox" name="SourceDataDeclaration" value="taxclass"/>
<input type="hidden" name="taxclass_attributeName" value="TaxClassID"/>
<input type="hidden" name="taxclass_attributeValueType" value="java.lang.String"/>
<input type="hidden" name="taxclass_attributeType" value="1"/>
</td>
<td class="table_detail e s" nowrap="nowrap">
<input type="hidden" name="taxclass_DisplayName" value="<% {out.write(localizeISText("ProductAttributeMapping.TaxClass.input",null,null,null,null,null,null,null,null,null,null,null,null));} %>"/><% {out.write(localizeISText("ProductAttributeMapping.TaxClass.input",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_detail e s" nowrap="nowrap"><% {out.write(localizeISText("sld_enterprise_app.NA.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_detail e s">
<input type="hidden" name="taxclass_ShortDescription" value="<% {out.write(localizeISText("ProductAttributeMapping.TheTaxClassOfTheProduct.input",null,null,null,null,null,null,null,null,null,null,null,null));} %>"/><% {out.write(localizeISText("ProductAttributeMapping.TheTaxClassOfTheProduct.input",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("CurrentOrganization:TypeCode")).doubleValue() >((Number)(new Double(20))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",275,e);}if (_boolean_result) { %><tr>
<td class="w e s center">
<input type="checkbox" name="SourceDataDeclaration" value="onlinePeriod"/>
<input type="hidden" name="onlinePeriod_attributeName" value="AvailabilityStatus"/>
<input type="hidden" name="onlinePeriod_attributeValueType" value="java.lang.Integer"/>
<input type="hidden" name="onlinePeriod_attributeType" value="1"/>
</td>
<td class="table_detail e s" nowrap="nowrap">
<input type="hidden" name="onlinePeriod_DisplayName" value="Online Period"/><% {out.write(localizeISText("ProductAttributeMapping.OnlinePeriod.input",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_detail e s" nowrap="nowrap"><% {out.write(localizeISText("sld_enterprise_app.NA.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_detail e s">
<input type="hidden" name="onlinePeriod_ShortDescription" value="<% {out.write(localizeISText("sld_enterprise_app.TheOnlinePeriodOfTheProductUseThisRuleAlwaysTogeth.input","",null,null,null,null,null,null,null,null,null,null,null));} %>"/><% {out.write(localizeISText("ProductAttributeMapping.TheOnlinePeriodOfTheProductUseThisRuleOnlyTogether.input",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td class="w e s center">
<input type="checkbox" name="SourceDataDeclaration" value="validFrom"/>
<input type="hidden" name="validFrom_attributeName" value="ValidFrom"/>
<input type="hidden" name="validFrom_attributeValueType" value="java.util.Date"/>
<input type="hidden" name="validFrom_attributeType" value="1"/>
</td>
<td class="table_detail e s" nowrap="nowrap">
<input type="hidden" name="validFrom_DisplayName" value="<% {out.write(localizeISText("ProductAttributeMapping.OnlineFrom.input",null,null,null,null,null,null,null,null,null,null,null,null));} %>"/><% {out.write(localizeISText("ProductAttributeMapping.OnlineFrom.input",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_detail e s" nowrap="nowrap"><% {out.write(localizeISText("sld_enterprise_app.NA.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_detail e s">
<input type="hidden" name="validFrom_ShortDescription" value="<% {out.write(localizeISText("sld_enterprise_app.TheStartDateOfTheOnlinePeriodUseThisRuleAlwaysToge.input","",null,null,null,null,null,null,null,null,null,null,null));} %>"/><% {out.write(localizeISText("ProductAttributeMapping.TheStartDateOfTheOnlinePeriodUseThisRuleAlwaysToge.input",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td class="w e s center">
<input type="checkbox" name="SourceDataDeclaration" value="validTo"/>
<input type="hidden" name="validTo_attributeName" value="ValidTo"/>
<input type="hidden" name="validTo_attributeValueType" value="java.util.Date"/>
<input type="hidden" name="validTo_attributeType" value="1"/>
</td>
<td class="table_detail e s" nowrap="nowrap">
<input type="hidden" name="validTo_DisplayName" value="<% {out.write(localizeISText("ProductAttributeMapping.OnlineUntil.input",null,null,null,null,null,null,null,null,null,null,null,null));} %>"/><% {out.write(localizeISText("ProductAttributeMapping.OnlineUntil.input",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_detail e s" nowrap="nowrap"><% {out.write(localizeISText("sld_enterprise_app.NA.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_detail e s"><input type="hidden" name="validTo_ShortDescription" value="<% {out.write(localizeISText("sld_enterprise_app.TheEndDateOfTheOnlinePeriodUseThisRuleAlwaysTogeth.input","",null,null,null,null,null,null,null,null,null,null,null));} %>"/><% {out.write(localizeISText("ProductAttributeMapping.TheEndDateOfTheOnlinePeriodUseThisRuleAlwaysTogeth.input",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% } %><tr>
<td class="w e s center">
<input type="checkbox" name="SourceDataDeclaration" value="onlineFlag"/>
<input type="hidden" name="onlineFlag_attributeName" value="OnlineFlag"/>
<input type="hidden" name="onlineFlag_attributeValueType" value="java.lang.Integer"/>
<input type="hidden" name="onlineFlag_attributeType" value="1"/>
</td>
<td class="table_detail e s" nowrap="nowrap">
<input type="hidden" name="onlineFlag_DisplayName" value="Online Flag"/><% {out.write(localizeISText("ProductAttributeMapping.OnlineFlag.input",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_detail e s" nowrap="nowrap"><% {out.write(localizeISText("sld_enterprise_app.NA.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_detail e s">
<input type="hidden" name="onlineFlag_ShortDescription" value="<% {out.write(localizeISText("sld_enterprise_app.TheOnlineFlagOfTheProduct.input","",null,null,null,null,null,null,null,null,null,null,null));} %>"/><% {out.write(localizeISText("ProductAttributeMapping.TheOnlineFlagOfTheProduct.input",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td class="w e s center">
<input type="checkbox" name="SourceDataDeclaration" value="inStockFlag"/>
<input type="hidden" name="inStockFlag_attributeName" value="AvailableFlag"/>
<input type="hidden" name="inStockFlag_attributeValueType" value="java.lang.Integer"/>
<input type="hidden" name="inStockFlag_attributeType" value="1"/>
</td>
<td class="table_detail e s" nowrap="nowrap">
<input type="hidden" name="inStockFlag_DisplayName" value="<% {out.write(localizeISText("ProductAttributeMapping.InStockFlag.input",null,null,null,null,null,null,null,null,null,null,null,null));} %>"/><% {out.write(localizeISText("ProductAttributeMapping.InStockFlag.input",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_detail e s" nowrap="nowrap"><% {out.write(localizeISText("sld_enterprise_app.NA.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_detail e s">
<input type="hidden" name="inStockFlag_ShortDescription" value="<% {out.write(localizeISText("sld_enterprise_app.TheInStockFlagOfTheProduct.input","",null,null,null,null,null,null,null,null,null,null,null));} %>"/><% {out.write(localizeISText("ProductAttributeMapping.TheInStockFlagOfTheProduct.input",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td class="w e s center">
<input type="checkbox" name="SourceDataDeclaration" value="manufacturerName"/>
<input type="hidden" name="manufacturerName_attributeName" value="ManufacturerName"/>
<input type="hidden" name="manufacturerName_attributeType" value="1"/>
</td>
<td class="table_detail e s" nowrap="nowrap">
<input type="hidden" name="manufacturerName_DisplayName" value="<% {out.write(localizeISText("ProductAttributeMapping.ManufacturerName.input",null,null,null,null,null,null,null,null,null,null,null,null));} %>"/><% {out.write(localizeISText("ProductAttributeMapping.ManufacturerName.input",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_detail e s" nowrap="nowrap"><% {out.write(localizeISText("sld_enterprise_app.NA.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_detail e s">
<input type="hidden" name="manufacturerName_ShortDescription" value="<% {out.write(localizeISText("ProductAttributeMapping.TheManufacturerOfTheProduct.input","",null,null,null,null,null,null,null,null,null,null,null));} %>"/><% {out.write(localizeISText("ProductAttributeMapping.TheManufacturerOfTheProduct.input",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td class="w e s center">
<input type="checkbox" name="SourceDataDeclaration" value="supplierName"/>
<input type="hidden" name="supplierName_attributeName" value="SupplierName"/>
<input type="hidden" name="supplierName_attributeType" value="2"/>
</td>
<td class="table_detail e s" nowrap="nowrap">
<input type="hidden" name="supplierName_DisplayName" value="<% {out.write(localizeISText("ProductAttributeMapping.SupplierName.input",null,null,null,null,null,null,null,null,null,null,null,null));} %>"/><% {out.write(localizeISText("ProductAttributeMapping.SupplierName.input",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_detail e s" nowrap="nowrap"><% {out.write(localizeISText("sld_enterprise_app.NA.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_detail e s">
<input type="hidden" name="supplierName_ShortDescription" value="<% {out.write(localizeISText("ProductAttributeMapping.TheSupplierOfTheProduct.input","",null,null,null,null,null,null,null,null,null,null,null));} %>"/><% {out.write(localizeISText("ProductAttributeMapping.TheSupplierOfTheProduct.input",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td class="w e s center">
<input type="checkbox" name="SourceDataDeclaration" value="new"/>
<input type="hidden" name="new_attributeType" value="2"/>
</td><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("new_attributeName")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("add")))).booleanValue() && ((Boolean) ((((Boolean) ((hasLoopElements("Selection") ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",391,e);}if (_boolean_result) { %><td class="table_detail e s" nowrap="nowrap">
<input type="text" name="new_attributeName" value="<% {String value = null;try{value=context.getFormattedValue(getObject("new_attributeName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {393}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" size="25" class="inputfield_en"/>
</td><% } else { %><td class="table_detail e s" nowrap="nowrap">
<input type="text" name="new_attributeName" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ProductAttributeMapping.EnterAttributeName.inputfield_en",null)),null)%>" size="25" class="inputfield_en"/>
</td><% } %><td class="table_detail e s" nowrap="nowrap">
<select name="new_localeID" class="select">
<option value=""><% {out.write(localizeISText("ProductAttributeMapping.NotLocalized.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option><% while (loop("Locales","Locales",null)) { %><option <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Locales:LocaleID"),null).equals(context.getFormattedValue(getObject("new_locale:LocaleID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",404,e);}if (_boolean_result) { %>selected="selected"<% } %> value="<% {String value = null;try{value=context.getFormattedValue(getObject("Locales:LocaleID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {404}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% {String value = null;try{value=context.getFormattedValue(getObject("Locales:getDisplayName(CurrentSession:Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {404}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</option><% } %></select>
</td><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("new_ShortDescription")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("add")))).booleanValue() && ((Boolean) ((((Boolean) ((hasLoopElements("Selection") ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",408,e);}if (_boolean_result) { %><td class="table_detail e s">
<input type="text" name="new_ShortDescription" value="<% {String value = null;try{value=context.getFormattedValue(getObject("new_ShortDescription"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {410}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" size="30" class="inputfield_en"/> </td><% } else { %><td class="table_detail e s">
<input type="text" name="new_ShortDescription" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ProductAttributeMapping.EnterShortDescription.inputfield_en",null)),null)%>" size="30" class="inputfield_en"/>
</td><% } %></tr>
<tr>
<td class="w e s center">
<input type="checkbox" name="SourceDataDeclaration" value="AllCustomAttributes"/>
<input type="hidden" name="AllCustomAttributes_attributeName" value="^SKU$|^PID_.+$|^AC_.+$|^RC_.+$"/>
<input type="hidden" name="AllCustomAttributes_attributeValueType" value="java.lang.String"/>
<input type="hidden" name="AllCustomAttributes_attributeType" value="2"/>
</td>
<td class="table_detail e s" nowrap="nowrap">
<input type="hidden" name="AllCustomAttributes_DisplayName" value="<% {out.write(localizeISText("ProductAttributeMapping.AllCustomAttributes.input",null,null,null,null,null,null,null,null,null,null,null,null));} %>"/><% {out.write(localizeISText("ProductAttributeMapping.AllCustomAttributes.input",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_detail e s" nowrap="nowrap"><% {out.write(localizeISText("sld_enterprise_app.AllLanguages.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_detail e s"><input type="hidden" name="AllCustomAttributes_FunctionClassName" value="com.intershop.component.mvc.capi.mapping.ProductCustomAttributeMappingRule"/>
<input type="hidden" name="AllCustomAttributes_ShortDescription" value="<% {out.write(localizeISText("sld_enterprise_app.CopiesAllCustomProductAttributesForAllLanguages.input","",null,null,null,null,null,null,null,null,null,null,null));} %>"/> <% {out.write(localizeISText("ProductAttributeMapping.CopiesAllCustomProductAttributesForAllLanguages.input",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td colspan="4" align="right" class="w e s">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button">
<input type="hidden" name="ProviderID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ProviderID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {437}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="TypeCode" value="2"/>
<input type="hidden" name="FunctionClassName" value="com.intershop.component.mvc.capi.mapping.ProductAttributeMappingRule"/><input type="submit" name="add" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ProductAttributeMapping.Add.button",null)),null)%>" class="button"/>
</td>
</tr>
</table>
</td>
</tr>
</table><% out.print("</form>"); %><% } %><table border="0" cellpadding="4" cellspacing="0" width="100%" class="infobox e w">
<tr>
<td class="infobox_title"><% {out.write(localizeISText("ProductAttributeMapping.SelectedAttributes.infobox_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td class="table_title_description w e n s" colspan="4"><% {out.write(localizeISText("ProductAttributeMapping.TheListShowsAttributesThatAreCarriedOverWithProduc.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_SYNDICATE_CATALOGS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",459,e);}if (_boolean_result) { %><br/><% {out.write(localizeISText("ProductAttributeMapping.UseTheCheckboxesAndDeleteToRemoveAttributes.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %></td>
</tr>
</table>
<!-- check if there are mapping rules for the attribute and if they have the right type code //--><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("SourceDeclarations") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",468,e);}if (_boolean_result) { %><% URLPipelineAction action552 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductAttributeMapping-Dispatch",null)))),null));String site552 = null;String serverGroup552 = null;String actionValue552 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductAttributeMapping-Dispatch",null)))),null);if (site552 == null){  site552 = action552.getDomain();  if (site552 == null)  {      site552 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup552 == null){  serverGroup552 = action552.getServerGroup();  if (serverGroup552 == null)  {      serverGroup552 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductAttributeMapping-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("selectedAttr");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue552, site552, serverGroup552,true)); %><table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_SYNDICATE_CATALOGS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",472,e);}if (_boolean_result) { %><td class="table_header w e s left" nowrap="nowrap" width="80">
<div id="C">
<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
<tr>
<td nowrap="nowrap">
<a href="javascript:selectAll('selectedAttr','DeclarationID','C','D');" class="tableheader"><% {out.write(localizeISText("sld_enterprise_app.SelectAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
</td>
</tr>
</table>
</div>
<div id="D" style="display:none">
<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
<tr>
<td nowrap="nowrap">
<a href="javascript:selectAll('selectedAttr','DeclarationID','C','D');" class="tableheader"><% {out.write(localizeISText("sld_enterprise_app.ClearAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
</td>
</tr>
</table>
</div>
</td>
<td class="table_header e s"><% {out.write(localizeISText("sld_enterprise_app.Attribute.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td><% } else { %><td class="table_header w e s"><% {out.write(localizeISText("sld_enterprise_app.Attribute.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td><% } %><td class="table_header e s"><% {out.write(localizeISText("sld_enterprise_app.Language.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s" nowrap="nowrap"><% {out.write(localizeISText("sld_enterprise_app.Description.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s" nowrap="nowrap">&nbsp;</td>
</tr><% while (loop("SourceDeclarations","attr",null)) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((((Boolean) ((( ((Number) getObject("attr:SourceMappingRulesCount")).doubleValue() >((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) ((( ((Number) getObject("attr:TypeCode")).doubleValue() ==((Number)(new Double(2))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",502,e);}if (_boolean_result) { %><tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_SYNDICATE_CATALOGS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",504,e);}if (_boolean_result) { %><td class="w s center">
<input type="checkbox" name="DeclarationID" value="<%=context.getFormattedValue(getObject("attr:UUID"),null)%>" <% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Selection"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",506,e);}if (_boolean_result) { %><% while (loop("Selection",null,null)) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Selection"),null).equals(context.getFormattedValue(getObject("attr:UUID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",506,e);}if (_boolean_result) { %>checked="checked"<% } %><% } %><% } %>/>
</td><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("attr:attributeName"),null).equals(context.getFormattedValue("AllCustomAttributes",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",509,e);}if (_boolean_result) { %><td class="table_detail w s" nowrap="nowrap"><b><% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("attr:DisplayName"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",511,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("attr:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {512}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %><% {String value = null;try{value=context.getFormattedValue(getObject("attr:attributeName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {514}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %></b>
</td>
<td class="table_detail w s" nowrap="nowrap"><% {out.write(localizeISText("sld_enterprise_app.AllLanguages.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_detail w e s"><% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("attr:ShortDescription"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",519,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("attr:ShortDescription"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {520}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %><% {out.write(localizeISText("sld_enterprise_app.NotSpecified.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %></td>
<td class="table_detail w s" nowrap="nowrap">&nbsp;</td><% } else { %><td class="table_detail w s" nowrap="nowrap"><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductAttributeMapping-MappingRules",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null))).addURLParameter(context.getFormattedValue("ProviderID",null),context.getFormattedValue(getObject("ProviderID"),null)).addURLParameter(context.getFormattedValue("ProductDataDeclarationID",null),context.getFormattedValue(getObject("attr:UUID"),null))),null)%>" class="table_detail_link"><b><% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("attr:DisplayName"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",526,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("attr:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {526}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %><% {String value = null;try{value=context.getFormattedValue(getObject("attr:attributeName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {526}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %></b></a></td>
<td class="table_detail w s" nowrap="nowrap"><% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("attr:localeID"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",528,e);}if (_boolean_result) { %><% while (loop("Locales","Locales",null)) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Locales:LocaleID"),null).equals(context.getFormattedValue(getObject("attr:localeID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",530,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("Locales:getDisplayName(CurrentSession:Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {531}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% if (getLoopStack().isEmpty()) {Logger.error(this,"ISBREAK occured outside ISLOOP. Line: {}",532);}else{getLoopStack().pop();break;} %><% } %><% } %><% } else { %><% {out.write(localizeISText("sld_enterprise_app.NA.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %></td>
<td class="table_detail w e s"><% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("attr:ShortDescription"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",539,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("attr:ShortDescription"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {540}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %><% {out.write(localizeISText("sld_enterprise_app.NotSpecified.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %></td>
<td class="table_detail e s" nowrap="nowrap"><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductAttributeMapping-MappingRules",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null))).addURLParameter(context.getFormattedValue("ProviderID",null),context.getFormattedValue(getObject("ProviderID"),null)).addURLParameter(context.getFormattedValue("ProductDataDeclarationID",null),context.getFormattedValue(getObject("attr:UUID"),null))),null)%>" class="table_detail_link"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_SYNDICATE_CATALOGS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",544,e);}if (_boolean_result) { %><% {out.write(localizeISText("ProductAttributeMapping.Edit.link",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else { %><% {out.write(localizeISText("ProductAttributeMapping.View.link",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %></a></td><% } %></tr><% } %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_SYNDICATE_CATALOGS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",549,e);}if (_boolean_result) { %><tr>
<td nowrap="nowrap" colspan="5" align="right" class="w e s">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button">
<input type="hidden" name="ProviderID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ProviderID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {555}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="submit" name="confirmDelete" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ProductAttributeMapping.Delete.button",null)),null)%>" class="button"/>
</td>
</tr>
</table>
</td>
</tr><% } %></table><% out.print("</form>"); %><% } else { %><table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="table_detail w e s"><% {out.write(localizeISText("ProductAttributeMapping.NoAttributeMappingRulesDefined.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% } %></td>
</tr>
</table><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/Back", null, "575");} %><!-- EO Main Content -->
<!-- EO Working Area --><% printFooter(out); %>