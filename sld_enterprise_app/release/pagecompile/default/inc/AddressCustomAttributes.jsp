<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><table border="0" cellpadding="4" cellspacing="0" width="100%" class="infobox w e n">
<tr>
<td class="infobox_title"><% {out.write(localizeISText("OrganizationSearchIndexAttributeEditor.NewAttribute.text",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td>
<table border="0" cellpadding="0" cellspacing="0">
<tr>
<td class="infobox_item" nowrap="nowrap" valign="middle"><% {out.write(localizeISText("PageletTabProperties.Name.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td><input type="text" name="AttributeName_<%=context.getFormattedValue(getObject("Address:UUID"),null)%>" maxlength="256" size="25" value="" class="inputfield_en"/>&nbsp;&nbsp;</td>
<td class="infobox_item" nowrap="nowrap" valign="middle"><% {out.write(localizeISText("sld_enterprise_app.DataType.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td>
<select name="AttributeType_<%=context.getFormattedValue(getObject("Address:UUID"),null)%>" class="inputfield_en">
<option value="String" selected="selected"><% {out.write(localizeISText("VariationTypeExportSelectVariationTypes.String.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="Integer"><% {out.write(localizeISText("VariationTypeExportSelectVariationTypes.Integer.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="Double"><% {out.write(localizeISText("VariationTypeExportSelectVariationTypes.Double.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
</select>&nbsp;&nbsp;
</td>
<td class="infobox_item" nowrap="nowrap" valign="middle"><% {out.write(localizeISText("PageletSearchMask.Value.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td>
<input type="text" name="AttributeValue_<%=context.getFormattedValue(getObject("Address:UUID"),null)%>" maxlength="4000" size="12" value="" class="inputfield_en"/>
</td>
<td align="left">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><input type="submit" name="UpdateCA" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ContentProcessingSelectLabel.Add.button",null)),null)%>" class="button"/></td>
</tr>
</table>
</td>
</tr>
</table>
</td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e"><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("AttributeValues") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",48,e);}if (_boolean_result) { %><tr>
<td class="table_header n s e center" nowrap="nowrap" width="80">
<div id="A">
<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
<tr>
<td nowrap="nowrap">
<a href="javascript:selectAll('formMask','SelectedObjectUUID','A','B');" class="tableheader"><% {out.write(localizeISText("PageletLabels.SelectAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
</td>
</tr>
</table>
</div>
<div id="B" style="display:none">
<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
<tr>
<td nowrap="nowrap">
<a href="javascript:selectAll('formMask','SelectedObjectUUID','A','B');" class="tableheader"><% {out.write(localizeISText("NewProductSetChannelAssignment.ClearAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
</td>
</tr>
</table>
</div>
</td>
<td class="table_header n e s left" nowrap="nowrap"><% {out.write(localizeISText("ProductExportSelectProductsColumns.Name",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header n e s left" nowrap="nowrap"><% {out.write(localizeISText("OrganizationSearchIndexAttributeSelectSource.DataType.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header n s left" nowrap="nowrap"><% {out.write(localizeISText("SearchQueryEditor.Value.label",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% while (loop("AttributeValues","av",null)) { %><tr>
<td class="table_detail2 e s center"><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Clipboard:contains(av:Name)"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",77,e);}if (_boolean_result) { %><input type="checkbox" name="SelectedObjectUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("av:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {78}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" checked="checked"/><% } else { %><input type="checkbox" name="SelectedObjectUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("av:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {80}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><% } %></td>
<td class="table_detail2 e s left">
<input type="text" name="AttributeName_<% {String value = null;try{value=context.getFormattedValue(getObject("av:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {84}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" maxlength="256" size="25" value="<% {String value = null;try{value=context.getFormattedValue(getObject("av:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {84}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="inputfield_en"/>
</td>
<td class="table_detail2 e s left">
<select name="AttributeType_<% {String value = null;try{value=context.getFormattedValue(getObject("av:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {87}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="inputfield_en">
<option value="String" <% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("av:Type")).doubleValue() ==((Number)(new Double(3))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",88,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("VariationTypeExportSelectVariationTypes.String.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="Integer" <% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("av:Type")).doubleValue() ==((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",89,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("VariationTypeExportSelectVariationTypes.Integer.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="Double" <% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("av:Type")).doubleValue() ==((Number)(new Double(2))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",90,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("VariationTypeExportSelectVariationTypes.Double.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
</select>
</td>
<td class="table_detail2 s left">
<input type="text" name="AttributeValue_<% {String value = null;try{value=context.getFormattedValue(getObject("av:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {94}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" maxlength="4000" size="12" value="<% processOpenTag(response, pageContext, "customattribute", new TagParameter[] {
new TagParameter("av",getObject("av"))}, 94); %>" class="inputfield_en"/>
</td>
</tr><% } %><% } else { %><tr>
<td class="table_detail n s"><% {out.write(localizeISText("AddressCustomAttributes.ThisAddressCurrentlyHasNoAttributes.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% } %></table>
<table border="0" cellspacing="0" cellpadding="0" width="100%" class="w e s">
<tr>
<td align="right" width="100%">
<table border="0" cellspacing="4" cellpadding="0">
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("AttributeValues") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",109,e);}if (_boolean_result) { %><td class="button"><input class="button" type="submit" name="UpdateCA" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("NewProductSet.Apply.input1",null)),null)%>"/></td><% } %><td class="button"><input type="hidden" name="AddressID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Address:AddressID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {112}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><input class="button" type="reset" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PageletTemplateTabProperties.Reset.button",null)),null)%>"/></td><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("AttributeValues") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",113,e);}if (_boolean_result) { %><td class="button"><input class="button" type="submit" name="DeleteCA" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("TemplateSearchButtons.Delete.button",null)),null)%>"/></td><% } %></tr>
</table>
</td>
</tr>
</table><% printFooter(out); %>