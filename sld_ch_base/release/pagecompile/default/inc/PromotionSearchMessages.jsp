<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %>

<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("PromotionSearchForm:Invalid")).booleanValue() || ((Boolean) getObject("ERROR_NoItemsSelected")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",4,e);}if (_boolean_result) { %>
    <tr>
        <td>
            <table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
			    <tr>
			        <td class="error_icon middle e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
			        <td class="error top" width="100%">
						<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("PromotionSearchForm:StartDateFrom:Invalid")).booleanValue() || ((Boolean) getObject("PromotionSearchForm:StartDateTo:Invalid")).booleanValue() || ((Boolean) getObject("PromotionSearchForm:EndDateFrom:Invalid")).booleanValue() || ((Boolean) getObject("PromotionSearchForm:EndDateTo:Invalid")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",11,e);}if (_boolean_result) { %>
						  
							<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("PromotionSearchForm:StartDateFrom:Invalid")).booleanValue() || ((Boolean) getObject("PromotionSearchForm:StartDateTo:Invalid")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",14,e);}if (_boolean_result) { %>
								<b><% {out.write(localizeISText("PromotionSearchMessages.SearchDateParameterStartDateIsNotValid.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></b><br/>
							<% } %>
							
							<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("PromotionSearchForm:EndDateFrom:Invalid")).booleanValue() || ((Boolean) getObject("PromotionSearchForm:EndDateTo:Invalid")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",18,e);}if (_boolean_result) { %>
								<b><b><% {out.write(localizeISText("PromotionSearchMessages.SearchDateParameterEndDateIsNotValid.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></b><br/>
							<% } %>
						
						<% } %>
						
						<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("PromotionSearchForm:Rank:Invalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",24,e);}if (_boolean_result) { %>
							<b><% {out.write(localizeISText("PromotionSearchMessages.YouHaveToChooseAComparisonOperator.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></b><br/>
						<% } %>
						
						<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("PromotionSearchForm:RankOperator:Invalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",28,e);}if (_boolean_result) { %>
							<b><% {out.write(localizeISText("PromotionSearchMessages.TheOperatorToSearchForPrioritiesCanOnlyBe.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></b><br/>
						<% } %>
				    </td>
			    </tr>
            </table>
        </td>
    </tr>
<% } %><% printFooter(out); %>