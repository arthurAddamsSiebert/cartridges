<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- Working Area -->
<!--UpdateCustomProductAttributeAction.isml-->
<!-- Page Navigator --><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductProcessingWizard_32-SelectNextPageByAction",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ActionID",null),context.getFormattedValue("UpdateCustomProductAttribute",null))).addURLParameter(context.getFormattedValue("PageableID",null),context.getFormattedValue(getObject("PageableID"),null)).addURLParameter(context.getFormattedValue("CatalogID",null),context.getFormattedValue(getObject("CatalogID"),null)).addURLParameter(context.getFormattedValue("SelectedMenuItem",null),context.getFormattedValue(getObject("SelectedMenuItem"),null)).addURLParameter(context.getFormattedValue("IsSearchFired",null),context.getFormattedValue(getObject("IsSearchFired"),null)))),
new TagParameter("wizard","true"),
new TagParameter("text",localizeText(context.getFormattedValue("UpdateCustomProductAttributeAction_32.Step2DefineCustomAttributeValue.text",null)))}, 6); %><table border="0" cellspacing="0" cellpadding="0" width="100%">
<tr>
<td class="table_title aldi"><% {out.write(localizeISText("UpdateCustomProductAttributeAction_32.Step2UpdateCreateCustomProductAttributeDefineCustom.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("CustomAttributeNameMissing")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("CustomAttributeValueMissing")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("ErrorCode")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",12,e);}if (_boolean_result) { %><tr>
<td>
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr>
<td class="error_icon e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error top" width="100%"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CustomAttributeNameMissing"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",19,e);}if (_boolean_result) { %><b><% {out.write(localizeISText("UpdateCustomProductAttributeAction_32.PleaseProvideAnAttributeName.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></b><br/><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CustomAttributeValueMissing"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",22,e);}if (_boolean_result) { %><b><% {out.write(localizeISText("UpdateCustomProductAttributeAction_32.PleaseProvideAnAttributeValue.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></b><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ErrorCode"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",25,e);}if (_boolean_result) { %><b><% {out.write(localizeISText("UpdateCustomProductAttributeAction_32.TheAttributeValueCouldNotBeParsedPleaseProvideA.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></b><% } %></td>
</tr>
</table>
</td>
</tr><% } %><tr>
<td class="w e s table_title_description"><% {out.write(localizeISText("UpdateCustomProductAttributeAction_32.FieldsWithARedAsterisk.table_title_description",null,null,"star",encodeString(context.getFormattedValue(getObject("CurrentRequest:Locale:DefaultRegionalSettings:inputDatePatternUserHint"),null)),encodeString(context.getFormattedValue(getObject("CurrentRequest:Locale:DefaultRegionalSettings:inputTimePatternUserHint"),null)),null,null,null,null,null,null,null));} %></td>
</tr>
</table> 
<% URLPipelineAction action64 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductProcessingWizard_32-Dispatch",null)))),null));String site64 = null;String serverGroup64 = null;String actionValue64 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductProcessingWizard_32-Dispatch",null)))),null);if (site64 == null){  site64 = action64.getDomain();  if (site64 == null)  {      site64 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup64 == null){  serverGroup64 = action64.getServerGroup();  if (serverGroup64 == null)  {      serverGroup64 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductProcessingWizard_32-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("ActionParameterForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue64, site64, serverGroup64,true)); %><table border="0" cellspacing="0" cellpadding="0" width="100%" class="w e s">
<tr>
<td colspan="2"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="4" alt="" border="0"/></td>
</tr> 
<tr>
<td <% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CustomAttributeNameMissing"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",51,e);}if (_boolean_result) { %>class="fielditem2_error"<% } else { %>class="fielditem2"<% } %> nowrap="nowrap"><% {out.write(localizeISText("UpdateCustomProductAttributeAction_32.AttributeName",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></td>
<td class="table_detail" width="100%">
<input type="text" name="CustomAttributeName" maxlength="400" size="40" value="<% {String value = null;try{value=context.getFormattedValue(getObject("CustomAttributeName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {53}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="inputfield_en"/>
</td>
</tr>
<tr>
<td class="fielditem2" nowrap="nowrap"><% {out.write(localizeISText("UpdateCustomProductAttributeAction_32.AttributeType.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:&nbsp;</td>
<td class="table_detail">
<select name="CustomAttributeType" class="inputfield_en" style="width: 255px;" width="100%"> 
<option value="String" selected="selected"><% {out.write(localizeISText("UpdateCustomProductAttributeAction_32.String.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option> 
<option value="Integer" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("CustomAttributeType"),null).equals(context.getFormattedValue("Integer",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",61,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("UpdateCustomProductAttributeAction_32.Integer.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="Double" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("CustomAttributeType"),null).equals(context.getFormattedValue("Double",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",62,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("UpdateCustomProductAttributeAction_32.Double.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="Decimal" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("CustomAttributeType"),null).equals(context.getFormattedValue("Decimal",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",63,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("UpdateCustomProductAttributeAction_32.Decimal.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="Date" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("CustomAttributeType"),null).equals(context.getFormattedValue("Date",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",64,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("UpdateCustomProductAttributeAction_32.Date.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="Long" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("CustomAttributeType"),null).equals(context.getFormattedValue("Long",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",65,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("UpdateCustomProductAttributeAction_32.Long.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="Boolean" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("CustomAttributeType"),null).equals(context.getFormattedValue("Boolean",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",66,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("UpdateCustomProductAttributeAction_32.Boolean.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="Money" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("CustomAttributeType"),null).equals(context.getFormattedValue("Money",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",67,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("UpdateCustomProductAttributeAction_32.Money.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="Quantity" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("CustomAttributeType"),null).equals(context.getFormattedValue("Quantity",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",68,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("UpdateCustomProductAttributeAction_32.Quantity.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="Text" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("CustomAttributeType"),null).equals(context.getFormattedValue("Text",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",69,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("UpdateCustomProductAttributeAction_32.Text.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="MultipleString" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("CustomAttributeType"),null).equals(context.getFormattedValue("MultipleString",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",70,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("UpdateCustomProductAttributeAction_32.MultipleString.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="MultipleInteger" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("CustomAttributeType"),null).equals(context.getFormattedValue("MultipleInteger",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",71,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("UpdateCustomProductAttributeAction_32.MultipleInteger.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="MultipleDouble" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("CustomAttributeType"),null).equals(context.getFormattedValue("MultipleDouble",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",72,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("UpdateCustomProductAttributeAction_32.MultipleDouble.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="MultipleLong" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("CustomAttributeType"),null).equals(context.getFormattedValue("MultipleLong",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",73,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("UpdateCustomProductAttributeAction_32.MultipleLong.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="MultipleBoolean" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("CustomAttributeType"),null).equals(context.getFormattedValue("MultipleBoolean",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",74,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("UpdateCustomProductAttributeAction_32.MultipleBoolean.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="MultipleDate" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("CustomAttributeType"),null).equals(context.getFormattedValue("MultipleDate",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",75,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("UpdateCustomProductAttributeAction_32.MultipleDate.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="MultipleDecimal" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("CustomAttributeType"),null).equals(context.getFormattedValue("MultipleDecimal",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",76,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("UpdateCustomProductAttributeAction_32.MultipleDecimal.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
</select>
</td>
</tr> 
<tr>
<td <% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CustomAttributeValueMissing"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",81,e);}if (_boolean_result) { %>class="fielditem2_error"<% } else { %>class="fielditem2"<% } %> nowrap="nowrap"><% {out.write(localizeISText("UpdateCustomProductAttributeAction_32.AttributeValue",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></td>
<td class="table_detail">
<input type="text" name="CustomAttributeValue" maxlength="400" size="40" value="<% {String value = null;try{value=context.getFormattedValue(getObject("CustomAttributeValue"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {83}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="inputfield_en"/>
</td>
</tr> 
<tr>
<td class="fielditem2" nowrap="nowrap"><% {out.write(localizeISText("UpdateCustomProductAttributeAction_32.Locale.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:&nbsp;</td>
<td class="table_detail">
<select name="CustomAttributeLocale" class="inputfield_en" style="width: 255px;">
<option value="" selected="selected">(<% {out.write(localizeISText("UpdateCustomProductAttributeAction_32.None.option",null,null,null,null,null,null,null,null,null,null,null,null));} %>) </option><% while (loop("Locales","Locales",null)) { %><option value="<% {String value = null;try{value=context.getFormattedValue(getObject("Locales:LocaleID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {92}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Locales:LocaleID"),null).equals(context.getFormattedValue(getObject("CustomAttributeLocale"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",92,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {String value = null;try{value=context.getFormattedValue(getObject("Locales:getDisplayName(CurrentSession:Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {93}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;
</option><% } %></select>
</td>
</tr>
<tr>
<td colspan="2"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="8" alt="" border="0"/></td>
</tr>
</table>
<table class="w e s" width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td>
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/product/bulkwizard/WizardParams", null, "109");} %><input type="hidden" name="ParsingLocaleID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("CurrentRequest:Locale:LocaleID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {110}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="updateCustomAttribute" value="true"/>
<input type="hidden" name="ProcessName" value="updateCustomAttribute"/>
<input type="hidden" name="ProcessDescription" value="Update/Create Custom Product Attribute"/>
<input type="hidden" name="ActionID" value="UpdateCustomProductAttribute"/>
<input type="hidden" name="ConfirmStep" value="3"/>
<input type="hidden" name="IsSearchFired" value="<% {String value = null;try{value=context.getFormattedValue(getObject("IsSearchFired"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {116}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" />
<input type="submit" name="actionList" value="&lt;&lt;&nbsp;<%=context.getFormattedValue(localizeText(context.getFormattedValue("UpdateCustomProductAttributeAction_32.Previous.button",null)),null)%>" class="button"/>
</td>
</tr>
</table>
</td>
<td align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button">
<input type="submit" name="confirm" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("UpdateCustomProductAttributeAction_32.Next.button",null)),null)%>&nbsp;&gt;&gt;" class="button"/>
</td>
<td class="button">
<input type="submit" name="cancel" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("UpdateCustomProductAttributeAction_32.Cancel.button",null)),null)%>" class="button"/>
</td>
</tr>
</table>
</td>
</tr>
</table><% out.print("</form>"); %><!-- EO Main Content -->
<!-- EO Working Area --><% printFooter(out); %>