<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ProductLockActivated"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",1,e);}if (_boolean_result) { %>
	<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ProductLockedForMe"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",2,e);}if (_boolean_result) { %>
		<td class="button"><input type="hidden" name="ProductID" value="<%=context.getFormattedValue(getObject("Product:UUID"),null)%>"/><input type="hidden" name="LocaleId" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Locale:LocaleID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {3}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><input type="submit" name="update" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("buttons.Apply.button",null)),null)%>" class="button"/></td>
	<% } else { %>
		<td class="button"><input type="hidden" name="ProductID" value="<%=context.getFormattedValue(getObject("Product:UUID"),null)%>"/><input type="hidden" name="LocaleId" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Locale:LocaleID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {5}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><input type="submit" name="update" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("buttons.Apply.button",null)),null)%>" class="button" disabled="disabled"/></td>
	<% } %>
	<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ProductLockActivated"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",7,e);}if (_boolean_result) { %>
		<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ProductLockedForMe"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",8,e);}if (_boolean_result) { %>
			<td class="button"><input type="hidden" name="ChannelID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("CurrentChannel:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {9}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><input type="submit" name="unlock" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("buttons.Unlock.button",null)),null)%>" class="button"/></td>
		<% } else {_boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ProductLockedForOther"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",10,e);}if (_boolean_result) { %>
			<td class="button"><input type="hidden" name="ChannelID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("CurrentChannel:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {11}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><input type="submit" name="lock" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("buttons.Lock.button",null)),null)%>" class="button" disabled="disabled"/></td>
		<% } else { %>
			<td class="button"><input type="hidden" name="ChannelID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("CurrentChannel:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {13}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><input type="submit" name="lock" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("buttons.Lock.button",null)),null)%>" class="button"/></td>
		<% }} %>
	<% } %>
	<td class="button"><input type="submit" name="reload" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("buttons.Reset.button",null)),null)%>" class="button"/></td>
	<td class="button"><input type="hidden" name="NamePrefix" value="<% {out.write(localizeISText("buttons.CopyOf",null,null,null,null,null,null,null,null,null,null,null,null));} %> "/><input type="submit" name="copy" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("buttons.Copy.button",null)),null)%>" class="button" <% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("AllProductsLocked"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",17,e);}if (_boolean_result) { %>disabled="disabled"<% } %>/></td>
	<td class="button"><input type="submit" name="confirmDelete" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("buttons.Delete.button",null)),null)%>" class="button" <% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("ProductLockedForMe")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",18,e);}if (_boolean_result) { %> disabled="disabled"<% } %>/></td>
<% } else { %> 
	<td class="button"><input type="hidden" name="ProductID" value="<%=context.getFormattedValue(getObject("Product:UUID"),null)%>"/><input type="hidden" name="LocaleId" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Locale:LocaleID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {20}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><input type="submit" name="update" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("buttons.Apply.button",null)),null)%>" class="button"/></td>
	<td class="button"><input type="submit" name="reload" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("buttons.Reset.button",null)),null)%>" class="button"/></td>
	<td class="button"><input type="hidden" name="NamePrefix" value="<% {out.write(localizeISText("buttons.CopyOf",null,null,null,null,null,null,null,null,null,null,null,null));} %> "/><input type="submit" name="copy" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("buttons.Copy.button",null)),null)%>" class="button" <% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("AllProductsLocked"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",22,e);}if (_boolean_result) { %>disabled="disabled"<% } %>/></td>
	<td class="button"><input type="submit" name="confirmDelete" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("buttons.Delete.button",null)),null)%>" class="button" <% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("ProductLockedForMe")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",23,e);}if (_boolean_result) { %> disabled="disabled"<% } %>/></td>
<% } %>

<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ProductApprovalEnabled"),null).equals(context.getFormattedValue("ON",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",26,e);}if (_boolean_result) { %>
	<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue("3",null).equals(context.getFormattedValue(getObject("ProductApprovalBO:ApprovalStatus:Code"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",27,e);}if (_boolean_result) { %>
		<% {try{executePipeline("ProcessReplicateObjects-GetTargetClusters",java.util.Collections.emptyMap(),"ClustersResultDict");}catch(Exception e){Logger.error(this,"ISPIPELINE failed. Line: 28.",e);}} %>
		<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ClustersResultDict:TargetClusters")))).booleanValue() && ((Boolean) (hasLoopElements("ClustersResultDict:TargetClusters") ? Boolean.TRUE : Boolean.FALSE)).booleanValue() && ((Boolean) ((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_REPLICATE_CATALOG_WO_PROVIDER"))))).booleanValue() || ((Boolean) ((disableErrorMessages().isDefined(getObject("PermissionMap:SLD_REPLICATE_CATALOG_WO_PROVIDER"))))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",29,e);}if (_boolean_result) { %>
			<% processOpenTag(response, pageContext, "publishtolivebutton", new TagParameter[] {
new TagParameter("addSeparatorBefore","true")}, 34); %>
		<% } %>
	<% } %>
<% } else { %>
	<% {try{executePipeline("ProcessReplicateObjects-GetTargetClusters",java.util.Collections.emptyMap(),"ClustersResultDict");}catch(Exception e){Logger.error(this,"ISPIPELINE failed. Line: 38.",e);}} %>
	<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ClustersResultDict:TargetClusters")))).booleanValue() && ((Boolean) (hasLoopElements("ClustersResultDict:TargetClusters") ? Boolean.TRUE : Boolean.FALSE)).booleanValue() && ((Boolean) ((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_REPLICATE_CATALOG_WO_PROVIDER"))))).booleanValue() || ((Boolean) ((disableErrorMessages().isDefined(getObject("PermissionMap:SLD_REPLICATE_CATALOG_WO_PROVIDER"))))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",39,e);}if (_boolean_result) { %>
		<% processOpenTag(response, pageContext, "publishtolivebutton", new TagParameter[] {
new TagParameter("addSeparatorBefore","true")}, 44); %>
	<% } %>
<% } %><% printFooter(out); %>