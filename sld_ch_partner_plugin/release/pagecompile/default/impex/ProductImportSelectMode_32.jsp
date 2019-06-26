<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- Working Area --><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductImport_32-SelectMode",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SelectedFile",null),context.getFormattedValue(getObject("SelectedFile"),null))).addURLParameter(context.getFormattedValue("JobConfigurationUUID",null),context.getFormattedValue(getObject("JobConfigurationUUID"),null)).addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null)))),
new TagParameter("wizard","true"),
new TagParameter("text",localizeText(context.getFormattedValue("ProductImportSelectMode_32.Step3Import.text",null)))}, 3); %><% URLPipelineAction action288 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductImport_32-Dispatch",null)))),null));String site288 = null;String serverGroup288 = null;String actionValue288 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductImport_32-Dispatch",null)))),null);if (site288 == null){  site288 = action288.getDomain();  if (site288 == null)  {      site288 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup288 == null){  serverGroup288 = action288.getServerGroup();  if (serverGroup288 == null)  {      serverGroup288 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductImport_32-Dispatch",null)))),null));out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue288, site288, serverGroup288,true)); %><div><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></div>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="aldi">
<tr>
<td class="table_title" width="100%" nowrap="nowrap"><% {out.write(localizeISText("ProductImportSelectMode_32.ProductImportImport.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td class="table_title_description" width="100%"><% {out.write(localizeISText("ProductImportSelectMode_32.Step3Of3SelectAnImportModeAndStartTheProductImport.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="6" class="w e s">
<tr>
<td class="infobox_title" width="1%" nowrap="nowrap"><% {out.write(localizeISText("ProductImportSelectMode_32.ImportMode.infobox_title",null,null,null,null,null,null,null,null,null,null,null,null));} %>:&nbsp;</td>
<td align="left" colspan="2">
<select name="ImportMode" size="1" class="inputfield_en" style="width:200px">
<option value="OMIT"><% {out.write(localizeISText("ProductImportSelectMode_32.OMIT.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="IGNORE"><% {out.write(localizeISText("ProductImportSelectMode_32.IGNORE.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="INITIAL"><% {out.write(localizeISText("ProductImportSelectMode_32.INITIAL.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="DELETE"><% {out.write(localizeISText("ProductImportSelectMode_32.DELETE.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="REPLACE"><% {out.write(localizeISText("ProductImportSelectMode_32.REPLACE.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="UPDATE" selected="selected"><% {out.write(localizeISText("ProductImportSelectMode_32.UPDATE.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
</select>
</td>
</tr>
</table><% {try{executePipeline("ProcessProductLock-GetLockPreference",((java.util.Map)(((new ParameterMap().addParameter(new ParameterEntry("PreferenceDomain",getObject("CurrentProductRepository:RepositoryDomain"))))))),"ProductLockInfoDictionary");}catch(Exception e){Logger.error(this,"ISPIPELINE failed. Line: 34.",e);}} %> 
<% {Object temp_obj = ((((context.getFormattedValue(getObject("ProductLockInfoDictionary:ProductLockActivated"),null).equals(context.getFormattedValue("false",null)))) ? Boolean.TRUE : Boolean.FALSE)); getPipelineDictionary().put("UserLockConflictPolicySelectionDisabled", temp_obj);} %><% {Object temp_obj = ((((context.getFormattedValue(getObject("ProductLockInfoDictionary:CorrelatedLockingEnabled"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE)); getPipelineDictionary().put("CorrelatedLockingEnabled", temp_obj);} %><% {Object temp_obj = (getObject("ProductLockInfoDictionary:ImportAcquisitionTimeout")); getPipelineDictionary().put("ImportAcquisitionTimeout", temp_obj);} %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("CorrelatedLockingEnabled"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",39,e);}if (_boolean_result) { %><!-- Locking Conflict Policies--><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("UserLockConflictPolicySelectionDisabled"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",41,e);}if (_boolean_result) { %><input type="hidden" name="UserLockingConflictPolicy" value="ignore"/><% } else { %><table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e" >
<tr>
<td colspan="2" class="table_title2 left s"><% {out.write(localizeISText("ProductImportSelectMode_32.UserLockingConflictResolution.table_title2",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td colspan="2" class="table_title_description w e s"><% {out.write(localizeISText("ProductImportSelectMode_32.SelectThePreferredConflictResolutionForThisProduct.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td class="table_detail center e s" width="70">
<input type="Radio" checked="checked" name="UserLockingConflictPolicy" value="steal"/>
</td>
<td class="table_detail e s" nowrap="nowrap"><% {out.write(localizeISText("ProductImportSelectMode_32.StealLocks.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td class="table_detail center e s" width="70">
<input type="Radio" name="UserLockingConflictPolicy" value="fail"/>
</td>
<td class="table_detail e s" nowrap="nowrap"><% {out.write(localizeISText("ProductImportSelectMode_32.Fail.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% } %> 
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e" >
<tr>
<td colspan="3" class="table_title2 left s"><% {out.write(localizeISText("ProductImportSelectMode_32.SystemProcessLockingConflictResolution.table_title2",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td colspan="2" class="table_title_description w e s"><% {out.write(localizeISText("ProductImportSelectMode_32.SelectThePreferredConflictResolutionForThisProduct.table_title_description1",null,null,context.getFormattedValue(getObject("ImportAcquisitionTimeout"),null),context.getFormattedValue(getObject("ImportAcquisitionTimeout"),null),context.getFormattedValue(getObject("ImportAcquisitionTimeout"),null),null,null,null,null,null,null,null));} %><input type="hidden" name="CorrelatedLockingEnabled" value="true"/>
<input type="hidden" name="Timeout" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ImportAcquisitionTimeout"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {79}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
</td>
</tr>
<tr>
<td class="table_detail center e s" width="70">
<input type="Radio" checked="checked" name="SystemLockingConflictPolicy" value="wait"/>
</td>
<td class="table_detail e s" nowrap="nowrap"><% {out.write(localizeISText("ProductImportSelectMode_32.Wait0S.table_detail",null,null,context.getFormattedValue(getObject("ImportAcquisitionTimeout"),null),null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td class="table_detail center e s" width="70">
<input type="Radio" name="SystemLockingConflictPolicy" value="fail"/>
</td>
<td class="table_detail e s" nowrap="nowrap"><% {out.write(localizeISText("ProductImportSelectMode_32.Fail.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% } %><table class="w e s" width="100%" border="0" cellspacing="0">
<tr>
<td align="left">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button">
<input type="hidden" name="JobConfigurationUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("JobConfigurationUUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {108}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="submit" name="ValidateFileRefresh" value="&lt;&lt;&nbsp;<%=context.getFormattedValue(localizeText(context.getFormattedValue("ProductImportSelectMode_32.Previous.button",null)),null)%>" class="button"/>
</td>
</tr>
</table>
</td>
<td align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ProductCSVImport"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",118,e);}if (_boolean_result) { %><input type="hidden" name="ProductCSVImport" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ProductCSVImport"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {119}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><% } %><input type="hidden" name="SelectedFile" value="<% {String value = null;try{value=context.getFormattedValue(getObject("SelectedFile"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {121}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="CurrentOrganizationUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("CurrentOrganization:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {122}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="JobDescription" value="Imports products."/>
<input type="submit" name="Import" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ProductImportSelectMode_32.Import.button",null)),null)%>" class="button"/>
</td>
<td class="button">
<input type="submit" name="Cancel" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ProductImportSelectMode_32.Cancel.button",null)),null)%>" class="button"/>
</td>
</tr>
</table>
</td>
</tr>
</table><% out.print("</form>"); %><!-- EO Main Content -->
<!-- EO Working Area --><% printFooter(out); %>