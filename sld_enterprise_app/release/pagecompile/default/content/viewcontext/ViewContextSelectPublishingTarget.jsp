<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %>

<% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("wizard","true"),
new TagParameter("text",localizeText(context.getFormattedValue("ViewContextSelectPublishingTarget.ReplicateContent.text",null)))}, 3); %>

<table border="0" cellspacing="0" cellpadding="0" width="100%">
    <tr>
        <td class="table_title aldi"><% {out.write(localizeISText("ViewContextSelectPublishingTarget.ReplicateViewContexts.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
    </tr>
</table>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
    <tr>
        <td class="table_title_description w e s">

      <% {Object temp_obj = (""); getPipelineDictionary().put("disableButtonString", temp_obj);} %>
      <% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (hasLoopElements("TargetClusters") ? Boolean.TRUE : Boolean.FALSE)).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",15,e);}if (_boolean_result) { %>
        <% {Object temp_obj = ("disabled=\"disabled\""); getPipelineDictionary().put("disableButtonString", temp_obj);} %>
        <% {out.write(localizeISText("ViewContextSelectPublishingTarget.NoTargetSystemFound.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %>
      <% } else { %>
        <% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (((((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannel")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_DATA_REPLICATION")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) (((((Boolean) ((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannel")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_DATA_REPLICATION")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",19,e);}if (_boolean_result) { %>
          <% {Object temp_obj = ("disabled=\"disabled\""); getPipelineDictionary().put("disableButtonString", temp_obj);} %>
          <% {out.write(localizeISText("ViewContextSelectPublishingTarget.NoPermissionToProceedWithReplication.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %>
        <% } else { %>
                <% {out.write(localizeISText("ViewContextSelectPublishingTarget.Step1Of1SelectTargetSystemAndClickFinishToStartThe.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %>
        <% } %>
      <% } %>

        </td>
    </tr>
</table>
<% URLPipelineAction action389 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewViewContexts-Dispatch",null)))),null));String site389 = null;String serverGroup389 = null;String actionValue389 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewViewContexts-Dispatch",null)))),null);if (site389 == null){  site389 = action389.getDomain();  if (site389 == null)  {      site389 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup389 == null){  serverGroup389 = action389.getServerGroup();  if (serverGroup389 == null)  {      serverGroup389 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewViewContexts-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("ActionParameterForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue389, site389, serverGroup389,true)); %>
    <table border="0" cellpadding="0" cellspacing="0" width="100%">
        <tr>
            <td>
                <% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"replication/ReplicationTargetListInc", null, "34");} %>
                <table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
                    <tr>
                        <td align="right">
                            <table border="0" cellspacing="4" cellpadding="0">
                                <tr>
                                    <td class="button">
                                        <input type="hidden" name="ContentRepositoryUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ContentRepository:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {41}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
                                        <input type="hidden" name="ProcessDescription" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ViewContextSelectPublishingTarget.ReplicateSelectedViewContexts.input",null)),null)%>"/>
                                        <input type="hidden" name="PageableID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("PageableID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {43}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
                                        <input type="submit" name="confirmStaging" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ViewContextSelectPublishingTarget.Finish.button",null)),null)%>" class="button" <% {String value = null;try{value=context.getFormattedValue(getObject("disableButtonString"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {44}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> />
                                    </td>
                                    <td class="button">
                                        <input type="hidden" name="PageLocatorName" value="<% {String value = null;try{value=context.getFormattedValue(getObject("PageLocatorName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {47}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
                                        <input type="submit" name="cancelStaging" value="Cancel" class="button"/>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
<% out.print("</form>"); %>             <% printFooter(out); %>