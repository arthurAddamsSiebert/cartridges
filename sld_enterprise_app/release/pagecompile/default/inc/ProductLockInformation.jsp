<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ProductLockActivated"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",2,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ProductLockLost"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",3,e);}if (_boolean_result) { %><tr>
<td>
<table border="0" cellpadding="4" cellspacing="0" width="100%" class="confirm_box w e s">
<tr>
<td class="error_icon e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="confirm" width="100%"><% {out.write(localizeISText("ProductLockInformation.TheChangesYouHaveMadeCannotBeSaved.confirm",null,null,null,null,null,null,null,null,null,null,null,null));} %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ProductLockedForOther"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",11,e);}if (_boolean_result) { %><br/><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("Resource:ResourceOwner:Type")))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("Resource:ResourceOwner:Type"),null).equals(context.getFormattedValue("Instance Acquisition",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",13,e);}if (_boolean_result) { %><% {out.write(localizeISText("ProductLockInformation.NowThisProductIsLockedByASystemProcess.confirm",null,null,"text-decoration: underline",null,null,null,null,null,null,null,null,null));} %> 
<% } else { %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Resource:ResourceOwner:User:Profile"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",16,e);}if (_boolean_result) { %><% {out.write(localizeISText("ProductLockInformation.NowThisProductIsBeingEditedA.confirm",null,null,context.getFormattedValue(encodeString(context.getFormattedValue(getObject("Resource:ResourceOwner:User:Profile:DataSheet:FirstName"),null)),null) + context.getFormattedValue(" ",null) + context.getFormattedValue(encodeString(context.getFormattedValue(getObject("Resource:ResourceOwner:User:Profile:DataSheet:LastName"),null)),null) + context.getFormattedValue(" (",null) + context.getFormattedValue(encodeString(context.getFormattedValue(getObject("Resource:ResourceOwner:User:Profile:Credentials:Login"),null)),null) + context.getFormattedValue(")",null),null,null,null,null,null,null,null,null,null));} %><% } else { %><% {out.write(localizeISText("ProductLockInformation.NowThisProductIsBeingEditedB.confirm",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %><% } %><% {out.write(localizeISText("ProductLockInformation.PleaseTryAgainLater.confirm",null,null,null,null,null,null,null,null,null,null,null,null));} %><% processOpenTag(response, pageContext, "lockownertooltip", new TagParameter[] {
new TagParameter("CurrentUser",getObject("CurrentUser")),
new TagParameter("Resource",getObject("Resource"))}, 23); %><% } %></td>
</tr>
</table>
</td>
</tr><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ProductLockedForMe"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",30,e);}if (_boolean_result) { %><tr>
<td>
<table border="0" cellpadding="3" cellspacing="0" width="100%" class="notification w e s">
<tr>
<td class="e"><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_PRODUCTS")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_CONTENT")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",36,e);}if (_boolean_result) { %><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProduct-DispatchLocking",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("Action",null),context.getFormattedValue("ReleaseLock",null))).addURLParameter(context.getFormattedValue("ProductID",null),context.getFormattedValue(getObject("Product:UUID"),null)).addURLParameter(context.getFormattedValue(getObject("SelectedTab"),null),context.getFormattedValue("Target",null))),null)%>"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/lockedForMe.gif" alt="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ProductLockInformation.LockedForEditing.alt",null)),null)%>" title="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ProductLockInformation.LockedForEditing.title",null)),null)%>" border="0" align="middle"/></a><% } else { %><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/lockedForMe.gif" alt="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ProductLockInformation.LockedForEditing.alt",null)),null)%>" title="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ProductLockInformation.LockedForEditing.title",null)),null)%>" border="0" align="middle"/><% } %></td>
<td width="100%"><%
								int lifeTime  = ((Integer)getObject("ProductLockLifetime")).intValue();
								int h = lifeTime/3600;
								int mod = lifeTime%3600;
								int m = mod/60;
								int s = mod%60;
							%><span><% {out.write(localizeISText("ProductLockInformation.YouHaveLockedThisProductForEditing",null,null, %><% h %><% , %><% m %><% , %><% s %><% ,null,null,null,null,null,null,null));} %></span>
</td>
</tr>
</table>
</td>
</tr><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ProductLockedForOther"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",56,e);}if (_boolean_result) { %><tr>
<td>
<table border="0" cellpadding="3" cellspacing="0" width="100%" class="confirm_box w e s">
<tr>
<td class="confirm e">
<img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/lockedForOther.gif" align="middle" alt="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PageletTemplateTreeInc.LockedByOther.alt",null)),null)%>" title="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PageletTemplateTreeInc.LockedByOther.alt",null)),null)%>" border="0"/>
</td> 
<td class="confirm" width="100%"><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("Resource:ResourceOwner:Type")))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("Resource:ResourceOwner:Type"),null).equals(context.getFormattedValue("Instance Acquisition",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",65,e);}if (_boolean_result) { %><% {out.write(localizeISText("ProductLockInformation.ThisProductIsCurrentlyLocked.confirm",null,null,"text-decoration: underline",null,null,null,null,null,null,null,null,null));} %> 
<% } else { %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Resource:ResourceOwner:User:Profile"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",69,e);}if (_boolean_result) { %><% {out.write(localizeISText("ProductLockInformation.ThisProductIsCurrentlyBeingEditedA.confirm",null,null,context.getFormattedValue(encodeString(context.getFormattedValue(getObject("Resource:ResourceOwner:User:Profile:DataSheet:FirstName"),null)),null) + context.getFormattedValue(" ",null) + context.getFormattedValue(encodeString(context.getFormattedValue(getObject("Resource:ResourceOwner:User:Profile:DataSheet:LastName"),null)),null) + context.getFormattedValue(" (",null) + context.getFormattedValue(encodeString(context.getFormattedValue(getObject("Resource:ResourceOwner:User:Profile:Credentials:Login"),null)),null) + context.getFormattedValue(")",null),null,null,null,null,null,null,null,null,null));} %><% } else { %><% {out.write(localizeISText("ProductLockInformation.ThisProductIsCurrentlyBeingEditedB.confirm",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %><% } %><% processOpenTag(response, pageContext, "lockownertooltip", new TagParameter[] {
new TagParameter("CurrentUser",getObject("CurrentUser")),
new TagParameter("Resource",getObject("Resource"))}, 75); %></td>
</tr>
</table>
</td>
</tr><% } else { %><tr>
<td>
<table border="0" cellpadding="3" cellspacing="0" width="100%" class="object_state w e s">
<tr>
<td class="e"><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_PRODUCTS")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_CONTENT")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",87,e);}if (_boolean_result) { %><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProduct-DispatchLocking",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("Action",null),context.getFormattedValue("GetLock",null))).addURLParameter(context.getFormattedValue("ProductID",null),context.getFormattedValue(getObject("Product:UUID"),null)).addURLParameter(context.getFormattedValue(getObject("SelectedTab"),null),context.getFormattedValue("Target",null))),null)%>"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/unlocked.gif" alt="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ProductLockInformation.LockProduct.alt",null)),null)%>" title="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ProductLockInformation.LockProduct.title",null)),null)%>" border="0" align="middle"/></a><% } else { %><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/unlocked.gif" alt="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ProductLockInformation.LockProduct.alt",null)),null)%>" title="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ProductLockInformation.LockProduct.title",null)),null)%>" border="0" align="middle"/><% } %></td>
<td class="" width="100%"><% {out.write(localizeISText("ProductLockInformation.ThisProductIsCurrentlyUnlocked",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
</td>
</tr><% }}} %> 
<% } %> 
<% printFooter(out); %>