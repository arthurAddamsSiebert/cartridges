<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewDepartment-New",null))))),
new TagParameter("text",localizeText(context.getFormattedValue("DepartmentCreate.NewDepartment.text",null))),
new TagParameter("id","newDepartment")}, 3); %><!-- Working Area --><% URLPipelineAction action238 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewDepartment-DispatchDep",null)))),null));String site238 = null;String serverGroup238 = null;String actionValue238 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewDepartment-DispatchDep",null)))),null);if (site238 == null){  site238 = action238.getDomain();  if (site238 == null)  {      site238 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup238 == null){  serverGroup238 = action238.getServerGroup();  if (serverGroup238 == null)  {      serverGroup238 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewDepartment-DispatchDep",null)))),null));out.print("\"");out.print(" name=\"");out.print("DepartmentForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue238, site238, serverGroup238,true)); %><table cellpadding="0" cellspacing="0" border="0" width="100%">
<tr>
<td><% {Object temp_obj = ("New"); getPipelineDictionary().put("SelectedTab", temp_obj);} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"department/DepartmentTabs", null, "11");} %><table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" class="table_title w e s"><% {out.write(localizeISText("DepartmentCreate.NewDepartment.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<!-- Check Display Name --><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (((((Boolean) getObject("DepartmentCreateForm:DepartmentID:isMissing")).booleanValue() && ((Boolean) ((((Boolean) (disableErrorMessages().isDefined(getObject("IsNewParent")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) (getObject("DepartmentCreateForm:DepartmentID:isInvalid"))).booleanValue() || ((Boolean) (((((Boolean) getObject("DepartmentCreateForm:DisplayName:isMissing")).booleanValue() && ((Boolean) ((((Boolean) (disableErrorMessages().isDefined(getObject("IsNewParent")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) getObject("DepartmentCreateForm:DisplayName:isInvalid")).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("ErrorCode")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",18,e);}if (_boolean_result) { %><tr>
<td>
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr>
<td class="error_icon e top"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error" width="100%"><% {out.write(localizeISText("DepartmentCreate.DepartmentCouldNotBeCreated.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("DepartmentCreateForm:DisplayName:isMissing")).booleanValue() || ((Boolean) getObject("DepartmentCreateForm:DisplayName:isInvalid")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",29,e);}if (_boolean_result) { %><br/><% {out.write(localizeISText("DepartmentCreate.PleaseProvideAValidNameForTheDepartment.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("DepartmentCreateForm:DepartmentID:isMissing")).booleanValue() || ((Boolean) getObject("DepartmentCreateForm:DepartmentID:isInvalid")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",32,e);}if (_boolean_result) { %><br/><% {out.write(localizeISText("DepartmentCreate.PleaseProvideAValidIdForTheDepartment.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ErrorCode")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ErrorCode"),null).equals(context.getFormattedValue("DuplicateDepartmentID",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",35,e);}if (_boolean_result) { %><br/><% {out.write(localizeISText("DepartmentCreate.ThisDepartmentIdIsAlreadyInUsePleaseProv.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ErrorCode")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ErrorCode"),null).equals(context.getFormattedValue("ErrorCreatingDepartment",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",38,e);}if (_boolean_result) { %><br/><% {out.write(localizeISText("DepartmentCreate.TheDepartmentCouldNotBeCreated.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ErrorCode")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ErrorCode"),null).equals(context.getFormattedValue("ParentDepartmentNotFound",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",41,e);}if (_boolean_result) { %><br/><% {out.write(localizeISText("DepartmentCreate.PleaseProvideAValidIdForTheParentDepartm.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ErrorCode")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ErrorCode"),null).equals(context.getFormattedValue("InvalidParentDepartment",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",44,e);}if (_boolean_result) { %><br/><% {out.write(localizeISText("DepartmentCreate.PleaseProvideAValidIdForTheParentDepartm.error1",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %></td>
</tr>
</table>
</td>
</tr><% } %><tr>
<td class="table_title_description w e" nowrap="nowrap"><% {out.write(localizeISText("DepartmentCreate.FieldsWithARedAsterisk.table_title_description",null,null,"star",null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<table cellpadding="0" cellspacing="0" border="0" width="100%">
<tr>
<td class="aldi">
<table cellspacing="0" cellpadding="0" border="0">
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (((((Boolean) getObject("DepartmentCreateForm:DisplayName:isMissing")).booleanValue() && ((Boolean) ((((Boolean) (disableErrorMessages().isDefined(getObject("IsNewParent")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) getObject("DepartmentCreateForm:DisplayName:isInvalid")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",62,e);}if (_boolean_result) { %><td nowrap="nowrap" class="label"><label class="label label_error" for="DepartmentCreateForm_DisplayName"><% {out.write(localizeISText("PageletTabProperties.Name.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></label></td><% } else { %><td nowrap="nowrap" class="label"><label class="label" for="DepartmentCreateForm_DisplayName"><% {out.write(localizeISText("PageletTabProperties.Name.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></label></td><% } %><td class="table_detail"><input type="text" name="DepartmentCreateForm_DisplayName" id="DepartmentCreateForm_DisplayName" maxlength="2048" size="55" value="<% {String value = null;try{value=context.getFormattedValue(getObject("DepartmentCreateForm:DisplayName:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {67}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="inputfield_en"/></td>
</tr>
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (((((Boolean) getObject("DepartmentCreateForm:DepartmentID:isMissing")).booleanValue() && ((Boolean) ((((Boolean) (disableErrorMessages().isDefined(getObject("IsNewParent")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) getObject("DepartmentCreateForm:DepartmentID:isInvalid")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",70,e);}if (_boolean_result) { %><td nowrap="nowrap" class="label"><label class="label label_error" for="DepartmentCreateForm_DepartmentID"><% {out.write(localizeISText("sld_enterprise_app.ID.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></label></td><% } else { %><td nowrap="nowrap" class="label"><label class="label" for="DepartmentCreateForm_DepartmentID"><% {out.write(localizeISText("sld_enterprise_app.ID.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></label></td><% } %><td class="table_detail">
<input type="text" name="DepartmentCreateForm_DepartmentID" id="DepartmentCreateForm_DepartmentID" maxlength="256" size="55" value="<% {String value = null;try{value=context.getFormattedValue(getObject("DepartmentCreateForm:DepartmentID:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {76}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="inputfield_en"/>
</td>
</tr>
<tr>
<td nowrap="nowrap" class="label_textarea"><label class="label label_textarea" for="DepartmentCreateForm_Description"><% {out.write(localizeISText("ProductAttributeGroup.Description.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td class="table_detail"><textarea name="DepartmentCreateForm_Description" id="DepartmentCreateForm_Description" rows="5" cols="53" class="inputfield_en"><% {String value = null;try{value=context.getFormattedValue(getObject("DepartmentCreateForm:Description:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {81}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></textarea>
</td>
</tr>
<tr>
<td nowrap="nowrap" class="label"><label class="label" for="DepartmentCreateForm_ParentID"><% {out.write(localizeISText("DepartmentCreate.ParentDepartmentID.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td class="table_detail">
<table cellspacing="0" cellpadding="0" border="0">
<tr>
<td><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("SelectedDepartment"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",90,e);}if (_boolean_result) { %><input name="DepartmentCreateForm_ParentID" id="DepartmentCreateForm_ParentID" type="text" size="45" maxlength="256" class="inputfield_en" value="<% {String value = null;try{value=context.getFormattedValue(getObject("SelectedDepartment:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {91}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><% } else { %><input name="DepartmentCreateForm_ParentID" id="DepartmentCreateForm_ParentID" type="text" size="45" maxlength="256" class="inputfield_en" value="<% {String value = null;try{value=context.getFormattedValue(getObject("DepartmentCreateForm:ParentID:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {93}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><% } %></td>
<td>
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<!-- Addition of hidden button to make "Apply" button clicked on press of "Enter" key-->
<input type="submit" name="create" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("NewProductSet.Apply.input1",null)),null)%>" style="position: absolute; height: 0px; width: 0px; border: none; padding: 0px;" hidefocus="true" tabindex="-1"/>
<!-- End of hidden button-->
<td class="button"><input type="submit" name="select" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("SearchQueryEditor.Select.button",null)),null)%>" class="button"/></td>
</tr>
</table>
</td>
</tr>
</table>
</td>
</tr>
</table>
</td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td align="right" width="100%">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><input type="hidden" name="webform-id" value="DepartmentCreateForm"/><input type="hidden" name="JumpTo" value="DepartmentDetail"/><input class="button" type="submit" name="create" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("NewProductSet.Apply.input1",null)),null)%>"/></td>
<td class="button"><input class="button" type="submit" name="cancel" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PageletEntryPointSetParent.Cancel.button",null)),null)%>"/></td>
</tr>
</table>
</td>
</tr>
</table>
</td>
</tr>
</table><% out.print("</form>"); %><!-- EO Working Area --><% printFooter(out); %>