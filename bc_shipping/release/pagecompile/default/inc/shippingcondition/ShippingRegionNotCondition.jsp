<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><%@page import="java.util.HashMap"%><% {try{executePipeline("ProcessShippingConditionConfiguration-GetRegions",((java.util.Map)(((new ParameterMap().addParameter(new ParameterEntry("ChannelDomain",getObject("ChannelDomain"))))))),"resultDict");}catch(Exception e){Logger.error(this,"ISPIPELINE failed. Line: 5.",e);}} %><% {Object temp_obj = (getObject("resultDict:Regions")); getPipelineDictionary().put("Regions", temp_obj);} %><% {Object temp_obj = (getObject("resultDict:RegionsMap")); getPipelineDictionary().put("RegionsMap", temp_obj);} %><input type="hidden" name="EditConditionID"
value="<% {String value = null;try{value=context.getFormattedValue(getObject("Condition:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {14}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" /><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("ConditionForm:ShippingRegions:Value:Iterator") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",15,e);}if (_boolean_result) { %><% getPipelineDictionary().put("AssignedRegionsMap", new HashMap<String, String>()); %><% while (loop("ConditionForm:ShippingRegions:Value:Iterator","SR",null)) { %><%  ((HashMap)getObject("AssignedRegionsMap")).put(getObject("SR"), true); %><input type="hidden" name="<% {String value = null;try{value=context.getFormattedValue(getObject("ConditionForm:ShippingRegions:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {20}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" value="<% {String value = null;try{value=context.getFormattedValue(getObject("SR"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {20}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" /><% } %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Regions") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",25,e);}if (_boolean_result) { %><% while (loop("Regions","SM",null)) { %><input type="hidden" name="AvailableRegions" value="<% {String value = null;try{value=context.getFormattedValue(getObject("SM:Id"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {27}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><% } %><% } %><input type="hidden" name="<% {String value = null;try{value=context.getFormattedValue(getObject("ConditionForm:ConditionDescriptorID:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {32}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ThisDescriptor:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {32}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<table border="0" cellpadding="0" cellspacing="0">
<tr>
<td class="label"><label class="label label_light"><% {out.write(localizeISText("ShippingRegionNotCondition.Condition.fielditem2","",null,null,null,null,null,null,null,null,null,null,null));} %></label></td>
<td class="table_detail"><% {out.write(localizeISText("ShippingRegionNotCondition.DestinationRegionIsNotOneOfTheFollowing.table_detail","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td class="label label_textarea"><label class="label label_textarea"><% {out.write(localizeISText("ShippingRegionNotCondition.Region.fielditem2","",null,null,null,null,null,null,null,null,null,null,null));} %></label></td>
<td class="table_detail">
<table border="0" cellpadding="0" cellspacing="4">
<tr>
<td class="table_detail w100"><select
name="RegionsToAdd"
class="select" size="8" multiple="multiple" style="width: 300px"><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Regions") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",46,e);}if (_boolean_result) { %> 
<% while (loop("Regions","SR",null)) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("AssignedRegionsMap:get(SR:Id)")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",48,e);}if (_boolean_result) { %><option value="<% {String value = null;try{value=context.getFormattedValue(getObject("SR:Id"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {49}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% {String value = null;try{value=context.getFormattedValue(getObject("SR:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {50}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></option><% } %><% } %><% } %></select></td>
<td align="center" valign="center">
<table cellpadding="0" cellspacing="0" border="0">
<tr><td class="button"><input type="submit" class="button" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ShippingRegionNotCondition.Add.button",null)),null)%>" name="addShippingRegions" /></td></tr>
</table>
<img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" height="6" alt="" border="0" />
<table cellpadding="0" cellspacing="0" border="0">
<tr><td class="button"><input type="submit" class="button" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ShippingRegionNotCondition.Remove.button",null)),null)%>" name="removeShippingRegions" /></td></tr>
</table>
</td>
<td class="table_detail w100"><select
name="RegionsToRemove" class="select" size="8"
multiple="multiple" style="width: 300px"><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("ConditionForm:ShippingRegions:Value:Iterator") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",68,e);}if (_boolean_result) { %><% while (loop("ConditionForm:ShippingRegions:Value:Iterator","SRID",null)) { %><% {Object temp_obj = (getObject("RegionsMap:get(SRID)")); getPipelineDictionary().put("ThisRegion", temp_obj);} %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ThisRegion"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",71,e);}if (_boolean_result) { %><option value="<% {String value = null;try{value=context.getFormattedValue(getObject("SRID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {72}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% {String value = null;try{value=context.getFormattedValue(getObject("ThisRegion:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {72}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></option><% } %><% } %><% } %></select></td>
</tr>
</table>
</td>
</tr>
</table><% printFooter(out); %>