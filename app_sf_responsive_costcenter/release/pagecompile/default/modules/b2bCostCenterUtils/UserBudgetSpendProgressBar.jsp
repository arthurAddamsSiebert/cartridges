<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("User"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",3,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "userbudgetcalculator", new TagParameter[] {
new TagParameter("UserBudgetCalculator","UserBudgetCalculator"),
new TagParameter("User",getObject("User"))}, 5); %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("UserBudgetCalculator"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",7,e);}if (_boolean_result) { %><div class="progress" data-toggle="popover" data-html="true" data-placement="top" data-content="<p><strong><% {out.write(localizeISText("account.user.list.table.budget_spend_by_user","",null,null,null,null,null,null,null,null,null,null,null));} %></strong></p>
<div class='row'>
<div class='col-md-3'><% {out.write(localizeISText("account.user.list.spent.label","",null,null,null,null,null,null,null,null,null,null,null));} %></div>
<div class='col-md-9 text-nowrap'><% {String value = null;try{value=context.getFormattedValue(getObject("UserBudgetCalculator:SpentBudget"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {11}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;(<% {String value = null;try{value=context.getFormattedValue(getObject("UserBudgetCalculator:SpentBudgetPercentage"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {11}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>%)</div>
</div>
<div class='row'>
<div class='col-md-3'><% {out.write(localizeISText("account.user.list.left.label","",null,null,null,null,null,null,null,null,null,null,null));} %></div>
<div class='col-md-9 text-nowrap'><% {String value = null;try{value=context.getFormattedValue(getObject("UserBudgetCalculator:RemainingBudget"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {15}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;(<% {String value = null;try{value=context.getFormattedValue(getObject("UserBudgetCalculator:RemainingBudgetPercentage"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {15}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>%)</div>
</div>">
<div class="progress-bar<% _boolean_result=false;try {_boolean_result=((Boolean)(((( ((Number) getObject("UserBudgetCalculator:SpentBudgetPercentage")).doubleValue() >=((Number)(new Double(1.0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",17,e);}if (_boolean_result) { %> progress-bar-danger<% } %>" role="progressbar" aria-valuenow="<% {String value = null;try{value=context.getFormattedValue(getObject("UserBudgetCalculator:SpentBudgetPercentage"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {17}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" aria-valuemin="0" aria-valuemax="100" style="width: <% {String value = null;try{value=context.getFormattedValue(getObject("UserBudgetCalculator:SpentBudgetPercentage"),null,"DecimalSeparator=.");}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {17}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>%;">
<span class="progress-display"><% {String value = null;try{value=context.getFormattedValue(getObject("UserBudgetCalculator:SpentBudgetPercentage"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {18}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>%</span>
</div>
</div><% } %><% } %><% printFooter(out); %>