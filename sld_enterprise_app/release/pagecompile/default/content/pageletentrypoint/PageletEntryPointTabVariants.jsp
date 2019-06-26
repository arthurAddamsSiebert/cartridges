<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %>
<% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"content/Modules", null, "3");} %>
<% processOpenTag(response, pageContext, "createmap", new TagParameter[] {
new TagParameter("key0","PageletEntryPointUUID"),
new TagParameter("value0",getObject("PageletEntryPoint:UUID")),
new TagParameter("mapname","Parameters")}, 4); %>
<% {try{executePipeline("ViewPageletEntryPoint-IsTabSwitched",((java.util.Map)(getObject("Parameters"))),"TabStatus");}catch(Exception e){Logger.error(this,"ISPIPELINE failed. Line: 5.",e);}} %>
<% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("PageletEntryPoint:ContentEntryPointDefinition:ConfigurationParameterDefinitions") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",6,e);}if (_boolean_result) { %>
	<% URLPipelineAction action411 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPageletEntryPoint-Dispatch",null)))),null));String site411 = null;String serverGroup411 = null;String actionValue411 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPageletEntryPoint-Dispatch",null)))),null);if (site411 == null){  site411 = action411.getDomain();  if (site411 == null)  {      site411 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup411 == null){  serverGroup411 = action411.getServerGroup();  if (serverGroup411 == null)  {      serverGroup411 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPageletEntryPoint-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("setLocale");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue411, site411, serverGroup411,true)); %>
	    <table border="0" cellpadding="4" cellspacing="0" width="100%" class="infobox_locale w e s">
	        <tr>
	            <td nowrap="nowrap" class="label_select"><label class="label label_select label_light" for="LocaleId"><% {out.write(localizeISText("PageletEntryPointTabVariants.SelectLanguage.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
	            <td class="infobox_item">
	                <select name="LocaleId" id="LocaleId" class="select inputfield_en">
	                    <% while (loop("TabStatus:Locales","Current",null)) { %>
	                        <option value="<% {String value = null;try{value=context.getFormattedValue(getObject("Current:LocaleID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {14}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Current:LocaleID"),null).equals(context.getFormattedValue(getObject("Locale:LocaleID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",14,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {String value = null;try{value=context.getFormattedValue(getObject("Current:getDisplayName(TabStatus:SessionLocale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {14}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</option>
	                    <% } %>
	                </select>
	            </td>
				<td width="100%">
				    <table border="0" cellspacing="0" cellpadding="0">
				        <tr>
				            <td class="button">
				                <input name="PageletEntryPointUUID" type="hidden" value="<% {String value = null;try{value=context.getFormattedValue(getObject("PageletEntryPoint:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {22}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
				                <input name="ContentRepositoryUUID" type="hidden" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ContentRepository:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {23}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
				                <input name="PageLocatorName" type="hidden" value="<% {String value = null;try{value=context.getFormattedValue(getObject("PageLocatorName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {24}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
				                <input name="SelectedTab" type="hidden" value="Variants"/>
				                <input type="submit" name="setLocale" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PageletEntryPointTabVariants.Apply.button",null)),null)%>" class="button"/>
				            </td>
				        </tr>
				    </table>
				</td>
            </tr>
        </table>
    <% out.print("</form>"); %>
<% } %>
<% processOpenTag(response, pageContext, "pageletentrypointpageletassignments", new TagParameter[] {
new TagParameter("Locale",getObject("Locale")),
new TagParameter("ContextType","PageletEntryPoint"),
new TagParameter("parametervalue4",getObject("PageLocatorName")),
new TagParameter("parametername0","PageletEntryPointUUID"),
new TagParameter("parametervalue3","Variants"),
new TagParameter("parametername1","ContentRepositoryUUID"),
new TagParameter("parametervalue2",getObject("Locale:LocaleID")),
new TagParameter("parametervalue1",getObject("ContentRepository:UUID")),
new TagParameter("parametername2","LocaleId"),
new TagParameter("parametervalue0",getObject("PageletEntryPoint:UUID")),
new TagParameter("parametername3","SelectedTab"),
new TagParameter("ContextPipeline","ViewPageletEntryPoint-InternalView"),
new TagParameter("PermissionMap",getObject("PermissionMap")),
new TagParameter("ContextObject",getObject("PageletEntryPoint")),
new TagParameter("StartFlag",getObject("TabStatus:Flag")),
new TagParameter("Repository",getObject("ContentRepository")),
new TagParameter("parametername4","PageLocatorName")}, 35); %>
<% printFooter(out); %>