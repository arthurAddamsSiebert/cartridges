<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %>
<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ABTestSearchForm:Invalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",3,e);}if (_boolean_result) { %>
    <tr>
        <td>
            <table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box e w s">
			    <tr>
			        <td class="error_icon middle e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
			        <td class="error top" width="100%">
			        
					    <% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ABTestSearchForm:StartDate:Error(\"error.date\")"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",11,e);}if (_boolean_result) { %>
					       <b><% {out.write(localizeISText("ABTestSearchMessages_52.SearchParameterStartDateIsNotValid.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></b><br/>
					    <% } %>

					    <% _boolean_result=false;try {_boolean_result=((Boolean)((getObject("ABTestSearchForm:EndDate:Invalid")))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",15,e);}if (_boolean_result) { %>
					    	 <% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ABTestSearchForm:EndDate:Error(\"error.date\")"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",16,e);}if (_boolean_result) { %>
					       		<b>	<% {out.write(localizeISText("ABTestSearchMessages_52.SearchParameterEndDateIsNotValid.error",null,null,null,null,null,null,null,null,null,null,null,null));} %>
					       	 <% } %>	
					       	 <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("ABTestSearchForm:EndDate:Error(\"error.dateafter\")")).booleanValue() && !((Boolean) getObject("ABTestSearchForm:StartDate:Invalid")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",19,e);}if (_boolean_result) { %>
								<% {out.write(localizeISText("ABTestSearchMessages_52.EndDateNeedToBeAfterStartDate.error",null,null,null,null,null,null,null,null,null,null,null,null));} %>
					       	 <% } %>
					        <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("ABTestSearchForm:EndDate:Error(\"error.date\")")).booleanValue() || ((Boolean) (((((Boolean) getObject("ABTestSearchForm:EndDate:Error(\"error.dateafter\")")).booleanValue() && !((Boolean) (getObject("ABTestSearchForm:StartDate:Error(\"error.date\")"))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",22,e);}if (_boolean_result) { %>
					       		<% {out.write(localizeISText("ABTestSearchMessages_52.PleaseEnterAValidDate.error",null,null,null,null,null,null,null,null,null,null,null,null));} %>
					       		</b><br/>
					       	<% } %>	
					       
					    <% } %>
				    </td>
			    </tr>
            </table>
        </td>
    </tr>
<% } %><% printFooter(out); %>