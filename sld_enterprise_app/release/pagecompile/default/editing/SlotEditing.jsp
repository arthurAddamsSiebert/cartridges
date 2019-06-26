<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %>
<% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/Modules", null, "2");} %>
<% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"content/Modules", null, "3");} %>

<% context.setCustomTagTemplateName("sfe_slotpageletassignments","content/SlotPageletAssignmentsInc",true,new String[]{"sfe_HideButtons","ContextObject","ContextPipeline","Repository","Locale","ContextType","StartFlag","PageLocatorName","parametername0","parametervalue0","parametername1","parametervalue1","parametername2","parametervalue2","parametername3","parametervalue3","parametername4","parametervalue4","parametername5","parametervalue5","parametername6","parametervalue6","parametername7","parametervalue7","parametername8","parametervalue8","parametername9","parametervalue9"},null); %>

<% processOpenTag(response, pageContext, "contentpermissionmap", new TagParameter[] {
new TagParameter("PermissionMap","PermissionMap")}, 38); %>

<div id="editPanelResponse" style="display: none;">
	<% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"editing/EditingPlaceholderDummy", null, "41");} %>
	
	<div id="editTabs">
		<ul>
			<li><a class="sfe-active"><% {out.write(localizeISText("sld_enterprise_app.Assignments.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a></li>
		</ul>
	</div>
	
	<div id="editContainer">
		<% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"editing/EditingPlaceholder", null, "50");} %>
		<div class="lockingInformation n">
			<% processOpenTag(response, pageContext, "createmap", new TagParameter[] {
new TagParameter("key1","PreferenceDomain"),
new TagParameter("key2","LockingDomain"),
new TagParameter("key0","Pagelet"),
new TagParameter("value2",getObject("ContentRepository:RepositoryDomain")),
new TagParameter("value1",getObject("ContentRepository:RepositoryDomain")),
new TagParameter("key3","User"),
new TagParameter("value3",getObject("CurrentUser")),
new TagParameter("value0",getObject("Slot:ParentPagelet")),
new TagParameter("mapname","PageletLockParams")}, 52); %>
			<% {try{executePipeline("ViewPagelet-LookupPageletLock",((java.util.Map)(getObject("PageletLockParams"))),"Result");}catch(Exception e){Logger.error(this,"ISPIPELINE failed. Line: 57.",e);}} %>
			<% processOpenTag(response, pageContext, "populatedictionary", new TagParameter[] {
new TagParameter("map",getObject("Result"))}, 58); %>
			<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PageletLocking"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",59,e);}if (_boolean_result) { %>
				<% URLPipelineAction action242 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewSlotEditing-Dispatch",null)))),null));String site242 = null;String serverGroup242 = null;String actionValue242 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewSlotEditing-Dispatch",null)))),null);if (site242 == null){  site242 = action242.getDomain();  if (site242 == null)  {      site242 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup242 == null){  serverGroup242 = action242.getServerGroup();  if (serverGroup242 == null)  {      serverGroup242 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewSlotEditing-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("LockPageletForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue242, site242, serverGroup242,true)); %>
					<input type="hidden" name="PageletUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Slot:ParentPagelet:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {61}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" />
					<input type="hidden" name="Recursive" value="true" />
					<input type="hidden" name="LocaleId" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Locale:LocaleID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {63}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" />
					<input type="hidden" name="ContentRepositoryUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ContentRepository:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {64}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" />
					<input type="hidden" name="SelectedTab" value="<% {String value = null;try{value=context.getFormattedValue(getObject("SelectedTab"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {65}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" />
					<input type="hidden" name="SlotUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Slot:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {66}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" />
					<% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/PageletLockInformation.isml", null, "67");} %>
				<% out.print("</form>"); %>
			<% } %>
		</div>
		<% _boolean_result=false;try {_boolean_result=((Boolean)((((!(context.getFormattedValue(getObject("Slot:ParentPagelet:Domain:UUID"),null).equals(context.getFormattedValue(getObject("ContentRepository:RepositoryDomain:UUID"),null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",71,e);}if (_boolean_result) { %>
			<div class="sharingInformation">
				<% processOpenTag(response, pageContext, "pageletsharinginfo", new TagParameter[] {
new TagParameter("Pagelet",getObject("Slot:ParentPagelet"))}, 73); %>
			</div>
		<% } %>
		
		<% processOpenTag(response, pageContext, "templatinginfo", new TagParameter[] {
new TagParameter("Pagelet",getObject("Slot:ParentPagelet"))}, 77); %>
		
		<div style="margin-top: -1px;">
			<% processOpenTag(response, pageContext, "sfe_slotpageletassignments", new TagParameter[] {
new TagParameter("Locale",getObject("Locale")),
new TagParameter("ContextType",getObject("Slot:SlotDefinition:QualifiedName")),
new TagParameter("parametername0","SlotUUID"),
new TagParameter("parametername1","ContentRepositoryUUID"),
new TagParameter("parametervalue2",getObject("Locale:LocaleID")),
new TagParameter("parametervalue1",getObject("ContentRepository:UUID")),
new TagParameter("parametername2","LocaleId"),
new TagParameter("parametervalue0",getObject("Slot:UUID")),
new TagParameter("ContextPipeline","ViewSlotEditing-Start"),
new TagParameter("ContextObject",getObject("Slot")),
new TagParameter("StartFlag",getObject("StartFlag")),
new TagParameter("Repository",getObject("ContentRepository")),
new TagParameter("sfe_HideButtons","true")}, 80); %>
		</div>
		
	</div>
	
	<div id="editControls">
		<% {try{executePipeline("ProcessSlotPlaceholderOverride-IsOverridden",((java.util.Map)(((new ParameterMap().addParameter(new ParameterEntry("Slot",getObject("Slot")))).addParameter(new ParameterEntry("Domain",getObject("ContentRepository:RepositoryDomain")))))),"IsOverridden");}catch(Exception e){Logger.error(this,"ISPIPELINE failed. Line: 100.",e);}} %>
		<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("IsOverridden:OverridingPlaceholder"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",101,e);}if (_boolean_result) { %>
			<% {Object temp_obj = (getObject("IsOverridden:OverridingPlaceholder")); getPipelineDictionary().put("ContentEntryPoint", temp_obj);} %>
		<% } else { %>
			<% {Object temp_obj = (getObject("Slot")); getPipelineDictionary().put("ContentEntryPoint", temp_obj);} %>
		<% } %>
		<% processOpenTag(response, pageContext, "configurationparameterctnreditable", new TagParameter[] {
new TagParameter("ConfigurationParameterCtnr",getObject("ContentEntryPoint")),
new TagParameter("User",getObject("CurrentUser")),
new TagParameter("ContentRepository",getObject("ContentRepository")),
new TagParameter("Result","IsContentEntryPointEditable")}, 106); %>
		<% processOpenTag(response, pageContext, "contententrypointlockedforothers", new TagParameter[] {
new TagParameter("User",getObject("CurrentUser")),
new TagParameter("ContentRepository",getObject("ContentRepository")),
new TagParameter("ContentEntryPoint",getObject("ContentEntryPoint")),
new TagParameter("Result","LockedForOthers")}, 107); %>
		<% {Object temp_obj = (getObject("Slot:ContentEntryPointDefinition")); getPipelineDictionary().put("ContentEntryPointDefinition", temp_obj);} %>
		<% processOpenTag(response, pageContext, "pageletmodelutils", new TagParameter[] {
new TagParameter("PageletModelUtils","PageletModelUtils")}, 109); %>
		<% processOpenTag(response, pageContext, "contententrypointflagseditable", new TagParameter[] {
new TagParameter("ContentRepository",getObject("ContentRepository")),
new TagParameter("ContentEntryPoint",getObject("Slot")),
new TagParameter("Result","ContentEntryPointEditable")}, 110); %>
		<% {Object temp_obj = (((!((Boolean) (getObject("ContentEntryPointEditable"))).booleanValue() || ((Boolean) (getObject("LockedForOthers"))).booleanValue() || !((Boolean) ((disableErrorMessages().isDefined(getObject("PermissionMap:SLD_MANAGE_CONTENT"))))).booleanValue() || ((Boolean) ((((Boolean) ((disableErrorMessages().isDefined(getObject("ContentEntryPointDefinition"))))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue()) ? Boolean.TRUE : Boolean.FALSE)); getPipelineDictionary().put("ContentEntryPointReadOnly", temp_obj);} %>
		<% {Object temp_obj = ((((Boolean) (((((Boolean) ((disableErrorMessages().isDefined(getObject("ContentEntryPointDefinition"))))).booleanValue() && ((Boolean) ((hasLoopElements("PageletModelUtils:PageletDefinitions(Slot,ApplicationBO:Extension(\"(Class)com.intershop.sellside.pmc.capi.modelrepository.ApplicationBOPageletModelRepository\"))") ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) ); getPipelineDictionary().put("NoPageVariantTypesVisible", temp_obj);} %>
		
		<ul>
			<% _boolean_result=false;try {_boolean_result=((Boolean)(((!((Boolean) (getObject("IsOverridden:Overridden"))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("Slot:Domain:UUID"),null).equals(context.getFormattedValue(getObject("ContentRepository:RepositoryDomain:UUID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",115,e);}if (_boolean_result) { %>
				<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (getObject("Slot:ReadOnly"))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",116,e);}if (_boolean_result) { %>
					<li><a href="<%=context.getFormattedValue("#",null)%>" data-sfe-actionButton="sfe-override-<% {String value = null;try{value=context.getFormattedValue(replace(context.getFormattedValue(getObject("ContentEntryPoint:UUID"),null),(String)("\\."),(String)("-")),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {117}",e);}if (value==null) value="";out.write(value);} %>"><% {String value = null;try{value=context.getFormattedValue(localizeText(context.getFormattedValue("SlotPageletAssignmentsInc.Overwrite.button",null)),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {117}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></a></li>
				<% } %>
			<% } else { %>
				<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("IsOverridden:Overridden"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",120,e);}if (_boolean_result) { %>
					<li><a href="<%=context.getFormattedValue("#",null)%>" data-sfe-actionButton="sfe-revertSlotAssignments-<% {String value = null;try{value=context.getFormattedValue(replace(context.getFormattedValue(getObject("ContentEntryPoint:UUID"),null),(String)("\\."),(String)("-")),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {121}",e);}if (value==null) value="";out.write(value);} %>"><% {String value = null;try{value=context.getFormattedValue(localizeText(context.getFormattedValue("SlotPageletAssignmentsInc.Revert.button",null)),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {121}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></a></li>
				<% } %>
				<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ContentEntryPointDefinition:PageletPipeline:ReferencedName")))).booleanValue() && ((Boolean) ((((Boolean) (getObject("ContentEntryPointDefinition:PageletAssignmentsEnabled"))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",123,e);}if (_boolean_result) { %>
					
				<% } else { %>
					<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (((((Boolean) getObject("NoPageVariantTypesVisible")).booleanValue() && ((Boolean) getObject("ContentEntryPointReadOnly")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",126,e);}if (_boolean_result) { %>
						<li><a href="<%=context.getFormattedValue("#",null)%>" data-sfe-actionButton="sfe-new-<% {String value = null;try{value=context.getFormattedValue(replace(context.getFormattedValue(getObject("ContentEntryPoint:UUID"),null),(String)("\\."),(String)("-")),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {127}",e);}if (value==null) value="";out.write(value);} %>"><% {out.write(localizeISText("ProductPriceMappingRuleList.New.button",null,null,null,null,null,null,null,null,null,null,null,null));} %></a></li>
						<li><a href="<%=context.getFormattedValue("#",null)%>" data-sfe-actionButton="sfe-assign-<% {String value = null;try{value=context.getFormattedValue(replace(context.getFormattedValue(getObject("ContentEntryPoint:UUID"),null),(String)("\\."),(String)("-")),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {128}",e);}if (value==null) value="";out.write(value);} %>"><% {out.write(localizeISText("ProductSetBrowseCatalog.Assign.button",null,null,null,null,null,null,null,null,null,null,null,null));} %></a></li>
					<% } %>
					<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (hasLoopElements("ContentEntryPoint:PageletAssignments(ContentRepository:RepositoryDomain)") ? Boolean.TRUE : Boolean.FALSE)).booleanValue() && !((Boolean) (getObject("ContentEntryPointReadOnly"))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",130,e);}if (_boolean_result) { %>
						<li><a href="<%=context.getFormattedValue("#",null)%>" data-sfe-actionButton="sfe-unassign-<% {String value = null;try{value=context.getFormattedValue(replace(context.getFormattedValue(getObject("ContentEntryPoint:UUID"),null),(String)("\\."),(String)("-")),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {131}",e);}if (value==null) value="";out.write(value);} %>"><% {out.write(localizeISText("ProductSharingChannel.Unassign.button",null,null,null,null,null,null,null,null,null,null,null,null));} %></a></li>
						<li><a href="<%=context.getFormattedValue("#",null)%>" data-sfe-actionButton="sfe-delete-<% {String value = null;try{value=context.getFormattedValue(replace(context.getFormattedValue(getObject("ContentEntryPoint:UUID"),null),(String)("\\."),(String)("-")),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {132}",e);}if (value==null) value="";out.write(value);} %>"><% {out.write(localizeISText("TemplateSearchButtons.Delete.button",null,null,null,null,null,null,null,null,null,null,null,null));} %></a></li>
					<% } %>
				<% } %>
			<% } %>
			<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (hasLoopElements("Slot:ConfigurationParameterDefinitionCtnr:ConfigurationParameterDefinitions") ? Boolean.TRUE : Boolean.FALSE)).booleanValue() && ((Boolean) getObject("IsContentEntryPointEditable")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",136,e);}if (_boolean_result) { %>
				<li><a href="<%=context.getFormattedValue("#",null)%>" class="sfe-secondary" data-sfe-actionButton="sfe-reset-<% {String value = null;try{value=context.getFormattedValue(replace(context.getFormattedValue(getObject("ContentEntryPoint:UUID"),null),(String)("\\."),(String)("-")),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {137}",e);}if (value==null) value="";out.write(value);} %>"><% {out.write(localizeISText("PageletTemplateTabProperties.Reset.button",null,null,null,null,null,null,null,null,null,null,null,null));} %></a></li>
				<li><a href="<%=context.getFormattedValue("#",null)%>" data-sfe-actionButton="sfe-save-<% {String value = null;try{value=context.getFormattedValue(replace(context.getFormattedValue(getObject("ContentEntryPoint:UUID"),null),(String)("\\."),(String)("-")),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {138}",e);}if (value==null) value="";out.write(value);} %>"><% {out.write(localizeISText("PageletEditing.Save.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a></li>
			<% } %>
		</ul>
		
	</div>
</div>
<% printFooter(out); %>