<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %>
<% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/Modules", null, "2");} %>
<% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"content/Modules", null, "3");} %>

<% context.setCustomTagTemplateName("sfe_placeholderpageletassignments","content/placeholder/PlaceholderPageletAssignmentsInc.isml",true,new String[]{"sfe_HideButtons","Placeholder","ContextPipeline","ContextType","Repository","Locale","StartFlag","PageLocatorName","parametername0","parametervalue0","parametername1","parametervalue1","parametername2","parametervalue2","parametername3","parametervalue3","parametername4","parametervalue4","parametername5","parametervalue5","parametername6","parametervalue6","parametername7","parametervalue7","parametername8","parametervalue8","parametername9","parametervalue9"},null); %>

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
		<% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Placeholders") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",51,e);}if (_boolean_result) { %>
			<% while (loop("Placeholders","Placeholder",null)) { %>
				<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Placeholder:UUID"),null).equals(context.getFormattedValue(getObject("id"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",53,e);}if (_boolean_result) { %>
					<div class="n">
						<% _boolean_result=false;try {_boolean_result=((Boolean)((((!(context.getFormattedValue(getObject("Placeholder:Template:Domain:UUID"),null).equals(context.getFormattedValue(getObject("ContentRepository:RepositoryDomain:UUID"),null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",55,e);}if (_boolean_result) { %>
							<div class="sharingInformation">
								<% processOpenTag(response, pageContext, "pageletsharinginfo", new TagParameter[] {
new TagParameter("Pagelet",getObject("Placeholder:Template"))}, 57); %>
							</div>
						<% } %>
						
						<% processOpenTag(response, pageContext, "templatinginfo", new TagParameter[] {
new TagParameter("Pagelet",getObject("Placeholder:Template"))}, 61); %>
					</div>
					
					<div style="margin-top: -1px;">
						<% processOpenTag(response, pageContext, "sfe_placeholderpageletassignments", new TagParameter[] {
new TagParameter("Locale",getObject("Locale")),
new TagParameter("Placeholder",getObject("Placeholder")),
new TagParameter("ContextType",getObject("PlaceholderPlaceholder:UUID")),
new TagParameter("parametername0","parentPageletUUID"),
new TagParameter("parametervalue3",getObject("Placeholder:UUID")),
new TagParameter("parametername1","ContentRepositoryUUID"),
new TagParameter("parametervalue2",getObject("Locale:LocaleID")),
new TagParameter("parametervalue1",getObject("ContentRepository:UUID")),
new TagParameter("parametername2","LocaleId"),
new TagParameter("parametervalue0",getObject("Pagelet:UUID")),
new TagParameter("parametername3","id"),
new TagParameter("ContextPipeline","ViewPlaceholderEditing-Start"),
new TagParameter("StartFlag",getObject("StartFlag")),
new TagParameter("Repository",getObject("ContentRepository")),
new TagParameter("sfe_HideButtons","true")}, 65); %>
					</div>
					<% {Object temp_obj = (getObject("Placeholder")); getPipelineDictionary().put("Placeholder", temp_obj);} %>
					<% if (getLoopStack().isEmpty()) {Logger.error(this,"ISBREAK occured outside ISLOOP. Line: {}",84);}else{getLoopStack().pop();break;} %>
				<% } %>
			<% } %>
		<% } %>
	</div>
	
	<div id="editControls">
		<% processOpenTag(response, pageContext, "hasassignmenteditpermission", new TagParameter[] {
new TagParameter("PermissionMap",getObject("PermissionMap")),
new TagParameter("ContextObject",getObject("Placeholder")),
new TagParameter("Result","HasEditPermission")}, 91); %>
		<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("HasEditPermission"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",92,e);}if (_boolean_result) { %>
			<% {try{executePipeline("ProcessSlotPlaceholderOverride-IsOverridden",((java.util.Map)(((new ParameterMap().addParameter(new ParameterEntry("Placeholder",getObject("Placeholder")))).addParameter(new ParameterEntry("Domain",getObject("ContentRepository:RepositoryDomain")))))),"IsOverridden");}catch(Exception e){Logger.error(this,"ISPIPELINE failed. Line: 93.",e);}} %>
			<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("IsOverridden:OverridingPlaceholder"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",94,e);}if (_boolean_result) { %>
				<% {Object temp_obj = (getObject("IsOverridden:OverridingPlaceholder")); getPipelineDictionary().put("ContentEntryPoint", temp_obj);} %>
			<% } else { %>
				<% {Object temp_obj = (getObject("Placeholder")); getPipelineDictionary().put("ContentEntryPoint", temp_obj);} %>
			<% } %>
			<% _boolean_result=false;try {_boolean_result=((Boolean)(((!((Boolean) (getObject("IsOverridden:Overridden"))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("Placeholder:Domain:UUID"),null).equals(context.getFormattedValue(getObject("ContentRepository:RepositoryDomain:UUID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",99,e);}if (_boolean_result) { %>
				<li><a href="<%=context.getFormattedValue("#",null)%>" data-sfe-actionButton="sfe-override-<% {String value = null;try{value=context.getFormattedValue(replace(context.getFormattedValue(getObject("ContentEntryPoint:UUID"),null),(String)("\\."),(String)("-")),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {100}",e);}if (value==null) value="";out.write(value);} %>"><% {out.write(localizeISText("PageletAssignmentsInc.Overwrite.button",null,null,null,null,null,null,null,null,null,null,null,null));} %></a></li>
			<% } else { %>
				<% processOpenTag(response, pageContext, "pageleteditable", new TagParameter[] {
new TagParameter("User",getObject("CurrentUser")),
new TagParameter("ContentRepository",getObject("ContentRepository")),
new TagParameter("PageletLockedForOther","PageletLockedForOther"),
new TagParameter("Result","TemplateEditable"),
new TagParameter("Pagelet",getObject("Placeholder:Template"))}, 102); %>
				<% {Object temp_obj = ((disableErrorMessages().isDefined(getObject("PageletLockedForOther")))); getPipelineDictionary().put("ContentEntryPointReadOnly", temp_obj);} %>
				<% processOpenTag(response, pageContext, "pageletmodelutils", new TagParameter[] {
new TagParameter("PageletModelUtils","PageletModelUtils")}, 104); %>
				<% {Object temp_obj = (getObject("ApplicationBO:Extension(\"(Class)com.intershop.sellside.pmc.capi.modelrepository.ApplicationBOPageletModelRepository\")")); getPipelineDictionary().put("PageletModelRepository", temp_obj);} %>
				<% {Object temp_obj = ((((Boolean) (((((Boolean) ((disableErrorMessages().isDefined(getObject("Placeholder:ContentEntryPointDefinition"))))).booleanValue() && ((Boolean) ((hasLoopElements("PageletModelUtils:PageletDefinitions(Placeholder,PageletModelRepository)") ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) ); getPipelineDictionary().put("NoPageVariantTypesVisible", temp_obj);} %>
				<% {Object temp_obj = (getObject("ContentEntryPoint:PageletAssignments(ContentRepository:RepositoryDomain,PageletModelRepository)")); getPipelineDictionary().put("Assignments", temp_obj);} %>
				<ul>
					<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("IsOverridden:Overridden"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",109,e);}if (_boolean_result) { %>
						<li><a href="<%=context.getFormattedValue("#",null)%>" data-sfe-actionButton="sfe-revertPlaceholderAssignments-<% {String value = null;try{value=context.getFormattedValue(replace(context.getFormattedValue(getObject("ContentEntryPoint:UUID"),null),(String)("\\."),(String)("-")),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {110}",e);}if (value==null) value="";out.write(value);} %>"><% {out.write(localizeISText("PageletAssignmentsInc.Revert.button",null,null,null,null,null,null,null,null,null,null,null,null));} %></a></li>
					<% } %>
					<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (((((Boolean) getObject("NoPageVariantTypesVisible")).booleanValue() || ((Boolean) getObject("ContentEntryPointReadOnly")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",112,e);}if (_boolean_result) { %>
						<li><a href="<%=context.getFormattedValue("#",null)%>" data-sfe-actionButton="sfe-new-<% {String value = null;try{value=context.getFormattedValue(replace(context.getFormattedValue(getObject("ContentEntryPoint:UUID"),null),(String)("\\."),(String)("-")),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {113}",e);}if (value==null) value="";out.write(value);} %>"><% {out.write(localizeISText("PageletAssignmentsInc.New.button",null,null,null,null,null,null,null,null,null,null,null,null));} %></a></li>
						<li><a href="<%=context.getFormattedValue("#",null)%>" data-sfe-actionButton="sfe-assign-<% {String value = null;try{value=context.getFormattedValue(replace(context.getFormattedValue(getObject("ContentEntryPoint:UUID"),null),(String)("\\."),(String)("-")),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {114}",e);}if (value==null) value="";out.write(value);} %>"><% {out.write(localizeISText("PageletAssignmentsInc.Assign.button",null,null,null,null,null,null,null,null,null,null,null,null));} %></a></li>
					<% } %>
					<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (hasLoopElements("Assignments") ? Boolean.TRUE : Boolean.FALSE)).booleanValue() && !((Boolean) (getObject("ContentEntryPointReadOnly"))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",116,e);}if (_boolean_result) { %>
						<li><a href="<%=context.getFormattedValue("#",null)%>" data-sfe-actionButton="sfe-unassign-<% {String value = null;try{value=context.getFormattedValue(replace(context.getFormattedValue(getObject("ContentEntryPoint:UUID"),null),(String)("\\."),(String)("-")),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {117}",e);}if (value==null) value="";out.write(value);} %>"><% {out.write(localizeISText("PageletAssignmentsInc.Unassign.button",null,null,null,null,null,null,null,null,null,null,null,null));} %></a></li>
						<li><a href="<%=context.getFormattedValue("#",null)%>" data-sfe-actionButton="sfe-delete-<% {String value = null;try{value=context.getFormattedValue(replace(context.getFormattedValue(getObject("ContentEntryPoint:UUID"),null),(String)("\\."),(String)("-")),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {118}",e);}if (value==null) value="";out.write(value);} %>"><% {out.write(localizeISText("PageletAssignmentsInc.Delete.button",null,null,null,null,null,null,null,null,null,null,null,null));} %></a></li>
					<% } %>
				</ul>
			<% } %>
		<% } %>
	</div>
</div><% printFooter(out); %>