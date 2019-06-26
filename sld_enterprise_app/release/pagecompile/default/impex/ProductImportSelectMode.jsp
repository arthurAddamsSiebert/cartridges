<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- Working Area -->
<!-- Page Navigator --><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductImport-SelectMode",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SelectedFile",null),context.getFormattedValue(getObject("SelectedFile"),null))).addURLParameter(context.getFormattedValue("JobConfigurationUUID",null),context.getFormattedValue(getObject("JobConfigurationUUID"),null)))),
new TagParameter("wizard","true"),
new TagParameter("text",localizeText(context.getFormattedValue("PageletContentImportSelectMode.Step3Import.text",null)))}, 4); %><!-- EO Page Navigator -->
<!-- Page Navigator --><% URLPipelineAction action609 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductImport-Dispatch",null)))),null));String site609 = null;String serverGroup609 = null;String actionValue609 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductImport-Dispatch",null)))),null);if (site609 == null){  site609 = action609.getDomain();  if (site609 == null)  {      site609 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup609 == null){  serverGroup609 = action609.getServerGroup();  if (serverGroup609 == null)  {      serverGroup609 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductImport-Dispatch",null)))),null));out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue609, site609, serverGroup609,true)); %><table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="aldi">
<tr>
<td class="table_title" width="100%" nowrap="nowrap"><% {out.write(localizeISText("ProductImportSelectMode.ProductImportImport.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td class="table_title_description" width="100%"><% {out.write(localizeISText("ProductImportSelectMode.Step3Of3SelectAnImportMode.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="6" class="w e s">
<tr>
<td nowrap="nowrap" width="1%" class="label_select"><label class="label label_select" for="ImportMode"><% {out.write(localizeISText("sld_enterprise_app.ImportMode.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td align="left" colspan="2">
<select name="ImportMode" id="ImportMode" size="1" class="select inputfield_en" style="width:200px">
<option value="OMIT"><% {out.write(localizeISText("ImageMetadataImportSelectMode.OMIT.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="IGNORE"><% {out.write(localizeISText("ImageMetadataImportSelectMode.IGNORE.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="INITIAL"><% {out.write(localizeISText("ImageMetadataImportSelectMode.INITIAL.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="DELETE"><% {out.write(localizeISText("ImageMetadataImportSelectMode.DELETE.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="REPLACE"><% {out.write(localizeISText("ImageMetadataImportSelectMode.REPLACE.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="UPDATE" selected="selected"><% {out.write(localizeISText("ImageMetadataImportSelectMode.UPDATE.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
</select>
</td>
</tr>
</table><% {try{executePipeline("ProcessProductLock-GetLockPreference",((java.util.Map)(((new ParameterMap().addParameter(new ParameterEntry("PreferenceDomain",getObject("CurrentMasterRepository:OwningDomain"))))))),"ProductLockInfoDictionary");}catch(Exception e){Logger.error(this,"ISPIPELINE failed. Line: 39.",e);}} %> 
<% {Object temp_obj = ((((context.getFormattedValue(getObject("ProductLockInfoDictionary:ProductLockActivated"),null).equals(context.getFormattedValue("false",null)))) ? Boolean.TRUE : Boolean.FALSE)); getPipelineDictionary().put("UserLockConflictPolicySelectionDisabled", temp_obj);} %><% {Object temp_obj = ((((context.getFormattedValue(getObject("ProductLockInfoDictionary:CorrelatedLockingEnabled"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE)); getPipelineDictionary().put("CorrelatedLockingEnabled", temp_obj);} %><% {Object temp_obj = (getObject("ProductLockInfoDictionary:ImportAcquisitionTimeout")); getPipelineDictionary().put("ImportAcquisitionTimeout", temp_obj);} %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("CorrelatedLockingEnabled"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",44,e);}if (_boolean_result) { %><!-- Locking Conflict Policies--><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("UserLockConflictPolicySelectionDisabled"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",46,e);}if (_boolean_result) { %><input type="hidden" name="UserLockingConflictPolicy" value="ignore"/><% } else { %><table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e" >
<tr>
<td colspan="2" class="table_title2 left s"><% {out.write(localizeISText("PageletContentImportSelectMode.UserLockingConflictResolution.table_title2",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td colspan="2" class="table_title_description w e s"><% {out.write(localizeISText("ProductImportSelectMode.SelectThePreferredConflictResolutionObject.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td class="table_detail center e s" width="70">
<input type="Radio" checked="checked" name="UserLockingConflictPolicy" value="steal"/>
</td>
<td class="table_detail e s" nowrap="nowrap"><% {out.write(localizeISText("ProductImportSelectMode.StealLocks.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td class="table_detail center e s" width="70">
<input type="Radio" name="UserLockingConflictPolicy" value="fail"/>
</td>
<td class="table_detail e s" nowrap="nowrap"><% {out.write(localizeISText("ProductImportSelectMode.Fail.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% } %> 
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e" >
<tr>
<td colspan="3" class="table_title2 left s"><% {out.write(localizeISText("ReplicationTargetListInc.SystemProcessLockingConflictResolution.table_title2",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td colspan="2" class="table_title_description w e s"><% {out.write(localizeISText("ProductImportSelectMode.SelectThePreferredConflictResolutionAny.table_title_description",null,null,context.getFormattedValue(getObject("ImportAcquisitionTimeout"),null),context.getFormattedValue(getObject("ImportAcquisitionTimeout"),null),context.getFormattedValue(getObject("ImportAcquisitionTimeout"),null),null,null,null,null,null,null,null));} %><input type="hidden" name="CorrelatedLockingEnabled" value="true"/>
<input type="hidden" name="Timeout" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ImportAcquisitionTimeout"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {84}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
</td>
</tr>
<tr>
<td class="table_detail center e s" width="70">
<input type="Radio" checked="checked" name="SystemLockingConflictPolicy" value="wait"/>
</td>
<td class="table_detail e s" nowrap="nowrap"><% {out.write(localizeISText("ProductImportSelectMode.Wait0S.table_detail",null,null,context.getFormattedValue(getObject("ImportAcquisitionTimeout"),null),null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td class="table_detail center e s" width="70">
<input type="Radio" name="SystemLockingConflictPolicy" value="fail"/>
</td>
<td class="table_detail e s" nowrap="nowrap"><% {out.write(localizeISText("ProductImportSelectMode.Fail.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% } %><table class="w e s" width="100%" border="0" cellspacing="0">
<tr>
<td align="left">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button">
<input type="hidden" name="JobConfigurationUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("JobConfigurationUUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {113}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="submit" name="ValidateFileRefresh" value="&lt;&lt;&nbsp;<%=context.getFormattedValue(localizeText(context.getFormattedValue("PageletSelectComponentSlot.Previous.button",null)),null)%>" class="button"/>
</td>
</tr>
</table>
</td>
<td align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button">
<input type="hidden" name="CurrentOrganizationUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("CurrentOrganization:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {123}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="SelectedFile" value="<% {String value = null;try{value=context.getFormattedValue(getObject("SelectedFile"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {124}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="JobDescription" value="Imports products."/>
<input type="submit" name="Import" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PageletImpexOverview.Import.button",null)),null)%>" class="button"/>
</td>
<td class="button">
<input type="submit" name="Cancel" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PageletEntryPointSetParent.Cancel.button",null)),null)%>" class="button"/>
</td>
</tr>
</table>
</td>
</tr>
</table>
</td>
</tr>
</table><% out.print("</form>"); %><!-- EO Main Content -->
<!-- EO Working Area --><% printFooter(out); %>