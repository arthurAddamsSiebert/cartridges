<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- Working Area -->
<!-- Main Content --><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("listview","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewSynchronization_32-Overview",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null))))),
new TagParameter("wizard","true"),
new TagParameter("text",localizeText(context.getFormattedValue("SynchronizationOverview_32.Synchronization.text",null)))}, 4); %><% URLPipelineAction action216 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewSynchronization_32-Dispatch",null)))),null));String site216 = null;String serverGroup216 = null;String actionValue216 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewSynchronization_32-Dispatch",null)))),null);if (site216 == null){  site216 = action216.getDomain();  if (site216 == null)  {      site216 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup216 == null){  serverGroup216 = action216.getServerGroup();  if (serverGroup216 == null)  {      serverGroup216 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewSynchronization_32-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("formMask");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue216, site216, serverGroup216,true)); %><table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<!-- Space -->
<td valign="top">
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" class="table_title aldi"><% {out.write(localizeISText("SynchronizationOverview_32.SynchronizeProducts.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr> 
<!-- confirmation if nothing is selected --><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("NothingSelected"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",16,e);}if (_boolean_result) { %><tr>
<td>
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s"> 
<tr>
<td class="error_icon e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error" width="100%"><% {out.write(localizeISText("SynchronizationOverview_32.YouHaveNotSelectedAnySourceRepositoryUseTheCheckbox.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
</td>
</tr><% } else { %><!-- confirmation synchronization of all repositories--><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("confirmSynchronization"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",31,e);}if (_boolean_result) { %><tr>
<td class="w e s">
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="confirm_box"> 
<tr> 
<% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("Products:ElementCount")).doubleValue() ==((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",36,e);}if (_boolean_result) { %><td class="error_icon e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error" width="100%"><% {out.write(localizeISText("SynchronizationOverview_32.NoChangedProductsToSynchronizeFound.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></td> 
<% } else { %><td class="error_icon e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/confirmation.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error" width="100%"><% {out.write(localizeISText("SynchronizationOverview_32.0ProductsWillBeSynchronizedYouCanCheckTheProgress.error",null,null,context.getFormattedValue(getObject("Products:ElementCount"),null),null,null,null,null,null,null,null,null,null));} %></td>
<td>
<table border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="button"><input type="submit" name="synchronize" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("SynchronizationOverview_32.OK.button",null)),null)%>" class="button"/></td>
<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="4" height="0" alt="" border="0"/></td>
<td class="button"><input type="submit" name="cancel" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("SynchronizationOverview_32.Cancel.button",null)),null)%>" class="button"/></td>
</tr>
</table>
</td><% } %></tr> 
</table>
</td>
</tr><% } %><!-- start error handling --><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("SyncErrorCode"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",61,e);}if (_boolean_result) { %><tr>
<td> 
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr valign="top"> 
<td class="error_icon top e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error top" width="100%"><% {out.write(localizeISText("SynchronizationOverview_32.SynchronizationIsAlreadyInProgress.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table> 
</td>
</tr><% } %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("confirmSynchronizationAll"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",74,e);}if (_boolean_result) { %><tr>
<td class="w e s">
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="confirm_box">
<tr>
<td class="error_icon e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/confirmation.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error" width="100%"><% {out.write(localizeISText("SynchronizationOverview_32.0ProductsWillBeSynchronizedYouCanCheckTheProgress.error",null,null,context.getFormattedValue(getObject("Products:ElementCount"),null),null,null,null,null,null,null,null,null,null));} %></td>
<td>
<table border="0" cellspacing="0" cellpadding="0" width="100%">
<tr>
<td class="button"><input type="submit" name="synchronizeAll" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("SynchronizationOverview_32.OK.button",null)),null)%>" class="button"/></td>
<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="4" height="0" alt="" border="0"/></td>
<td class="button"><input type="submit" name="cancel" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("SynchronizationOverview_32.Cancel.button",null)),null)%>" class="button"/></td>
</tr>
</table>
</td>
</tr> 
</table>
</td>
</tr><% } %> 
<tr>
<td class="table_title_description w e s"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_SYNDICATE_CATALOGS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",100,e);}if (_boolean_result) { %><% {out.write(localizeISText("SynchronizationOverview_32.SynchronizeProductsToUpdateDerivedProductsInThis.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else { %><% {out.write(localizeISText("SynchronizationOverview_32.ClickDetailsToViewTheChangedProductsInTheSelected.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %></td>
</tr> 
<% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Parents") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",107,e);}if (_boolean_result) { %> 
<tr>
<td>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr> 
<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_SYNDICATE_CATALOGS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",112,e);}if (_boolean_result) { %><td class="w s" nowrap="nowrap" width="80">
<div id="A">
<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
<tr>
<td nowrap="nowrap">
<a href="javascript:selectAll('formMask','RepositoryUUID','A','B');" class="tableheader"><% {out.write(localizeISText("SynchronizationOverview_32.SelectAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
</td>
</tr>
</table>
</div>
<div id="B" style="display:none">
<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
<tr>
<td nowrap="nowrap">
<a href="javascript:selectAll('formMask','RepositoryUUID','A','B');" class="tableheader"><% {out.write(localizeISText("SynchronizationOverview_32.ClearAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
</td>
</tr>
</table>
</div> 
</td><% } %> 
<td class="table_header w s"> <% {out.write(localizeISText("SynchronizationOverview_32.Source.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %> </td>
<td class="table_header w s"> <% {out.write(localizeISText("SynchronizationOverview_32.LastSynchronization.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %> </td>
<td class="table_header w s"> <% {out.write(localizeISText("SynchronizationOverview_32.ChangedProducts.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %> </td>
<td class="table_header w s"> <% {out.write(localizeISText("SynchronizationOverview_32.Schedule.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %> </td>
<td class="table_header w e s">&nbsp;</td> 
</tr><% while (loop("Parents",null,null)) { %> 
<% {Object temp_obj = ("false"); getPipelineDictionary().put("isSelected", temp_obj);} %> 
<% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Selection") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",142,e);}if (_boolean_result) { %> 
<% while (loop("Selection",null,null)) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Parents:UUID"),null).equals(context.getFormattedValue(getObject("Selection"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",144,e);}if (_boolean_result) { %><% {out.flush();%><%@page import="com.intershop.beehive.core.capi.url.*"%><%URLRewriteHandler handler = getTemplateExecutionConfig().getURLRewriteHandler();
try
{
getTemplateExecutionConfig().setURLRewriteHandler(NullURLRewriteHandler.getInstance());
processRemoteIncludeAutomatic((com.intershop.beehive.core.capi.request.ServletResponse)response,context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewSynchronization_32-ViewParentRepository",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null))).addURLParameter(context.getFormattedValue("RepositoryUUID",null),context.getFormattedValue(getObject("Parents:UUID"),null)).addURLParameter(context.getFormattedValue("Checked",null),context.getFormattedValue("Checked",null))),null), null, null, "144");}
finally
{
    getTemplateExecutionConfig().setURLRewriteHandler(handler);
}} %><% {Object temp_obj = ("true"); getPipelineDictionary().put("isSelected", temp_obj);} %><% if (getLoopStack().isEmpty()) {Logger.error(this,"ISBREAK occured outside ISLOOP. Line: {}",144);}else{getLoopStack().pop();break;} %><% } %><% } %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("isSelected"),null).equals(context.getFormattedValue("false",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",147,e);}if (_boolean_result) { %><% {out.flush();%><%@page import="com.intershop.beehive.core.capi.url.*"%><%URLRewriteHandler handler = getTemplateExecutionConfig().getURLRewriteHandler();
try
{
getTemplateExecutionConfig().setURLRewriteHandler(NullURLRewriteHandler.getInstance());
processRemoteIncludeAutomatic((com.intershop.beehive.core.capi.request.ServletResponse)response,context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewSynchronization_32-ViewParentRepository",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null))).addURLParameter(context.getFormattedValue("RepositoryUUID",null),context.getFormattedValue(getObject("Parents:UUID"),null))),null), null, null, "148");}
finally
{
    getTemplateExecutionConfig().setURLRewriteHandler(handler);
}} %> 
<% } %> 
<% } %> 
</table>
</td>
</tr> 
<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_SYNDICATE_CATALOGS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",154,e);}if (_boolean_result) { %> 
<tr>
<td align="right" colspan="2" class="w e s">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button">
<input type="hidden" name="PageableName" value="Objects"/>
<input type="hidden" name="ProcessDescription" value="<% {out.write(localizeISText("SynchronizationOverview_32.SynchronizeProducts","",null,null,null,null,null,null,null,null,null,null,null));} %>"/>
<input type="submit" name="confirmSynchronizationAll" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("SynchronizationOverview_32.SynchronizeAll.button",null)),null)%>" class="button"/>
</td>
<td class="button"><input type="submit" name="confirmSynchronization" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("SynchronizationOverview_32.Synchronize.button",null)),null)%>" class="button"/></td>
<td class="button"><input type="submit" name="apply" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("SynchronizationOverview_32.Apply.button",null)),null)%>" class="button"/></td>
<td class="button"><input type="submit" name="reset" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("SynchronizationOverview_32.Reset.button",null)),null)%>" class="button"/></td>
</tr>
</table> 
</td> 
</tr><% } %><% } else { %><tr>
<td class="table_detail w e s"><% {out.write(localizeISText("SynchronizationOverview_32.NoSourceRepositoryFound.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr> 
<% } %> 
</table>
</td>
</tr>
</table><% out.print("</form>"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/Back", null, "182");} %><!-- EO Main Content -->
<!-- EO Working Area --><% printFooter(out); %>