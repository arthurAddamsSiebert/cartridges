<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><tr><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ShippingRuleSearch:ShippingRuleName:isInvalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",6,e);}if (_boolean_result) { %><td class="label" nowrap="nowrap"><label class="label label_error"><% {out.write(localizeISText("ShippingRuleParametricSearchMask.ShippingRuleName.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td><% } else { %><td class="label" nowrap="nowrap"><label class="label label_light"><% {out.write(localizeISText("ShippingRuleParametricSearchMask.ShippingRuleName.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td><% } %><td>
<input type="text" name="ShippingRuleSearch_ShippingRuleName" maxlength="255" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ShippingRuleSearch:ShippingRuleName:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {12}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="inputfield_en w100"/>
</td>
<td >&nbsp;</td>
<td>&nbsp;</td>
<td>&nbsp;</td>
</tr>
<tr><td colspan="5" ></td></tr>
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ShippingRuleSearch:ShippingRuleID:isInvalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",20,e);}if (_boolean_result) { %><td class="label" nowrap="nowrap"><label class="label label_error"><% {out.write(localizeISText("ShippingRuleParametricSearchMask.ShippingRuleID.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td><% } else { %><td class="label" nowrap="nowrap"><label class="label label_light"><% {out.write(localizeISText("ShippingRuleParametricSearchMask.ShippingRuleID.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td><% } %><td>
<input type="text" name="ShippingRuleSearch_ShippingRuleID" maxlength="255" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ShippingRuleSearch:ShippingRuleID:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {26}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="inputfield_en w100"/>
</td>
<td colspan="3"></td>
</tr>
<tr><td colspan="5" ></td></tr>
<tr>
<td class="label" nowrap="nowrap"><label class="label label_light"><% {out.write(localizeISText("ShippingRuleParametricSearchMask.RuleType.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td colspan="4">
<table border="0" cellpadding="0" cellspacing="0">
<tr>
<td>
<select name="ShippingRuleSearch_ShippingRuleType" class="select inputfield_en" style="width: 200px">
<option value=""><% {out.write(localizeISText("ShippingRuleParametricSearchMask.All.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option><% {Object temp_obj = (getObject("ShippingRuleSearch:ShippingRuleType:Value")); getPipelineDictionary().put("ShippingRuleType", temp_obj);} %><option value="Surcharge" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ShippingRuleType"),null).equals(context.getFormattedValue("Surcharge",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",42,e);}if (_boolean_result) { %>selected="selected"<% } %> ><% {out.write(localizeISText("ShippingRuleParametricSearchMask.ItemSurcharge.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="ImportSurcharge" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ShippingRuleType"),null).equals(context.getFormattedValue("ImportSurcharge",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",43,e);}if (_boolean_result) { %>selected="selected"<% } %> ><% {out.write(localizeISText("ShippingRuleParametricSearchMask.ImportSurcharge.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="ExcludeShipping" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ShippingRuleType"),null).equals(context.getFormattedValue("ExcludeShipping",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",44,e);}if (_boolean_result) { %>selected="selected"<% } %> ><% {out.write(localizeISText("ShippingRuleParametricSearchMask.ExcludeFromShipping.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="OverrideShippingMethod" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ShippingRuleType"),null).equals(context.getFormattedValue("OverrideShippingMethod",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",45,e);}if (_boolean_result) { %>selected="selected"<% } %> ><% {out.write(localizeISText("ShippingRuleParametricSearchMask.EligibleShippingMethod.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="BucketSurcharge" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ShippingRuleType"),null).equals(context.getFormattedValue("BucketSurcharge",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",46,e);}if (_boolean_result) { %>selected="selected"<% } %> ><% {out.write(localizeISText("ShippingRuleParametricSearchMask.BucketSurcharge.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
</select>
</td>
</tr>
</table>
</td>
</tr>
<tr><td colspan="5" ></td></tr>
<tr>
<td class="label" nowrap="nowrap"><label class="label label_light"><% {out.write(localizeISText("ShippingRuleParametricSearchMask.Active.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td colspan="4">
<table border="0" cellpadding="0" cellspacing="0">
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (((!(context.getFormattedValue(getObject("ShippingRuleSearch:ShippingRuleActiveFlag:Value"),null).equals(context.getFormattedValue("1",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("ShippingRuleSearch:ShippingRuleActiveFlag:Value"),null).equals(context.getFormattedValue("0",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",61,e);}if (_boolean_result) { %><td class="input_radio"><input type="radio" name="ShippingRuleSearch_ShippingRuleActiveFlag" value="" align="middle" checked="checked"/></td>
<td class="label_radio_text"><label class="label label_radio_text label_light" for=""><% {out.write(localizeISText("ShippingRuleParametricSearchMask.All.label",null,null,null,null,null,null,null,null,null,null,null,null));} %></label></td>
<td class="input_radio"><input type="radio" name="ShippingRuleSearch_ShippingRuleActiveFlag" value="1" align="middle"/></td>
<td class="label_radio_text"><label class="label label_radio_text label_light" for=""><% {out.write(localizeISText("ShippingRuleParametricSearchMask.Active.label",null,null,null,null,null,null,null,null,null,null,null,null));} %></label></td>
<td class="input_radio"><input type="radio" name="ShippingRuleSearch_ShippingRuleActiveFlag" value="0" align="middle"/></td>
<td class="label_radio_text"><label class="label label_radio_text label_light" for=""><% {out.write(localizeISText("ShippingRuleParametricSearchMask.Inactive.label",null,null,null,null,null,null,null,null,null,null,null,null));} %></label></td><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ShippingRuleSearch:ShippingRuleActiveFlag:Value"),null).equals(context.getFormattedValue("1",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",68,e);}if (_boolean_result) { %><td class="input_radio"><input type="radio" name="ShippingRuleSearch_ShippingRuleActiveFlag" value="" align="middle" /></td>
<td class="label_radio_text"><label class="label label_radio_text label_light" for=""><% {out.write(localizeISText("ShippingRuleParametricSearchMask.All.label",null,null,null,null,null,null,null,null,null,null,null,null));} %></label></td>
<td class="input_radio"><input type="radio" name="ShippingRuleSearch_ShippingRuleActiveFlag" value="1" align="middle" checked="checked"/></td>
<td class="label_radio_text"><label class="label label_radio_text label_light" for=""><% {out.write(localizeISText("ShippingRuleParametricSearchMask.Active.label",null,null,null,null,null,null,null,null,null,null,null,null));} %></label></td>
<td class="input_radio"><input type="radio" name="ShippingRuleSearch_ShippingRuleActiveFlag" value="0" align="middle"/></td>
<td class="label_radio_text"><label class="label label_radio_text label_light" for=""><% {out.write(localizeISText("ShippingRuleParametricSearchMask.Inactive.label",null,null,null,null,null,null,null,null,null,null,null,null));} %></label></td><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ShippingRuleSearch:ShippingRuleActiveFlag:Value"),null).equals(context.getFormattedValue("0",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",75,e);}if (_boolean_result) { %><td class="input_radio"><input type="radio" name="ShippingRuleSearch_ShippingRuleActiveFlag" value="" align="middle" /></td>
<td class="label_radio_text"><label class="label label_radio_text label_light" for=""><% {out.write(localizeISText("ShippingRuleParametricSearchMask.All.label",null,null,null,null,null,null,null,null,null,null,null,null));} %></label></td>
<td class="input_radio"><input type="radio" name="ShippingRuleSearch_ShippingRuleActiveFlag" value="1" align="middle" /></td>
<td class="label_radio_text"><label class="label label_radio_text label_light" for=""><% {out.write(localizeISText("ShippingRuleParametricSearchMask.Active.label",null,null,null,null,null,null,null,null,null,null,null,null));} %></label></td>
<td class="input_radio"><input type="radio" name="ShippingRuleSearch_ShippingRuleActiveFlag" value="0" align="middle" checked="checked"/></td>
<td class="label_radio_text"><label class="label label_radio_text label_light" for=""><% {out.write(localizeISText("ShippingRuleParametricSearchMask.Inactive.label",null,null,null,null,null,null,null,null,null,null,null,null));} %></label></td><% }}} %></tr>
</table>
</td>
</tr>
<tr>
<td colspan="4">&nbsp;</td>
<td align="right">
<table border="0" cellspacing="2" cellpadding="0">
<tr>
<td class="button"><input type="hidden" name="SearchType" value="parametric"/><input type="submit" name="parametricSearch" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ShippingRuleParametricSearchMask.Find.button",null)),null)%>" class="button"/></td> 
</tr>
</table>
</td>
</tr><% printFooter(out); %>