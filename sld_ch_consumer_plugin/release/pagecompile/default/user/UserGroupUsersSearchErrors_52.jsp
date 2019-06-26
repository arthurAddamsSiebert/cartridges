<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("SearchTermError")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("BusinessPartnerNoError")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("FirstNameError")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("LastNameError")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("LoginError")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("CreationDateFromError")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("CreationDateToError")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("CreationDateError")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",1,e);}if (_boolean_result) { %>
	<table border="0" cellpadding="0" cellspacing="0" width="100%">
		<tr>
			<td>
			<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box s e w">
				<tr>
					<td class="error_icon e middle"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
					<td class="error" width="100%">
						<% {out.write(localizeISText("UserGroupUsersSearchErrors_52.PleaseProvideAValidSearchMask.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/>
						<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("SearchTermError")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("BusinessPartnerNoError")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("FirstNameError")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("LastNameError")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("LoginError")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",17,e);}if (_boolean_result) { %>
							<% {out.write(localizeISText("UserGroupUsersSearchErrors_52.UseMoreCharactersBeforeTheFirstWildcard.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/>
						<% } %>
						<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CreationDateFromError"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",24,e);}if (_boolean_result) { %>
							<% {out.write(localizeISText("UserGroupUsersSearchErrors_52.ProvideAValidCreationFromDate.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/>
						<% } %>
						<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CreationDateToError"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",27,e);}if (_boolean_result) { %>
							<% {out.write(localizeISText("UserGroupUsersSearchErrors_52.ProvideAValidCreationToDate.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/>
						<% } %>
						<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CreationDateError"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",30,e);}if (_boolean_result) { %>
							<% {out.write(localizeISText("UserGroupUsersSearchErrors_52.CreationFromDateMustBeEarlierThanCreationToDate.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/>	
						<% } %>
					</td>
				</tr>
			</table>
			</td>
		</tr>
	</table>
<% } %>
<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("SearchExecutionError"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",40,e);}if (_boolean_result) { %>
	<table border="0" cellpadding="0" cellspacing="0" width="100%">
		<tr>
			<td>
				<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box s e w">
					<tr>
						<td class="error_icon e middle"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
						<td class="error" width="100%"><% {out.write(localizeISText("UserGroupUsersSearchErrors_52.TheSearchCouldNotBeExecutedSuccessfully.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
<% } %><% printFooter(out); %>