<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><table border="0" cellpadding="4" cellspacing="0" width="100%" class="n e w">
<tr>
<td>
<table cellpadding="0" cellspacing="0" border="0">
<tr>
<td class="fielditem2" nowrap="nowrap"><% {out.write(localizeISText("ShippingChargeBase_52.BaseCharge.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %> (<% {String value = null;try{value=context.getFormattedValue(getObject("Currency:Mnemonic"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {9}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>):</td>
<td class="table_detail"><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("EditPlanDisabled")).booleanValue() || !((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_SHIPPING")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",11,e);}if (_boolean_result) { %><input type="text" name="BaseCharge" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ShippingChargePlan:BaseShippingCharge(Currency:Mnemonic)"),new Integer(MONEY_SHORT),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {12}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" size="24" maxlength="17" class="inputfield_en" disabled="disabled" /><% } else { %><input type="text" name="BaseCharge" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ShippingChargePlan:BaseShippingCharge(Currency:Mnemonic)"),new Integer(MONEY_SHORT),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {14}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" size="24" maxlength="17" class="inputfield_en" /><% } %></td><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_SHIPPING"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",17,e);}if (_boolean_result) { %> 
<td class="table_detail">
<table cellspacing="4" cellpadding="0" border="0">
<tr>
<td class="button">
<input type="submit" name="updateBaseCharge" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ShippingChargeBase_52.Apply.button",null)),null)%>" class="button"
<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("EditPlanDisabled"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",23,e);}if (_boolean_result) { %>
disabled="disabled"
<% } %>/>
</td>
</tr>
</table>
</td><% } %></tr>
</table>
</td>
</tr>
</table><% printFooter(out); %>