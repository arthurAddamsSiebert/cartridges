<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %>
<% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/Modules", null, "3");} %>
<% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"content/Modules", null, "4");} %>

<% context.setCustomTagTemplateName("sfe_pageletentrypointpageletassignments","content/PageletAssignmentsInc",true,new String[]{"sfe_HideButtons","sfe_IsPreviewEnabled","ContextObject","ContextPipeline","Repository","Locale","ContextType","StartFlag","Disabled","parametername0","parametervalue0","parametername1","parametervalue1","parametername2","parametervalue2","parametername3","parametervalue3","parametername4","parametervalue4","parametername5","parametervalue5","parametername6","parametervalue6","parametername7","parametervalue7","parametername8","parametervalue8","parametername9","parametervalue9"},null); %>

<% processOpenTag(response, pageContext, "contentpermissionmap", new TagParameter[] {
new TagParameter("PermissionMap","PermissionMap")}, 40); %>

<div id="editPanelResponse" style="display: none;">
	<% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"editing/EditingPlaceholderDummy", null, "43");} %>
	
	<div id="editTabs">
		<% _boolean_result=false;try {_boolean_result=((Boolean)(((!((Boolean) ((disableErrorMessages().isDefined(getObject("SelectedTab"))))).booleanValue() && ((Boolean) ((( ((Number) getObject("PageletEntryPoint:PageletEntryPointViewContextAssignmentPOsCount")).doubleValue() ==((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) ((( ((Number) getObject("PageletEntryPoint:PageletEntryPointViewContextObjectAssignmentPOsCount")).doubleValue() ==((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",46,e);}if (_boolean_result) { %>
			<% {Object temp_obj = ("Properties"); getPipelineDictionary().put("SelectedTab", temp_obj);} %>
		<% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) ((disableErrorMessages().isDefined(getObject("SelectedTab"))))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",48,e);}if (_boolean_result) { %>
			<% {Object temp_obj = ("Variants"); getPipelineDictionary().put("SelectedTab", temp_obj);} %>
		<% }} %>
		<ul>
			<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((( ((Number) getObject("PageletEntryPoint:PageletEntryPointViewContextAssignmentPOsCount")).doubleValue() ==((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) ((( ((Number) getObject("PageletEntryPoint:PageletEntryPointViewContextObjectAssignmentPOsCount")).doubleValue() ==((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",52,e);}if (_boolean_result) { %>
				<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SelectedTab"),null).equals(context.getFormattedValue("Properties",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",53,e);}if (_boolean_result) { %>
					<li><a class="sfe-active"><% {out.write(localizeISText("PageletTemplateTabs.Properties.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a></li>
				<% } else { %>
					<li><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPageletEntryPointEditing-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("PageletEntryPointUUID",null),context.getFormattedValue(getObject("PageletEntryPoint:UUID"),null))).addURLParameter(context.getFormattedValue("ContentRepositoryUUID",null),context.getFormattedValue(getObject("ContentRepository:UUID"),null)).addURLParameter(context.getFormattedValue("SelectedTab",null),context.getFormattedValue("Properties",null))),null)%>"><% {out.write(localizeISText("PageletTemplateTabs.Properties.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a></li>
				<% } %>
			<% } %>
			
			<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SelectedTab"),null).equals(context.getFormattedValue("Variants",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",60,e);}if (_boolean_result) { %>
				<li><a class="sfe-active"><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("PageletEntryPoint:Page"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",61,e);}if (_boolean_result) { %><% {out.write(localizeISText("PageletEntryPointTabs.PageVariants.table_tabs_en_background",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else { %><% {out.write(localizeISText("PageletEntryPoint.Components.text1",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %></a></li>
			<% } else { %>
				<li><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPageletEntryPointEditing-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("PageletEntryPointUUID",null),context.getFormattedValue(getObject("PageletEntryPoint:UUID"),null))).addURLParameter(context.getFormattedValue("ContentRepositoryUUID",null),context.getFormattedValue(getObject("ContentRepository:UUID"),null)).addURLParameter(context.getFormattedValue("SelectedTab",null),context.getFormattedValue("Variants",null))),null)%>"><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("PageletEntryPoint:Page"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",63,e);}if (_boolean_result) { %><% {out.write(localizeISText("PageletEntryPointTabs.PageVariants.table_tabs_en_background",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else { %><% {out.write(localizeISText("PageletEntryPoint.Components.text1",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %></a></li>
			<% } %>
			
			<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("PageletEntryPoint:Page")).booleanValue() && ((Boolean) ((( ((Number) getObject("PageletEntryPoint:PageletEntryPointViewContextAssignmentPOsCount")).doubleValue() ==((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) ((( ((Number) getObject("PageletEntryPoint:PageletEntryPointViewContextObjectAssignmentPOsCount")).doubleValue() ==((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",66,e);}if (_boolean_result) { %>
				<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SelectedTab"),null).equals(context.getFormattedValue("SubPages",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",67,e);}if (_boolean_result) { %>
					<li><a class="sfe-active"><% {out.write(localizeISText("PageletEntryPointEditing.SubPage.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a></li>
				<% } else { %>
					<li><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPageletEntryPointEditing-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("PageletEntryPointUUID",null),context.getFormattedValue(getObject("PageletEntryPoint:UUID"),null))).addURLParameter(context.getFormattedValue("ContentRepositoryUUID",null),context.getFormattedValue(getObject("ContentRepository:UUID"),null)).addURLParameter(context.getFormattedValue("SelectedTab",null),context.getFormattedValue("SubPages",null))),null)%>"><% {out.write(localizeISText("PageletEntryPointEditing.SubPage.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a></li>
				<% } %>
			<% } %>
			
			<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PermissionMap:SLD_VIEW_LABELS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",74,e);}if (_boolean_result) { %>
				<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SelectedTab"),null).equals(context.getFormattedValue("Labels",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",75,e);}if (_boolean_result) { %>
					<li><a class="sfe-active"><% {out.write(localizeISText("PageletEntryPoint.Labels.text1",null,null,null,null,null,null,null,null,null,null,null,null));} %></a></li>
				<% } else { %>
					<li><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPageletEntryPointEditing-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("PageletEntryPointUUID",null),context.getFormattedValue(getObject("PageletEntryPoint:UUID"),null))).addURLParameter(context.getFormattedValue("ContentRepositoryUUID",null),context.getFormattedValue(getObject("ContentRepository:UUID"),null)).addURLParameter(context.getFormattedValue("SelectedTab",null),context.getFormattedValue("Labels",null))),null)%>"><% {out.write(localizeISText("PageletEntryPoint.Labels.text1",null,null,null,null,null,null,null,null,null,null,null,null));} %></a></li>
				<% } %>
			<% } %>
		</ul>
	</div>

	<div id="editContainer">
		<% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"editing/EditingPlaceholder", null, "85");} %>
		<div class="lockingInformation n">
			<% processOpenTag(response, pageContext, "createmap", new TagParameter[] {
new TagParameter("key1","PreferenceDomain"),
new TagParameter("key2","LockingDomain"),
new TagParameter("key0","PageletEntryPoint"),
new TagParameter("value2",getObject("ContentRepository:RepositoryDomain")),
new TagParameter("value1",getObject("ContentRepository:RepositoryDomain")),
new TagParameter("key3","User"),
new TagParameter("value3",getObject("CurrentUser")),
new TagParameter("value0",getObject("PageletEntryPoint")),
new TagParameter("mapname","PageletEntryPointLockParams")}, 87); %>
			<% {try{executePipeline("ViewPageletEntryPoint-LookupPEPLock",((java.util.Map)(getObject("PageletEntryPointLockParams"))),"Result");}catch(Exception e){Logger.error(this,"ISPIPELINE failed. Line: 92.",e);}} %>
			<% processOpenTag(response, pageContext, "populatedictionary", new TagParameter[] {
new TagParameter("map",getObject("Result"))}, 93); %>
			<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PageletEntryPointLocking"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",94,e);}if (_boolean_result) { %>
				<% URLPipelineAction action243 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPageletEntryPointEditing-Dispatch",null)))),null));String site243 = null;String serverGroup243 = null;String actionValue243 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPageletEntryPointEditing-Dispatch",null)))),null);if (site243 == null){  site243 = action243.getDomain();  if (site243 == null)  {      site243 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup243 == null){  serverGroup243 = action243.getServerGroup();  if (serverGroup243 == null)  {      serverGroup243 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPageletEntryPointEditing-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("LockPageletEntryPointForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue243, site243, serverGroup243,true)); %>
					<input type="hidden" name="PageletEntryPointUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("PageletEntryPoint:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {96}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
					<input type="hidden" name="Recursive" value="true"/>
					<input type="hidden" name="LocaleId" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Locale:LocaleID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {98}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
					<input type="hidden" name="ContentRepositoryUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ContentRepository:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {99}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
					<input type="hidden" name="AssignmentUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Assignment:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {100}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
					<input type="hidden" name="SelectedTab" value="<% {String value = null;try{value=context.getFormattedValue(getObject("SelectedTab"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {101}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
					<% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/PageletEntryPointLockInformation.isml", null, "102");} %>
				<% out.print("</form>"); %>
			<% } %>
		</div>
		<% _boolean_result=false;try {_boolean_result=((Boolean)((((!(context.getFormattedValue(getObject("PageletEntryPoint:Domain:UUID"),null).equals(context.getFormattedValue(getObject("ContentRepository:RepositoryDomain:UUID"),null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",106,e);}if (_boolean_result) { %>
			<div class="sharingInformation">
				<% processOpenTag(response, pageContext, "pageletentrypointsharinginfo", new TagParameter[] {
new TagParameter("PageletEntryPoint",getObject("PageletEntryPoint"))}, 108); %>
			</div>
		<% } %>
		
		<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SelectedTab"),null).equals(context.getFormattedValue("Variants",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",112,e);}if (_boolean_result) { %>
			<!-- Assignments Module -->
			<% {try{executePipeline("ViewPageletEntryPoint-IsTabSwitched",((java.util.Map)(((new ParameterMap().addParameter(new ParameterEntry("PageletEntryPointUUID",getObject("PageletEntryPoint:UUID"))))))),"TabStatus");}catch(Exception e){Logger.error(this,"ISPIPELINE failed. Line: 114.",e);}} %>
			<% {try{executePipeline("ViewPageletEditing-IsPreviewEnabled",((java.util.Map)(((new ParameterMap().addParameter(new ParameterEntry("ContentRepositoryUUID",getObject("ContentRepository:UUID"))))))),"PreviewStatus");}catch(Exception e){Logger.error(this,"ISPIPELINE failed. Line: 115.",e);}} %>
			<% processOpenTag(response, pageContext, "sfe_pageletentrypointpageletassignments", new TagParameter[] {
new TagParameter("Locale",getObject("Locale")),
new TagParameter("ContextType","PageletEntryPoint"),
new TagParameter("sfe_IsPreviewEnabled",getObject("PreviewStatus:IsPreviewEnabled")),
new TagParameter("parametervalue4",getObject("PageLocatorName")),
new TagParameter("parametername0","PageletEntryPointUUID"),
new TagParameter("parametervalue3","Variants"),
new TagParameter("parametername1","ContentRepositoryUUID"),
new TagParameter("parametervalue2",getObject("Locale:ID")),
new TagParameter("parametervalue1",getObject("ContentRepository:UUID")),
new TagParameter("parametername2","LocaleId"),
new TagParameter("parametervalue0",getObject("PageletEntryPoint:UUID")),
new TagParameter("parametername3","SelectedTab"),
new TagParameter("ContextPipeline","ViewPageletEntryPointEditing-InternalStart"),
new TagParameter("ContextObject",getObject("PageletEntryPoint")),
new TagParameter("StartFlag",getObject("TabStatus:Flag")),
new TagParameter("Repository",getObject("ContentRepository")),
new TagParameter("parametername4","PageLocatorName"),
new TagParameter("sfe_HideButtons","true")}, 116); %>
		<% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SelectedTab"),null).equals(context.getFormattedValue("SubPages",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",131,e);}if (_boolean_result) { %>
			<!-- SubPages Module -->
			<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("PageletEntryPoint:Page"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",133,e);}if (_boolean_result) { %>
				<% processOpenTag(response, pageContext, "pageletentrypointtabsubpages", new TagParameter[] {
new TagParameter("Locale",getObject("Locale")),
new TagParameter("PageletEntryPoint",getObject("PageletEntryPoint")),
new TagParameter("ContentRepository",getObject("ContentRepository")),
new TagParameter("ContextPipeline","ViewPageletEntryPointEditing-InternalStart"),
new TagParameter("PermissionMap",getObject("PermissionMap"))}, 134); %>
			<% } %>
		<% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SelectedTab"),null).equals(context.getFormattedValue("Properties",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",141,e);}if (_boolean_result) { %>
			<!-- Properties Module -->
			<% processOpenTag(response, pageContext, "pageletentrypointtabproperties", new TagParameter[] {
new TagParameter("Locale",getObject("Locale")),
new TagParameter("PageletEntryPoint",getObject("PageletEntryPoint")),
new TagParameter("ContentRepository",getObject("ContentRepository")),
new TagParameter("ContextPipeline","ViewPageletEntryPointEditing-InternalStart"),
new TagParameter("PermissionMap",getObject("PermissionMap"))}, 143); %>
		<% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((context.getFormattedValue(getObject("SelectedTab"),null).equals(context.getFormattedValue("Labels",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) ((disableErrorMessages().isDefined(getObject("PermissionMap:SLD_VIEW_LABELS"))))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",149,e);}if (_boolean_result) { %>
			<!-- Labels Module -->
			<% {try{executePipeline("ProcessLabelRepository-GetLabelUnit",java.util.Collections.emptyMap(),"LabelManagement");}catch(Exception e){Logger.error(this,"ISPIPELINE failed. Line: 151.",e);}} %>
			
			<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannel"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",153,e);}if (_boolean_result) { %>
				<% {Object temp_obj = ("ViewChannelLabel"); getPipelineDictionary().put("ViewLabelPipeline", temp_obj);} %>
			<% } else { %>
				<% {Object temp_obj = ("ViewLabel"); getPipelineDictionary().put("ViewLabelPipeline", temp_obj);} %>
			<% } %>
			
			<% processOpenTag(response, pageContext, "pageletentrypointtablabels", new TagParameter[] {
new TagParameter("Locale",getObject("Locale")),
new TagParameter("PageletEntryPoint",getObject("PageletEntryPoint")),
new TagParameter("LabelDomain",getObject("LabelManagement:LabelUnitDomain")),
new TagParameter("ViewLabelPipeline",getObject("ViewLabelPipeline")),
new TagParameter("ContentRepository",getObject("ContentRepository")),
new TagParameter("ContextPipeline","ViewPageletEntryPointEditing-InternalStart"),
new TagParameter("PermissionMap",getObject("PermissionMap"))}, 159); %>
		<% }}}} %>
	</div>
	
	<div id="editControls">
		<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PermissionMap:SLD_MANAGE_CONTENT"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",171,e);}if (_boolean_result) { %>
			<ul>
				<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SelectedTab"),null).equals(context.getFormattedValue("Properties",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",173,e);}if (_boolean_result) { %>
					<% processOpenTag(response, pageContext, "pageletentrypointeditable", new TagParameter[] {
new TagParameter("PageletEntryPoint",getObject("PageletEntryPoint")),
new TagParameter("User",getObject("CurrentUser")),
new TagParameter("ContentRepository",getObject("ContentRepository")),
new TagParameter("PageletEntryPointLockedForOther","PageletEntryPointLockedForOther"),
new TagParameter("Result","IsPageletEntryPointEditable")}, 174); %>
					<% processOpenTag(response, pageContext, "createmap", new TagParameter[] {
new TagParameter("key1","ContentRepositoryUUID"),
new TagParameter("key0","PageletEntryPointUUID"),
new TagParameter("value1",getObject("ContentRepository:UUID")),
new TagParameter("value0",getObject("PageletEntryPoint:UUID")),
new TagParameter("mapname","PageletEntryPointPropertiesParams")}, 175); %>
					<% {try{executePipeline("ViewPageletEntryPointProperties-IsCopyPossible",((java.util.Map)(getObject("PageletEntryPointPropertiesParams"))),"IsCopyPossible");}catch(Exception e){Logger.error(this,"ISPIPELINE failed. Line: 176.",e);}} %>
					<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (getObject("PageletEntryPointLockedForOther"))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",177,e);}if (_boolean_result) { %>
					<li><a href="<%=context.getFormattedValue("#",null)%>" class="sfe-secondary" data-sfe-actionButton="sfe-reset-<% {String value = null;try{value=context.getFormattedValue(replace(context.getFormattedValue(getObject("PageletEntryPoint:UUID"),null),(String)("\\."),(String)("-")),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {178}",e);}if (value==null) value="";out.write(value);} %>"><% {out.write(localizeISText("PageletTemplateTabProperties.Reset.button",null,null,null,null,null,null,null,null,null,null,null,null));} %></a></li>
					<% } %>
					<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("IsCopyPossible:Result"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",180,e);}if (_boolean_result) { %>
						<li><a href="<%=context.getFormattedValue("#",null)%>" data-sfe-actionButton="sfe-copy-<% {String value = null;try{value=context.getFormattedValue(replace(context.getFormattedValue(getObject("PageletEntryPoint:UUID"),null),(String)("\\."),(String)("-")),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {181}",e);}if (value==null) value="";out.write(value);} %>"><% {out.write(localizeISText("PageletTemplateTabProperties.Copy.button",null,null,null,null,null,null,null,null,null,null,null,null));} %></a></li>
					<% } %>
					<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("PageletEntryPoint:Dynamic")).booleanValue() && ((Boolean) getObject("IsPageletEntryPointEditable")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",183,e);}if (_boolean_result) { %>
						<li><a href="<%=context.getFormattedValue("#",null)%>" data-sfe-actionButton="sfe-delete-<% {String value = null;try{value=context.getFormattedValue(replace(context.getFormattedValue(getObject("PageletEntryPoint:UUID"),null),(String)("\\."),(String)("-")),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {184}",e);}if (value==null) value="";out.write(value);} %>"><% {out.write(localizeISText("TemplateSearchButtons.Delete.button",null,null,null,null,null,null,null,null,null,null,null,null));} %></a></li>
					<% } %>
					<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (getObject("PageletEntryPointLockedForOther"))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",186,e);}if (_boolean_result) { %>
						<li><a href="<%=context.getFormattedValue("#",null)%>" class="sfe-primary" data-sfe-actionButton="sfe-save-<% {String value = null;try{value=context.getFormattedValue(replace(context.getFormattedValue(getObject("PageletEntryPoint:UUID"),null),(String)("\\."),(String)("-")),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {187}",e);}if (value==null) value="";out.write(value);} %>"><% {out.write(localizeISText("PageletEditing.Save.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a></li>
					<% } %>
				<% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SelectedTab"),null).equals(context.getFormattedValue("Variants",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",189,e);}if (_boolean_result) { %>
					<% processOpenTag(response, pageContext, "configurationparameterctnreditable", new TagParameter[] {
new TagParameter("ConfigurationParameterCtnr",getObject("PageletEntryPoint")),
new TagParameter("User",getObject("CurrentUser")),
new TagParameter("ContentRepository",getObject("ContentRepository")),
new TagParameter("PermissionMap",getObject("PermissionMap")),
new TagParameter("Result","IsEditable")}, 190); %>
					<% processOpenTag(response, pageContext, "contententrypointlockedforothers", new TagParameter[] {
new TagParameter("User",getObject("CurrentUser")),
new TagParameter("ContentRepository",getObject("ContentRepository")),
new TagParameter("ContentEntryPoint",getObject("PageletEntryPoint")),
new TagParameter("Result","LockedForOthers")}, 191); %>
					<% {Object temp_obj = (getObject("PageletEntryPoint:ContentEntryPointDefinition")); getPipelineDictionary().put("ContentEntryPointDefinition", temp_obj);} %>
					<% processOpenTag(response, pageContext, "pageletmodelutils", new TagParameter[] {
new TagParameter("PageletModelUtils","PageletModelUtils")}, 193); %>
					<% {Object temp_obj = ((((Boolean) (((((Boolean) ((disableErrorMessages().isDefined(getObject("ContentEntryPointDefinition"))))).booleanValue() && ((Boolean) ((hasLoopElements("PageletModelUtils:PageletDefinitions(PageletEntryPoint,PageletModelRepository)") ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) ); getPipelineDictionary().put("NoDefinitionTypesVisible", temp_obj);} %>
					<% processOpenTag(response, pageContext, "contententrypointflagseditable", new TagParameter[] {
new TagParameter("ContentRepository",getObject("ContentRepository")),
new TagParameter("ContentEntryPoint",getObject("PageletEntryPoint")),
new TagParameter("Result","ContentEntryPointEditable")}, 195); %>
					<% {Object temp_obj = (((!((Boolean) (getObject("ContentEntryPointEditable"))).booleanValue() || ((Boolean) (getObject("LockedForOthers"))).booleanValue() || ((Boolean) ((((Boolean) ((disableErrorMessages().isDefined(getObject("ContentEntryPointDefinition"))))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue()) ? Boolean.TRUE : Boolean.FALSE)); getPipelineDictionary().put("ContentEntryPointReadOnly", temp_obj);} %>
					<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (hasLoopElements("PageletEntryPoint:ConfigurationParameterDefinitionCtnr:ConfigurationParameterDefinitions") ? Boolean.TRUE : Boolean.FALSE)).booleanValue() && ((Boolean) getObject("IsEditable")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",197,e);}if (_boolean_result) { %>
						<li><a href="<%=context.getFormattedValue("#",null)%>" class="sfe-secondary" data-sfe-actionButton="sfe-reset-<% {String value = null;try{value=context.getFormattedValue(replace(context.getFormattedValue(getObject("PageletEntryPoint:UUID"),null),(String)("\\."),(String)("-")),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {198}",e);}if (value==null) value="";out.write(value);} %>"><% {out.write(localizeISText("PageletTemplateTabProperties.Reset.button",null,null,null,null,null,null,null,null,null,null,null,null));} %></a></li>
					<% } %>
					<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ContentEntryPointDefinition:PageletPipeline:ReferencedName")))).booleanValue() && ((Boolean) ((((Boolean) (getObject("ContentEntryPointDefinition:PageletAssignmentsEnabled"))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",200,e);}if (_boolean_result) { %>
						
					<% } else { %>
						<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (((((Boolean) getObject("NoDefinitionTypesVisible")).booleanValue() || ((Boolean) getObject("ContentEntryPointReadOnly")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",203,e);}if (_boolean_result) { %>
							<li><a href="<%=context.getFormattedValue("#",null)%>" data-sfe-actionButton="sfe-new-<% {String value = null;try{value=context.getFormattedValue(replace(context.getFormattedValue(getObject("PageletEntryPoint:UUID"),null),(String)("\\."),(String)("-")),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {204}",e);}if (value==null) value="";out.write(value);} %>"><% {out.write(localizeISText("ProductPriceMappingRuleList.New.button",null,null,null,null,null,null,null,null,null,null,null,null));} %></a></li>
							<li><a href="<%=context.getFormattedValue("#",null)%>" data-sfe-actionButton="sfe-assign-<% {String value = null;try{value=context.getFormattedValue(replace(context.getFormattedValue(getObject("PageletEntryPoint:UUID"),null),(String)("\\."),(String)("-")),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {205}",e);}if (value==null) value="";out.write(value);} %>"><% {out.write(localizeISText("ProductSetBrowseCatalog.Assign.button",null,null,null,null,null,null,null,null,null,null,null,null));} %></a></li>
						<% } %>
						<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (hasLoopElements("PageletEntryPoint:PageletAssignments(ContentRepository:RepositoryDomain)") ? Boolean.TRUE : Boolean.FALSE)).booleanValue() && !((Boolean) (getObject("ContentEntryPointReadOnly"))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",207,e);}if (_boolean_result) { %>
							<li><a href="<%=context.getFormattedValue("#",null)%>" data-sfe-actionButton="sfe-unassign-<% {String value = null;try{value=context.getFormattedValue(replace(context.getFormattedValue(getObject("PageletEntryPoint:UUID"),null),(String)("\\."),(String)("-")),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {208}",e);}if (value==null) value="";out.write(value);} %>"><% {out.write(localizeISText("ProductSharingChannel.Unassign.button",null,null,null,null,null,null,null,null,null,null,null,null));} %></a></li>
							<li><a href="<%=context.getFormattedValue("#",null)%>" data-sfe-actionButton="sfe-delete-<% {String value = null;try{value=context.getFormattedValue(replace(context.getFormattedValue(getObject("PageletEntryPoint:UUID"),null),(String)("\\."),(String)("-")),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {209}",e);}if (value==null) value="";out.write(value);} %>"><% {out.write(localizeISText("TemplateSearchButtons.Delete.button",null,null,null,null,null,null,null,null,null,null,null,null));} %></a></li>
							
						<% } %>
					<% } %>
					<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (hasLoopElements("PageletEntryPoint:ConfigurationParameterDefinitionCtnr:ConfigurationParameterDefinitions") ? Boolean.TRUE : Boolean.FALSE)).booleanValue() && ((Boolean) getObject("IsEditable")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",214,e);}if (_boolean_result) { %>
						<li><a href="<%=context.getFormattedValue("#",null)%>" class="sfe-primary" data-sfe-actionButton="sfe-save-<% {String value = null;try{value=context.getFormattedValue(replace(context.getFormattedValue(getObject("PageletEntryPoint:UUID"),null),(String)("\\."),(String)("-")),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {215}",e);}if (value==null) value="";out.write(value);} %>"><% {out.write(localizeISText("PageletEditing.Save.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a></li>
					<% } %>
				<% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SelectedTab"),null).equals(context.getFormattedValue("SubPages",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",217,e);}if (_boolean_result) { %>
					<% processOpenTag(response, pageContext, "pageletentrypointeditable", new TagParameter[] {
new TagParameter("PageletEntryPoint",getObject("PageletEntryPoint")),
new TagParameter("User",getObject("CurrentUser")),
new TagParameter("ContentRepository",getObject("ContentRepository")),
new TagParameter("PageletEntryPointLockedForOther","PageletEntryPointLockedForOther"),
new TagParameter("Result","IsPageletEntryPointEditable")}, 218); %>
					<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (getObject("PageletEntryPointLockedForOther"))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",219,e);}if (_boolean_result) { %>
						<% processOpenTag(response, pageContext, "createmap", new TagParameter[] {
new TagParameter("key1","ContentRepository"),
new TagParameter("key0","PageletEntryPoint"),
new TagParameter("value1",getObject("ContentRepository")),
new TagParameter("value0",getObject("PageletEntryPoint")),
new TagParameter("mapname","SubPagesParams")}, 220); %>
						<% {try{executePipeline("ViewPageletEntryPointSubPages-GetSubPageAssignments",((java.util.Map)(getObject("SubPagesParams"))),"SubPagesResult");}catch(Exception e){Logger.error(this,"ISPIPELINE failed. Line: 223.",e);}} %>		
						<% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("SubPagesResult:Assignments") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",224,e);}if (_boolean_result) { %>
							<li><a href="<%=context.getFormattedValue("#",null)%>" data-sfe-actionButton="sfe-unassign-<% {String value = null;try{value=context.getFormattedValue(replace(context.getFormattedValue(getObject("PageletEntryPoint:UUID"),null),(String)("\\."),(String)("-")),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {225}",e);}if (value==null) value="";out.write(value);} %>"><% {out.write(localizeISText("ProductSharingChannel.Unassign.button",null,null,null,null,null,null,null,null,null,null,null,null));} %></a></li>
						<% } %>
						<li><a href="<%=context.getFormattedValue("#",null)%>" class="sfe-primary" data-sfe-actionButton="sfe-new-<% {String value = null;try{value=context.getFormattedValue(replace(context.getFormattedValue(getObject("PageletEntryPoint:UUID"),null),(String)("\\."),(String)("-")),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {227}",e);}if (value==null) value="";out.write(value);} %>"><% {out.write(localizeISText("ProductPriceMappingRuleList.New.button",null,null,null,null,null,null,null,null,null,null,null,null));} %></a></li>
					<% } %>
				<% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((context.getFormattedValue(getObject("SelectedTab"),null).equals(context.getFormattedValue("Labels",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) ((disableErrorMessages().isDefined(getObject("PermissionMap:SLD_VIEW_LABELS"))))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",229,e);}if (_boolean_result) { %>
					<% {try{executePipeline("ProcessLabelRepository-GetLabelUnit",java.util.Collections.emptyMap(),"LabelManagement");}catch(Exception e){Logger.error(this,"ISPIPELINE failed. Line: 230.",e);}} %>  
					<% processOpenTag(response, pageContext, "createmap", new TagParameter[] {
new TagParameter("key1","Repository"),
new TagParameter("key2","LabelDomain"),
new TagParameter("key0","Object"),
new TagParameter("value2",getObject("LabelManagement:LabelUnitDomain")),
new TagParameter("value1",getObject("Repository")),
new TagParameter("value0",getObject("PageletEntryPoint")),
new TagParameter("mapname","PageletLabelsParams")}, 231); %>
					<% {try{executePipeline("ViewPageletLabels-GetLabelsByPagelet",((java.util.Map)(getObject("PageletLabelsParams"))),"LabelsResult");}catch(Exception e){Logger.error(this,"ISPIPELINE failed. Line: 235.",e);}} %>
					<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PermissionMap:SLD_MANAGE_LABELS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",236,e);}if (_boolean_result) { %>
						<% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("LabelsResult:AssignedLabels") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",237,e);}if (_boolean_result) { %>
							<li><a href="<%=context.getFormattedValue("#",null)%>" data-sfe-actionButton="sfe-unassignLabels-<% {String value = null;try{value=context.getFormattedValue(replace(context.getFormattedValue(getObject("PageletEntryPoint:UUID"),null),(String)("\\."),(String)("-")),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {238}",e);}if (value==null) value="";out.write(value);} %>"><% {out.write(localizeISText("ProductSharingChannel.Unassign.button",null,null,null,null,null,null,null,null,null,null,null,null));} %></a></li>
						<% } %>
						<li><a href="<%=context.getFormattedValue("#",null)%>" class="sfe-primary" data-sfe-actionButton="sfe-selectLabels-<% {String value = null;try{value=context.getFormattedValue(replace(context.getFormattedValue(getObject("PageletEntryPoint:UUID"),null),(String)("\\."),(String)("-")),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {240}",e);}if (value==null) value="";out.write(value);} %>"><% {out.write(localizeISText("ProductPriceMappingRuleList.New.button",null,null,null,null,null,null,null,null,null,null,null,null));} %></a></li>
					<% } %>
				<% }}}} %>
			</ul>
		<% } %>
	</div>
</div>
<% printFooter(out); %>