<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %>

<% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("wizard","true"),
new TagParameter("text",localizeText(context.getFormattedValue("ReplicateContentWizardSelectTarget.ReplicateContent.text",null))),
new TagParameter("id","ReplicateContent")}, 4); %>

<table border="0" cellspacing="0" cellpadding="0" width="100%">
	<tr>
		<td class="table_title aldi"><% {out.write(localizeISText("ReplicateContentWizardSelectTarget.ReplicateContent.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
	</tr>
</table>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
	<tr>
		<td class="table_title_description w e s">

      <% {Object temp_obj = (""); getPipelineDictionary().put("disableButtonString", temp_obj);} %>
      <% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (hasLoopElements("TargetClusters") ? Boolean.TRUE : Boolean.FALSE)).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",16,e);}if (_boolean_result) { %>
        <% {Object temp_obj = ("disabled=\"disabled\""); getPipelineDictionary().put("disableButtonString", temp_obj);} %>
        <% {out.write(localizeISText("ReplicateContentWizardSelectTarget.NoTargetSystemFound.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %>
      <% } else { %>
        <% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (((((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannel")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_DATA_REPLICATION")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) (((((Boolean) ((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannel")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_DATA_REPLICATION")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",20,e);}if (_boolean_result) { %>
          <% {Object temp_obj = ("disabled=\"disabled\""); getPipelineDictionary().put("disableButtonString", temp_obj);} %>
          <% {out.write(localizeISText("ReplicateContentWizardSelectTarget.NoPermissionToProceedWithReplication.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %>
        <% } else { %>
   			<% {out.write(localizeISText("ReplicateContentWizardSelectTarget.SelectTargetSystemAndClickFinishToStartTheReplicat.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %>
        <% } %>
      <% } %>

		</td>
	</tr>
</table>
<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("PageletUUID")))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("PageletUUID"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",31,e);}if (_boolean_result) { %>
	<% {Object temp_obj = ("ViewPagelet-Dispatch"); getPipelineDictionary().put("FormPipeline", temp_obj);} %>
<% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("PageletEntryPointUUID")))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("PageletEntryPointUUID"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",33,e);}if (_boolean_result) { %>
	<% {Object temp_obj = ("ViewPageletEntryPoint-Dispatch"); getPipelineDictionary().put("FormPipeline", temp_obj);} %>
<% } else { %>
	<% {Object temp_obj = ("ViewPageletSearch-Dispatch"); getPipelineDictionary().put("FormPipeline", temp_obj);} %>
<% }} %>
<% URLPipelineAction action221 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue(getObject("FormPipeline"),null)))),null));String site221 = null;String serverGroup221 = null;String actionValue221 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue(getObject("FormPipeline"),null)))),null);if (site221 == null){  site221 = action221.getDomain();  if (site221 == null)  {      site221 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup221 == null){  serverGroup221 = action221.getServerGroup();  if (serverGroup221 == null)  {      serverGroup221 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue(getObject("FormPipeline"),null)))),null));out.print("\"");out.print(" name=\"");out.print("ActionParameterForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue221, site221, serverGroup221,true)); %>
	<input type="hidden" name="UniquePageletSearchID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("UniquePageletSearchID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {39}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
	<input type="hidden" name="page" value="<% {String value = null;try{value=context.getFormattedValue(getObject("PageFlag"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {40}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
	<input type="hidden" name="template" value="<% {String value = null;try{value=context.getFormattedValue(getObject("TemplateFlag"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {41}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>

	<table border="0" cellpadding="0" cellspacing="0" width="100%">
		<tr>
			<td>
				<% {try{executePipeline("ProcessPageletLock-GetLockPreference",((java.util.Map)(((new ParameterMap().addParameter(new ParameterEntry("PreferenceDomain",getObject("ContentRepository:RepositoryDomain"))))))),"PageletLockInfoDictionary");}catch(Exception e){Logger.error(this,"ISPIPELINE failed. Line: 46.",e);}} %> 
				<% {Object temp_obj = ((((context.getFormattedValue(getObject("PageletLockInfoDictionary:PageletLocking"),null).equals(context.getFormattedValue("false",null)))) ? Boolean.TRUE : Boolean.FALSE)); getPipelineDictionary().put("UserLockConflictPolicySelectionDisabled", temp_obj);} %>
				<% {Object temp_obj = ((((context.getFormattedValue(getObject("PageletLockInfoDictionary:CorrelatedLockingEnabled"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE)); getPipelineDictionary().put("CorrelatedLockingEnabled", temp_obj);} %>
				<% {Object temp_obj = (getObject("PageletLockInfoDictionary:ReplicationAcquisitionTimeout")); getPipelineDictionary().put("ReplicationAcquisitionTimeout", temp_obj);} %>
				<% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"replication/ReplicationTargetListInc", null, "50");} %>
				<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
					<tr>
						<td align="right">
							<table border="0" cellspacing="4" cellpadding="0">
								<tr>
									<td class="button">
										<input type="hidden" name="ProcessDescription" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ReplicateContentWizardSelectTarget.ReplicateSelectedContent.input",null)),null)%>"/>
										<input type="hidden" name="PageableID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("PageableID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {58}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
										<input type="submit" name="confirmStaging" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ReplicateContentWizardSelectTarget.Finish.button",null)),null)%>" class="button" <% {String value = null;try{value=context.getFormattedValue(getObject("disableButtonString"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {59}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>/>
									</td>
									<td class="button">
										<input type="hidden" name="PageLocatorName" value="<% {String value = null;try{value=context.getFormattedValue(getObject("PageLocatorName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {62}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
										<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("PageletUUID")))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("PageletUUID"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",63,e);}if (_boolean_result) { %>
											<input type="submit" name="back" value="Cancel" class="button"/>
											<input type="hidden" name="PageletUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("PageletUUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {65}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
										<% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("PageletEntryPointUUID")))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("PageletEntryPointUUID"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",66,e);}if (_boolean_result) { %>
											<input type="submit" name="back" value="Cancel" class="button"/>
											<input type="hidden" name="PageletEntryPointUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("PageletEntryPointUUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {68}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
										<% } else { %>
											<input type="submit" name="cancelStaging" value="Cancel" class="button"/>
										<% }} %>
									</td>
								</tr>
							</table>
						</td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
<% out.print("</form>"); %>				<% printFooter(out); %>