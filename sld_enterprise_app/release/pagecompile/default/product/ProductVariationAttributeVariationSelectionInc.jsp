<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><tr><% _boolean_result=false;try {_boolean_result=((Boolean)(((!((Boolean) (disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_PRODUCTS")))).booleanValue() || ((Boolean) (getObject("Product:DerivedProduct"))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",4,e);}if (_boolean_result) { %><td class="label" nowrap="nowrap"><label class="label" for=""><% {out.write(localizeISText("sld_enterprise_app.VariationSelection.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td><% } else {_boolean_result=false;try {_boolean_result=((Boolean)(getObject("CreateAttribute:VariationSelection:isMissing"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",6,e);}if (_boolean_result) { %><td class="label_radio" nowrap="nowrap"><label class="label label_radio label_error" for=""><% {out.write(localizeISText("sld_enterprise_app.VariationSelection.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></label></td><% } else { %><td class="label_radio" nowrap="nowrap"><label class="label label_radio" for=""><% {out.write(localizeISText("sld_enterprise_app.VariationSelection.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></label></td><% }} %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Product:DerivedProduct"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",12,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("VariableVariationAttribute:PresentationOption"),null).equals(context.getFormattedValue("default",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",14,e);}if (_boolean_result) { %><td class="table_detail" colspan="2"><% {out.write(localizeISText("sld_enterprise_app.Default.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td> 
<% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("VariableVariationAttribute:PresentationOption"),null).equals(context.getFormattedValue("swatchImage",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",16,e);}if (_boolean_result) { %><td class="table_detail" colspan="2"><% {out.write(localizeISText("sld_enterprise_app.SwatchImage.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td> 
<% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("VariableVariationAttribute:PresentationOption"),null).equals(context.getFormattedValue("defaultAndSwatchImage",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",18,e);}if (_boolean_result) { %><td class="table_detail" colspan="2"><% {out.write(localizeISText("sld_enterprise_app.DefaultAndSwatchImage.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td> 
<% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("VariableVariationAttribute:PresentationOption"),null).equals(context.getFormattedValue("colorCode",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",20,e);}if (_boolean_result) { %> 
<td class="table_detail" colspan="2"><% {out.write(localizeISText("sld_enterprise_app.HTMLColorCode.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td> 
<% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("VariableVariationAttribute:PresentationOption"),null).equals(context.getFormattedValue("defaultAndColorCode",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",22,e);}if (_boolean_result) { %> 
<td class="table_detail" colspan="2"><% {out.write(localizeISText("sld_enterprise_app.DefaultAndHTMLColorCode.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td><% }}}}} %><% } else { %><td class="input_radio" width="1%"><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (((((Boolean) ((((context.getFormattedValue(getObject("formName"),null).equals(context.getFormattedValue("CreateAttribute",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) (((((Boolean) ((((context.getFormattedValue(getObject("CreateAttribute_VariationSelection"),null).equals(context.getFormattedValue("default",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("CreateAttribute_VariationSelection"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) (((((Boolean) (((!(context.getFormattedValue(getObject("formName"),null).equals(context.getFormattedValue("CreateAttribute",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("VariableVariationAttribute:PresentationOption"),null).equals(context.getFormattedValue("default",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",28,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_PRODUCTS")))).booleanValue() && ((Boolean) ((disableErrorMessages().isDefined(getObject("ProductLockedForMe"))))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",30,e);}if (_boolean_result) { %><input type="radio" name="<% {String value = null;try{value=context.getFormattedValue(getObject("formName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {31}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>_VariationSelection" id="<% {String value = null;try{value=context.getFormattedValue(getObject("formName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {31}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>_VariationSelection_default" value="default" checked="checked" onclick="javascript: document.getElementById('productAttrName').disabled = true;"/><% } else { %><input type="radio" name="<% {String value = null;try{value=context.getFormattedValue(getObject("formName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {33}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>_VariationSelection" id="<% {String value = null;try{value=context.getFormattedValue(getObject("formName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {33}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>_VariationSelection_default" value="default" checked="checked" disabled="disabled"/><% } %><% } else { %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_PRODUCTS")))).booleanValue() && ((Boolean) ((disableErrorMessages().isDefined(getObject("ProductLockedForMe"))))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",36,e);}if (_boolean_result) { %><input type="radio" name="<% {String value = null;try{value=context.getFormattedValue(getObject("formName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {37}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>_VariationSelection" id="<% {String value = null;try{value=context.getFormattedValue(getObject("formName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {37}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>_VariationSelection_default" value="default" onclick="javascript: document.getElementById('productAttrName').disabled = true;"/><% } else { %><input type="radio" name="<% {String value = null;try{value=context.getFormattedValue(getObject("formName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {39}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>_VariationSelection" id="<% {String value = null;try{value=context.getFormattedValue(getObject("formName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {39}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>_VariationSelection_default" value="default" disabled="disabled"/><% } %><% } %></td>
<td class="label_radio_text"><label class="label label_radio_text label_light" for="<% {String value = null;try{value=context.getFormattedValue(getObject("formName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {43}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>_VariationSelection_default"><% {out.write(localizeISText("sld_enterprise_app.Default.label",null,null,null,null,null,null,null,null,null,null,null,null));} %></label></td>
</tr>
<tr>
<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="3" height="1" alt="" border="0"/></td>
<td class="input_radio" width="1%"><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (((((Boolean) ((((context.getFormattedValue(getObject("formName"),null).equals(context.getFormattedValue("CreateAttribute",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) (((((Boolean) ((((context.getFormattedValue(getObject("CreateAttribute_VariationSelection"),null).equals(context.getFormattedValue("swatchImage",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("CreateAttribute_VariationSelection"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) (((((Boolean) (((!(context.getFormattedValue(getObject("formName"),null).equals(context.getFormattedValue("CreateAttribute",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("VariableVariationAttribute:PresentationOption"),null).equals(context.getFormattedValue("swatchImage",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",48,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_PRODUCTS")))).booleanValue() && ((Boolean) ((disableErrorMessages().isDefined(getObject("ProductLockedForMe"))))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",50,e);}if (_boolean_result) { %><input type="radio" name="<% {String value = null;try{value=context.getFormattedValue(getObject("formName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {51}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>_VariationSelection" id="<% {String value = null;try{value=context.getFormattedValue(getObject("formName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {51}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>_VariationSelection_swatchImage" value="swatchImage" checked="checked" onclick="javascript: document.getElementById('productAttrName').disabled = false;"/><% } else { %><input type="radio" name="<% {String value = null;try{value=context.getFormattedValue(getObject("formName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {53}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>_VariationSelection" id="<% {String value = null;try{value=context.getFormattedValue(getObject("formName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {53}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>_VariationSelection_swatchImage" value="swatchImage" checked="checked" disabled="disabled"/><% } %><% } else { %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_PRODUCTS")))).booleanValue() && ((Boolean) ((disableErrorMessages().isDefined(getObject("ProductLockedForMe"))))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",56,e);}if (_boolean_result) { %><input type="radio" name="<% {String value = null;try{value=context.getFormattedValue(getObject("formName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {57}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>_VariationSelection" id="<% {String value = null;try{value=context.getFormattedValue(getObject("formName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {57}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>_VariationSelection_swatchImage" value="swatchImage" onclick="javascript: document.getElementById('productAttrName').disabled = false;"/><% } else { %><input type="radio" name="<% {String value = null;try{value=context.getFormattedValue(getObject("formName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {59}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>_VariationSelection" id="<% {String value = null;try{value=context.getFormattedValue(getObject("formName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {59}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>_VariationSelection_swatchImage" value="swatchImage" disabled="disabled"/><% } %><% } %></td>
<td class="label_radio_text"><label class="label label_radio_text label_light" for="<% {String value = null;try{value=context.getFormattedValue(getObject("formName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {63}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>_VariationSelection_swatchImage"><% {out.write(localizeISText("sld_enterprise_app.SwatchImage.label",null,null,null,null,null,null,null,null,null,null,null,null));} %></label></td>
</tr>
<tr>
<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="3" height="1" alt="" border="0"/></td>
<td class="input_radio" width="1%"><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (((((Boolean) ((((context.getFormattedValue(getObject("formName"),null).equals(context.getFormattedValue("CreateAttribute",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) (((((Boolean) ((((context.getFormattedValue(getObject("CreateAttribute_VariationSelection"),null).equals(context.getFormattedValue("defaultAndSwatchImage",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("CreateAttribute_VariationSelection"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) (((((Boolean) (((!(context.getFormattedValue(getObject("formName"),null).equals(context.getFormattedValue("CreateAttribute",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("VariableVariationAttribute:PresentationOption"),null).equals(context.getFormattedValue("defaultAndSwatchImage",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",68,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_PRODUCTS")))).booleanValue() && ((Boolean) ((disableErrorMessages().isDefined(getObject("ProductLockedForMe"))))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",70,e);}if (_boolean_result) { %><input type="radio" name="<% {String value = null;try{value=context.getFormattedValue(getObject("formName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {71}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>_VariationSelection" id="<% {String value = null;try{value=context.getFormattedValue(getObject("formName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {71}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>_VariationSelection_defaultAndSwatchImage" value="defaultAndSwatchImage" checked="checked" onclick="javascript: document.getElementById('productAttrName').disabled = false;"/><% } else { %><input type="radio" name="<% {String value = null;try{value=context.getFormattedValue(getObject("formName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {73}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>_VariationSelection" id="<% {String value = null;try{value=context.getFormattedValue(getObject("formName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {73}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>_VariationSelection_defaultAndSwatchImage" value="defaultAndSwatchImage" checked="checked" disabled="disabled"/><% } %><% } else { %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_PRODUCTS")))).booleanValue() && ((Boolean) ((disableErrorMessages().isDefined(getObject("ProductLockedForMe"))))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",76,e);}if (_boolean_result) { %><input type="radio" name="<% {String value = null;try{value=context.getFormattedValue(getObject("formName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {77}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>_VariationSelection" id="<% {String value = null;try{value=context.getFormattedValue(getObject("formName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {77}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>_VariationSelection_defaultAndSwatchImage" value="defaultAndSwatchImage" onclick="javascript: document.getElementById('productAttrName').disabled = false;"/><% } else { %><input type="radio" name="<% {String value = null;try{value=context.getFormattedValue(getObject("formName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {79}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>_VariationSelection" id="<% {String value = null;try{value=context.getFormattedValue(getObject("formName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {79}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>_VariationSelection_defaultAndSwatchImage" value="defaultAndSwatchImage" disabled="disabled"/><% } %><% } %></td>
<td class="label_radio_text"><label class="label label_radio_text label_light" for="<% {String value = null;try{value=context.getFormattedValue(getObject("formName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {83}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>_VariationSelection_defaultAndSwatchImage"><% {out.write(localizeISText("sld_enterprise_app.DefaultAndSwatchImage.label",null,null,null,null,null,null,null,null,null,null,null,null));} %></label></td>
</tr>
<tr>
<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="3" height="1" alt="" border="0"/></td>
<td class="input_radio" width="1%"><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (((((Boolean) ((((context.getFormattedValue(getObject("formName"),null).equals(context.getFormattedValue("CreateAttribute",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) (((((Boolean) ((((context.getFormattedValue(getObject("CreateAttribute_VariationSelection"),null).equals(context.getFormattedValue("colorCode",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("CreateAttribute_VariationSelection"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) (((((Boolean) (((!(context.getFormattedValue(getObject("formName"),null).equals(context.getFormattedValue("CreateAttribute",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("VariableVariationAttribute:PresentationOption"),null).equals(context.getFormattedValue("colorCode",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",88,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_PRODUCTS")))).booleanValue() && ((Boolean) ((disableErrorMessages().isDefined(getObject("ProductLockedForMe"))))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",90,e);}if (_boolean_result) { %><input type="radio" name="<% {String value = null;try{value=context.getFormattedValue(getObject("formName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {91}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>_VariationSelection" id="<% {String value = null;try{value=context.getFormattedValue(getObject("formName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {91}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>_VariationSelection_colorCode" value="colorCode" checked="checked" onclick="javascript: document.getElementById('productAttrName').disabled = false;"/><% } else { %><input type="radio" name="<% {String value = null;try{value=context.getFormattedValue(getObject("formName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {93}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>_VariationSelection" id="<% {String value = null;try{value=context.getFormattedValue(getObject("formName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {93}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>_VariationSelection_colorCode" value="colorCode" checked="checked" disabled="disabled"/><% } %><% } else { %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_PRODUCTS")))).booleanValue() && ((Boolean) ((disableErrorMessages().isDefined(getObject("ProductLockedForMe"))))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",96,e);}if (_boolean_result) { %><input type="radio" name="<% {String value = null;try{value=context.getFormattedValue(getObject("formName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {97}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>_VariationSelection" id="<% {String value = null;try{value=context.getFormattedValue(getObject("formName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {97}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>_VariationSelection_colorCode" value="colorCode" onclick="javascript: document.getElementById('productAttrName').disabled = false;"/><% } else { %><input type="radio" name="<% {String value = null;try{value=context.getFormattedValue(getObject("formName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {99}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>_VariationSelection" id="<% {String value = null;try{value=context.getFormattedValue(getObject("formName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {99}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>_VariationSelection_colorCode" value="colorCode" disabled="disabled"/><% } %><% } %></td>
<td class="label_radio_text"><label class="label label_radio_text label_light" for="<% {String value = null;try{value=context.getFormattedValue(getObject("formName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {103}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>_VariationSelection_colorCode"><% {out.write(localizeISText("sld_enterprise_app.HTMLColorCode.label",null,null,null,null,null,null,null,null,null,null,null,null));} %></label></td>
</tr>
<tr>
<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="3" height="1" alt="" border="0"/></td>
<td class="input_radio" width="1%"><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (((((Boolean) ((((context.getFormattedValue(getObject("formName"),null).equals(context.getFormattedValue("CreateAttribute",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) (((((Boolean) ((((context.getFormattedValue(getObject("CreateAttribute_VariationSelection"),null).equals(context.getFormattedValue("defaultAndColorCode",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("CreateAttribute_VariationSelection"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) (((((Boolean) (((!(context.getFormattedValue(getObject("formName"),null).equals(context.getFormattedValue("CreateAttribute",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("VariableVariationAttribute:PresentationOption"),null).equals(context.getFormattedValue("defaultAndColorCode",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",108,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_PRODUCTS")))).booleanValue() && ((Boolean) ((disableErrorMessages().isDefined(getObject("ProductLockedForMe"))))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",110,e);}if (_boolean_result) { %><input type="radio" name="<% {String value = null;try{value=context.getFormattedValue(getObject("formName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {111}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>_VariationSelection" id="<% {String value = null;try{value=context.getFormattedValue(getObject("formName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {111}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>_VariationSelection_defaultAndColorCode" value="defaultAndColorCode" checked="checked" onclick="javascript: document.getElementById('productAttrName').disabled = false;"/><% } else { %><input type="radio" name="<% {String value = null;try{value=context.getFormattedValue(getObject("formName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {113}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>_VariationSelection" id="<% {String value = null;try{value=context.getFormattedValue(getObject("formName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {113}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>_VariationSelection_defaultAndColorCode" value="defaultAndColorCode" checked="checked" disabled="disabled"/><% } %><% } else { %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_PRODUCTS")))).booleanValue() && ((Boolean) ((disableErrorMessages().isDefined(getObject("ProductLockedForMe"))))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",116,e);}if (_boolean_result) { %><input type="radio" name="<% {String value = null;try{value=context.getFormattedValue(getObject("formName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {117}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>_VariationSelection" id="<% {String value = null;try{value=context.getFormattedValue(getObject("formName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {117}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>_VariationSelection_defaultAndColorCode" value="defaultAndColorCode" onclick="javascript: document.getElementById('productAttrName').disabled = false;"/><% } else { %><input type="radio" name="<% {String value = null;try{value=context.getFormattedValue(getObject("formName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {119}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>_VariationSelection" id="<% {String value = null;try{value=context.getFormattedValue(getObject("formName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {119}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>_VariationSelection_defaultAndColorCode" value="defaultAndColorCode" disabled="disabled"/><% } %><% } %></td>
<td class="label_radio_text"><label class="label label_radio_text label_light" for="<% {String value = null;try{value=context.getFormattedValue(getObject("formName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {123}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>_VariationSelection_defaultAndColorCode"><% {out.write(localizeISText("sld_enterprise_app.DefaultAndHTMLColorCode.label",null,null,null,null,null,null,null,null,null,null,null,null));} %></label></td><% } %></tr><% printFooter(out); %>