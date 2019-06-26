<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %>

<input type="hidden" name="ServiceDefinitionTitle" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ServiceDefinitionTitle"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {4}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" />
<table border="0" cellspacing="0" cellpadding="0" width="100%" class="e w">
	<tr>
		<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) ((disableErrorMessages().isDefined(getObject("AssignedParameterGroups"))))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",7,e);}if (_boolean_result) { %>
			<td class="table_detail n">
				<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ServiceDefinition:ServiceInformation:ConfigurationLinkChannel")))).booleanValue() && !((Boolean) ((((context.getFormattedValue("service/ConfigurationLinkChannel.isml",null).equals(context.getFormattedValue(getObject("ServiceDefinition:ServiceInformation:ConfigurationLinkChannel"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",9,e);}if (_boolean_result) { %>
					<div><% {out.write(localizeISText("ServicesNewWizardStep3_inc.ThisServiceUsesAnExternalConfiguration",null,null,null,null,null,null,null,null,null,null,null,null));} %></div>
					<div><% {out.write(localizeISText("ServicesNewWizardStep3_inc.PleaseClickOnNextButtonForTheNextStepInWizard",null,null,null,null,null,null,null,null,null,null,null,null));} %></div>
				<% } else { %>
					<% {out.write(localizeISText("ServicesNewWizardStep3_inc.NoConfigurationForSelectedServiceTypeRequired",null,null,null,null,null,null,null,null,null,null,null,null));} %>
				<% } %>
			</td>
		<% } else { %>
			<td>
				<table border="0" cellspacing="0" cellpadding="0" width="100%">
					<% {Object temp_obj = ("true"); getPipelineDictionary().put("parameterGroupsEmpty", temp_obj);} %>
					<% while (loop("AssignedParameterGroups","ParameterGroup",null)) { %>
						<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (getObject("ParameterGroup:Empty"))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",21,e);}if (_boolean_result) { %>
							<% {Object temp_obj = ("false"); getPipelineDictionary().put("parameterGroupsEmpty", temp_obj);} %>
						<% } %>
						<% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/ServiceConfigurationParameterGroup.isml", null, "24");} %>
					<% } %>
				</table>
			</td>
			<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("parameterGroupsEmpty"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",28,e);}if (_boolean_result) { %>
				<td class="table_detail n">
					<% {out.write(localizeISText("ServicesNewWizardStep3_inc.NoConfigurationForSelectedServiceTypeRequired.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %>
				</td>
			<% } %>
		<% } %>
	</tr>
</table>
<% printFooter(out); %>