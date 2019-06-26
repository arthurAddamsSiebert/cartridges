<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% out.print(context.prepareWAPlacement("JSWebLibraries")); %>flyoutdialog.js<% out.print("</waplacement>"); %><% _boolean_result=false;try {_boolean_result=((Boolean)(((!((Boolean) (getObject("IsOverridden:Overridden"))).booleanValue() && ((Boolean) (hasLoopElements("DefaultAssignments") ? Boolean.TRUE : Boolean.FALSE)).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",6,e);}if (_boolean_result) { %><div class="flyOutPanel">
<div class="flyOutButton"></div>
<div class="flyOutDialog">
<table border="0" cellpadding="0" cellspacing="0">
<tr>
<td class="input_checkbox"> 
<input type="checkbox"
id="<% {String value = null;try{value=context.getFormattedValue(getObject("Placeholder:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {15}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>_HideDefaultContent"
name="HideDefaultContent"
<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (((((Boolean) getObject("TemplateEditable")).booleanValue() && ((Boolean) getObject("HasEditPermission")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",17,e);}if (_boolean_result) { %>disabled="disabled"<% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Placeholder:HideTargetContent"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",18,e);}if (_boolean_result) { %>checked="checked"<% } %>
>
</td>
<td nowrap="nowrap" class="label_checkbox left">
<label class="label label_checkbox" for="<% {String value = null;try{value=context.getFormattedValue(getObject("Placeholder:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {22}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>_HideDefaultContent"><% {out.write(localizeISText("PageletAssignmentsInc.HideDefaultContent.label",null,null,null,null,null,null,null,null,null,null,null,null));} %></label>
</td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Assignments") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",27,e);}if (_boolean_result) { %><tr>
<td class="input_checkbox"> 
<input type="checkbox" 
id="<% {String value = null;try{value=context.getFormattedValue(getObject("Placeholder:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {31}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>_PlaceOnTop"
name="PlaceOnTop"
<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (((((Boolean) getObject("TemplateEditable")).booleanValue() && ((Boolean) getObject("HasEditPermission")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",33,e);}if (_boolean_result) { %>disabled="disabled"<% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Placeholder:PlaceTargetContentOnTop"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",34,e);}if (_boolean_result) { %>checked="checked"<% } %>
>
</td>
<td nowrap="nowrap" class="label_checkbox left">
<label class="label label_checkbox" for="<% {String value = null;try{value=context.getFormattedValue(getObject("Placeholder:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {38}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>_PlaceOnTop"><% {out.write(localizeISText("PageletAssignmentsInc.PlaceComponentsAboveDefaultContent.label",null,null,null,null,null,null,null,null,null,null,null,null));} %></label>
</td>
</tr><% } %></table><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("TemplateEditable")).booleanValue() && ((Boolean) getObject("HasEditPermission")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",46,e);}if (_boolean_result) { %><table border="0" cellspacing="4" cellpadding="0" width="100%">
<tr>
<td width="100%"></td>
<td class="button"><input type="submit" name="update" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PageletAssignmentsInc.Apply.button",null)),null)%>" class="button sfe-action-inline sfe-layout-change" <% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ContentEntryPointReadOnly"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",50,e);}if (_boolean_result) { %>disabled="disabled"<% } %>/></td>
<td class="button"><input type="reset" name="reset" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PageletAssignmentsInc.Reset.button",null)),null)%>" class="button" <% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ContentEntryPointReadOnly"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",51,e);}if (_boolean_result) { %>disabled="disabled"<% } %>/></td>
</tr>
</table><% } %></div>
</div><% } %><% printFooter(out); %>