<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %>
<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PermissionMap:SLD_SYNDICATE_CATALOGS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",3,e);}if (_boolean_result) { %>
	<table border="0" cellspacing="0" cellpadding="0" width="100%" class="e w s" id="pageletEntryPointButtons">
	<tr>
		<td align="right">
			<table border="0" cellspacing="4" cellpadding="0">
			<tr>
				<td class="button">
					<input type="hidden" name="SyndicationUUID"	value="<%=context.getFormattedValue(getObject("Syndication:UUID"),null)%>" />
					<input type="submit" name="UpdateConfig" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("SitemapConfigurationButtons.Apply.button",null)),null)%>" class="button" />
				</td>
				<td class="button">
					<input type="reset" name="reset" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("SitemapConfigurationButtons.Reset.button",null)),null)%>" class="button" />
				</td>
				<% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("ImageTypeViewPairs") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",16,e);}if (_boolean_result) { %>
					<td class="button">
						<input type="submit" name="Delete" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("SitemapConfigurationButtons.Remove.button",null)),null)%>" class="button" />
					</td>
				<% } %>
			</tr>
			</table>
		</tr>
	</table>
<% } %><% printFooter(out); %>