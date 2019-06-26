<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %>
<% processOpenTag(response, pageContext, "pageletmodelutils", new TagParameter[] {
new TagParameter("PageletModelUtils","PageletModelUtils")}, 2); %>
<% processOpenTag(response, pageContext, "pageletplaceholderdefinitionutil", new TagParameter[] {
new TagParameter("PageletPlaceholderDefinitionUtil","DefinitionUtil")}, 3); %>
<% processOpenTag(response, pageContext, "pageleteditable", new TagParameter[] {
new TagParameter("User",getObject("CurrentUser")),
new TagParameter("ContentRepository",getObject("Repository")),
new TagParameter("PageletLockedForOther","PageletLockedForOther"),
new TagParameter("Result","TemplateEditable"),
new TagParameter("Pagelet",getObject("PlaceholderDefinition:Template"))}, 4); %>
<% {Object temp_obj = (((((Boolean) (((!(context.getFormattedValue(getObject("PlaceholderDefinition:Domain"),null).equals(context.getFormattedValue(getObject("Repository:RepositoryDomain"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || !((Boolean) (getObject("TemplateEditable"))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE)); getPipelineDictionary().put("ReadOnly", temp_obj);} %>
<% processOpenTag(response, pageContext, "createmap", new TagParameter[] {
new TagParameter("key1","Pagelet"),
new TagParameter("key2","ContentRepository"),
new TagParameter("key0","PlaceholderDefinition"),
new TagParameter("value2",getObject("Repository")),
new TagParameter("value1",getObject("Pagelet")),
new TagParameter("value0",getObject("PlaceholderDefinition")),
new TagParameter("mapname","PlaceholderDefinitionParams")}, 6); %>
<% {try{executePipeline("ViewPageletPlaceholderDefinition-TemplateCallback",((java.util.Map)(getObject("PlaceholderDefinitionParams"))),"Result");}catch(Exception e){Logger.error(this,"ISPIPELINE failed. Line: 10.",e);}} %>
<% processOpenTag(response, pageContext, "populatedictionary", new TagParameter[] {
new TagParameter("map",getObject("Result"))}, 11); %>
<% processOpenTag(response, pageContext, "contentpermissionmap", new TagParameter[] {
new TagParameter("ContentRepository",getObject("Repository")),
new TagParameter("PermissionMap","PermissionMap")}, 12); %>
<% {Object temp_obj = ((disableErrorMessages().isDefined(getObject("PermissionMap:SLD_MANAGE_TEMPLATES")))); getPipelineDictionary().put("HasEditPermission", temp_obj);} %>

<% URLPipelineAction action425 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPageletPlaceholderDefinition-Dispatch",null)))),null));String site425 = null;String serverGroup425 = null;String actionValue425 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPageletPlaceholderDefinition-Dispatch",null)))),null);if (site425 == null){  site425 = action425.getDomain();  if (site425 == null)  {      site425 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup425 == null){  serverGroup425 = action425.getServerGroup();  if (serverGroup425 == null)  {      serverGroup425 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPageletPlaceholderDefinition-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("PlaceholderDefinitionForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue425, site425, serverGroup425,true)); %>
	<input type="hidden" name="PlaceholderDefinitionUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("PlaceholderDefinition:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {16}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
	<input type="hidden" name="PageletUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Pagelet:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {17}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
	<input type="hidden" name="ContentRepositoryUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Repository:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {18}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
	<!-- Title and Description -->
	<table border="0" cellpadding="0" cellspacing="0" width="100%">
		<!-- Error Handling -->
		<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("HasEditPermission"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",22,e);}if (_boolean_result) { %>
			<!-- delete confirmation -->
			<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("Result:confirmDeleteSingle")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("TemplateEditable"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",24,e);}if (_boolean_result) { %>
				<% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("subject",localizeText(context.getFormattedValue("PlaceholderDefinitionTabGeneral.Page.subject",null))),
new TagParameter("cancelbtnname","cancelDeleteSingle"),
new TagParameter("okbtnname","deleteSingle"),
new TagParameter("okbtnclass","sfe-action-inline sfe-layout-change"),
new TagParameter("message",localizeText(context.getFormattedValue("PlaceholderDefinitionTabGeneral.DoYouReallyWantToDeleteThePlaceholder.message",null))),
new TagParameter("type","mdc"),
new TagParameter("cancelbtnclass","sfe-action-inline")}, 25); %>
			<% } %>
			<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("PlaceholderDefinitionForm:isInvalid")).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("ErrorCode")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",32,e);}if (_boolean_result) { %>
				<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ErrorCode"),null).equals(context.getFormattedValue("ConfirmUnassignPlaceholder",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",33,e);}if (_boolean_result) { %>
				<% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan","1"),
new TagParameter("subject",localizeText(context.getFormattedValue("PlaceholderDefinitionTabGeneral.Page.subject1",null))),
new TagParameter("cancelbtnname","cancelUnassignPlaceholder"),
new TagParameter("disableparameters","true"),
new TagParameter("okbtnname","unassignPlaceholder"),
new TagParameter("okbtnclass","sfe-action-inline sfe-layout-change"),
new TagParameter("message",localizeText(context.getFormattedValue("PlaceholderDefinitionTabGeneral.DoYouReallyWantToUnassignThePlaceholderVariousPlac.message",null))),
new TagParameter("type","mda"),
new TagParameter("cancelbtnclass","sfe-action-inline")}, 34); %>			
				<% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ErrorCode"),null).equals(context.getFormattedValue("PlaceholderAndConstraintsNotMatching",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",37,e);}if (_boolean_result) { %>
					<tr>
						<td>
							<table border="0" cellpadding="0" cellspacing="0" width="100%">
								<% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("cancelbtnname","cancelUpdate"),
new TagParameter("subject",localizeText(context.getFormattedValue("PlaceholderDefinitionTabGeneral.Placeholder.subject",null))),
new TagParameter("okbtnname","updatePlaceholderAssignment"),
new TagParameter("type","sdc"),
new TagParameter("message",localizeText(context.getFormattedValue("PlaceholderDefinitionTabGeneral.TheSelectedPlaceholderHasStrongerComponentTemplate.message",null)))}, 41); %>
							</table>
						</td>
					</tr>
				<% } else { %>
					<tr>
						<td>
							<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
								<tr>
									<td class="error_icon middle e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
									<td class="error top" width="100%">
										<% {out.write(localizeISText("PlaceholderDefinitionTabGeneral.ThePlaceholderCouldNotBeSaved.error",null,null,null,null,null,null,null,null,null,null,null,null));} %>
										<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("PlaceholderDefinitionForm:Name:isInvalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",58,e);}if (_boolean_result) { %>
											<br/><% {out.write(localizeISText("PlaceholderDefinitionTabGeneral.PleaseProvideAName.error",null,null,null,null,null,null,null,null,null,null,null,null));} %>
										<% } %>
									</td>
								</tr>
							</table>
						</td>
					</tr>
				<% }} %>
			<% } %>		
			<!-- EO Error Handling -->
			<tr>
				<td class="table_title_description w e s">
					<% {out.write(localizeISText("sld_enterprise_app.FieldsWithARedAsterisk.table_title_description",null,null,"star",null,null,null,null,null,null,null,null,null));} %> 
				</td>
			</tr>
		<% } %>
	</table>
	
	<!-- Main Content -->

	<table border="0" cellpadding="4" cellspacing="0" width="100%" class="infobox_locale w e s">
		<tr>
			<td nowrap="nowrap" class="label_select"><label class="label label_select label_light" for="LocaleId"><% {out.write(localizeISText("PlaceholderDefinitionTabGeneral.SelectLanguage.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
			<td class="infobox_item">
				<select name="LocaleId" id="LocaleId" class="select inputfield_en">
					<% while (loop("Locales","Current",null)) { %>
						<option value="<% {String value = null;try{value=context.getFormattedValue(getObject("Current:LocaleID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {85}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Current:LocaleID"),null).equals(context.getFormattedValue(getObject("Locale:LocaleID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",85,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {String value = null;try{value=context.getFormattedValue(getObject("Current:getDisplayName(CurrentSession:Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {85}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</option>
					<% } %>
				</select>
			</td>
			<td width="100%">
				<table border="0" cellspacing="0" cellpadding="0">
					<tr>
						<td class="button">
						<input type="submit" name="setLocale" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PlaceholderDefinitionTabGeneral.Apply.button",null)),null)%>" class="button"/>
						</td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
	<table cellpadding="0" cellspacing="0" border="0" width="100%" class="w e s">
		<tr><td colspan="2"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="4" alt="" border="0"/></td></tr>
		<tr>
			<td nowrap="nowrap" class="label"><label class="label <% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("PlaceholderDefinitionForm:Name:isInvalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",103,e);}if (_boolean_result) { %>label_error<% } %>" for="PlaceholderDefinitionForm_Name"><% {out.write(localizeISText("PlaceholderDefinitionTabGeneral.Name.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></label></td>
			<td class="table_detail">
				<input type="text" maxlength="256" size="50" class="inputfield_en"
					id="PlaceholderDefinitionForm_Name" 
					name="PlaceholderDefinitionForm_Name" 
					value="<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("PlaceholderDefinitionForm:isSubmitted"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",108,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("PlaceholderDefinitionForm:Name:FormattedValue"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {108}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %><% processOpenTag(response, pageContext, "pageletplaceholderdefinitiondisplayname", new TagParameter[] {
new TagParameter("Locale",getObject("Locale")),
new TagParameter("PageletPlaceholderDefinition",getObject("PlaceholderDefinition"))}, 108); %><% } %>" 
					<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("RestrictedMode")))).booleanValue() || ((Boolean) (getObject("ReadOnly"))).booleanValue() || !((Boolean) (getObject("HasEditPermission"))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",109,e);}if (_boolean_result) { %>disabled="disabled"<% } %>
				/>
				<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("RestrictedMode"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",111,e);}if (_boolean_result) { %>
					<input type="hidden" name="PlaceholderDefinitionForm_Name" id="PlaceholderDefinitionForm_Name" value="<% {String value = null;try{value=context.getFormattedValue(getObject("PlaceholderDefinition:DisplayName(Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {112}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
				<% } %>
			</td>
		</tr>
		<tr>
			<td nowrap="nowrap" class="label"><label class="label" for="PlaceholderDefinitionForm_DefinitionID"><% {out.write(localizeISText("PlaceholderDefinitionTabGeneral.ID.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></label></td>
			<td class="table_detail" width="100%">
				<input type="text" name="PlaceholderDefinitionForm_DefinitionID" id="PlaceholderDefinitionForm_DefinitionID" maxlength="256" size="50" value="<% {String value = null;try{value=context.getFormattedValue(getObject("PlaceholderDefinition:Id"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {119}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="inputfield_en" disabled="disabled"/>
				<input type="hidden" name="PlaceholderDefinitionForm_DefinitionID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("PlaceholderDefinition:Id"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {120}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
			</td>
		</tr>
		
		<tr>
			<td nowrap="nowrap" class="label_textarea"><label class="label label_textarea" for="PlaceholderDefinitionForm_Description"><% {out.write(localizeISText("PlaceholderDefinitionTabGeneral.Description.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>	
			<td class="table_detail">
				<textarea rows="5" cols="47" class="inputfield_en"
					id="PlaceholderDefinitionForm_Description"
					name="PlaceholderDefinitionForm_Description"
					<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("RestrictedMode")))).booleanValue() || ((Boolean) (getObject("ReadOnly"))).booleanValue() || !((Boolean) (getObject("HasEditPermission"))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",130,e);}if (_boolean_result) { %>disabled="disabled"<% } %>
				><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("PlaceholderDefinitionForm:isSubmitted"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",131,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("PlaceholderDefinitionForm:Description:FormattedValue"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {131}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %><% {String value = null;try{value=context.getFormattedValue(getObject("PlaceholderDefinition:Description(Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {131}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %></textarea>
				<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("RestrictedMode"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",132,e);}if (_boolean_result) { %>
					<input type="hidden" name="PlaceholderDefinitionForm_Description" value="<% {String value = null;try{value=context.getFormattedValue(getObject("PlaceholderDefinition:Description(Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {133}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
				<% } %>
			</td>
		</tr>

		<tr>
			<td nowrap="nowrap" class="label_select"><label class="label label_select  <% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("PlaceholderDefinitionForm:Type:isInvalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",139,e);}if (_boolean_result) { %>label_error<% } %>" for="PlaceholderDefinitionForm_Type"><% {out.write(localizeISText("PlaceholderDefinitionTabGeneral.Type.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></label></td>	
			<td class="table_detail">
				<select name="PlaceholderDefinitionForm_Type" id="PlaceholderDefinitionForm_Type" class="select inputfield_en" disabled="disabled">
					<option value="<% {String value = null;try{value=context.getFormattedValue(getObject("PlaceholderDefinition:DefinitionQualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {142}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>">
						<% {String value = null;try{value=context.getFormattedValue(getObject("PageletModelUtils:DisplayName(PlaceholderDefinition:SlotDefinition,Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {143}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>
					</option>
				</select>
				<input type="hidden" name="PlaceholderDefinitionForm_Type" value="<% {String value = null;try{value=context.getFormattedValue(getObject("PlaceholderDefinition:DefinitionQualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {146}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
			</td>
		</tr>
		<% _boolean_result=false;try {_boolean_result=((Boolean)(((!((Boolean) ((disableErrorMessages().isDefined(getObject("Placeholder"))))).booleanValue() || ((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("Placeholder")))).booleanValue() && ((Boolean) (getObject("DefinitionUtil:AnAvailableMappingTarget(Placeholder)"))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",149,e);}if (_boolean_result) { %>
			<tr>
				<td nowrap="nowrap" class="label_select"><label class="label label_select  <% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("PlaceholderDefinitionForm:Assignment:isInvalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",151,e);}if (_boolean_result) { %>label_error<% } %>" for="PlaceholderDefinitionForm_Assignment"><% {out.write(localizeISText("PlaceholderDefinitionTabGeneral.PlaceholderAssignment.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
				<td class="table_detail">
					<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("RestrictedMode")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("Placeholder")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",153,e);}if (_boolean_result) { %>
						<table cellpadding="0" cellspacing="0" border="0">
							<tr>
								<td>
									<% processOpenTag(response, pageContext, "pageletconstraints", new TagParameter[] {
new TagParameter("PageletConstraints","PageletConstraints")}, 157); %>
									<select name="PlaceholderDefinitionForm_Assignment" id="PlaceholderDefinitionForm_Assignment" class="select inputfield_en" <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("ReadOnly")).booleanValue() || !((Boolean) (getObject("HasEditPermission"))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",158,e);}if (_boolean_result) { %>disabled="disabled"<% } %>>
										<option value=""><% {out.write(localizeISText("PlaceholderDefinitionTabGeneral.None.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
										<% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Pagelet:PlaceholderDefinitionPOs") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",160,e);}if (_boolean_result) { %>
											<% while (loop("Pagelet:PlaceholderDefinitionPOs","SourcePlaceholderDefinition",null)) { %>
												<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("PageletConstraints:isAssignable(Placeholder,SourcePlaceholderDefinition)"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",162,e);}if (_boolean_result) { %>
													<option value="<% {String value = null;try{value=context.getFormattedValue(getObject("SourcePlaceholderDefinition:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {163}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
														<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (((((Boolean) (((!(context.getFormattedValue(getObject("PlaceholderDefinitionForm:Assignment:FormattedValue"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SourcePlaceholderDefinition:UUID"),null).equals(context.getFormattedValue(getObject("PlaceholderDefinitionForm:Assignment:FormattedValue"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("Placeholder:UUID"),null).equals(context.getFormattedValue(getObject("SourcePlaceholderDefinition:TargetPlaceholderID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",164,e);}if (_boolean_result) { %>
															selected="selected"
														<% } %> >
														<% processOpenTag(response, pageContext, "pageletplaceholderdefinitiondisplayname", new TagParameter[] {
new TagParameter("Locale",getObject("Locale")),
new TagParameter("PageletPlaceholderDefinition",getObject("SourcePlaceholderDefinition"))}, 167); %>
													</option>
												<% } %>
											<% } %>
										<% } %>
									</select>
								</td>
								<td>&nbsp;</td>
								<td class="button"><input type="submit" name="copy" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PlaceholderDefinitionTabGeneral.NewPlaceholder.button",null)),null)%>" class="button" <% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ReadOnly"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",175,e);}if (_boolean_result) { %>disabled="disabled"<% } %>/></td>
							</tr>
						</table>
					<% } else { %>
						<% processOpenTag(response, pageContext, "placeholderdefinitionassignmentsselect", new TagParameter[] {
new TagParameter("ReadOnly",((((Boolean) getObject("ReadOnly")).booleanValue() || !((Boolean) (getObject("HasEditPermission"))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE)),
new TagParameter("Locale",getObject("Locale")),
new TagParameter("FormParameterName","PlaceholderDefinitionForm_Assignment"),
new TagParameter("FormParameterValue",getObject("PlaceholderDefinitionForm:Assignment:FormattedValue")),
new TagParameter("PlaceholderDefinition",getObject("PlaceholderDefinition")),
new TagParameter("PageletModelRepository",getObject("PageletModelRepository")),
new TagParameter("ContentRepository",getObject("Repository")),
new TagParameter("Pagelet",getObject("Pagelet")),
new TagParameter("SelectNone",((((Boolean) (disableErrorMessages().isDefined(getObject("PlaceholderDefinitionForm:Assignment:FormattedValue")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("PlaceholderDefinitionForm:Assignment:FormattedValue"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))}, 179); %>
					<% } %>
				</td>
			</tr>
		<% } %>
		<tr><td colspan="2"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="8" alt="" border="0"/></td></tr>
	</table>
	<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("HasEditPermission"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",186,e);}if (_boolean_result) { %>
		<table cellpadding="0" cellspacing="0" border="0" width="100%">
			<tr>
				<td align="right" class="w e s">
					<table border="0" cellspacing="4" cellpadding="0">
						<tr>
							<td class="button">
								<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Placeholder"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",193,e);}if (_boolean_result) { %>
									<input type="hidden" name="PageletPlaceholderUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Placeholder:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {194}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
								<% } %>
								<input type="submit" name="update" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PlaceholderDefinitionTabGeneral.Apply.button",null)),null)%>" class="button" <% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ReadOnly"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",196,e);}if (_boolean_result) { %>disabled="disabled"<% } %>/>
								<input type="reset" name="reset" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PlaceholderDefinitionTabGeneral.Reset.button",null)),null)%>" class="button" <% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ReadOnly"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",197,e);}if (_boolean_result) { %>disabled="disabled"<% } %>/>
								<input type="submit" name="confirmDeleteSingle" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PlaceholderDefinitionTabGeneral.Delete.button",null)),null)%>" class="button" <% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ReadOnly"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",198,e);}if (_boolean_result) { %>disabled="disabled"<% } %>/>
							</td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
	<% } %>
<% out.print("</form>"); %><% printFooter(out); %>