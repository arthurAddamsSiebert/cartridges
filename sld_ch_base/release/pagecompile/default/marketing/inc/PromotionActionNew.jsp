<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><table cellpadding="0" cellspacing="0" border="0" width="100%" class="editbox aldi">
<colgroup>
<col width="15%"/>
<col width="35%"/>
<col width="15%"/>
<col width="35%"/>
</colgroup>
<tr>
<td class="infobox_title"><% {out.write(localizeISText("PromotionActionNew.NewDiscount.fielditem2",null,null,encodeString(context.getFormattedValue(getObject("ActionTypesMap:get(NewActionForm:ActionType:Value)"),null)),null,null,null,null,null,null,null,null,null));} %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("NewActionForm:Invalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",18,e);}if (_boolean_result) { %><tr>
<td colspan="4">
<table cellspacing="0" cellpadding="0" border="0" width="100%" class="error_box ne se">
<tr>
<td><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/action/PromotionActionError", null, "24");} %></td>
</tr>
</table>
</td>
</tr><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("NewActionForm:ActionType:ValueMissing"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",33,e);}if (_boolean_result) { %><tr>
<td colspan="4" class="table_detail">
<table cellpadding="0" cellspacing="4" border="0" class="aldi w100">
<tr>
<td class="label">
<label class="label label_light label_indent"> <% {out.write(localizeISText("PromotionActionNew.Type.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>: </label>
</td>
<td><% {out.write("<");out.write("SELECT class=\"inputfield_en\" NAME=\""+context.getFormattedValue(getObject("NewActionForm:ActionType:QualifiedName"),null)+"\">");String value, description;while (loop("ActionTypes",null)){out.write("<");out.write("OPTION ");_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("NewActionForm:ActionType:Value"),null).equals(context.getFormattedValue(getObject("ActionTypesMap:get(ActionTypes)"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",43,e);}if (_boolean_result) {out.write("SELECTED ");}out.print("VALUE =\"");value = context.getFormattedValue(getObject("ActionTypes"),null);description = context.getFormattedValue(getObject("ActionTypesMap:get(ActionTypes)"),null);value = encodeString(value);description = encodeString(description);out.write(value + "\">");out.write(description + "</OPTION>");}out.write("</SELECT>");} %></td>
<td class="w100">
<table cellspacing="4" cellpadding="0" border="0">
<tr>
<td class="button"><input type="submit" class="button" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PromotionActionNew.Apply.button",null)),null)%>" name="newAction"/></td>
</tr>
</table>
</td>
</tr>
</table>
</td>
</tr><% } else {_boolean_result=false;try {_boolean_result=((Boolean)(getObject("NewActionForm:ActionDescriptorID:ValueMissing"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",62,e);}if (_boolean_result) { %><tr>
<td class="label" >
<input type="hidden" name="<% {String value = null;try{value=context.getFormattedValue(getObject("NewActionForm:ActionType:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {66}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" value="<% {String value = null;try{value=context.getFormattedValue(getObject("NewActionForm:ActionType:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {66}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<table cellpadding="0" cellspacing="4" border="0" class="aldi w100">
<tr>
<td class="label">
<label class="label label_light label_indent"> <% {out.write(localizeISText("PromotionActionNew.Trigger.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>: </label>
</td>
<td><% {out.write("<");out.write("SELECT class=\"inputfield_en\" NAME=\""+context.getFormattedValue(getObject("NewActionForm:ActionDescriptorID:QualifiedName"),null)+"\">");String value, description;while (loop("TypeActionDescriptors",null)){out.write("<");out.write("OPTION ");_boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("NewActionForm:ActionDescriptorID:Value")).doubleValue() ==((Number)(getObject("TypeActionDescriptors:ID"))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",73,e);}if (_boolean_result) {out.write("SELECTED ");}out.print("VALUE =\"");value = context.getFormattedValue(getObject("TypeActionDescriptors:ID"),null);description = context.getFormattedValue(getObject("TypeActionDescriptors:Name"),null);value = encodeString(value);description = encodeString(description);out.write(value + "\">");out.write(description + "</OPTION>");}out.write("</SELECT>");} %></td>
<td class="w100">
<table cellspacing="4" cellpadding="0" border="0">
<tr>
<td class="button"><input type="submit" class="button" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PromotionActionNew.Apply.button",null)),null)%>" name="newAction"/></td>
</tr>
</table>
</td>
</tr>
</table>
</td>
</tr><% } else { %><input type="hidden" name="<% {String value = null;try{value=context.getFormattedValue(getObject("NewActionForm:ActionType:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {93}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" value="<% {String value = null;try{value=context.getFormattedValue(getObject("NewActionForm:ActionType:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {93}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><% {Object temp_obj = (getObject("ActionDescriptorMap:get(NewActionForm:ActionDescriptorID:Value)")); getPipelineDictionary().put("ActionDescriptor", temp_obj);} %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ActionDescriptor"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",98,e);}if (_boolean_result) { %><tr>
<td class="aldi">
<input type="hidden" name="<% {String value = null;try{value=context.getFormattedValue(getObject("NewActionForm:ActionDescriptorID:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {101}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" value="<% {String value = null;try{value=context.getFormattedValue(getObject("NewActionForm:ActionDescriptorID:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {101}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
</td>
</tr>
<tr> 
<td class="label">
<label class="label label_light label_indent"> <% {out.write(localizeISText("PromotionActionNew.Trigger.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>: </label>
</td>
<td colspan="3"><% {String value = null;try{value=context.getFormattedValue(getObject("ActionDescriptor:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {109}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
</tr>
<tr> 
<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ActionDescriptor:ConfigTemplate"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",114,e);}if (_boolean_result) { %><% {Object temp_obj = (getObject("NewActionForm")); getPipelineDictionary().put("ActionForm", temp_obj);} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,context.getFormattedValue(getObject("ActionDescriptor:ConfigTemplate"),null), null, "116");} %><% } %><% } %></tr><% }} %><tr> 
<td colspan="4" align="right">
<table cellspacing="2" cellpadding="0" border="0">
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ActionDescriptor")))).booleanValue() && ((Boolean) ((((Boolean) getObject("NewActionForm:ActionDescriptorID:ValueMissing")).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",127,e);}if (_boolean_result) { %><td class="button">
<input type="submit" class="button" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PromotionActionNew.OK.button",null)),null)%>" name="createAction" />
</td><% } %><td class="button">
<input type="submit" class="button" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PromotionActionNew.Cancel.button",null)),null)%>" name="cancelAction" />
</td>
</tr>
</table>
</td>
</tr>
</table><% printFooter(out); %>