<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><!-- TEMPLATENAME: inc/ShippingChargePlanSelector_52.isml -->
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><table border="0" cellpadding="4" cellspacing="0" width="100%" class="infobox e n w">
<tr>
<td 
<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((context.getFormattedValue(getObject("ERROR"),null).equals(context.getFormattedValue("RenameSelector_SelectorIdAlreadyExists",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("NewSelectorID"),null).equals(context.getFormattedValue(getObject("SelectorID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",7,e);}if (_boolean_result) { %>
class="fielditem2_error" 
<% } else { %>
class="infobox_title"
<% } %>
nowrap="nowrap" width="1%"><% {out.write(localizeISText("ShippingChargePlanSelector_52.PlanCodeSelectorID",null,null,null,null,null,null,null,null,null,null,null,null));} %>:&nbsp;&nbsp;
</td>
<td class="infobox_item left" nowrap="nowrap" width="1%">
<input type="hidden" name="OldSelectorID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("SelectorID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {16}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" /><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_SHIPPING")))).booleanValue() && !((Boolean) getObject("EditPlanDisabled")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",17,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ERROR"),null).equals(context.getFormattedValue("RenameSelector_SelectorIdAlreadyExists",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",18,e);}if (_boolean_result) { %><input type="text" name="NewSelectorID" size="25" maxlength="25" class="inputfield_en" value="<% {String value = null;try{value=context.getFormattedValue(getObject("NewSelectorID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {19}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" /><% } else { %><input type="text" name="NewSelectorID" size="25" maxlength="25" class="inputfield_en" value="<% {String value = null;try{value=context.getFormattedValue(getObject("SelectorID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {21}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" /><% } %><% } else { %><input type="text" name="NewSelectorID" size="25" maxlength="25" class="inputfield_en" value="<% {String value = null;try{value=context.getFormattedValue(getObject("SelectorID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {24}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" disabled="disabled"/><% } %></td>
<td class="infobox_item" align="left">
<table cellspacing="4" cellpadding="0" border="0">
<tr>
<td class="button"><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("EditPlanDisabled")).booleanValue() || !((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_SHIPPING")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",31,e);}if (_boolean_result) { %> 
<input type="submit" name="updateSelectorID" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ShippingChargePlanSelector_52.Apply.button",null)),null)%>" class="button" disabled="disabled" /><% } else { %><input type="submit" name="updateSelectorID" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ShippingChargePlanSelector_52.Apply.button",null)),null)%>" class="button" /><% } %></td>
</tr>
</table>
</td>
<td class="infobox_item" align="right">
<table cellspacing="4" cellpadding="0" border="0">
<tr>
<td class="button"><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("EditPlanDisabled")).booleanValue() || !((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_SHIPPING")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",44,e);}if (_boolean_result) { %><input type="submit" name="confirmDeletePlan" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ShippingChargePlanSelector_52.DeleteShippingChargePlan.button",null)),null)%>" class="button" disabled="disabled" /><% } else { %><input type="submit" name="confirmDeletePlan" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ShippingChargePlanSelector_52.DeleteShippingChargePlan.button",null)),null)%>" class="button" /><% } %></td>
</tr>
</table>
</td>
</tr>
</table><% printFooter(out); %>