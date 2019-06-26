<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %>
<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("CampaignSearchForm:Invalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",3,e);}if (_boolean_result) { %>
    <tr>
        <td>
            <table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box s">
			    <tr>
			        <td class="error_icon middle e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
			        <td class="error top" width="100%">
					    <% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("CampaignSearchForm:StartDate:Invalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",10,e);}if (_boolean_result) { %>
					       <b><% {out.write(localizeISText("CampaignSearchMessages_52.SearchParameterIsNotValidPleaseEnter.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></b><br/>
					    <% } %>
					    <% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("CampaignSearchForm:EndDate:Invalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",13,e);}if (_boolean_result) { %>
					       <b>
					       	<% {out.write(localizeISText("CampaignSearchMessages_52.SearchParameterIsNotValid.error",null,null,null,null,null,null,null,null,null,null,null,null));} %>
					       <% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("CampaignSearchForm:EndDate:Error(\"error.dateafter\")"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",16,e);}if (_boolean_result) { %>
								<% {out.write(localizeISText("CampaignSearchMessages_52.StartDateNeedsToBeBeforeEndDate.error",null,null,null,null,null,null,null,null,null,null,null,null));} %>
					       <% } %> <% {out.write(localizeISText("CampaignSearchMessages_52.PleaseEnterAValidDate.error",null,null,null,null,null,null,null,null,null,null,null,null));} %>
					       </b><br/>
					    <% } %>
				    </td>
			    </tr>
            </table>
        </td>
    </tr>
<% } %><% printFooter(out); %>