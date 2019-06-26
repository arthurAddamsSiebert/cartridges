<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("listview","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewReplicateProducts-SelectTarget",null))))),
new TagParameter("wizard","true"),
new TagParameter("text",localizeText(context.getFormattedValue("ReplicateProductsWizardSelectTarget.ReplicateProducts.text",null)))}, 3); %><table border="0" cellspacing="0" cellpadding="0" width="100%">
<tr>
<td class="table_title aldi"><% {out.write(localizeISText("ReplicateProductsWizardSelectTarget.ReplicateProducts.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td class="table_title_description w e s"><% {out.write(localizeISText("ReplicateProductsWizardSelectTarget.SelectTargetSystemAndClickFinishToStartTheReplicat.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% URLPipelineAction action216 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewReplicateProducts-Dispatch",null)))),null));String site216 = null;String serverGroup216 = null;String actionValue216 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewReplicateProducts-Dispatch",null)))),null);if (site216 == null){  site216 = action216.getDomain();  if (site216 == null)  {      site216 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup216 == null){  serverGroup216 = action216.getServerGroup();  if (serverGroup216 == null)  {      serverGroup216 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewReplicateProducts-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("ActionParameterForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue216, site216, serverGroup216,true)); %><table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentProductRepository"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",21,e);}if (_boolean_result) { %><% {Object temp_obj = (getObject("CurrentProductRepository:RepositoryDomain")); getPipelineDictionary().put("ProductLockPreferenceDomain", temp_obj);} %><% } else { %><% {Object temp_obj = (getObject("CurrentMasterRepository:OwningDomain")); getPipelineDictionary().put("ProductLockPreferenceDomain", temp_obj);} %><% } %><% {try{executePipeline("ProcessProductLock-GetLockPreference",((java.util.Map)(((new ParameterMap().addParameter(new ParameterEntry("PreferenceDomain",getObject("ProductLockPreferenceDomain"))))))),"ProductLockInfoDictionary");}catch(Exception e){Logger.error(this,"ISPIPELINE failed. Line: 26.",e);}} %> 
<% {Object temp_obj = ((((context.getFormattedValue(getObject("ProductLockInfoDictionary:PageletLocking"),null).equals(context.getFormattedValue("false",null)))) ? Boolean.TRUE : Boolean.FALSE)); getPipelineDictionary().put("UserLockConflictPolicySelectionDisabled", temp_obj);} %><% {Object temp_obj = ((((context.getFormattedValue(getObject("ProductLockInfoDictionary:CorrelatedLockingEnabled"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE)); getPipelineDictionary().put("CorrelatedLockingEnabled", temp_obj);} %><% {Object temp_obj = (getObject("ProductLockInfoDictionary:ReplicationAcquisitionTimeout")); getPipelineDictionary().put("ReplicationAcquisitionTimeout", temp_obj);} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"replication/ReplicationTargetListInc", null, "30");} %><table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("NoWizard")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",35,e);}if (_boolean_result) { %><td align="left">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button">
<input type="hidden" name="ActionID" value="ReplicateProducts"/>
<input type="submit" name="actionList" value="&lt;&lt;&nbsp;<%=context.getFormattedValue(localizeText(context.getFormattedValue("ReplicateProductsWizardSelectTarget.Previous.button",null)),null)%>" class="button"/>
</td>
</tr>
</table>
</td><% } %><td align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/product/bulkwizard/WizardParams", null, "51");} %><input type="hidden" name="ProductsPageableID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Products:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {52}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="ProcessDescription" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ReplicateProductsWizardSelectTarget.ReplicateSelectedProducts.input",null)),null)%>"/>
<input type="submit" name="startReplication" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ReplicateProductsWizardSelectTarget.Finish.button",null)),null)%>" class="button" <% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (hasLoopElements("TargetClusters") ? Boolean.TRUE : Boolean.FALSE)).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",54,e);}if (_boolean_result) { %>disabled="disabled"<% } %>/>
</td>
<td class="button">
<input type="hidden" name="PageableName" value="Products"/>
<input type="hidden" name="ProductID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ProductID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {58}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="IsSearchFired" value="<% {String value = null;try{value=context.getFormattedValue(getObject("IsSearchFired"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {59}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" />
<input type="submit" name="cancel" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ReplicateProductsWizardSelectTarget.Cancel.button",null)),null)%>" class="button"/>
</td>
</tr>
</table>
</td>
</tr>
</table>
</td>
</tr>
</table><% out.print("</form>"); %><% printFooter(out); %>