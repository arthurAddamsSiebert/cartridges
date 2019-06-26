<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %>

<!-- Working Area -->



<% _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("AssignmentObjects"),null).equals(context.getFormattedValue("All",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",8,e);}if (_boolean_result) { %>

	<% _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("AssignmentType"),null).equals(context.getFormattedValue("Product",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",10,e);}if (_boolean_result) { %>
	
		<% {Object temp_obj = (localizeText(context.getFormattedValue("PageAssignmentsProcessingSelectAction.EditAllProductAssignments.value",null))); getPipelineDictionary().put("EditMessage", temp_obj);} %>
	
	<% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("AssignmentType"),null).equals(context.getFormattedValue("Category",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",14,e);}if (_boolean_result) { %>
	
		<% {Object temp_obj = (localizeText(context.getFormattedValue("PageAssignmentsProcessingSelectAction.EditAllCategoryAssignments.value",null))); getPipelineDictionary().put("EditMessage", temp_obj);} %>
	
	<% }} %>

<% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("AssignmentObjects"),null).equals(context.getFormattedValue("Selected",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",20,e);}if (_boolean_result) { %>

	<% _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("AssignmentType"),null).equals(context.getFormattedValue("Product",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",22,e);}if (_boolean_result) { %>
	
		<% {Object temp_obj = (localizeText(context.getFormattedValue("PageAssignmentsProcessingSelectAction.EditSelectedProductAssignments.value",null))); getPipelineDictionary().put("EditMessage", temp_obj);} %>
	
	<% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("AssignmentType"),null).equals(context.getFormattedValue("Category",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",26,e);}if (_boolean_result) { %>
	
		<% {Object temp_obj = (localizeText(context.getFormattedValue("PageAssignmentsProcessingSelectAction.EditSelectedCategoryAssignments.value",null))); getPipelineDictionary().put("EditMessage", temp_obj);} %>
	
	<% }} %>

<% }} %>

<% {Object temp_obj = (localizeText(context.getFormattedValue("PageAssignmentsProcessingSelectAction.Step1SelectAction.value",null))); getPipelineDictionary().put("StepMessage", temp_obj);} %>



<!-- Page Navigator -->
<% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("text1",getObject("StepMessage")),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewPageAssignmentsProcessingWizard-Dispatch",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("backToSelectAction",null),context.getFormattedValue("true",null))))),
new TagParameter("wizard","true"),
new TagParameter("id","PageAssignmentsProcessingSelectAction"),
new TagParameter("text",context.getFormattedValue(getObject("EditMessage"),null) + context.getFormattedValue(" - ",null))}, 39); %>
<!-- EO Page Navigator -->

<% URLPipelineAction action429 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPageAssignmentsProcessingWizard-Dispatch",null)))),null));String site429 = null;String serverGroup429 = null;String actionValue429 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPageAssignmentsProcessingWizard-Dispatch",null)))),null);if (site429 == null){  site429 = action429.getDomain();  if (site429 == null)  {      site429 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup429 == null){  serverGroup429 = action429.getServerGroup();  if (serverGroup429 == null)  {      serverGroup429 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPageAssignmentsProcessingWizard-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("ActionListForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue429, site429, serverGroup429,true)); %>
	<table border="0" cellspacing="0" cellpadding="0" width="100%">
		<tr>
			<td>
				<table width="100%" border="0" cellspacing="0" cellpadding="0">
					<tr>
						<td class="table_title aldi" colspan="2">
							<% {String value = null;try{value=context.getFormattedValue(getObject("EditMessage"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {49}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> - <% {String value = null;try{value=context.getFormattedValue(getObject("StepMessage"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {49}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>
						</td>
					</tr>
					
					<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ERROR_ACTION_NOT_SELECTED"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",53,e);}if (_boolean_result) { %>
						<tr>
							<td colspan="2">
								<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
									<tr valign="top">
										<td class="error_icon top e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
										<td class="error top" width="100%">
											<% {out.write(localizeISText("PageAssignmentsProcessingSelectAction.YouHaveNotSelectedAnActionSelectAnActionAndThenCli.error",null,null,null,null,null,null,null,null,null,null,null,null));} %>
										</td>
									</tr>
								</table>
							</td>
						</tr>
					<% } %>
					
					<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ConfirmUnassignPage"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",68,e);}if (_boolean_result) { %>
						<tr>
							<td colspan="2">
								<table border="0" cellpadding="0" cellspacing="0" width="100%" class="confirm_box">
									<% _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("AssignmentType"),null).equals(context.getFormattedValue("Product",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",72,e);}if (_boolean_result) { %>
									
										<% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan","1"),
new TagParameter("subject",localizeText(context.getFormattedValue("PageAssignmentsProcessingSelectAction.Product.subject",null))),
new TagParameter("cancelbtnname","cancelUnassignPages"),
new TagParameter("okbtnname","unassignPages"),
new TagParameter("type","sdc"),
new TagParameter("message",localizeText(context.getFormattedValue("PageAssignmentsProcessingSelectAction.AreYouSureThatYouWantToUnassignThePagesFromTheSele.message",null)))}, 74); %>
									
									<% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("AssignmentType"),null).equals(context.getFormattedValue("Category",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",76,e);}if (_boolean_result) { %>
									
										<% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan","1"),
new TagParameter("subject",localizeText(context.getFormattedValue("PageAssignmentsProcessingSelectAction.Product.subject",null))),
new TagParameter("cancelbtnname","cancelUnassignPages"),
new TagParameter("okbtnname","unassignPages"),
new TagParameter("type","sdc"),
new TagParameter("message",localizeText(context.getFormattedValue("PageAssignmentsProcessingSelectAction.AreYouSureThatYouWantToUnassignThePagesFromTheSele.message1",null)))}, 78); %>
									
									<% }} %>
								</table>
								
									
								<input type="hidden" name="ProcessDescription" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PageAssignmentsProcessingSelectAction.UnassigningPagesFormProductsOrCategories.input",null)),null)%>"/>
								<input type="hidden" name="PageableID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("PageableID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {85}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
								<input type="hidden" name="PageableName" value="<% {String value = null;try{value=context.getFormattedValue(getObject("PageableName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {86}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
								<input type="hidden" name="AssignmentObjects" value="<% {String value = null;try{value=context.getFormattedValue(getObject("AssignmentObjects"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {87}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
								<input type="hidden" name="AssignmentType" value="<% {String value = null;try{value=context.getFormattedValue(getObject("AssignmentType"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {88}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
								
								
							</td>
						</tr>
					<% } %>
					<tr>
						<td class="w e s table_title_description"  colspan = "2" nowrap="nowrap">
							<% {out.write(localizeISText("PageAssignmentsProcessingSelectAction.Step1SelectAnActionNextStepsDependOnTheActionTypeS.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %>
						</td>
					</tr>
					
					<tr>
						<td class="table_detail w e s center" width="1%">
							<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ActionID"),null).equals(context.getFormattedValue("UnassignPage",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",102,e);}if (_boolean_result) { %>
								<input type="radio" name="ActionID" value="UnassignPage" checked="checked"/>&nbsp;
							<% } else { %>
								<input type="radio" name="ActionID" value="UnassignPage"/>&nbsp;
							<% } %>
						</td>
						<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("AssignmentType"),null).equals(context.getFormattedValue("Product",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",108,e);}if (_boolean_result) { %>
							<td class="table_detail main e s" nowrap="nowrap"><% {out.write(localizeISText("PageAssignmentsProcessingSelectAction.UnassignThePageFromTheSelectedProducts.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>								
						<% } else { %>
							<td class="table_detail main e s" nowrap="nowrap"><% {out.write(localizeISText("PageAssignmentsProcessingSelectAction.UnassignThePageFromTheSelectedCategories.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>		
						<% } %>
					</tr>
					
					
					
					<tr>
						<td class="table_detail w e s center" width="1%">
							<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ActionID"),null).equals(context.getFormattedValue("SetVisibilityPeriod",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",119,e);}if (_boolean_result) { %>
								<input type="radio" name="ActionID" value="SetVisibilityPeriod" checked="checked"/>&nbsp;
							<% } else { %>
								<input type="radio" name="ActionID" value="SetVisibilityPeriod"/>&nbsp;
							<% } %>
						</td>
						<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("AssignmentType"),null).equals(context.getFormattedValue("Product",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",125,e);}if (_boolean_result) { %>
							<td class="table_detail main e s" nowrap="nowrap"><% {out.write(localizeISText("PageAssignmentsProcessingSelectAction.SetVisibilityPeriodForSelectedProducts.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>								
						<% } else { %>
							<td class="table_detail main e s" nowrap="nowrap"><% {out.write(localizeISText("PageAssignmentsProcessingSelectAction.SetVisibilityPeriodForSelectedCategories.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>		
						<% } %>
					</tr>
					
				</table>
				
				<table class="w e s" width="100%" border="0" cellspacing="0" cellpadding="0">
					<tr>
						<td align="right">
							<table border="0" cellspacing="4" cellpadding="0">
								<tr>
									<td class="button">
										<input type="submit" name="selectNextStep" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PageAssignmentsProcessingSelectAction.Next.button",null)),null)%>&nbsp;&gt;&gt;" class="button"/>
									</td>
									<td class="button"><input type="submit" name="cancel" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PageAssignmentsProcessingSelectAction.Cancel.button",null)),null)%>" class="button"/></td>
								</tr>
							</table>
						</td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
<% out.print("</form>"); %>
<!-- EO Main Content -->
<!-- EO Working Area --><% printFooter(out); %>