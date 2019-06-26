<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- Working Area -->
<!-- Main Content -->
<!-- Page Navigator --><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PromotionCodeGroupID"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",7,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotionCodeImport-SelectMode",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null))))),
new TagParameter("text",localizeText(context.getFormattedValue("PromotionCodeImportSelectModeStep4.PromotionCodeImportStep3SelectImportMode.text",null)))}, 8); %><% } else { %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotionCodeImport-SelectMode",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null))))),
new TagParameter("text",localizeText(context.getFormattedValue("PromotionCodeImportSelectModeStep4.PromotionCodeImportStep4SelectImportMode.text",null)))}, 10); %><% } %><!-- EO Page Navigator --><% URLPipelineAction action191 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotionCodeImport-Dispatch",null)))),null));String site191 = null;String serverGroup191 = null;String actionValue191 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotionCodeImport-Dispatch",null)))),null);if (site191 == null){  site191 = action191.getDomain();  if (site191 == null)  {      site191 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup191 == null){  serverGroup191 = action191.getServerGroup();  if (serverGroup191 == null)  {      serverGroup191 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotionCodeImport-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("ImportForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue191, site191, serverGroup191,true)); %><table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" class="table_title aldi"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PromotionCodeGroupID"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",18,e);}if (_boolean_result) { %><% {out.write(localizeISText("PromotionCodeImportSelectModeStep4.PromotionCodeImportStepX.table_title",null,null,"3",null,null,null,null,null,null,null,null,null));} %><% } else { %><% {out.write(localizeISText("PromotionCodeImportSelectModeStep4.PromotionCodeImportStepX.table_title",null,null,"4",null,null,null,null,null,null,null,null,null));} %><% } %></td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e">
<tr>
<td class="table_title_description" width="100%"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PromotionCodeGroupID"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",30,e);}if (_boolean_result) { %><% {out.write(localizeISText("PromotionCodeImportSelectModeStep4.StepXOfX.table_title_description",null,null,"3",null,null,null,null,null,null,null,null,null));} %><% } else { %><% {out.write(localizeISText("PromotionCodeImportSelectModeStep4.StepXOfX.table_title_description",null,null,"4",null,null,null,null,null,null,null,null,null));} %><% } %></td>
</tr>
<tr>
<td class="table_title_description" width="100%"><% {out.write(localizeISText("PromotionCodeImportSelectModeStep4.SelectAnImportModeAndStartThePromotionCodeImport.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<table border="0" cellpadding="5" cellspacing="0" width="100%" class="n w e s">
<tr>
<td class="infobox_title " width="1%" nowrap="nowrap"><% {out.write(localizeISText("PromotionCodeImportSelectModeStep4.ImportMode.infobox_title",null,null,null,null,null,null,null,null,null,null,null,null));} %>:&nbsp;</td>
<td align="left" >
<select name="ImportMode" size="1" class="inputfield_en" style="width:200px">
<option value="INITIAL"><% {out.write(localizeISText("PromotionCodeImportSelectModeStep4.INITIAL.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="DELETE"><% {out.write(localizeISText("PromotionCodeImportSelectModeStep4.DELETE.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
</select>
</td>
</tr>
</table>
<table border="0" cellpadding="5" cellspacing="0" width="100%" class="w e">
<tr>
<td class="infobox_title s" width="1%" nowrap="nowrap"><% {out.write(localizeISText("PromotionCodeImportSelectModeStep4.ProfanityCheck.infobox_title",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td class="table_detail s">
<table border="0" cellspacing="0">
<tr>
<td class="table_detail">
<input type="checkbox" name="ProfanityCheck" checked="checked"/>
</td>
<td class="table_detail"><% {out.write(localizeISText("PromotionCodeImportSelectModeStep4.RunForInitialMode.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %> 
</td>
</tr>
</table>
</td>
</tr>
</table>
<table border="0" cellpadding="5" cellspacing="0" width="100%" class="w e">
<tr>
<td class="infobox_title s" width="1%" nowrap="nowrap"><% {out.write(localizeISText("PromotionCodeImportSelectModeStep4.TargetPromotionCodeGroup.infobox_title",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td class="table_detail s"><% {String value = null;try{value=context.getFormattedValue(getObject("TargetPromotionCodeGroup:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {78}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
</tr>
</table>
<table class="w e s" width="100%" border="0" cellspacing="0">
<tr>
<td align="left">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button">
<input type="hidden" name="JobConfigurationUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("JobConfigurationUUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {90}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="submit"
<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PromotionCodeGroupID"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",92,e);}if (_boolean_result) { %>
name="ValidateFileRefresh"
<% } else { %>
name="SelectPromotionCodeGroup"
<% } %> 
value="&lt;&lt;&nbsp;<%=context.getFormattedValue(localizeText(context.getFormattedValue("PromotionCodeImportSelectModeStep4.Previous.button",null)),null)%>" class="button"/>
</td>
</tr>
</table>
</td>
<td align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PromotionCodeGroupID"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",106,e);}if (_boolean_result) { %><input type="hidden" name="PromotionCodeGroupID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("PromotionCodeGroupID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {107}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><% } %><input type="hidden" name="SelectedFile" value="<% {String value = null;try{value=context.getFormattedValue(getObject("SelectedFile"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {109}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="TargetPromotionCodeGroupID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("TargetPromotionCodeGroup:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {110}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="TempXMLFile" value="<% {String value = null;try{value=context.getFormattedValue(getObject("TempXMLFile"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {111}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="JobDescription" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_ch_base.ImportPromotionCodesFromCSVFile.input",null)),null)%>"/>
<input type="submit" name="Import" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PromotionCodeImportSelectModeStep4.Import.button",null)),null)%>" class="button"/>
</td>
<td class="button">
<input type="submit" name="Cancel" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PromotionCodeImportSelectModeStep4.Cancel.button",null)),null)%>" class="button"/>
</td>
</tr>
</table>
</td>
</tr>
</table><% out.print("</form>"); %><!-- EO Main Content -->
<!-- EO Working Area --><% printFooter(out); %>