<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- product back to editing reason information section -->
<table cellspacing="0" cellpadding="0" width="100%" border="0" id="lockInfoSection"><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((context.getFormattedValue(getObject("ProductApprovalBO:ApprovalStatus:Code"),null).equals(context.getFormattedValue("2",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("ProductApprovalBO:LastChangeUserID"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",4,e);}if (_boolean_result) { %><tr>
<td>
<table border="0" cellpadding="4" cellspacing="0" width="100%" class="confirm_box w e s">
<tr>
<td class="confirm" width="100%"><% {out.write(localizeISText("LockInformationSectionTemplate_52.ProductChangedBy.text",null,null,context.getFormattedValue(context.getFormattedValue(getObject("UserBO:FirstName"),null) + context.getFormattedValue(" ",null) + context.getFormattedValue(getObject("UserBO:LastName"),null),null),context.getFormattedValue(getObject("ProductApprovalBO:LastChangeDate"),null),null,null,null,null,null,null,null,null));} %> <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ProductApprovalBO:LastChangeReason")))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("ProductApprovalBO:LastChangeReason"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",10,e);}if (_boolean_result) { %><% {out.write(localizeISText("sld_ch_consumer_plugin.ReasonProductApproval.inputfield",null,null,null,null,null,null,null,null,null,null,null,null));} %> <% {String value = null;try{value=context.getFormattedValue(getObject("ProductApprovalBO:LastChangeReason"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {10}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %></td> 
</tr>
</table>
</td>
</tr><% } %><!-- end of product back to editing reason information section --><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ProductLockActivated"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",18,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ProductLockLost"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",19,e);}if (_boolean_result) { %><tr>
<td>
<table border="0" cellpadding="4" cellspacing="0" width="100%" class="error_box w e s">
<tr>
<td class="error_icon e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error" width="100%"><% {out.write(localizeISText("ProductLockInformation_52.ChangesCannotBeSaved.confirm",null,null,null,null,null,null,null,null,null,null,null,null));} %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ProductLockedForOther"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",27,e);}if (_boolean_result) { %><br/><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("Resource:ResourceOwner:Type")))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("Resource:ResourceOwner:Type"),null).equals(context.getFormattedValue("Instance Acquisition",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",29,e);}if (_boolean_result) { %><% {out.write(localizeISText("ProductLockInformation_52.ProductIsLockedBySystemProcess.confirm",null,null,"text-decoration: underline",null,null,null,null,null,null,null,null,null));} %> 
<% } else { %><% {out.write(localizeISText("ProductLockInformation_52.NowThisProductIsBeingEditedBy.confirm",null,null,null,null,null,null,null,null,null,null,null,null));} %> 
<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Resource:ResourceOwner:User:Profile"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",33,e);}if (_boolean_result) { %><span style="text-decoration: underline"><% {String value = null;try{value=context.getFormattedValue(context.getFormattedValue(getObject("Resource:ResourceOwner:User:Profile:DataSheet:FirstName"),null) + context.getFormattedValue(" ",null) + context.getFormattedValue(getObject("Resource:ResourceOwner:User:Profile:DataSheet:LastName"),null) + context.getFormattedValue(" (",null) + context.getFormattedValue(getObject("Resource:ResourceOwner:User:Profile:Credentials:Login"),null) + context.getFormattedValue(")",null),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {34}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></span>.
<% } else { %><span style="text-decoration: underline"><% {out.write(localizeISText("ProductLockInformation_52.AnotherUser.confirm",null,null,null,null,null,null,null,null,null,null,null,null));} %></span>.
<% } %><% } %><% {out.write(localizeISText("ProductLockInformation_52.PleaseTryAgainLater.confirm",null,null,null,null,null,null,null,null,null,null,null,null));} %><% processOpenTag(response, pageContext, "lockownertooltip", new TagParameter[] {
new TagParameter("CurrentUser",getObject("CurrentUser")),
new TagParameter("Resource",getObject("Resource"))}, 40); %><% } %></td><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ProductApprovalEnabled"),null).equals(context.getFormattedValue("ON",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",43,e);}if (_boolean_result) { %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/ProductApprovalInformation_52.isml", null, "44");} %><% } %></tr>
</table>
</td>
</tr><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ProductLockedForMe"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",50,e);}if (_boolean_result) { %><tr>
<td>
<table border="0" cellpadding="0" cellspacing="0" width="100%" class="notification w e s">
<tr>
<td class="e"><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PRODUCTS")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_CONTENT")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",56,e);}if (_boolean_result) { %><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProduct_52-DispatchLocking",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("Action",null),context.getFormattedValue("ReleaseLock",null))).addURLParameter(context.getFormattedValue("ProductID",null),context.getFormattedValue(getObject("Product:UUID"),null)).addURLParameter(context.getFormattedValue(getObject("SelectedTab"),null),context.getFormattedValue("Target",null)).addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null))),null)%>">
<img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/lockedForMe.gif" alt="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ProductLockInformation_52.LockedForEdititing",null)),null)%>" title="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ProductLockInformation_52.LockedForEdititing",null)),null)%>" border="0" />
</a><% } else { %><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/lockedForMe.gif" alt="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ProductLockInformation_52.LockedForEdititing",null)),null)%>" title="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ProductLockInformation_52.LockedForEdititing",null)),null)%>" border="0" /><% } %></td>
<td width="100%"><%
								int lifeTime  = ((Integer)getObject("ProductLockLifetime")).intValue();
								int h = lifeTime/3600;
								int mod = lifeTime%3600;
								int m = mod/60;
								int s = mod%60;
							%><% {out.write(localizeISText("ProductLockInformation_52.YouHaveLockedThisProductForEditing",null,null, %><% h %><% , %><% m %><% , %><% s %><% ,null,null,null,null,null,null,null));} %></td><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ProductApprovalEnabled"),null).equals(context.getFormattedValue("ON",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",74,e);}if (_boolean_result) { %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/ProductApprovalInformation_52.isml", null, "75");} %><% } %></tr>
</table>
</td>
</tr><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ProductLockedForOther"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",81,e);}if (_boolean_result) { %><tr>
<td>
<table border="0" cellpadding="3" cellspacing="0" width="100%" class="confirm_box w e s">
<tr>
<td class="confirm e">
<img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/lockedForOther.gif" align="middle" alt="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ProductLockInformation_52.LockedByOther",null)),null)%>" title="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ProductLockInformation_52.LockedByOther",null)),null)%>" border="0"/>
</td> 
<td class="confirm" width="100%"><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("Resource:ResourceOwner:Type")))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("Resource:ResourceOwner:Type"),null).equals(context.getFormattedValue("Instance Acquisition",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",90,e);}if (_boolean_result) { %><% {out.write(localizeISText("ProductLockInformation_52.ProductIsCurrentlyLockedBySystemProcess.confirm",null,null,"text-decoration: underline",null,null,null,null,null,null,null,null,null));} %> 
<% } else { %><% {out.write(localizeISText("ProductLockInformation_52.ProductIsCurrentlyBeingEditedBy.confirm",null,null,null,null,null,null,null,null,null,null,null,null));} %> 
<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Resource:ResourceOwner:User:Profile"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",94,e);}if (_boolean_result) { %><span style="text-decoration: underline"><% {String value = null;try{value=context.getFormattedValue(context.getFormattedValue(getObject("Resource:ResourceOwner:User:Profile:DataSheet:FirstName"),null) + context.getFormattedValue(" ",null) + context.getFormattedValue(getObject("Resource:ResourceOwner:User:Profile:DataSheet:LastName"),null) + context.getFormattedValue(" (",null) + context.getFormattedValue(getObject("Resource:ResourceOwner:User:Profile:Credentials:Login"),null) + context.getFormattedValue(")",null),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {95}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></span>.
<% } else { %><span style="text-decoration: underline"><% {out.write(localizeISText("ProductLockInformation_52.AnotherUser.confirm",null,null,null,null,null,null,null,null,null,null,null,null));} %></span>.
<% } %><% } %><% processOpenTag(response, pageContext, "lockownertooltip", new TagParameter[] {
new TagParameter("CurrentUser",getObject("CurrentUser")),
new TagParameter("Resource",getObject("Resource"))}, 100); %></td><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ProductApprovalEnabled"),null).equals(context.getFormattedValue("ON",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",102,e);}if (_boolean_result) { %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/ProductApprovalInformation_52.isml", null, "103");} %><% } %></tr>
</table>
</td>
</tr><% } else { %><tr>
<td>
<table border="0" cellpadding="3" cellspacing="0" width="100%" class="object_state w e s">
<tr>
<td class="e"><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PRODUCTS")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_CONTENT")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",115,e);}if (_boolean_result) { %><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProduct_52-DispatchLocking",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("Action",null),context.getFormattedValue("GetLock",null))).addURLParameter(context.getFormattedValue("ProductID",null),context.getFormattedValue(getObject("Product:UUID"),null)).addURLParameter(context.getFormattedValue(getObject("SelectedTab"),null),context.getFormattedValue("Target",null)).addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null))),null)%>">
<img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/unlocked.gif" alt="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ProductLockInformation_52.LockProduct",null)),null)%>" title="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ProductLockInformation_52.LockProduct",null)),null)%>" border="0"/>
</a><% } else { %><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/unlocked.gif" alt="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ProductLockInformation_52.LockProduct",null)),null)%>" title="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ProductLockInformation_52.LockProduct",null)),null)%>" border="0"/><% } %></td>
<td width="100%"><% {out.write(localizeISText("ProductLockInformation_52.ProductIsCurrentlyUnlocked",null,null,null,null,null,null,null,null,null,null,null,null));} %></td><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ProductApprovalEnabled"),null).equals(context.getFormattedValue("ON",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",126,e);}if (_boolean_result) { %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/ProductApprovalInformation_52.isml", null, "127");} %><% } %></tr>
</table>
</td>
</tr><% }}} %><% } else { %><tr>
<td>
<table border="0" cellpadding="3" cellspacing="0" width="100%" class="object_state w e s">
<tr>
<td width="100%" colspan="2">
<img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/>
</td><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ProductApprovalEnabled"),null).equals(context.getFormattedValue("ON",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",142,e);}if (_boolean_result) { %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/ProductApprovalInformation_52.isml", null, "143");} %><% } %></tr>
</table>
</td>
</tr><% } %></table><% printFooter(out); %>