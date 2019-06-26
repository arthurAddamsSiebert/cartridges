<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><%@page import="java.util.HashMap"%>
<!-- TEMPLATENAME: ShippingAction.isml -->
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% {try{executePipeline("ProcessPromotionShippingConfiguration-GetShippingMethods",((java.util.Map)(((new ParameterMap().addParameter(new ParameterEntry("ChannelDomain",getObject("CurrentChannel:Domain"))))))),"resultDict");}catch(Exception e){Logger.error(this,"ISPIPELINE failed. Line: 5.",e);}} %><% {Object temp_obj = (getObject("resultDict:ShippingMethods")); getPipelineDictionary().put("ShippingMethods", temp_obj);} %><% {Object temp_obj = (getObject("resultDict:ShippingMethodsMap")); getPipelineDictionary().put("ShippingMethodsMap", temp_obj);} %><tr>
<td class="label"><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("ActionForm:ShippingMethodsConsitency:Invalid")).booleanValue() || ((Boolean) getObject("ActionForm:MethodsAffected:Invalid")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",14,e);}if (_boolean_result) { %><label class="label label_error label_indent"> <% {out.write(localizeISText("ShippingDiscount.Methods","",null,null,null,null,null,null,null,null,null,null,null));} %><span class="star">*</span> </label><% } else { %><label class="label label_light label_indent"> <% {out.write(localizeISText("ShippingDiscount.Methods","",null,null,null,null,null,null,null,null,null,null,null));} %><span class="star">*</span> </label><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("ActionForm:ShippingMethods:Value:Iterator") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",20,e);}if (_boolean_result) { %><% getPipelineDictionary().put("AssignedMethodsMap", new HashMap<String, String>()); %><% while (loop("ActionForm:ShippingMethods:Value:Iterator","SM",null)) { %><%  ((HashMap)getObject("AssignedMethodsMap")).put(getObject("SM"), true); %><input type="hidden" name="<% {String value = null;try{value=context.getFormattedValue(getObject("ActionForm:ShippingMethods:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {24}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" value="<% {String value = null;try{value=context.getFormattedValue(getObject("SM"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {24}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><% } %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("ShippingMethods") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",28,e);}if (_boolean_result) { %><% while (loop("ShippingMethods","SM",null)) { %><input type="hidden" name="AvailableShippingMethods" value="<% {String value = null;try{value=context.getFormattedValue(getObject("SM:Id"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {30}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><% } %><% } %></td>
<td>
<table cellpadding="0" cellspacing="0" border="0">
<tr>
<td>
<input type="radio" name="<% {String value = null;try{value=context.getFormattedValue(getObject("ActionForm:MethodsAffected:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {38}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
value="All" id="AllMethods"
<% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("ActionForm:MethodsAffected:Value"),null).equals(context.getFormattedValue("Selected",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",40,e);}if (_boolean_result) { %>
checked="checked"
<% } %>
/>
</td>
<td class="label">
<label class="label label_radio_text label_light"> <% {out.write(localizeISText("ShippingDiscount.AllMethods.table_detail","",null,null,null,null,null,null,null,null,null,null,null));} %> </label>
</td>
</tr>
</table>
</td>
</tr>
<tr>
<td class="fielditem2" nowrap="nowrap">&nbsp;</td>
<td>
<table cellpadding="0" cellspacing="0" border="0">
<tr>
<td>
<input type="radio" name="<% {String value = null;try{value=context.getFormattedValue(getObject("ActionForm:MethodsAffected:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {58}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
value="Selected" id="SelectedMethods"
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ActionForm:MethodsAffected:Value"),null).equals(context.getFormattedValue("Selected",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",60,e);}if (_boolean_result) { %>
checked="checked"
<% } %>
/>
</td>
<td class="label">
<label class="label label_light label_radio_text"> <% {out.write(localizeISText("ShippingDiscount.SelectedMethods.table_detail","",null,null,null,null,null,null,null,null,null,null,null));} %> </label>
</td>
</tr>
</table>
</td>
</tr>
<tr>
<td class="fielditem2">&nbsp;</td>
<td>
<table cellpadding="0" cellspacing="0" border="0">
<tr>
<td class="table_detail">
<select name="MethodsToAdd" class="select" size="8" multiple="multiple" style="width:300px"><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("ShippingMethods") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",79,e);}if (_boolean_result) { %><% while (loop("ShippingMethods","SM",null)) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("AssignedMethodsMap:get(SM:Id)")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",81,e);}if (_boolean_result) { %><option value="<% {String value = null;try{value=context.getFormattedValue(getObject("SM:Id"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {82}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% {String value = null;try{value=context.getFormattedValue(getObject("SM:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {83}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></option><% } %><% } %><% } %></select>
</td>
<td class="table_detail" align="center" vertical-align="middle">
<table cellpadding="0" cellspacing="0" border="0">
<tr><td class="button"><input type="submit" class="button" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ShippingDiscount.Add.button",null)),null)%> " name="addShippingMethods" /></td></tr>
</table>
<img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" height="6" alt="" border="0"/>
<table cellpadding="0" cellspacing="0" border="0">
<tr><td class="button"><input type="submit" class="button" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ShippingDiscount.Remove.input",null)),null)%>" name="removeShippingMethods" /></td></tr>
</table>
</td>
<td class="table_detail w100">
<select name="MethodsToRemove" class="select" size="8" multiple="multiple" style="width:300px"><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("ActionForm:ShippingMethods:Value:Iterator") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",101,e);}if (_boolean_result) { %><% while (loop("ActionForm:ShippingMethods:Value:Iterator","SMID",null)) { %><% {Object temp_obj = (getObject("ShippingMethodsMap:get(SMID)")); getPipelineDictionary().put("ThisMethod", temp_obj);} %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ThisMethod"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",104,e);}if (_boolean_result) { %><option value="<% {String value = null;try{value=context.getFormattedValue(getObject("SMID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {105}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% {String value = null;try{value=context.getFormattedValue(getObject("ThisMethod:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {106}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></option><% } %><% } %><% } %></select>
</td>
</tr>
</table>
</td>
</tr><% {try{executePipeline("ProcessPromotionShippingConfiguration-GetRegions",((java.util.Map)(((new ParameterMap().addParameter(new ParameterEntry("ChannelDomain",getObject("CurrentChannel:Domain"))))))),"resultDict");}catch(Exception e){Logger.error(this,"ISPIPELINE failed. Line: 118.",e);}} %><% {Object temp_obj = (getObject("resultDict:Regions")); getPipelineDictionary().put("Regions", temp_obj);} %><% {Object temp_obj = (getObject("resultDict:RegionsMap")); getPipelineDictionary().put("RegionsMap", temp_obj);} %><tr>
<td class="label"> 
<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("ActionForm:ShippingRegionsConsistency:Invalid")).booleanValue() || ((Boolean) getObject("ActionForm:RegionsAffected:Invalid")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",127,e);}if (_boolean_result) { %><label class="label label_error label_indent"> <% {out.write(localizeISText("ShippingDiscount.Regions","",null,null,null,null,null,null,null,null,null,null,null));} %><span class="star">*</span> </label><% } else { %><label class="label label_light label_indent"> <% {out.write(localizeISText("ShippingDiscount.Regions","",null,null,null,null,null,null,null,null,null,null,null));} %><span class="star">*</span> </label><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("ActionForm:ShippingRegions:Value:Iterator") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",133,e);}if (_boolean_result) { %><% getPipelineDictionary().put("AssignedRegionsMap", new HashMap<String, String>()); %><% while (loop("ActionForm:ShippingRegions:Value:Iterator","SR",null)) { %><%  ((HashMap)getObject("AssignedRegionsMap")).put(getObject("SR"), true); %><input type="hidden" name="<% {String value = null;try{value=context.getFormattedValue(getObject("ActionForm:ShippingRegions:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {138}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" value="<% {String value = null;try{value=context.getFormattedValue(getObject("SR"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {138}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" /><% } %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Regions") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",142,e);}if (_boolean_result) { %><% while (loop("Regions","SM",null)) { %><input type="hidden" name="AvailableRegions" value="<% {String value = null;try{value=context.getFormattedValue(getObject("SM:Id"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {144}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><% } %><% } %></td>
<td>
<table cellpadding="0" cellspacing="0" border="0">
<tr>
<td>
<input type="radio"
name="<% {String value = null;try{value=context.getFormattedValue(getObject("ActionForm:RegionsAffected:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {153}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
value="All" id="AllRegions"
<% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("ActionForm:RegionsAffected:Value"),null).equals(context.getFormattedValue("Selected",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",155,e);}if (_boolean_result) { %>
checked="checked"
<% } %>
/>
</td>
<td class="label">
<label class="label label_light label_radio_text"> <% {out.write(localizeISText("ShippingDiscount.AllRegions.table_detail","",null,null,null,null,null,null,null,null,null,null,null));} %> </label>
</td>
</tr>
</table>
</td>
</tr>
<tr>
<td class="fielditem2" nowrap="nowrap">&nbsp;</td>
<td>
<table cellpadding="0" cellspacing="0" border="0">
<tr>
<td>
<input type="radio" name="<% {String value = null;try{value=context.getFormattedValue(getObject("ActionForm:RegionsAffected:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {173}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
value="Selected" id="SelectedRegions"
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ActionForm:RegionsAffected:Value"),null).equals(context.getFormattedValue("Selected",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",175,e);}if (_boolean_result) { %>
checked="checked"
<% } %>
/>
</td>
<td class="label">
<label class="label label_light label_radio_text"> <% {out.write(localizeISText("ShippingDiscount.SelectedRegions.table_detail","",null,null,null,null,null,null,null,null,null,null,null));} %> </label>
</td>
</tr>
</table>
</td>
</tr>
<tr>
<td class="fielditem2">&nbsp;</td>
<td>
<table cellpadding="0" cellspacing="0" border="0">
<tr>
<td class="table_detail">
<select name="RegionsToAdd" class="select" size="8" multiple="multiple" style="width: 300px"><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Regions") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",194,e);}if (_boolean_result) { %><% while (loop("Regions","SR",null)) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("AssignedRegionsMap:get(SR:Id)")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",196,e);}if (_boolean_result) { %><option value="<% {String value = null;try{value=context.getFormattedValue(getObject("SR:Id"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {197}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% {String value = null;try{value=context.getFormattedValue(getObject("SR:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {198}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></option><% } %><% } %><% } %></select>
</td>
<td class="table_detail" align="center" vertical-align="middle">
<table cellpadding="0" cellspacing="0" border="0">
<tr><td class="button"><input type="submit" class="button" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ShippingDiscount.Add.button",null)),null)%> " name="addShippingRegions" /></td></tr>
</table>
<img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" height="6" alt="" border="0"/>
<table cellpadding="0" cellspacing="0" border="0">
<tr><td class="button"><input type="submit" class="button" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ShippingDiscount.True.input",null)),null)%>" name="removeShippingRegions" /></td></tr>
</table>
</td>
<td class="table_detail w100">
<select name="RegionsToRemove" class="select" size="8" multiple="multiple" style="width: 300px"><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("ActionForm:ShippingRegions:Value:Iterator") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",216,e);}if (_boolean_result) { %><% while (loop("ActionForm:ShippingRegions:Value:Iterator","SRID",null)) { %><% {Object temp_obj = (getObject("RegionsMap:get(SRID)")); getPipelineDictionary().put("ThisRegion", temp_obj);} %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ThisRegion"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",219,e);}if (_boolean_result) { %><option value="<% {String value = null;try{value=context.getFormattedValue(getObject("SRID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {220}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% {String value = null;try{value=context.getFormattedValue(getObject("ThisRegion:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {220}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></option><% } %><% } %><% } %></select>
</td>
</tr>
</table>
</td>
</tr>
<tr>
<td class="label" nowrap="nowrap"><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("ActionForm:PromotionDiscountConsistency:Invalid")).booleanValue() || ((Boolean) getObject("ActionForm:TargetAffected:Invalid")).booleanValue() || ((Boolean) getObject("ActionForm:ItemRestriction:Invalid")).booleanValue() || ((Boolean) getObject("ActionForm:AffectedItemsNumber:Invalid")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",234,e);}if (_boolean_result) { %><label class="label label_error label_indent"> <% {out.write(localizeISText("ShippingDiscount.ApplyTo","",null,null,null,null,null,null,null,null,null,null,null));} %><span class="star">*</span><% } else { %><label class="label label_light label_indent"> <% {out.write(localizeISText("ShippingDiscount.ApplyTo","",null,null,null,null,null,null,null,null,null,null,null));} %><span class="star">*</span><% } %></td>
<td>
<table cellpadding="0" cellspacing="0" border="0">
<tr>
<td>
<input type="radio" name="<% {String value = null;try{value=context.getFormattedValue(getObject("ActionForm:TargetAffected:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {245}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
value="Order" id="Order"
<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (((!(context.getFormattedValue(getObject("ActionForm:TargetAffected:Value"),null).equals(context.getFormattedValue("Bucket",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) (((!(context.getFormattedValue(getObject("ActionForm:TargetAffected:Value"),null).equals(context.getFormattedValue("Item",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",247,e);}if (_boolean_result) { %>
checked="checked"
<% } %>
/>
</td>
<td class="label">
<label class="label label_light label_radio_text"> <% {out.write(localizeISText("ShippingDiscount.OrderShippingTotal.table_detail","",null,null,null,null,null,null,null,null,null,null,null));} %> </label>
</td>
</tr>
</table>
</td>
</tr>
<tr>
<td class="fielditem2" nowrap="nowrap">&nbsp;</td>
<td>
<table cellpadding="0" cellspacing="0" border="0">
<tr>
<td>
<input type="radio" name="<% {String value = null;try{value=context.getFormattedValue(getObject("ActionForm:TargetAffected:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {266}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
value="Bucket" id="Bucket"
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ActionForm:TargetAffected:Value"),null).equals(context.getFormattedValue("Bucket",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",268,e);}if (_boolean_result) { %>
checked="checked"
<% } %>
/>
</td>
<td class="label">
<label class="label label_light label_radio_text"> <% {out.write(localizeISText("ShippingDiscount.BucketShippingTotal.table_detail","",null,null,null,null,null,null,null,null,null,null,null));} %> </label>
</td>
</tr>
</table>
</td>
</tr>
<tr>
<td class="fielditem2" nowrap="nowrap">&nbsp;</td>
<td>
<table cellpadding="0" cellspacing="0" border="0">
<tr>
<td>
<input type="radio" name="<% {String value = null;try{value=context.getFormattedValue(getObject("ActionForm:TargetAffected:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {287}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
value="Items" id="Items"
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ActionForm:TargetAffected:Value"),null).equals(context.getFormattedValue("Items",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",289,e);}if (_boolean_result) { %>
checked="checked"
<% } %>
/>
</td>
<td class="label">
<label class="label label_light label_radio_text"> <% {out.write(localizeISText("ShippingDiscount.ItemShipping.table_detail","",null,null,null,null,null,null,null,null,null,null,null));} %> </label>
</td>
<td>
<input type="checkbox" name="<% {String value = null;try{value=context.getFormattedValue(getObject("ActionForm:ItemRestriction:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {298}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((context.getFormattedValue(getObject("ActionForm:ItemRestriction:Value"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ActionForm:TargetAffected:Value"),null).equals(context.getFormattedValue("Items",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",299,e);}if (_boolean_result) { %>
checked
<% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((context.getFormattedValue(getObject("ActionForm:ItemRestriction:Value"),null).equals(context.getFormattedValue("on",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ActionForm:TargetAffected:Value"),null).equals(context.getFormattedValue("Items",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",303,e);}if (_boolean_result) { %>
checked
<% }} %>
/>
</td>
<td class="label"><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("ActionForm:ItemRestriction:Invalid")).booleanValue() || ((Boolean) getObject("ActionForm:AffectedItemsNumber:Invalid")).booleanValue() || ((Boolean) getObject("ActionForm:TargetAffected:Invalid")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",309,e);}if (_boolean_result) { %><label class="label label_error label_checkbox_text"> <% {out.write(localizeISText("ShippingDiscount.LimitTo","",null,null,null,null,null,null,null,null,null,null,null));} %> </label><% } else { %><label class="label label_light label_checkbox_text"> <% {out.write(localizeISText("ShippingDiscount.LimitTo","",null,null,null,null,null,null,null,null,null,null,null));} %> </label><% } %></td>
<td>
<input type="text" maxlength="8" size="12" class="inputfield_en" name="<% {String value = null;try{value=context.getFormattedValue(getObject("ActionForm:AffectedItemsNumber:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {316}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" 
<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((context.getFormattedValue(getObject("ActionForm:ItemRestriction:Value"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ActionForm:TargetAffected:Value"),null).equals(context.getFormattedValue("Items",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",317,e);}if (_boolean_result) { %>
value="<% {String value = null;try{value=context.getFormattedValue(getObject("ActionForm:AffectedItemsNumber:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {318}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
<% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((context.getFormattedValue(getObject("ActionForm:ItemRestriction:Value"),null).equals(context.getFormattedValue("on",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ActionForm:TargetAffected:Value"),null).equals(context.getFormattedValue("Items",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",321,e);}if (_boolean_result) { %>
value="<% {String value = null;try{value=context.getFormattedValue(getObject("ActionForm:AffectedItemsNumber:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {322}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
<% } else { %>
value="1"
<% }} %>
onkeypress="preSubmit(event)"
/>
</td>
<td class="label"><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("ActionForm:ItemRestriction:Invalid")).booleanValue() || ((Boolean) getObject("ActionForm:AffectedItemsNumber:Invalid")).booleanValue() || ((Boolean) getObject("ActionForm:TargetAffected:Invalid")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",330,e);}if (_boolean_result) { %><label class="label label_error label_checkbox_text"> <% {out.write(localizeISText("ShippingDiscount.Items","",null,null,null,null,null,null,null,null,null,null,null));} %> </label><% } else { %><label class="label label_light label_checkbox_text"> <% {out.write(localizeISText("ShippingDiscount.Items","",null,null,null,null,null,null,null,null,null,null,null));} %> </label><% } %></td>
</tr>
</table>
</td>
</tr><% {Object temp_obj = (getObject("ActionDescriptorMap:get(ActionForm:ActionDescriptorID:Value):ConditionalDiscountTemplate")); getPipelineDictionary().put("ConditionalDiscountTemplate", temp_obj);} %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ConditionalDiscountTemplate")))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("ConditionalDiscountTemplate"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",342,e);}if (_boolean_result) { %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,context.getFormattedValue(getObject("ConditionalDiscountTemplate"),null), null, "343");} %><% } %><% {Object temp_obj = (getObject("ActionDescriptorMap:get(ActionForm:ActionDescriptorID:Value):PromotionActionTemplate")); getPipelineDictionary().put("PromotionActionTemplate", temp_obj);} %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("PromotionActionTemplate")))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("PromotionActionTemplate"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",347,e);}if (_boolean_result) { %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,context.getFormattedValue(getObject("PromotionActionTemplate"),null), null, "348");} %><% } %><% printFooter(out); %>