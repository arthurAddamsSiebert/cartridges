<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("FilterValueMapping"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",4,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewSearchIndexFilters-EditValueMapping",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("BackToValueMappingEditor",null),context.getFormattedValue("true",null))).addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null)))),
new TagParameter("text",getObject("FilterValueMapping:Value"))}, 5); %><% } else { %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewSearchIndexFilters-EditValueMapping",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("BackToValueMappingEditor",null),context.getFormattedValue("true",null))).addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null)))),
new TagParameter("text",localizeText(context.getFormattedValue("SearchIndexFilterValueMapping.NewFilterValueMapping.text",null)))}, 7); %><% } %><script type="text/javascript">
<!--
function onChangeMappingType(radioInput)
{
if(radioInput.value == "text")
{
document.FilterValueMapping.FilterValueMapping_MappedRef.disabled=true;
document.FilterValueMapping.FilterValueMapping_Image.disabled=true;
document.FilterValueMapping.selectValueMappingImage.disabled=true;
document.FilterValueMapping.previewValueMappingImage.disabled=true;
}
else if(radioInput.value == "image")
{
document.FilterValueMapping.FilterValueMapping_MappedRef.disabled=true;
document.FilterValueMapping.FilterValueMapping_Image.disabled=false;
document.FilterValueMapping.selectValueMappingImage.disabled=false;
document.FilterValueMapping.previewValueMappingImage.disabled=false; 
}
else
{
document.FilterValueMapping.FilterValueMapping_MappedRef.disabled=false;
document.FilterValueMapping.FilterValueMapping_Image.disabled=true;
document.FilterValueMapping.selectValueMappingImage.disabled=true;
document.FilterValueMapping.previewValueMappingImage.disabled=true; 
}
return true; 
}
function onChangeColorCode(input)
{
document.getElementById('colorCodeSpanID').style.backgroundColor = input.value; 
}
//-->
</script><% URLPipelineAction action159 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewSearchIndexFilters-Dispatch",null)))),null));String site159 = null;String serverGroup159 = null;String actionValue159 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewSearchIndexFilters-Dispatch",null)))),null);if (site159 == null){  site159 = action159.getDomain();  if (site159 == null)  {      site159 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup159 == null){  serverGroup159 = action159.getServerGroup();  if (serverGroup159 == null)  {      serverGroup159 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewSearchIndexFilters-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("FilterValueMapping");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue159, site159, serverGroup159,true)); %><input type="hidden" name="SearchIndexID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("SearchIndex:IndexID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {49}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="AttributeName" value="<% {String value = null;try{value=context.getFormattedValue(getObject("FilterAttribute:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {50}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="FilterValueMappingValue" value="<% {String value = null;try{value=context.getFormattedValue(getObject("FilterValueMapping:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {51}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="table_title aldi"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("FilterValueMapping"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",57,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("FilterValueMapping:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {58}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %><% {out.write(localizeISText("SearchIndexFilterValueMapping.NewFilterValueMapping.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ERROR_VALIDATION"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",66,e);}if (_boolean_result) { %><tr>
<td>
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box">
<tr>
<td class="error_icon w s"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error w e s" width="100%"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("FilterValueMapping"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",73,e);}if (_boolean_result) { %><% {out.write(localizeISText("SearchIndexFilterValueMapping.FilterValueMappingCouldNotBeUpdated.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else { %><% {out.write(localizeISText("SearchIndexFilterValueMapping.FilterValueMappingCouldNotBeCreated.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ERROR_MAPPING_TYPE_EMPTY"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",78,e);}if (_boolean_result) { %><br/><% {out.write(localizeISText("SearchIndexFilterValueMapping.TheMappingTypeIsNotSelected.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ERROR_VALUE_EMPTY"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",80,e);}if (_boolean_result) { %><br/><% {out.write(localizeISText("SearchIndexFilterValueMapping.TheValueFieldIsEmpty.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ERROR_TEXT_EMPTY"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",82,e);}if (_boolean_result) { %><br/><% {out.write(localizeISText("SearchIndexFilterValueMapping.TheTextFieldIsEmpty.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ERROR_IMAGE_EMPTY"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",84,e);}if (_boolean_result) { %><br/><% {out.write(localizeISText("SearchIndexFilterValueMapping.TheImageFieldIsEmpty.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ERROR_UNKNOWN_MAPPING_TYPE"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",86,e);}if (_boolean_result) { %><br/><% {out.write(localizeISText("SearchIndexFilterValueMapping.UnknownMappingTypeIsSelected.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><% }}}}} %></td>
</tr>
</table>
</td>
</tr><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ERROR_VALIDATION")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("BackToValueMappingEditor")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",97,e);}if (_boolean_result) { %><% {Object temp_obj = (getObject("FilterValueMapping_Value")); getPipelineDictionary().put("ValueFieldValue", temp_obj);} %><% {Object temp_obj = (getObject("FilterValueMapping_MappingType")); getPipelineDictionary().put("MappingTypeValue", temp_obj);} %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Image"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",100,e);}if (_boolean_result) { %><% {Object temp_obj = (getObject("Image")); getPipelineDictionary().put("ImageFieldValue", temp_obj);} %><% } else { %><% {Object temp_obj = (getObject("FilterValueMapping_Image")); getPipelineDictionary().put("ImageFieldValue", temp_obj);} %><% } %><% {Object temp_obj = (getObject("FilterValueMapping_Text")); getPipelineDictionary().put("TextFieldValue", temp_obj);} %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("FilterValueMapping"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",108,e);}if (_boolean_result) { %><% {Object temp_obj = (""); getPipelineDictionary().put("ValueFieldValue", temp_obj);} %><% {Object temp_obj = (getObject("FilterValueMapping:Type")); getPipelineDictionary().put("MappingTypeValue", temp_obj);} %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue("text",null).equals(context.getFormattedValue(getObject("FilterValueMapping:Type"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",111,e);}if (_boolean_result) { %><% {Object temp_obj = (""); getPipelineDictionary().put("ImageFieldValue", temp_obj);} %><% {Object temp_obj = (getObject("FilterValueMapping:MappedValue")); getPipelineDictionary().put("TextFieldValue", temp_obj);} %> 
<% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue("image",null).equals(context.getFormattedValue(getObject("FilterValueMapping:Type"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",114,e);}if (_boolean_result) { %><% {Object temp_obj = (getObject("FilterValueMapping:MappedRef")); getPipelineDictionary().put("ImageFieldValue", temp_obj);} %><% {Object temp_obj = (getObject("FilterValueMapping:MappedValue")); getPipelineDictionary().put("TextFieldValue", temp_obj);} %><% } else { %><% {Object temp_obj = (getObject("FilterValueMapping:MappedRef")); getPipelineDictionary().put("MappedRefFieldValue", temp_obj);} %><% {Object temp_obj = (getObject("FilterValueMapping:MappedValue")); getPipelineDictionary().put("TextFieldValue", temp_obj);} %><% }} %><% }} %><tr>
<td class="table_title_description w e s"><% {out.write(localizeISText("SearchIndexFilterValueMapping.ForImageAsMappingTypeSelectAnImagePrevio.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %><br /><br /><% {out.write(localizeISText("SearchIndexFilterValueMapping.FieldsWithARedAsterisk.table_title_description",null,null,"star",null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td class="w e s">
<table class="infobox" width="100%" border="0" cellpadding="4" cellspacing="0">
<tr>
<td class="infobox_title" width="120" nowrap="nowrap"><% {out.write(localizeISText("SearchIndexFilterValueMapping.IndexLanguage.infobox_title",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td class="infobox_item"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("SearchIndex:Configuration:Locale"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",137,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("SearchIndex:Configuration:Locale:getDisplayName(CurrentSession:Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {138}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %>&nbsp;
</td>
</tr>
</table>
</td>
</tr>
<tr>
<td class="w e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></td>
</tr>
<tr>
<td>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<colgroup>
<col width="10%"/>
<col width="5%"/>
<col width="10%"/>
<col width="75%"/>
</colgroup>
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ERROR_VALUE_EMPTY"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",160,e);}if (_boolean_result) { %><td class="fielditem2_error w" nowrap="nowrap"><% {out.write(localizeISText("SearchIndexFilterValueMapping.Value.fielditem2_error",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></td><% } else { %><td class="fielditem2 w" nowrap="nowrap"><% {out.write(localizeISText("SearchIndexFilterValueMapping.Value.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></td><% } %><td class="table_detail" colspan="2"><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("FilterValueMapping")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",166,e);}if (_boolean_result) { %><input type="text" name="FilterValueMapping_Value" size="50" 
value="<% {String value = null;try{value=context.getFormattedValue(getObject("ValueFieldValue"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {168}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="inputfield_en"/><% } else { %><input type="text" name="FilterValueMapping_Value" size="50" 
value="<% {String value = null;try{value=context.getFormattedValue(getObject("FilterValueMapping:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {171}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="inputfield_en" disabled="disabled"/><% } %></td>
<td class="e" />
</tr>
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ERROR_MAPPING_TYPE_EMPTY")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("ERROR_UNKNOWN_MAPPING_TYPE")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",178,e);}if (_boolean_result) { %><td class="fielditem2_error w" nowrap="nowrap"><% {out.write(localizeISText("SearchIndexFilterValueMapping.MappingType.fielditem2_error",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></td><% } else { %><td class="fielditem2 w" nowrap="nowrap"><% {out.write(localizeISText("SearchIndexFilterValueMapping.MappingType.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></td><% } %><td class="table_detail" nowrap="nowrap">
<input id="MappingType_image" type="radio" onchange="onChangeMappingType(this);" name="FilterValueMapping_MappingType" value="image"
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue("image",null).equals(context.getFormattedValue(getObject("MappingTypeValue"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",185,e);}if (_boolean_result) { %>checked="checked"<% } %>
/>
<label for="MappingType_image"><% {out.write(localizeISText("SearchIndexFilterValueMapping.Image.label",null,null,null,null,null,null,null,null,null,null,null,null));} %></label>
</td>
<td class="table_detail">
<input type="text" name="FilterValueMapping_Image" size="50" <% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue("image",null).equals(context.getFormattedValue(getObject("MappingTypeValue"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",190,e);}if (_boolean_result) { %>disabled="disabled"<% } %> 
value="<% {String value = null;try{value=context.getFormattedValue(getObject("ImageFieldValue"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {191}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="inputfield_en" />
</td>
<td class="e" width="1%">
<table cellspacing="4" cellpadding="0" border="0">
<tr>
<td class="button"><input type="submit" class="button" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("SearchIndexFilterValueMapping.Select.button",null)),null)%>" name="selectValueMappingImage" <% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue("image",null).equals(context.getFormattedValue(getObject("MappingTypeValue"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",196,e);}if (_boolean_result) { %>disabled="disabled"<% } %> /></td>
<td class="button"><input type="button" name="previewValueMappingImage" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("SearchIndexFilterValueMapping.Preview.button",null)),null)%>" class="button" <% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue("image",null).equals(context.getFormattedValue(getObject("MappingTypeValue"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",197,e);}if (_boolean_result) { %>disabled="disabled"<% } %> onclick="window.open('<%=context.getFormattedValue(contentURL(context.getFormattedValue(getObject("ImageFieldValue"),null),context.getFormattedValue(getObject("Locale:LocaleID"),null)),null)%>');" /></td>
</tr>
</table>
</td>
</tr>
<tr>
<td class="w"></td>
<td class="table_detail" nowrap="nowrap">
<input id="MappingType_colorcode" type="radio" onchange="onChangeMappingType(this);" name="FilterValueMapping_MappingType" value="colorcode"
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue("colorcode",null).equals(context.getFormattedValue(getObject("MappingTypeValue"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",206,e);}if (_boolean_result) { %>checked="checked"<% } %>
/>
<label for="MappingType_colorcode"><% {out.write(localizeISText("SearchIndexFilterValueMapping.HTMLColorCode.label",null,null,null,null,null,null,null,null,null,null,null,null));} %></label>
</td> 
<td class="table_detail">
<input onChange="onChangeColorCode(this);" type="text" name="FilterValueMapping_MappedRef" size="50" <% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue("colorcode",null).equals(context.getFormattedValue(getObject("MappingTypeValue"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",211,e);}if (_boolean_result) { %>disabled="disabled"<% } %> 
value="<% {String value = null;try{value=context.getFormattedValue(getObject("MappedRefFieldValue"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {212}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="inputfield_en" />
</td>
<td class="e" width="1%">
<table cellspacing="4" cellpadding="0" border="0">
<tr>
<td><span id="colorCodeSpanID" style="background-color: <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("MappedRefFieldValue")))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("MappedRefFieldValue"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",217,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("MappedRefFieldValue"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {217}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>;<% } else { %>white;<% } %> min-width: 75px; min-height: 25px; display:block;" ></span></td>
</tr>
</table>
</td>
</tr>
<tr>
<td class="w" /> 
<td class="table_detail" nowrap="nowrap">
<input id="MappingType_text" type="radio" onchange="onChangeMappingType(this);" name="FilterValueMapping_MappingType" value="text" 
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue("text",null).equals(context.getFormattedValue(getObject("MappingTypeValue"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",226,e);}if (_boolean_result) { %>checked="checked"<% } %>
/>
<label for="MappingType_text"><% {out.write(localizeISText("SearchIndexFilterValueMapping.Text.label",null,null,null,null,null,null,null,null,null,null,null,null));} %></label>
</td>
<td class="table_detail">
<input type="text" name="FilterValueMapping_Text" size="50" 
value="<% {String value = null;try{value=context.getFormattedValue(getObject("TextFieldValue"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {232}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="inputfield_en" />
</td>
<td class="e" />
</tr>
</table>
</td>
</tr>
<tr>
<td align="right" class="aldi">
<table cellspacing="4" cellpadding="0" border="0">
<tr>
<td class="button"><input type="submit" class="button" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("SearchIndexFilterValueMapping.Apply.button",null)),null)%>" name="applyFilterValueMapping"/></td>
<td class="button"><input type="reset" class="button" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("SearchIndexFilterValueMapping.Reset.button",null)),null)%>" name="resetFilterValueMapping"/></td><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) ((disableErrorMessages().isDefined(getObject("FilterValueMapping"))))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",247,e);}if (_boolean_result) { %><td class="button"><input type="submit" class="button" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("SearchIndexFilterValueMapping.Cancel.button",null)),null)%>" name="cancelFilterValueMapping"/></td><% } %></tr>
</table>
</td>
</tr> 
</table><% out.print("</form>"); %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("FilterValueMapping"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",257,e);}if (_boolean_result) { %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/BackToList", null, "258");} %><% } %><% printFooter(out); %>