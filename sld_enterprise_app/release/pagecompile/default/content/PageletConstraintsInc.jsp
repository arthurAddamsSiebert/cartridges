<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %>
<script type="text/javascript" src="<%=context.getFormattedValue(context.webRoot(),null)%>/js/SelectionTree.js"></script>
<% processOpenTag(response, pageContext, "contentpermissionmap", new TagParameter[] {
new TagParameter("ContentRepository",getObject("ContentRepository")),
new TagParameter("PermissionMap","PermissionMap")}, 3); %>
<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PlaceholderDefinition"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",4,e);}if (_boolean_result) { %>
	<% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("PlaceholderDefinition:Template:UUID"),null).equals(context.getFormattedValue(getObject("Pagelet:UUID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",5,e);}if (_boolean_result) { %>
		<% {Object temp_obj = ("true"); getPipelineDictionary().put("RestrictedMode", temp_obj);} %>
	<% } %>
	
	<% processOpenTag(response, pageContext, "pageleteditable", new TagParameter[] {
new TagParameter("User",getObject("CurrentUser")),
new TagParameter("ContentRepository",getObject("ContentRepository")),
new TagParameter("PageletLockedForOther","LockedForOther"),
new TagParameter("Result","IsEditable"),
new TagParameter("Pagelet",getObject("PlaceholderDefinition:Template"))}, 9); %>
	<% {Object temp_obj = (((((Boolean) (((!(context.getFormattedValue(getObject("PlaceholderDefinition:Domain"),null).equals(context.getFormattedValue(getObject("ContentRepository:RepositoryDomain"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || !((Boolean) (getObject("IsEditable"))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE)); getPipelineDictionary().put("ReadOnly", temp_obj);} %>
	
	<% {Object temp_obj = (url(true,(new URLPipelineAction(context.getFormattedValue("ViewPageletPlaceholderDefinition-Dispatch",null))))); getPipelineDictionary().put("ContextPipeline", temp_obj);} %>
	<% {Object temp_obj = (getObject("PlaceholderDefinition")); getPipelineDictionary().put("ContextObject", temp_obj);} %>
<% } else { %>	
	<% processOpenTag(response, pageContext, "contententrypointlockedforothers", new TagParameter[] {
new TagParameter("User",getObject("CurrentUser")),
new TagParameter("ContentRepository",getObject("ContentRepository")),
new TagParameter("ContentEntryPoint",getObject("PageletEntryPoint")),
new TagParameter("Result","LockedForOther")}, 15); %>
	<% processOpenTag(response, pageContext, "contententrypointflagseditable", new TagParameter[] {
new TagParameter("ContentRepository",getObject("ContentRepository")),
new TagParameter("ContentEntryPoint",getObject("PageletEntryPoint")),
new TagParameter("Result","IsEditable")}, 16); %>
	<% {Object temp_obj = (((((Boolean) getObject("LockedForOther")).booleanValue() || !((Boolean) (getObject("IsEditable"))).booleanValue() || ((Boolean) (((!(context.getFormattedValue(getObject("PageletEntryPoint:Domain"),null).equals(context.getFormattedValue(getObject("ContentRepository:RepositoryDomain"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE)); getPipelineDictionary().put("ReadOnly", temp_obj);} %>
	
	<% {Object temp_obj = (url(true,(new URLPipelineAction(context.getFormattedValue("ViewPageletEntryPoint-Dispatch",null))))); getPipelineDictionary().put("ContextPipeline", temp_obj);} %>
	<% {Object temp_obj = (getObject("PageletEntryPoint")); getPipelineDictionary().put("ContextObject", temp_obj);} %>
<% } %>

<% URLPipelineAction action370 = new URLPipelineAction(context.getFormattedValue(getObject("ContextPipeline"),null));String site370 = null;String serverGroup370 = null;String actionValue370 = context.getFormattedValue(getObject("ContextPipeline"),null);if (site370 == null){  site370 = action370.getDomain();  if (site370 == null)  {      site370 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup370 == null){  serverGroup370 = action370.getServerGroup();  if (serverGroup370 == null)  {      serverGroup370 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(getObject("ContextPipeline"),null));out.print("\"");out.print(" name=\"");out.print("PlaceholderDefinitionForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue370, site370, serverGroup370,true)); %>

<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("RestrictedMode")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",25,e);}if (_boolean_result) { %>
	<table border="0" cellpadding="0" cellspacing="0" width="100%">
		<tr>
			<td width="100%" class="table_title2 w e s"><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("PlaceholderDefinition")))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("PageletEntryPoint:Page"),null).equals(context.getFormattedValue("false",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",28,e);}if (_boolean_result) { %><% {out.write(localizeISText("PageletConstraintsInc.AllowedComponentTemplates.table_title2",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else { %><% {out.write(localizeISText("PageletConstraintsInc.AllowedPageTemplates.table_title2",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %></td>
		</tr>
		<tr>
			<td width="100%" class="table_title_description w e s"><% {out.write(localizeISText("PageletConstraintsInc.CheckTheAppropriateTreeElementsAllowedForAssignmen.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %>
					<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PlaceholderDefinition"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",32,e);}if (_boolean_result) { %> <% {out.write(localizeISText("PageletConstraintsInc.Placeholder.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else { %>
					<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PageletEntryPoint:Page"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",33,e);}if (_boolean_result) { %> <% {out.write(localizeISText("PageletConstraintsInc.Page.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %>
																 <% } else { %> <% {out.write(localizeISText("PageletConstraintsInc.Include.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %>					
					<% } %></td>
							
		</tr>
	</table>		 
	<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PageletConstraintCtnr"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",39,e);}if (_boolean_result) { %>
		<input type="hidden" name="PageletConstraintCtnrUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("PageletConstraintCtnr:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {40}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
		<% processOpenTag(response, pageContext, "pagelettemplatetree", new TagParameter[] {
new TagParameter("Site",getObject("CurrentDomain")),
new TagParameter("Locale",getObject("Locale")),
new TagParameter("ReadOnly",((((Boolean) getObject("ReadOnly")).booleanValue() || !((Boolean) (disableErrorMessages().isDefined(getObject("PermissionMap:SLD_MANAGE_CONTENT")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE)),
new TagParameter("SelectionType","constraint"),
new TagParameter("SelectionName","AllowedTemplateID"),
new TagParameter("ConstraintCtnr",getObject("PageletConstraintCtnr")),
new TagParameter("ContentRepository",getObject("ContentRepository")),
new TagParameter("SelectionListing","true"),
new TagParameter("ContextObject",getObject("ContextObject"))}, 41); %>
	<% } else { %>		
		<% processOpenTag(response, pageContext, "pagelettemplatetree", new TagParameter[] {
new TagParameter("Site",getObject("CurrentDomain")),
new TagParameter("Locale",getObject("Locale")),
new TagParameter("ReadOnly",((((Boolean) getObject("ReadOnly")).booleanValue() || !((Boolean) (disableErrorMessages().isDefined(getObject("PermissionMap:SLD_MANAGE_CONTENT")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE)),
new TagParameter("SelectionType","constraint"),
new TagParameter("SelectionName","AllowedTemplateID"),
new TagParameter("ContentRepository",getObject("ContentRepository")),
new TagParameter("SelectionListing","true"),
new TagParameter("ContextObject",getObject("ContextObject"))}, 53); %>			
			
	<% } %>
<% } %>
<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PermissionMap:SLD_MANAGE_TEMPLATES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",69,e);}if (_boolean_result) { %>
<table cellpadding="0" cellspacing="0" border="0" width="100%">
	<tr>
		<td align="right" class="w e s">
			<table border="0" cellspacing="4" cellpadding="0">
				<tr>
					<td class="button">
						<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PlaceholderDefinition"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",76,e);}if (_boolean_result) { %>
							<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Placeholder"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",77,e);}if (_boolean_result) { %>
								<input type="hidden" name="PageletPlaceholderUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Placeholder:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {78}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>													
							<% } %>
							<input type="hidden" name="PlaceholderDefinitionUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("PlaceholderDefinition:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {80}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
							<input type="hidden" name="PageletUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Pagelet:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {81}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
						<% } else { %>
							<input type="hidden" name="PageletEntryPointUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("PageletEntryPoint:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {83}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
						<% } %>
						<input type="hidden" name="ContentRepositoryUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ContentRepository:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {85}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
						<input type="submit" name="updateConstraints" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PageletConstraintsInc.Apply.button",null)),null)%>" class="button" <% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ReadOnly"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",86,e);}if (_boolean_result) { %>disabled="disabled"<% } %>/>
					</td>
					<td class="button">
						<input type="reset" name="reset" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PageletConstraintsInc.Reset.button",null)),null)%>" class="button" <% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ReadOnly"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",89,e);}if (_boolean_result) { %>disabled="disabled"<% } %>/>
					</td>
				</tr>
			</table>
		</td>
	</tr>
</table>
<% } %>
<% out.print("</form>"); %>
<% printFooter(out); %>