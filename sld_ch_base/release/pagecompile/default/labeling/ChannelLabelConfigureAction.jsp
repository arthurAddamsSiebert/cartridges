<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- Working Area -->
<!-- Page Navigator --><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelLabelAction-ConfigureAction",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("LabelID",null),context.getFormattedValue(getObject("Label:UUID"),null))).addURLParameter(context.getFormattedValue("ActionParameterForm_SelectedActionID",null),context.getFormattedValue(getObject("ActionTemplate:UUID"),null)))),
new TagParameter("wizard","true"),
new TagParameter("text",localizeText(context.getFormattedValue("ChannelLabelConfigureAction.Step2ConfigureAction.text",null)))}, 5); %><!-- EO Page Navigator -->
<!-- Titel and Description -->
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" class="table_title n w e s"><% {out.write(localizeISText("ChannelLabelConfigureAction.PerformActionStep2ConfigureAction.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("ActionParameterForm:isSubmitted")).booleanValue() && ((Boolean) (((((Boolean) getObject("ActionParameterForm:AnyParameterMissing")).booleanValue() || ((Boolean) getObject("ActionParameterForm:AnyParameterInvalid")).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("ErrorNoParameterSelected")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("ErrorNoAttributeTypeAndValueIncompatible")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",13,e);}if (_boolean_result) { %><tr>
<td>
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr valign="top">
<td class="error_icon top e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error" width="100%"><b><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ActionParameterForm:AnyParameterMissing"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",21,e);}if (_boolean_result) { %><% {out.write(localizeISText("ChannelLabelConfigureAction.ThereAreMissingActionParameters.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ActionParameterForm:AnyParameterInvalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",24,e);}if (_boolean_result) { %><% {out.write(localizeISText("ChannelLabelConfigureAction.ThereAreInvalidActionParameters.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ErrorNoParameterSelected"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",27,e);}if (_boolean_result) { %><% {out.write(localizeISText("ChannelLabelConfigureAction.ThereAreNoActionParametersSelected.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ErrorNoAttributeTypeAndValueIncompatible"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",30,e);}if (_boolean_result) { %><% {out.write(localizeISText("ChannelLabelConfigureAction.TheSelectedAttributeTypeAndUsedValueAreIncompatible.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %></b>
</td>
</tr>
</table>
</td>
</tr><% } %><tr>
<td class="table_title_description w e"><% {out.write(localizeISText("ChannelLabelConfigureAction.Step2Of3NextStepConfirmAction.table_title_description",null,null,"star",null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% URLPipelineAction action353 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelLabelAction-Dispatch",null)))),null));String site353 = null;String serverGroup353 = null;String actionValue353 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelLabelAction-Dispatch",null)))),null);if (site353 == null){  site353 = action353.getDomain();  if (site353 == null)  {      site353 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup353 == null){  serverGroup353 = action353.getServerGroup();  if (serverGroup353 == null)  {      serverGroup353 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelLabelAction-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("labelActionForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue353, site353, serverGroup353,true)); %><table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="n">
<tr>
<td class="table_title2 left w e s" ><% {out.write(localizeISText("ChannelLabelConfigureAction.Action.table_title2",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td class="table_detail w e s " ><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ActionTemplate:Name"),null).equals(context.getFormattedValue("AT_DeleteProductCustomAttribute",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",58,e);}if (_boolean_result) { %><% {out.write(localizeISText("ChannelLabelConfigureAction.DeleteCustomProductAttribute.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ActionTemplate:Name"),null).equals(context.getFormattedValue("AT_UpdateProductCustomAttribute",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",60,e);}if (_boolean_result) { %><% {out.write(localizeISText("ChannelLabelConfigureAction.UpdateCreateCustomProductAttribute.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ActionTemplate:Name"),null).equals(context.getFormattedValue("AT_ExportProducts",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",62,e);}if (_boolean_result) { %><% {out.write(localizeISText("ChannelLabelConfigureAction.ExportProducts.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ActionTemplate:Name"),null).equals(context.getFormattedValue("AT_UpdateStandardProductAttributes",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",64,e);}if (_boolean_result) { %><% {out.write(localizeISText("ChannelLabelConfigureAction.UpdateStandardProductAttributes.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %> 
<% } else { %><% {String value = null;try{value=context.getFormattedValue(getObject("ActionTemplate:Description"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {67}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% }}}} %>
&nbsp;</td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="table_title2 left w e s" ><% {out.write(localizeISText("ChannelLabelConfigureAction.Parameters.table_title2",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td>
<table border="0" cellspacing="0" cellpadding="0" width="100%" class="w e s">
<tr>
<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="12" alt="" border="0"/></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ActionParameterTemplate")))).booleanValue() && ((Boolean) existsTemplate(context.getFormattedValue(getObject("ActionParameterTemplate"),null))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",83,e);}if (_boolean_result) { %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,context.getFormattedValue(getObject("ActionParameterTemplate"),null), null, "84");} %><% } else { %><tr>
<td class="table_detail"><% {out.write(localizeISText("ChannelLabelConfigureAction.NoAdditionalParametersAreRequiredForThisAction.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% } %><tr>
<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="12" alt="" border="0"/></td>
</tr>
</table>
<td>
</tr>
</table>
<!-- buttons -->
<table class="w e s" width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td>
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button">
<input type = "hidden" name="LabelID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Label:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {105}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type = "hidden" name="ActionParameterForm_SelectedActionID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ActionTemplate:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {106}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="submit" name="selectAction" value="&lt;&lt;&nbsp;<%=context.getFormattedValue(localizeText(context.getFormattedValue("ChannelLabelConfigureAction.Previous.button",null)),null)%>" class="button"/>
</td>
</tr>
</table>
</td>
<td align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><input type="submit" name="confirmAction" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ChannelLabelConfigureAction.Next.button",null)),null)%>&nbsp;&gt;&gt;" class="button"/></td>
<td class="button"><input type="submit" name="cancelAction" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ChannelLabelConfigureAction.Cancel.button",null)),null)%>" class="button"/></td>
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
</table><% out.print("</form>"); %><% printFooter(out); %>