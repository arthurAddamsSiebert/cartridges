<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/Modules", null, "2");} %><% context.setCustomTagTemplateName("labelitem","labeling/inc/LabelItem.isml",false,new String[]{"labelassignment","displaytype"},null); %><!-- Working Area --><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("listview","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewLabelAction-ConfirmAction",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("LabelID",null),context.getFormattedValue(getObject("Label:UUID"),null))).addURLParameter(context.getFormattedValue("ActionParameterForm_SelectedActionID",null),context.getFormattedValue(getObject("ActionTemplate:UUID"),null)).addURLParameter(context.getFormattedValue("ActionParameterForm_CustomAttributeLocale",null),context.getFormattedValue(getObject("ActionParameterForm_CustomAttributeLocale"),null)).addURLParameter(context.getFormattedValue("ActionParameterForm_CustomAttributeName",null),context.getFormattedValue(getObject("ActionParameterForm_CustomAttributeName"),null)).addURLParameter(context.getFormattedValue("ActionParameterForm_CustomAttributeType",null),context.getFormattedValue(getObject("ActionParameterForm_CustomAttributeType"),null)).addURLParameter(context.getFormattedValue("ActionParameterForm_CustomAttributeValue",null),context.getFormattedValue(getObject("ActionParameterForm_CustomAttributeValue"),null)))),
new TagParameter("wizard","true"),
new TagParameter("text",localizeText(context.getFormattedValue("sld_enterprise_app.Step3ConfirmAction.text",null)))}, 11); %><!-- Titel and Description -->
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" class="table_title n w e s"><% {out.write(localizeISText("sld_enterprise_app.PerformActionStep3ConfirmAction.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td class="table_title_description w e"><% {out.write(localizeISText("sld_enterprise_app.Step3Of3ConfirmActionPleaseCheckYourActionAgainBef.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% URLPipelineAction action678 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewLabelAction-Dispatch",null)))),null));String site678 = null;String serverGroup678 = null;String actionValue678 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewLabelAction-Dispatch",null)))),null);if (site678 == null){  site678 = action678.getDomain();  if (site678 == null)  {      site678 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup678 == null){  serverGroup678 = action678.getServerGroup();  if (serverGroup678 == null)  {      serverGroup678 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewLabelAction-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("labelActionForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue678, site678, serverGroup678,true)); %><table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="n">
<tr>
<td class="table_title2 left w e s" ><% {out.write(localizeISText("sld_enterprise_app.Action.table_title2",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td class="table_detail w e s" ><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ActionTemplate:Name"),null).equals(context.getFormattedValue("AT_DeleteProductCustomAttribute",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",38,e);}if (_boolean_result) { %><% {out.write(localizeISText("sld_enterprise_app.DeleteCustomProductAttribute.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ActionTemplate:Name"),null).equals(context.getFormattedValue("AT_UpdateProductCustomAttribute",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",40,e);}if (_boolean_result) { %><% {out.write(localizeISText("sld_enterprise_app.UpdateCreateCustomProductAttribute.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ActionTemplate:Name"),null).equals(context.getFormattedValue("AT_ExportProducts",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",42,e);}if (_boolean_result) { %><% {out.write(localizeISText("sld_enterprise_app.ExportProducts.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ActionTemplate:Name"),null).equals(context.getFormattedValue("AT_UpdateStandardProductAttributes",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",44,e);}if (_boolean_result) { %><% {out.write(localizeISText("sld_enterprise_app.UpdateStandardProductAttributesProductStatusAvaila.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %> 
<% } else { %><% {String value = null;try{value=context.getFormattedValue(getObject("ActionTemplate:Description"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {47}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% }}}} %>
&nbsp;
</td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="table_title2 left w e s" ><% {out.write(localizeISText("sld_enterprise_app.Parameters.table_title2",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td>
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="w e s"><% {Object temp_obj = ("false"); getPipelineDictionary().put("hasActionParameter", temp_obj);} %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ActionParameterTemplate")))).booleanValue() && ((Boolean) existsTemplate(context.getFormattedValue(getObject("ActionParameterTemplate"),null))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",61,e);}if (_boolean_result) { %><% {Object temp_obj = ("true"); getPipelineDictionary().put("ActionConfirmation", temp_obj);} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,context.getFormattedValue(getObject("ActionParameterTemplate"),null), null, "64");} %><% while (loop("ActionParameterForm:Definition","ActionParameterDefinition",null)) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (((!(context.getFormattedValue(getObject("ActionParameterForm:getParameter(ActionParameterDefinition:Name):Value"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("ActionParameterDefinition:Name"),null).equals(context.getFormattedValue("SelectedActionID",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",67,e);}if (_boolean_result) { %><tr style="display:none"> 
<td><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ActionParameterDefinition:Name"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",71,e);}if (_boolean_result) { %><input type="hidden" name="<% {String value = null;try{value=context.getFormattedValue(getObject("ActionParameterDefinition:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {72}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ActionParameterForm:getParameter(ActionParameterDefinition:Name):Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {72}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><% } %></td>
</tr><% {Object temp_obj = ("true"); getPipelineDictionary().put("hasActionParameter", temp_obj);} %><% } %><% } %><% } else { %><% while (loop("ActionParameterForm:Definition","ActionParameterDefinition",null)) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (((!(context.getFormattedValue(getObject("ActionParameterForm:getParameter(ActionParameterDefinition:Name):Value"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("ActionParameterDefinition:Name"),null).equals(context.getFormattedValue("SelectedActionID",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",81,e);}if (_boolean_result) { %><tr>
<td class="fielditem2" nowrap="nowrap"><% {String value = null;try{value=context.getFormattedValue(getObject("ActionParameterDefinition:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {83}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
<td class="table_detail"><% {String value = null;try{value=context.getFormattedValue(getObject("ActionParameterForm:getParameter(ActionParameterDefinition:Name):Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {84}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;
<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ActionParameterDefinition:Name"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",85,e);}if (_boolean_result) { %> 
<input type="hidden" name="<% {String value = null;try{value=context.getFormattedValue(getObject("ActionParameterDefinition:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {86}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ActionParameterForm:getParameter(ActionParameterDefinition:Name):Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {86}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><% } %><% {Object temp_obj = ("true"); getPipelineDictionary().put("hasActionParameter", temp_obj);} %></td>
</tr><% } %><% } %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ActionTemplate:ActionParameterPipeline"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",94,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("hasActionParameter"),null).equals(context.getFormattedValue("false",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",95,e);}if (_boolean_result) { %><tr>
<td class="error"><% {out.write(localizeISText("sld_enterprise_app.ThereAreNoActionParametersSelectedForThisActionBut.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></tr><% } %><% } else { %><tr>
<td class="table_detail"><% {out.write(localizeISText("sld_enterprise_app.ThereAreNoAdditionalActionParametersRequiredForThi.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></tr><% } %></table><% while (loop("ActionTemplate:AttributeValues","ATV",null)) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((context.getFormattedValue(getObject("ATV:Name"),null).equals(context.getFormattedValue("ActionTemplate",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("ATV:Name"),null).equals(context.getFormattedValue("ActionPermission",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("ATV:Name"),null).equals(context.getFormattedValue("ActionParameterPipeline",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",107,e);}if (_boolean_result) { %><% } else { %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ATV:Name"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",109,e);}if (_boolean_result) { %><input type="hidden" name="<% {String value = null;try{value=context.getFormattedValue(getObject("ATV:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {110}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" value = "<% {String value = null;try{value=context.getFormattedValue(getObject("ATV:StringValue"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {110}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><% } %><% } %><% } %></td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e" >
<tr>
<td colspan="3" class="table_title2 left s"><% {out.write(localizeISText("sld_enterprise_app.AffectedItems.table_title2",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("FilteredLabelAssignments") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",121,e);}if (_boolean_result) { %><tr>
<td class="table_header e s" nowrap="nowrap" width="40%"><% {out.write(localizeISText("sld_enterprise_app.Name.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s" nowrap="nowrap" width="40%"><% {out.write(localizeISText("sld_enterprise_app.ID.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header s" nowrap="nowrap" width="40%" ><% {out.write(localizeISText("sld_enterprise_app.Type.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% while (loop("FilteredLabelAssignments","la",null)) { %><tr>
<td class="table_detail e s top" ><% processOpenTag(response, pageContext, "labelitem", new TagParameter[] {
new TagParameter("displaytype","viewlink_name"),
new TagParameter("labelassignment",getObject("la"))}, 129); %>&nbsp;</td>
<td class="table_detail e s top" nowrap="nowrap"><% processOpenTag(response, pageContext, "labelitem", new TagParameter[] {
new TagParameter("displaytype","viewlink_id"),
new TagParameter("labelassignment",getObject("la"))}, 130); %>&nbsp;</td>
<td class="table_detail s top" nowrap="nowrap"><% processOpenTag(response, pageContext, "labelitem", new TagParameter[] {
new TagParameter("displaytype","type"),
new TagParameter("labelassignment",getObject("la"))}, 131); %>&nbsp;</td>
</tr><% } %><% } else { %><tr>
<td colspan="3" class="table_detail s"><% {out.write(localizeISText("sld_enterprise_app.TheLabelDoesNotContainAnyItemTheSelectedActionAppl.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% } %></table>
<table class="w e s" width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td>
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button">
<input type = "hidden" name="LabelID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Label:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {149}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type = "hidden" name="ActionParameterForm_SelectedActionID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ActionTemplate:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {150}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ActionTemplate:ActionParameterPipeline"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",151,e);}if (_boolean_result) { %><input type="submit" name="configureAction" value="&lt;&lt;&nbsp;<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.Previous.button",null)),null)%>" class="button"/><% } else { %><input type="submit" name="selectAction" value="&lt;&lt;&nbsp;<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.Previous.button",null)),null)%>" class="button"/><% } %></td>
</tr>
</table>
</td>
<td align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("FilteredLabelAssignments") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",163,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ActionTemplate:ActionParameterPipeline"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",164,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("hasActionParameter"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",165,e);}if (_boolean_result) { %><td class="button"><input type="submit" name="executeAction" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.Finish.button",null)),null)%>" class="button"/></td><% } %><% } else { %><td class="button"><input type="submit" name="executeAction" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.Finish.button",null)),null)%>" class="button"/></td><% } %><% } %><td class="button"><input type="submit" name="cancelAction" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.Cancel.button",null)),null)%>" class="button"/></td>
</tr>
</table>
</td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></td>
</tr>
</table>
</td>
</tr>
</table>
<!-- Start Page Cursor -->
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td><% processOpenTag(response, pageContext, "pagingbar", new TagParameter[] {
new TagParameter("pageable","FilteredLabelAssignments")}, 191); %></td>
</tr>
</table>
<!-- End Page Cursor --><% out.print("</form>"); %></td>
</tr>
</table><% printFooter(out); %>