<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%! protected Boolean printTemplateMarker() { return Boolean.TRUE; } %><%%><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"modules/Modules", null, "2");} %><div class="modal-dialog">
<div class="modal-content">
<div class="modal-header">
<button type="button" class="close" data-dismiss="modal" title="<% {out.write(localizeISText("dialog.close.text","",null,null,null,null,null,null,null,null,null,null,null));} %>" aria-label="<% {out.write(localizeISText("dialog.close.text","",null,null,null,null,null,null,null,null,null,null,null));} %>"><span aria-hidden="true">&times;</span></button>
<h2 class="modal-title"><% {out.write(localizeISText("account.user.delete_user_dialog.header","",null,getObject("SelectedUser:FirstName"),getObject("SelectedUser:LastName"),null,null,null,null,null,null,null,null));} %></h2>
</div>
<div class="modal-body"><% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("SelectedUser:ID"),null).equals(context.getFormattedValue(getObject("UserBO:ID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",12,e);}if (_boolean_result) { %><p><% {out.write(localizeISText("account.user.delete_user_dialog.are_you_sure_paragraph","",null,null,null,null,null,null,null,null,null,null,null));} %></p><% } else { %><p><% {out.write(localizeISText("account.user.delete_user.loggedInUser","",null,null,null,null,null,null,null,null,null,null,null));} %></p><% } %></div> 
<div class="modal-footer"><% URLPipelineAction action21 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewUsers-DeleteUser",null)))),null));String site21 = null;String serverGroup21 = null;String actionValue21 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewUsers-DeleteUser",null)))),null);if (site21 == null){  site21 = action21.getDomain();  if (site21 == null)  {      site21 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup21 == null){  serverGroup21 = action21.getServerGroup();  if (serverGroup21 == null)  {      serverGroup21 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewUsers-DeleteUser",null)))),null));out.print("\"");out.print(" name=\"");out.print("RemoveUserForm");out.print("\"");out.print(" data-hijax=\"");out.print("true");out.print("\"");out.print(" class=\"");out.print("form-horizontal");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue21, site21, serverGroup21,true)); %><input type="hidden" name="UserID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("SelectedUser:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {21}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" />
<button type="button" class="btn btn-default" name="cancel" data-dismiss="modal"><% {out.write(localizeISText("account.user.delete_user_dialog.cancel_button.text","",null,null,null,null,null,null,null,null,null,null,null));} %></button>
<button class="btn btn-primary" type="submit" name="DeleteUser" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SelectedUser:ID"),null).equals(context.getFormattedValue(getObject("UserBO:ID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",25,e);}if (_boolean_result) { %>disabled="disabled"<% } %>><% {out.write(localizeISText("account.user.delete_user_dialog.delete_button.text","",null,null,null,null,null,null,null,null,null,null,null));} %></button><% out.print("</form>"); %></div>
</div>
</div><% printFooter(out); %>