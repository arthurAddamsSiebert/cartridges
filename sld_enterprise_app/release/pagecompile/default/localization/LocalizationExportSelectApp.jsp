<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %>
<% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewLocalizationExport-SelectApp",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ExportFileFormat",null),context.getFormattedValue(getObject("ExportFileFormat"),null))))),
new TagParameter("wizard","true"),
new TagParameter("text",localizeText(context.getFormattedValue("sld_enterprise_app.LocalizationExportStep1SelectApplicationType.text",null)))}, 3); %>
<% URLPipelineAction action302 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewLocalizationExport-Dispatch",null)))),null));String site302 = null;String serverGroup302 = null;String actionValue302 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewLocalizationExport-Dispatch",null)))),null);if (site302 == null){  site302 = action302.getDomain();  if (site302 == null)  {      site302 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup302 == null){  serverGroup302 = action302.getServerGroup();  if (serverGroup302 == null)  {      serverGroup302 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewLocalizationExport-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("LocalizationExportSelectApp");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue302, site302, serverGroup302,true)); %>
    <input type="hidden" name="ExportFileFormat" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ExportFileFormat"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {5}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
    <table border="0" cellpadding="0" cellspacing="0" width="100%">
        <tr>
            <td width="100%" class="table_title aldi"><% {out.write(localizeISText("sld_enterprise_app.LocalizationExportStep1SelectApplicationType.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
        </tr>
        <tr>
            <td class="table_title_description e w"><% {out.write(localizeISText("sld_enterprise_app.Step1Of3SelectApplicationTypesNextStepSelectLocale.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %>
            </td>
        </tr>
    </table>
    <table border="0" cellpadding="5" cellspacing="0" class="infobox_locale w e s w100">
        <tr>
        	<td nowrap="nowrap" class="label_select"><label class="label label_select" for="AppId"><% {out.write(localizeISText("sld_enterprise_app.ApplicationType.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
            <td>
                <select name="AppId" id="AppId" class="select inputfield_en">
                <% while (loop("LocalizationRepositories","Repository",null)) { %>
                    <option value="<% {String value = null;try{value=context.getFormattedValue(getObject("Repository:AppID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {21}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
                        <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Repository:AppID"),null).equals(context.getFormattedValue(getObject("AppId"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",22,e);}if (_boolean_result) { %>selected="selected"<% } %>
                    >
                        <% {String value = null;try{value=context.getFormattedValue(getObject("Repository:AppID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {24}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;
                    </option>
                <% } %>
                </select>           
            </td>           
            <td width="90%" align="left">
            </td>
        </tr>
    </table>

    <table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
        <tr>
            <td align="right">
                <table cellpadding="0" cellspacing="4" border="0">
                    <tr>
                        <td class="button">
                            <input type="hidden" name="PageableID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Users:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {40}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
                            <input type="submit" name="SearchLocale" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.Next.button",null)),null)%>&nbsp;&gt;&gt;" class="button" <% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) ((hasLoopElements("LocalizationRepositories") ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",41,e);}if (_boolean_result) { %>disabled="disabled"<% } %>/>
                        </td>
                        <td class="button"><input type="submit" name="Cancel" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.Cancel.button",null)),null)%>" class="button"/></td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
<% out.print("</form>"); %> 
<% printFooter(out); %>