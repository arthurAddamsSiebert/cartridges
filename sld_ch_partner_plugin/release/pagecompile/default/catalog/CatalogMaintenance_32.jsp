<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- Working Area -->
<!-- Page Navigator --><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("text1",context.getFormattedValue(" - ",null) + context.getFormattedValue(localizeText(context.getFormattedValue("CatalogMaintenance_32.OnlineOffline.text1",null)),null)),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelCatalogMaintenance_32-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("CatalogTypeCode",null),context.getFormattedValue(getObject("CatalogTypeCode"),null))).addURLParameter(context.getFormattedValue("CatalogID",null),context.getFormattedValue(getObject("CatalogID"),null)).addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null)))),
new TagParameter("id",getObject("Category:UUID")),
new TagParameter("text",getObject("Category:DisplayName"))}, 5); %><!-- EO Page Navigator -->
<!-- Tabs --><%getPipelineDictionary().put("SelectedTab", "Maintenance");%><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/CatalogTabs_32", null, "10");} %><!-- EO Tabs -->
<!-- Main Content -->
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" class="table_title w e s"><% {String value = null;try{value=context.getFormattedValue(getObject("Catalog:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {16}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;-&nbsp;<% {out.write(localizeISText("CatalogMaintenance_32.OnlineOffline.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<!-- errors --><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_CATALOGS")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("ErrorCode")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",19,e);}if (_boolean_result) { %><tr>
<td>
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr valign="top">
<td class="error_icon top e">
<img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/>
</td>
<td class="error top" width="100%">
<b><% {out.write(localizeISText("CatalogMaintenance_32.CatalogCouldNotBeUpdated.error",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</b><br/><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("StartDay_ErrorCode"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",29,e);}if (_boolean_result) { %><% {out.write(localizeISText("CatalogMaintenance_32.TheStartDateCouldNotBeParsedPleaseProvide.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("StartTime_ErrorCode"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",32,e);}if (_boolean_result) { %><% {out.write(localizeISText("CatalogMaintenance_32.TheStartTimeCouldNotBeParsedPleaseProvide.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("EndDay_ErrorCode"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",35,e);}if (_boolean_result) { %><% {out.write(localizeISText("CatalogMaintenance_32.TheEndDateCouldNotBeParsedPleaseProvide.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("EndTime_ErrorCode"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",38,e);}if (_boolean_result) { %><% {out.write(localizeISText("CatalogMaintenance_32.TheEndTimeCouldNotBeParsedPleaseProvide.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ErrorCode"),null).equals(context.getFormattedValue("InvalidTimePeriod",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",41,e);}if (_boolean_result) { %><% {out.write(localizeISText("CatalogMaintenance_32.PleaseMakeSureTheStartDateIsBefore.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ErrorCode"),null).equals(context.getFormattedValue("DatesMissing",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",44,e);}if (_boolean_result) { %><% {out.write(localizeISText("CatalogMaintenance_32.PleaseProvideAtLeastOneDate.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ErrorCode"),null).equals(context.getFormattedValue("InvalidTimePeriodLivecycle",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",47,e);}if (_boolean_result) { %><% {out.write(localizeISText("CatalogMaintenance_32.PleaseMakeSureThatTheLastOrderDateIsBefore.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("LastOrderDate_Day_ErrorCode"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",50,e);}if (_boolean_result) { %><% {out.write(localizeISText("CatalogMaintenance_32.TheLastOrderDateCouldNotBeParsedPleaseProvide.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("LastOrderDate_Time_ErrorCode"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",53,e);}if (_boolean_result) { %><% {out.write(localizeISText("CatalogMaintenance_32.TheLastOrderTimeCouldNotBeParsedPleaseProvide.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("EndOfLife_Day_ErrorCode"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",56,e);}if (_boolean_result) { %><% {out.write(localizeISText("CatalogMaintenance_32.TheEndOfLifeDateCouldNotBeParsedPleaseProvide.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("EndOfLife_Time_ErrorCode"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",59,e);}if (_boolean_result) { %><% {out.write(localizeISText("CatalogMaintenance_32.TheEndOfLifeTimeCouldNotBeParsedPleaseProvide.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/><% } %></td>
</tr>
</table>
</td>
</tr><% } %><!-- end errors-->
<tr>
<td class="table_title_description w e s"><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Catalog:isProxy"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",72,e);}if (_boolean_result) { %><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/status_shared_product_from.gif" alt="<%=context.getFormattedValue(localizeText(context.getFormattedValue("CatalogMaintenance_32.SharedFromAnother.alt",null)),null)%>" title="<%=context.getFormattedValue(localizeText(context.getFormattedValue("CatalogMaintenance_32.SharedFromAnother.title",null)),null)%>" border="0"/> 
<% {out.write(localizeISText("CatalogMaintenance_32.ThisCatalogIsSharedFrom0",null,null,encodeString(context.getFormattedValue(getObject("Catalog:OriginalCatalog:OwningDomain:DomainInformation:DomainName"),null)),null,null,null,null,null,null,null,null,null));} %><% } %><% {out.write(localizeISText("CatalogMaintenance_32.SetTheCatalogStatusAndThenSpecifyWhenThisStatusSho",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr> 
</table><% URLPipelineAction action185 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelCatalogMaintenance_32-Dispatch",null)))),null));String site185 = null;String serverGroup185 = null;String actionValue185 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelCatalogMaintenance_32-Dispatch",null)))),null);if (site185 == null){  site185 = action185.getDomain();  if (site185 == null)  {      site185 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup185 == null){  serverGroup185 = action185.getServerGroup();  if (serverGroup185 == null)  {      serverGroup185 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelCatalogMaintenance_32-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("formMask");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue185, site185, serverGroup185,true)); %><table cellpadding="0" cellspacing="0" border="0" width="100%" class="w e s">
<tr>
<td colspan="9"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></td>
</tr>
<tr>
<td colspan="9"><input type="hidden" name="ChannelID" value="<%=context.getFormattedValue(getObject("CurrentChannel:UUID"),null)%>"/><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="1" alt="" border="0"/></td>
</tr>
<tr>
<td nowrap="nowrap" class="label_select" width="1"><label class="label label_select" for="Catalog_Status"><% {out.write(localizeISText("CatalogMaintenance_32.Status.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td colspan="7" class="fielditem2"> 
<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_CATALOGS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",93,e);}if (_boolean_result) { %><select name="Status" class="inputfield_en"><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ErrorCode")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("Status")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("Status"),null).equals(context.getFormattedValue("1",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",95,e);}if (_boolean_result) { %><option value="1" selected="selected"><% {out.write(localizeISText("CatalogMaintenance_32.Online.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="0"><% {out.write(localizeISText("CatalogMaintenance_32.Offline.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option><% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ErrorCode")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("Status")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("Status"),null).equals(context.getFormattedValue("0",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",98,e);}if (_boolean_result) { %><option value="1"><% {out.write(localizeISText("CatalogMaintenance_32.Online.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="0" selected="selected"><% {out.write(localizeISText("CatalogMaintenance_32.Offline.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("Catalog:Status")).doubleValue() ==((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",101,e);}if (_boolean_result) { %><option value="1" selected="selected"><% {out.write(localizeISText("CatalogMaintenance_32.Online.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="0"><% {out.write(localizeISText("CatalogMaintenance_32.Offline.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option><% } else { %><option value="1"><% {out.write(localizeISText("CatalogMaintenance_32.Online.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="0" selected="selected"><% {out.write(localizeISText("CatalogMaintenance_32.Offline.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option><% }}} %> 
</select><% } else { %><select name="Status" class="inputfield_en" disabled="disabled"><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ErrorCode")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("Status")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("Status"),null).equals(context.getFormattedValue("1",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",111,e);}if (_boolean_result) { %><option value="1" selected="selected"><% {out.write(localizeISText("CatalogMaintenance_32.Online.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="0"><% {out.write(localizeISText("CatalogMaintenance_32.Offline.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option><% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ErrorCode")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("Status")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("Status"),null).equals(context.getFormattedValue("0",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",114,e);}if (_boolean_result) { %><option value="1"><% {out.write(localizeISText("CatalogMaintenance_32.Online.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="0" selected="selected"><% {out.write(localizeISText("CatalogMaintenance_32.Offline.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("Catalog:Status")).doubleValue() ==((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",117,e);}if (_boolean_result) { %><option value="1" selected="selected"><% {out.write(localizeISText("CatalogMaintenance_32.Online.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="0"><% {out.write(localizeISText("CatalogMaintenance_32.Offline.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option><% } else { %><option value="1"><% {out.write(localizeISText("CatalogMaintenance_32.Online.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="0" selected="selected"><% {out.write(localizeISText("CatalogMaintenance_32.Offline.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option><% }}} %> 
</select><% } %></td>
</tr>
<tr>
<td>&nbsp;</td>
<td class="input_radio"><% _boolean_result=false;try {_boolean_result=((Boolean)((((((Boolean) (disableErrorMessages().isDefined(getObject("ErrorCode")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("PeriodDefined")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("PeriodDefined"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",131,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_CATALOGS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",132,e);}if (_boolean_result) { %><input name="PeriodDefined" value="false" type="radio"/><% } else { %><input name="PeriodDefined" value="false" type="radio" disabled="disabled"/><% } %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("Catalog:StartMaintenance")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("Catalog:EndMaintenance")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",137,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_CATALOGS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",138,e);}if (_boolean_result) { %><input checked="checked" name="PeriodDefined" value="false" type="radio"/><% } else { %><input checked="checked" name="PeriodDefined" value="false" type="radio" disabled="disabled"/><% } %><% } else { %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_CATALOGS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",144,e);}if (_boolean_result) { %><input name="PeriodDefined" value="false" type="radio"/><% } else { %><input name="PeriodDefined" value="false" type="radio" disabled="disabled"/><% } %><% }} %></td>
<td class="label_radio_text" nowrap="nowrap" colspan="6"><label class="label label_radio_text label_light"><% {out.write(localizeISText("CatalogMaintenance_32.Always.fielditem",null,null,null,null,null,null,null,null,null,null,null,null));} %></label></td>
</tr>
<tr>
<td>&nbsp;</td>
<td class="input_radio label_fix1"><% _boolean_result=false;try {_boolean_result=((Boolean)((((((Boolean) (disableErrorMessages().isDefined(getObject("ErrorCode")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("PeriodDefined")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("PeriodDefined"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",156,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_CATALOGS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",157,e);}if (_boolean_result) { %><input checked="checked" name="PeriodDefined" value="true" type="radio"/><% } else { %><input checked="checked" name="PeriodDefined" value="true" type="radio" disabled="disabled"/><% } %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("Catalog:StartMaintenance")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("Catalog:EndMaintenance")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",162,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_CATALOGS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",163,e);}if (_boolean_result) { %><input checked="checked" name="PeriodDefined" value="true" type="radio"/><% } else { %><input checked="checked" name="PeriodDefined" value="true" type="radio" disabled="disabled"/><% } %><% } else { %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_CATALOGS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",169,e);}if (_boolean_result) { %><input name="PeriodDefined" value="true" type="radio"/><% } else { %><input name="PeriodDefined" value="true" type="radio" disabled="disabled"/><% } %><% }} %></td> 
<td class="label_radio_text label_fix1" nowrap="nowrap"><label class="label label_radio_text label_light" for="PeriodDefined_true"><% {out.write(localizeISText("CatalogMaintenance_32.LimitedPeriod.fielditem",null,null,null,null,null,null,null,null,null,null,null,null));} %>&nbsp;--&gt;</label></td><% processOpenTag(response, pageContext, "dateinput", new TagParameter[] {
new TagParameter("InputFieldName","StartMaintenance_Day"),
new TagParameter("Readonly",(((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_CATALOGS")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) ),
new TagParameter("InputFieldLabel","Start Date"),
new TagParameter("DateString",getObject("StartMaintenance_Day")),
new TagParameter("DateObject",getObject("Catalog:StartMaintenance")),
new TagParameter("Invalid",(disableErrorMessages().isDefined(getObject("ErrorCode"))))}, 177); %><% processOpenTag(response, pageContext, "timeinput", new TagParameter[] {
new TagParameter("InputFieldName","StartMaintenance_Time"),
new TagParameter("Readonly",(((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_CATALOGS")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) ),
new TagParameter("TimeString",getObject("StartMaintenance_Time")),
new TagParameter("InputFieldLabel","Time"),
new TagParameter("DateObject",getObject("Catalog:StartMaintenance")),
new TagParameter("Invalid",(disableErrorMessages().isDefined(getObject("ErrorCode"))))}, 184); %></tr>
<tr>
<td class="fielditem2" colspan="3">&nbsp;</td><% processOpenTag(response, pageContext, "dateinput", new TagParameter[] {
new TagParameter("InputFieldName","EndMaintenance_Day"),
new TagParameter("Readonly",(((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_CATALOGS")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) ),
new TagParameter("InputFieldLabel","End Date"),
new TagParameter("DateString",getObject("EndMaintenance_Day")),
new TagParameter("DateObject",getObject("Catalog:EndMaintenance")),
new TagParameter("Invalid",(disableErrorMessages().isDefined(getObject("ErrorCode"))))}, 194); %><% processOpenTag(response, pageContext, "timeinput", new TagParameter[] {
new TagParameter("InputFieldName","EndMaintenance_Time"),
new TagParameter("Readonly",(((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_CATALOGS")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) ),
new TagParameter("TimeString",getObject("EndMaintenance_Time")),
new TagParameter("InputFieldLabel","Time"),
new TagParameter("DateObject",getObject("Catalog:EndMaintenance")),
new TagParameter("Invalid",(disableErrorMessages().isDefined(getObject("ErrorCode"))))}, 201); %></tr>
<tr>
<td colspan="9"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_CATALOGS")))).booleanValue() && ((Boolean) (((!((Boolean) (disableErrorMessages().isDefined(getObject("Catalog:ClassificationSystem")))).booleanValue() || ((Boolean) (((!(context.getFormattedValue(getObject("Catalog:ClassificationSystem:Name"),null).equals(context.getFormattedValue("System",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",212,e);}if (_boolean_result) { %><tr>
<td align="right" class="n" colspan="9">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button">
<input type="hidden" name="CatalogID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Catalog:Id"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {218}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="ChannelID" value="<%=context.getFormattedValue(getObject("CurrentChannel:UUID"),null)%>"/>
<input type="hidden" name="CatalogTypeCode" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Catalog:TypeCode"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {220}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="UnitName" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Catalog:Domain:DomainName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {221}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="DatePattern" value="<% {String value = null;try{value=context.getFormattedValue(getObject("CurrentSession:Locale:DefaultRegionalSettings:inputDatePattern"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {222}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>,<% {String value = null;try{value=context.getFormattedValue(getObject("CurrentSession:Locale:DefaultRegionalSettings:inputTimePattern"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {222}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="DateFormatString" value="<% {String value = null;try{value=context.getFormattedValue(getObject("CurrentSession:Locale:DefaultRegionalSettings:inputDatePattern"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {223}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="TimeFormatString" value="<% {String value = null;try{value=context.getFormattedValue(getObject("CurrentSession:Locale:DefaultRegionalSettings:inputTimePattern"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {224}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="submit" name="apply" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("CatalogMaintenance_32.Apply.button",null)),null)%>" class="button"/>
</td>
<td class="button">
<input type="reset" name="reset" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("CatalogMaintenance_32.Reset.button",null)),null)%>" class="button"/>
</td>
</tr>
</table>
</td>
</tr><% } %></table><% out.print("</form>"); %><!-- EO Main Content --><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/BackToList", null, "238");} %><!-- EO Working Area --><% printFooter(out); %>