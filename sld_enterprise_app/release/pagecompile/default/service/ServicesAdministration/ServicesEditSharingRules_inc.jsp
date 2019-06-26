<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %>

<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) ((disableErrorMessages().isDefined(getObject("itemLinkActionPipeline"))))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",4,e);}if (_boolean_result) { %>
	<% {Object temp_obj = ("ViewServiceEdit"); getPipelineDictionary().put("itemLinkActionPipeline", temp_obj);} %>
<% } %>

<% URLPipelineAction action328 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue(context.getFormattedValue(getObject("itemLinkActionPipeline"),null) + context.getFormattedValue("-Dispatch",null),null)))),null));String site328 = null;String serverGroup328 = null;String actionValue328 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue(context.getFormattedValue(getObject("itemLinkActionPipeline"),null) + context.getFormattedValue("-Dispatch",null),null)))),null);if (site328 == null){  site328 = action328.getDomain();  if (site328 == null)  {      site328 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup328 == null){  serverGroup328 = action328.getServerGroup();  if (serverGroup328 == null)  {      serverGroup328 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue(context.getFormattedValue(getObject("itemLinkActionPipeline"),null) + context.getFormattedValue("-Dispatch",null),null)))),null));out.print("\"");out.print(" id=\"");out.print("ServiceConfigurationEditScharingRuleForm");out.print("\"");out.print(" name=\"");out.print(context.getFormattedValue(getObject("ServiceConfigurationEditScharingRuleForm:ID"),null));out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue328, site328, serverGroup328,true)); %>

	<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ServiceConfigurationID"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",10,e);}if (_boolean_result) { %>
		<input type="hidden" name="<% {String value = null;try{value=context.getFormattedValue(getObject("ServiceConfigurationEditScharingRuleForm:ServiceConfigurationID:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {11}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ServiceConfigurationID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {11}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" readonly="readonly" />
		<input type="hidden" name="ServiceConfigurationID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ServiceConfigurationID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {12}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" readonly="readonly" />
	<% } else { %>
		<input type="hidden" name="<% {String value = null;try{value=context.getFormattedValue(getObject("ServiceConfigurationEditScharingRuleForm:ServiceConfigurationID:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {14}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ServiceConfigurationEditGeneralForm:ServiceConfigurationID:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {14}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" readonly="readonly" />
		<input type="hidden" name="ServiceConfigurationID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ServiceConfigurationEditGeneralForm:ServiceConfigurationID:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {15}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" readonly="readonly" />
	<% } %>
	
	<input type="hidden" name="DeleteJumpTarget" value="<% {String value = null;try{value=context.getFormattedValue(context.getFormattedValue(getObject("itemLinkActionPipeline"),null) + context.getFormattedValue("-SharingRules",null),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {18}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" />

	<table width="100%" border="0" cellSpacing="0" cellPadding="0"
		<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (((((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("isOrganizationUserPermission")))).booleanValue() && ((Boolean) ((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_SERVICES")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) (((!((Boolean) (disableErrorMessages().isDefined(getObject("isOrganizationUserPermission")))).booleanValue() && ((Boolean) ((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_SERVICES")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) getObject("ServiceConfiguration:isShared")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",21,e);}if (_boolean_result) { %> class="js-form-disabled"<% } %> 
	>

		<tr>
			<td colspan="2" class="w e"><img width="1" height="4" alt="" src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" border="0" complete="complete"/></td>
		</tr>

		<tr>
			<td class="input_radio center w" width="80">
				<input name="<% {String value = null;try{value=context.getFormattedValue(getObject("ServiceConfigurationEditScharingRuleForm:ServiceConfigurationSharingRule:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {32}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" id="unshared" type="radio" value="UNSHARED" id="unshared" 
					<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ServiceConfiguration:ServiceSharingRule"),null).equals(context.getFormattedValue("UNSHARED",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",33,e);}if (_boolean_result) { %>checked="checked"<% } %>
				/>
			</td>
			<td class="e label_radio_text w100">
				<label class="label label_radio_text" for="unshared"><% {out.write(localizeISText(context.getFormattedValue(context.getFormattedValue(getObject("ServiceConfiguration:ServiceSharingRule:Class:Name"),null) + context.getFormattedValue(".UNSHARED",null),null),"",null,null,null,null,null,null,null,null,null,null,null));} %></label>
			</td>
		</tr>
		<tr>
			<td class="w">&nbsp;</td>
			<td class="e label_radio_text"><label class="label label_radio_text label_light" for="unshared"><% {out.write(localizeISText(context.getFormattedValue(context.getFormattedValue(getObject("ServiceConfiguration:ServiceSharingRule:Class:Name"),null) + context.getFormattedValue(".UNSHARED_ORG_DESC",null),null),"",null,null,null,null,null,null,null,null,null,null,null));} %></label></td>
		</tr>

		<tr>
			<td colspan="2" class="w e s"><img width="1" height="4" alt="" src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" border="0" complete="complete"/></td>
		</tr>
		<tr>
			<td colspan="2" class="w e"><img width="1" height="4" alt="" src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" border="0" complete="complete"/></td>
		</tr>

		<tr>
			<td class="input_radio w center" width="80">
				<input name="<% {String value = null;try{value=context.getFormattedValue(getObject("ServiceConfigurationEditScharingRuleForm:ServiceConfigurationSharingRule:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {54}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" type="radio" value="SHARED_ACTIVATED" id="sharedActivated" 
					<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ServiceConfiguration:ServiceSharingRule"),null).equals(context.getFormattedValue("SHARED_ACTIVATED",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",55,e);}if (_boolean_result) { %>checked="checked"<% } %>
				/>
			</td>
			<td class="e label_radio_text">
				<label class="label label_radio_text" for="sharedActivated"><% {out.write(localizeISText(context.getFormattedValue(context.getFormattedValue(getObject("ServiceConfiguration:ServiceSharingRule:Class:Name"),null) + context.getFormattedValue(".SHARED_ACTIVATED",null),null),"",null,null,null,null,null,null,null,null,null,null,null));} %></label>
			</td>
		</tr>
		<tr>
			<td class="w">&nbsp;</td>
			<td class="e label_radio_text"><label class="label label_radio_text label_light" for="sharedActivated"><% {out.write(localizeISText(context.getFormattedValue(context.getFormattedValue(getObject("ServiceConfiguration:ServiceSharingRule:Class:Name"),null) + context.getFormattedValue(".SHARED_ACTIVATED_ORG_DESC",null),null),"",null,null,null,null,null,null,null,null,null,null,null));} %></label></td>
		</tr>
		
		<tr>
			<td colspan="2" class="w e s"><img width="1" height="4" alt="" src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" border="0" complete="complete"/></td>
		</tr>
		<tr>
			<td colspan="2" class="w e"><img width="1" height="4" alt="" src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" border="0" complete="complete"/></td>
		</tr>

		<tr>
			<td class="input_radio w center" width="80">
				<input name="<% {String value = null;try{value=context.getFormattedValue(getObject("ServiceConfigurationEditScharingRuleForm:ServiceConfigurationSharingRule:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {76}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" type="radio" value="SHARED_DEACTIVATED" id="sharedDeactivated" 
					<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ServiceConfiguration:ServiceSharingRule"),null).equals(context.getFormattedValue("SHARED_DEACTIVATED",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",77,e);}if (_boolean_result) { %>checked="checked"<% } %>
				/>
			</td>
			<td class="e label_radio_text">
				<label class="label label_radio_text" for="sharedDeactivated"><% {out.write(localizeISText(context.getFormattedValue(context.getFormattedValue(getObject("ServiceConfiguration:ServiceSharingRule:Class:Name"),null) + context.getFormattedValue(".SHARED_DEACTIVATED",null),null),"",null,null,null,null,null,null,null,null,null,null,null));} %></label>
			</td>
		</tr>
		<tr>
			<td class="w">&nbsp;</td>
			<td class="e label_radio_text"><label class="label label_radio_text label_light" for="sharedDeactivated"><% {out.write(localizeISText(context.getFormattedValue(context.getFormattedValue(getObject("ServiceConfiguration:ServiceSharingRule:Class:Name"),null) + context.getFormattedValue(".SHARED_DEACTIVATED_ORG_DESC",null),null),"",null,null,null,null,null,null,null,null,null,null,null));} %></label></td>
			
		</tr>

		<tr>
			<td colspan="2" class="w e s"><img width="1" height="4" alt="" src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" border="0" complete="complete"/></td>
		</tr>
		<tr>
			<td colspan="2" class="w e"><img width="1" height="4" alt="" src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" border="0" complete="complete"/></td>
		</tr>
		
		<tr>
			<td class="input_radio w center" width="80">
				<input name="<% {String value = null;try{value=context.getFormattedValue(getObject("ServiceConfigurationEditScharingRuleForm:ServiceConfigurationSharingRule:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {99}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" type="radio" value="MANDATORY" id="sharedMandatory" 
					<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ServiceConfiguration:ServiceSharingRule"),null).equals(context.getFormattedValue("MANDATORY",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",100,e);}if (_boolean_result) { %>checked="checked"<% } %>
				/>
			</td>
			<td class="e label_radio_text">
				<label class="label label_radio_text" for="sharedMandatory"><% {out.write(localizeISText(context.getFormattedValue(context.getFormattedValue(getObject("ServiceConfiguration:ServiceSharingRule:Class:Name"),null) + context.getFormattedValue(".MANDATORY",null),null),"",null,null,null,null,null,null,null,null,null,null,null));} %></label>
			</td>
		</tr>
		<tr>
			<td class="w">&nbsp;</td>
			<td class="e label_radio_text">
				<label class="label label_radio_text label_light" for="sharedMandatory"><% {out.write(localizeISText(context.getFormattedValue(context.getFormattedValue(getObject("ServiceConfiguration:ServiceSharingRule:Class:Name"),null) + context.getFormattedValue(".MANDATORY_ORG_DESC",null),null),"",null,null,null,null,null,null,null,null,null,null,null));} %></label>
			</td>
		</tr>
		
		<tr>
			<td colspan="2" class="w e s"><img width="1" height="4" alt="" src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" border="0" complete="complete"/></td>
		</tr>
		
		<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (((((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("isOrganizationUserPermission")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_SERVICES")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) (((!((Boolean) (disableErrorMessages().isDefined(getObject("isOrganizationUserPermission")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_SERVICES")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) ((((Boolean) getObject("ServiceConfiguration:isShared")).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",118,e);}if (_boolean_result) { %>
			<tr>
				<td class="w e s" colspan="2">
					<table width="100%" border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td align="right">
								<table border="0" cellspacing="4" cellpadding="0">
									<tr>
										<td class="button">
											<input name="SharingRulesValidate" class="button" type="submit" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ServicesEditSharingRules_inc.Apply.button",null)),null)%>" />
										</td>
										<td class="button">
											<input name="sharingRules" class="button" type="submit" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ServicesEditSharingRules_inc.Reset.button",null)),null)%>" />
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