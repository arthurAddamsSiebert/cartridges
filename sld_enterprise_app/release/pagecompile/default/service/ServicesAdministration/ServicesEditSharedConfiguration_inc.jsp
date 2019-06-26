<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %>
<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) ((disableErrorMessages().isDefined(getObject("itemLinkActionPipeline"))))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",3,e);}if (_boolean_result) { %>
	<% {Object temp_obj = ("ViewServiceEdit"); getPipelineDictionary().put("itemLinkActionPipeline", temp_obj);} %>
<% } %>
<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("isOrganizationUserPermission")))).booleanValue() && !((Boolean) ((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_SERVICES"))))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) (((!((Boolean) ((disableErrorMessages().isDefined(getObject("isOrganizationUserPermission"))))).booleanValue() && !((Boolean) ((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_SERVICES"))))).booleanValue() || ((Boolean) (((((Boolean) ((((context.getFormattedValue(getObject("ServiceConfiguration:hasOwnActivationState"),null).equals(context.getFormattedValue("false",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ServiceConfiguration:ServiceSharingRule"),null).equals(context.getFormattedValue("MANDATORY",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",6,e);}if (_boolean_result) { %>
	<% {Object temp_obj = ("false"); getPipelineDictionary().put("editableSharingRule", temp_obj);} %>
<% } else { %>
	<% {Object temp_obj = ("true"); getPipelineDictionary().put("editableSharingRule", temp_obj);} %>
<% } %>
<% URLPipelineAction action329 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue(context.getFormattedValue(getObject("itemLinkActionPipeline"),null) + context.getFormattedValue("-Dispatch",null),null)))),null));String site329 = null;String serverGroup329 = null;String actionValue329 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue(context.getFormattedValue(getObject("itemLinkActionPipeline"),null) + context.getFormattedValue("-Dispatch",null),null)))),null);if (site329 == null){  site329 = action329.getDomain();  if (site329 == null)  {      site329 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup329 == null){  serverGroup329 = action329.getServerGroup();  if (serverGroup329 == null)  {      serverGroup329 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue(context.getFormattedValue(getObject("itemLinkActionPipeline"),null) + context.getFormattedValue("-Dispatch",null),null)))),null));out.print("\"");out.print(" name=\"");out.print(context.getFormattedValue(getObject("ServiceConfigurationEditSharedConfigurationForm:ID"),null));out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue329, site329, serverGroup329,true)); %>
	<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ServiceConfigurationID"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",14,e);}if (_boolean_result) { %>
		<input type="hidden" name="ServiceConfigurationID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ServiceConfigurationID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {15}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" readonly="readonly" />
		<input type="hidden" name="<% {String value = null;try{value=context.getFormattedValue(getObject("ServiceConfigurationEditSharedConfigurationForm:ServiceConfigurationID:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {16}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ServiceConfigurationID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {16}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" readonly="readonly" />
	<% } else { %>
		<input type="hidden" name="ServiceConfigurationID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ServiceConfigurationEditGeneralForm:ServiceConfigurationID:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {18}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" readonly="readonly" />
		<input type="hidden" name="<% {String value = null;try{value=context.getFormattedValue(getObject("ServiceConfigurationEditSharedConfigurationForm:ServiceConfigurationID:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {19}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ServiceConfigurationEditGeneralForm:ServiceConfigurationID:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {19}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" readonly="readonly" />
	<% } %>
	<table width="100%" border="0" cellSpacing="0" cellPadding="0">
		<tr>
			<td class="table_title2 n e w s" colspan="2"><% {out.write(localizeISText("ServicesEditSharedConfiguration_inc.SharingRules.table_title2",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
		</tr>
		<tr>
			<td class="w center" width="5%">
				<input name="<% {String value = null;try{value=context.getFormattedValue(getObject("ServiceConfigurationEditSharedConfigurationForm:ServiceConfigurationSharingRule:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {27}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" type="radio" value="UNSHARED" id="unshared" 
					<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ServiceConfiguration:ServiceSharingRule"),null).equals(context.getFormattedValue("UNSHARED",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",28,e);}if (_boolean_result) { %>checked="checked"<% } %>
					<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("editableSharingRule"),null).equals(context.getFormattedValue("false",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",29,e);}if (_boolean_result) { %>disabled="disabled"<% } %>
				/>
			</td>
			<td class="table_detail e bold">
				<label for="unshared"><% {out.write(localizeISText(context.getFormattedValue(context.getFormattedValue(getObject("ServiceConfiguration:ServiceSharingRule:Class:Name"),null) + context.getFormattedValue(".UNSHARED",null),null),"",null,null,null,null,null,null,null,null,null,null,null));} %></label>
			</td>
		</tr>
		<tr>
			<td class="w s">&nbsp;</td>
			<td class="table_detail e s">
				<% {out.write(localizeISText(context.getFormattedValue(context.getFormattedValue(getObject("ServiceConfiguration:ServiceSharingRule:Class:Name"),null) + context.getFormattedValue(".UNSHARED_CH_DESC",null),null),"",null,null,null,null,null,null,null,null,null,null,null));} %>
			</td>
		</tr>

		<tr>
			<td class="w center" width="5%">
				<input name="<% {String value = null;try{value=context.getFormattedValue(getObject("ServiceConfigurationEditSharedConfigurationForm:ServiceConfigurationSharingRule:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {45}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" type="radio" value="SHARED_ACTIVATED" id="sharedActivated" 
					<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ServiceConfiguration:ServiceSharingRule"),null).equals(context.getFormattedValue("SHARED_ACTIVATED",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",46,e);}if (_boolean_result) { %>checked="checked"<% } %>
					<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("editableSharingRule"),null).equals(context.getFormattedValue("false",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",47,e);}if (_boolean_result) { %>disabled="disabled"<% } %>
				/>
			</td>
			<td class="table_detail e bold">
				<label for="sharedActivated"><% {out.write(localizeISText(context.getFormattedValue(context.getFormattedValue(getObject("ServiceConfiguration:ServiceSharingRule:Class:Name"),null) + context.getFormattedValue(".SHARED_ACTIVATED",null),null),"",null,null,null,null,null,null,null,null,null,null,null));} %></label>
			</td>
		</tr>
		<tr>
			<td class="w s">&nbsp;</td>
			<td class="table_detail e s">
				<% {out.write(localizeISText(context.getFormattedValue(context.getFormattedValue(getObject("ServiceConfiguration:ServiceSharingRule:Class:Name"),null) + context.getFormattedValue(".SHARED_ACTIVATED_CH_DESC",null),null),"",null,null,null,null,null,null,null,null,null,null,null));} %>
			</td>
		</tr>

		<tr>
			<td class="w center" width="5%">
				<input name="<% {String value = null;try{value=context.getFormattedValue(getObject("ServiceConfigurationEditSharedConfigurationForm:ServiceConfigurationSharingRule:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {63}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" type="radio" value="SHARED_DEACTIVATED" id="sharedDeactivated" 
					<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ServiceConfiguration:ServiceSharingRule"),null).equals(context.getFormattedValue("SHARED_DEACTIVATED",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",64,e);}if (_boolean_result) { %>checked="checked"<% } %>
					<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("editableSharingRule"),null).equals(context.getFormattedValue("false",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",65,e);}if (_boolean_result) { %>disabled="disabled"<% } %>
				/>
			</td>
			<td class="table_detail e bold">
				<label for="sharedDeactivated"><% {out.write(localizeISText(context.getFormattedValue(context.getFormattedValue(getObject("ServiceConfiguration:ServiceSharingRule:Class:Name"),null) + context.getFormattedValue(".SHARED_DEACTIVATED",null),null),"",null,null,null,null,null,null,null,null,null,null,null));} %></label>
			</td>
		</tr>
		<tr>
			<td class="w s">&nbsp;</td>
			<td class="table_detail e s">
				<% {out.write(localizeISText(context.getFormattedValue(context.getFormattedValue(getObject("ServiceConfiguration:ServiceSharingRule:Class:Name"),null) + context.getFormattedValue(".SHARED_DEACTIVATED_CH_DESC",null),null),"",null,null,null,null,null,null,null,null,null,null,null));} %>
			</td>
		</tr>

		<tr>
			<td class="w center" width="5%">
				<input name="<% {String value = null;try{value=context.getFormattedValue(getObject("ServiceConfigurationEditSharedConfigurationForm:ServiceConfigurationSharingRule:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {81}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" type="radio" value="MANDATORY" id="sharedMandatory" 
					<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ServiceConfiguration:ServiceSharingRule"),null).equals(context.getFormattedValue("MANDATORY",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",82,e);}if (_boolean_result) { %>checked="checked"<% } %>
					<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("editableSharingRule"),null).equals(context.getFormattedValue("false",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",83,e);}if (_boolean_result) { %>disabled="disabled"<% } %>
				/>
			</td>
			<td class="table_detail e bold">
				<label for="sharedMandatory"><% {out.write(localizeISText(context.getFormattedValue(context.getFormattedValue(getObject("ServiceConfiguration:ServiceSharingRule:Class:Name"),null) + context.getFormattedValue(".MANDATORY",null),null),"",null,null,null,null,null,null,null,null,null,null,null));} %></label>
			</td>
		</tr>
		<tr>
			<td class="w s">&nbsp;</td>
			<td class="table_detail e s">
				<% {out.write(localizeISText(context.getFormattedValue(context.getFormattedValue(getObject("ServiceConfiguration:ServiceSharingRule:Class:Name"),null) + context.getFormattedValue(".MANDATORY_CH_DESC",null),null),"",null,null,null,null,null,null,null,null,null,null,null));} %>
			</td>
		</tr>
		
		<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ServiceConfiguration:hasOwnActivationState"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",97,e);}if (_boolean_result) { %>
			<tr>
				<td class="table_title2 e w s" colspan="2"><% {out.write(localizeISText(context.getFormattedValue(context.getFormattedValue(getObject("ServiceConfiguration:ServiceSharingRule:Class:Name"),null) + context.getFormattedValue(".USE_SHARE_TITLE",null),null),"",null,null,null,null,null,null,null,null,null,null,null));} %></td>
			</tr>
			<tr>
				<td class="w center" width="5%">
					<input name="<% {String value = null;try{value=context.getFormattedValue(getObject("ServiceConfigurationEditSharedConfigurationForm:ServiceConfigurationSharingRule:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {103}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" type="radio" value="USE_SHARE" id="useShare"
						<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("editableSharingRule"),null).equals(context.getFormattedValue("false",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",104,e);}if (_boolean_result) { %>disabled="disabled"<% } %>
					/>
				</td>
				<td class="table_detail e bold">
					<label for="useShare"><% {out.write(localizeISText(context.getFormattedValue(context.getFormattedValue(getObject("ServiceConfiguration:ServiceSharingRule:Class:Name"),null) + context.getFormattedValue(".USE_SHARE",null),null),"",null,null,null,null,null,null,null,null,null,null,null));} %></label>
				</td>
			</tr>
			<tr>
				<td class="w s">&nbsp;</td>
				<td class="table_detail e s">
					<label for="mandatory"><% {out.write(localizeISText(context.getFormattedValue(context.getFormattedValue(getObject("ServiceConfiguration:ServiceSharingRule:Class:Name"),null) + context.getFormattedValue(".USE_SHARE_DESC",null),null),"",null,null,null,null,null,null,null,null,null,null,null));} %></label>
				</td>
			</tr>
		<% } %>
		
		<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("editableSharingRule"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",119,e);}if (_boolean_result) { %>
			<tr>
				<td class="w e s" colspan="2">
					<table width="100%" border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td align="right">
								<table border="0" cellspacing="4" cellpadding="0">
									<tr>
										<td class="button">
											<input name="SharedRuleValidate" class="button" type="submit" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ServicesEditSharedConfiguration_inc.Apply.button",null)),null)%>"/>
										</td>
										<td class="button">
											
											<input name="resetSharingRules" class="button" type="submit" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ServicesEditSharedConfiguration_inc.Reset.button",null)),null)%>"/>
										</td>
									</tr>
								</table>
							</td>
						</tr>
					</table>
				</td>
			</tr>
		<% } %>
	</table>
<% out.print("</form>"); %>
<% printFooter(out); %>