<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- Working Area -->
<!-- Page Navigator --><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("text",localizeText(context.getFormattedValue("NewVariationType_52.NewVariationType.text",null)))}, 4); %><!-- EO Page Navigator --><% URLPipelineAction action73 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewVariationType_52-Dispatch",null)))),null));String site73 = null;String serverGroup73 = null;String actionValue73 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewVariationType_52-Dispatch",null)))),null);if (site73 == null){  site73 = action73.getDomain();  if (site73 == null)  {      site73 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup73 == null){  serverGroup73 = action73.getServerGroup();  if (serverGroup73 == null)  {      serverGroup73 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewVariationType_52-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("NewVariationTypeForm1");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue73, site73, serverGroup73,true)); %><input type="submit" name="create" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("NewVariationType_52.Apply.button",null)),null)%>" class="button" style="position: absolute; top: -50000px"/>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" class="table_title w e n s"><% {out.write(localizeISText("NewVariationType_52.NewVariationTypeValueType.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<!-- start error handling --><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("NewVariationTypeForm:VariationTypeID:isMissing")).booleanValue() || ((Boolean) getObject("NewVariationTypeForm:DisplayName:isMissing")).booleanValue() || ((Boolean) getObject("NewVariationTypeForm:AttributeName:isMissing")).booleanValue() || ((Boolean) getObject("NewVariationTypeForm:ValueRange:isMissing")).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("ValueObjectError")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("ERROR_PRODUCT_TYPE_ID")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",19,e);}if (_boolean_result) { %><tr>
<td>
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr valign="top">
<td class="error_icon top e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error top" width="100%"><b><% {out.write(localizeISText("NewVariationType_52.TheVariationTypeCouldNotBeCreated.error",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</b><br/><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("NewVariationTypeForm:VariationTypeID:isMissing"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",26,e);}if (_boolean_result) { %><% {out.write(localizeISText("NewVariationType_52.TheVariationTypeNameIsMandatory.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("NewVariationTypeForm:AttributeName:isMissing"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",27,e);}if (_boolean_result) { %><% {out.write(localizeISText("NewVariationType_52.TheProductAttributeNameIsMandatory.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("NewVariationTypeForm:DisplayName:isMissing"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",28,e);}if (_boolean_result) { %><% {out.write(localizeISText("NewVariationType_52.TheAttributeDisplayNameIsMandatory.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("NewVariationTypeForm:ValueRange:isMissing"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",29,e);}if (_boolean_result) { %><% {out.write(localizeISText("NewVariationType_52.TheValueRangeIsMandatory.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ValueObjectError")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ValueObjectError"),null).equals(context.getFormattedValue("NoValue",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",30,e);}if (_boolean_result) { %><% {out.write(localizeISText("NewVariationType_52.TheValueRangeDoesNotContainAnyValue.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ValueObjectError")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ValueObjectError"),null).equals(context.getFormattedValue("ParseError",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",31,e);}if (_boolean_result) { %><% {out.write(localizeISText("NewVariationType_52.AtLeastOneOfTheRangeValuesHasAnUnrecognizedFormat.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ValueObjectError")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ValueObjectError"),null).equals(context.getFormattedValue("MaxLimitExceeded",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",32,e);}if (_boolean_result) { %><% {out.write(localizeISText("NewVariationType_52.TheDefaultValueIsAboveTheMaximum.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ValueObjectError")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ValueObjectError"),null).equals(context.getFormattedValue("MinLimitExceeded",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",33,e);}if (_boolean_result) { %><% {out.write(localizeISText("NewVariationType_52.TheDefaultValueIsBelowTheMinimum.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ERROR_PRODUCT_TYPE_ID"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",34,e);}if (_boolean_result) { %><% {out.write(localizeISText("NewVariationType_52.PleaseProvideAUniqueVariationTypeName.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/><% } %></td>
</tr>
</table>
</td>
</tr><% } %><!-- end error handling -->
<tr> 
<td>
<input type="hidden" name="ChannelID" value="<%=context.getFormattedValue(getObject("CurrentChannel:UUID"),null)%>"/>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td class="table_title_description w e s"><% {out.write(localizeISText("NewVariationType_52.FieldsWithARedAsterisk.table_title_description",null,null,"star",null,null,null,null,null,null,null,null,null));} %><br/><% {out.write(localizeISText("NewVariationType_52.IfTheAttributeIsLocalizedYouCanViewAndEdit.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td>
<table border="0" cellpadding="4" cellspacing="0" width="100%" class="infobox_locale w e s ">
<tr> 
<td class="infobox_item" nowrap="nowrap"><% {out.write(localizeISText("NewVariationType_52.SelectLanguage.infobox_item",null,null,null,null,null,null,null,null,null,null,null,null));} %>:&nbsp;</td>
<td>
<select name="LocaleId" class="select inputfield_en"><% while (loop("Locales","Locales",null)) { %><option value="<% {String value = null;try{value=context.getFormattedValue(getObject("Locales:LocaleID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {63}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Locales:LocaleID"),null).equals(context.getFormattedValue(getObject("Locale:LocaleID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",63,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {String value = null;try{value=context.getFormattedValue(getObject("Locales:getDisplayName(CurrentSession:Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {63}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</option><% } %></select>
<input type="hidden" name="ChannelID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ChannelID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {66}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
</td>
<td width="100%">
<table border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="button">
<input type="submit" name="ChangeLocaleInNew" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("NewVariationType_52.Apply.button",null)),null)%>" class="button"/>
<input type="hidden" name="CatalogCategoryID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Category:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {73}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
</td>
</tr>
</table>
</td>
</tr>
</table> 
</td>
</tr>
</table> 
<table border="0" cellpadding="0" cellspacing="0" width="100%" class = "w e">
<tr>
<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="4" alt="" border="0"/></td>
</tr>
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("NewVariationTypeForm:VariationTypeID:isMissing")).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("ERROR_PRODUCT_TYPE_ID")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",90,e);}if (_boolean_result) { %><td class="fielditem2_error" nowrap="nowrap"><% {out.write(localizeISText("NewVariationType_52.VariationTypeName.fielditem2_error",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></td><% } else { %><td class="fielditem2" nowrap="nowrap"><% {out.write(localizeISText("NewVariationType_52.VariationTypeName.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></td><% } %><td class="table_detail"><input type="text" name="NewVariationTypeForm_VariationTypeID" maxlength="256" size="40" value="<% {String value = null;try{value=context.getFormattedValue(getObject("NewVariationTypeForm:VariationTypeID:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {95}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="inputfield_en"/></td>
</tr>
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("NewVariationTypeForm:AttributeName:isMissing"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",98,e);}if (_boolean_result) { %><td class="fielditem2_error" nowrap="nowrap"><% {out.write(localizeISText("NewVariationType_52.ProductAttributeName.fielditem2_error",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></td><% } else { %><td class="fielditem2" nowrap="nowrap"><% {out.write(localizeISText("NewVariationType_52.ProductAttributeName.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></td><% } %><td class="table_detail"><input type="text" name="NewVariationTypeForm_AttributeName" maxlength="256" size="40" value="<% {String value = null;try{value=context.getFormattedValue(getObject("NewVariationTypeForm:AttributeName:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {103}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="inputfield_en"/></td>
</tr>
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("NewVariationTypeForm:DisplayName:isMissing"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",106,e);}if (_boolean_result) { %><td class="fielditem2_error" nowrap="nowrap"><% {out.write(localizeISText("NewVariationType_52.AttributeDisplayName.fielditem2_error",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></td><% } else { %><td class="fielditem2" nowrap="nowrap"><% {out.write(localizeISText("NewVariationType_52.AttributeDisplayName.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></td><% } %><td class="table_detail"><input type="text" name="NewVariationTypeForm_DisplayName" maxlength="256" size="40" value="<% {String value = null;try{value=context.getFormattedValue(getObject("NewVariationTypeForm:DisplayName:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {111}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="inputfield_en"/></td>
</tr>
<tr>
<td class="fielditem2" nowrap="nowrap"><% {out.write(localizeISText("NewVariationType_52.DataType.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td width="100%">
<table cellspacing="0" cellpadding="0" border="0">
<tr>
<td class="table_detail">
<select name="NewVariationTypeForm_ValueType" class="inputfield_en">
<option value="3" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("NewVariationTypeForm_ValueType"),null).equals(context.getFormattedValue("3",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",120,e);}if (_boolean_result) { %>selected<% } %>><% {out.write(localizeISText("NewVariationType_52.String.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="2" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("NewVariationTypeForm_ValueType"),null).equals(context.getFormattedValue("2",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",121,e);}if (_boolean_result) { %>selected<% } %>><% {out.write(localizeISText("NewVariationType_52.Double.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="1" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("NewVariationTypeForm_ValueType"),null).equals(context.getFormattedValue("1",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",122,e);}if (_boolean_result) { %>selected<% } %>><% {out.write(localizeISText("NewVariationType_52.Integer.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
</select>
</td>
<td><% _boolean_result=false;try {_boolean_result=((Boolean)(((!((Boolean) (getObject("NewVariationTypeForm:isSubmitted"))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("NewVariationTypeForm:Localized:Value"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",126,e);}if (_boolean_result) { %><input type="checkbox" name="NewVariationTypeForm_Localized" value="true" checked="checked"/><% } else { %><input type="checkbox" name="NewVariationTypeForm_Localized" value="true"/><% } %></td>
<td class="fielditem2 middle"><% {out.write(localizeISText("NewVariationType_52.Localizable.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
</td>
</tr>
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("NewVariationTypeForm:ValueRange:isMissing")).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("ValueObjectError")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",138,e);}if (_boolean_result) { %><td class="fielditem2_error" nowrap="nowrap"><% {out.write(localizeISText("NewVariationType_52.ValueRange.fielditem2_error",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></td><% } else { %><td class="fielditem2" nowrap="nowrap"><% {out.write(localizeISText("NewVariationType_52.ValueRange.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></td><% } %><td class="table_detail" colspan="3"><textarea rows="5" cols="69" class="inputfield_en" name="NewVariationTypeForm_ValueRange"><% {String value = null;try{value=context.getFormattedValue(getObject("NewVariationTypeForm:ValueRange:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {143}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></textarea></td>
</tr>
<tr>
<td></td>
<td class="table_detail" colspan="3"><% {out.write(localizeISText("NewVariationType_52.MultipleRangeValuesAreSeparatedBy.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="4" alt="" border="0"/></td>
</tr>
</table> 
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td align="right" class="w e s n">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><input type="submit" name="create" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("NewVariationType_52.Apply.button",null)),null)%>" class="button"/></td>
<td class="button"><input type="submit" name="cancel" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("NewVariationType_52.Cancel.button",null)),null)%>" class="button"/></td>
</tr>
</table>
</td>
</tr>
</table>
</td>
</tr>
</table><% out.print("</form>"); %> 
<!-- EO Working Area --><% printFooter(out); %>