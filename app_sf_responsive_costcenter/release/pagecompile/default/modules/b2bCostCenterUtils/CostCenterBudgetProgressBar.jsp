<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><%@page import="com.google.common.base.Strings"%>
<%@page import="com.intershop.beehive.core.capi.pipeline.PipelineDictionary"%>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CostCenter"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",5,e);}if (_boolean_result) { %><% {Object temp_obj = (getObject("CostCenter:Extension(\"CostCenterBOOrderExtension\")")); getPipelineDictionary().put("CostCenterOrderBOOrderExtension", temp_obj);} %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CostCenterOrderBOOrderExtension"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",9,e);}if (_boolean_result) { %><% {Object temp_obj = (getObject("CostCenter")); getPipelineDictionary().put("CostCenterBO", temp_obj);} %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Label"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",16,e);}if (_boolean_result) { %><% {Object temp_obj = (getObject("Label")); getPipelineDictionary().put("Label", temp_obj);} %><% } else { %><% {Object temp_obj = (localizeText(context.getFormattedValue("account.costcenter.form.field.budget.label",null))); getPipelineDictionary().put("Label", temp_obj);} %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CostCenterOrderBOOrderExtension:BudgetLevel"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",21,e);}if (_boolean_result) { %> 
<% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) ((new Double( ((Number) getObject("CostCenterOrderBOOrderExtension:BudgetLevel")).doubleValue() *((Number) new Double(100)).doubleValue())))).doubleValue() >((Number)(new Double(100))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",22,e);}if (_boolean_result) { %><% {Object temp_obj = ("100"); getPipelineDictionary().put("PERCENT", temp_obj);} %><% } else { %><% {Object temp_obj = (((new Double( ((Number) getObject("CostCenterOrderBOOrderExtension:BudgetLevel")).doubleValue() *((Number) new Double(100)).doubleValue())))); getPipelineDictionary().put("PERCENT", temp_obj);} %><% } %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) ((disableErrorMessages().isDefined(getObject("DisplayAs"))))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",31,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CostCenterOrderBOOrderExtension:BudgetLevel"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",32,e);}if (_boolean_result) { %><%
					PipelineDictionary dict = getPipelineDictionary();
					String budgetPeriod = dict.get("CostCenterBO:BudgetPeriod");
					String capitalizedBudgetPeriod;
					if (Strings.isNullOrEmpty(budgetPeriod))
					{
						capitalizedBudgetPeriod = "";
					}
					else
					{
						capitalizedBudgetPeriod = Character.toUpperCase(budgetPeriod.charAt(0)) + budgetPeriod.substring(1);
					}

					dict.put("CapitalizedBudgetPeriod", capitalizedBudgetPeriod);
				%><div data-toggle="popover" data-html="true" data-placement="top" class="progress" data-content="<p><% {String value = null;try{value=context.getFormattedValue(getObject("CapitalizedBudgetPeriod"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {48}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;<% {String value = null;try{value=context.getFormattedValue(getObject("Label"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {48}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></p>
<div class='row'>
<div class='col-md-3'><label><% {out.write(localizeISText("account.user.list.spent.label","",null,null,null,null,null,null,null,null,null,null,null));} %></label></div>
<div class='col-md-5 text-nowrap'><span data-testing-id='cost-center-orders-total' class='pull-right'><% {String value = null;try{value=context.getFormattedValue(getObject("CostCenterOrderBOOrderExtension:OrdersTotal"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {51}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></span></div>
<div class='col-md-3 text-nowrap'><span class='pull-right'><% {String value = null;try{value=context.getFormattedValue(getObject("CostCenterOrderBOOrderExtension:BudgetLevelPercentage"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {52}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>%</span></div>
</div>
<div class='row'>
<div class='col-md-3'><label><% {out.write(localizeISText("account.user.list.left.label","",null,null,null,null,null,null,null,null,null,null,null));} %></label></div>
<div class='col-md-5 text-nowrap'><span data-testing-id='cost-center-remaining-budget' class='pull-right'><% {String value = null;try{value=context.getFormattedValue(getObject("CostCenterOrderBOOrderExtension:getRemainingBudget"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {56}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></span></div>
<div class='col-md-3 text-nowrap'><span class='pull-right'><% {String value = null;try{value=context.getFormattedValue(getObject("CostCenterOrderBOOrderExtension:RemainingBudgetLevelPercentage"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {57}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>%</span></div>
</div>">
<div class="progress-bar<% _boolean_result=false;try {_boolean_result=((Boolean)(((( ((Number) getObject("CostCenterOrderBOOrderExtension:BudgetLevel")).doubleValue() >=((Number)(new Double(1.0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",59,e);}if (_boolean_result) { %> progress-bar-danger<% } %>" role="progressbar" aria-valuenow="<% {String value = null;try{value=context.getFormattedValue(((new Double( ((Number) getObject("CostCenterOrderBOOrderExtension:BudgetLevel")).doubleValue() *((Number) new Double(100)).doubleValue()))),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {59}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
aria-valuemin="0" aria-valuemax="100" style="width: <% {String value = null;try{value=context.getFormattedValue(getObject("PERCENT"),null,"DecimalSeparator=.");}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {60}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>%;">
<span class="progress-display"><% {String value = null;try{value=context.getFormattedValue(((new Double( ((Number) getObject("CostCenterOrderBOOrderExtension:BudgetLevel")).doubleValue() *((Number) new Double(100)).doubleValue()))),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {61}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>%</span>
</div>
</div><% } %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("DisplayAs")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("DisplayAs"),null).equals(context.getFormattedValue("dl-ListItem",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",71,e);}if (_boolean_result) { %> 
<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CostCenterOrderBOOrderExtension:BudgetLevel"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",72,e);}if (_boolean_result) { %><dt><% {String value = null;try{value=context.getFormattedValue(getObject("Label"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {73}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></dt>
<dd>
<div data-toggle="popover" data-html="true" data-placement="top" class="progress" data-content="<p><% {String value = null;try{value=context.getFormattedValue(getObject("Label"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {75}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></p>
<div class='row'>
<div class='col-md-3'><label><% {out.write(localizeISText("account.user.list.spent.label","",null,null,null,null,null,null,null,null,null,null,null));} %></label></div>
<div class='col-md-5 text-nowrap'><span data-testing-id='cost-center-orders-total' class='pull-right'><% {String value = null;try{value=context.getFormattedValue(getObject("CostCenterOrderBOOrderExtension:OrdersTotal"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {78}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></span></div>
<div class='col-md-3 text-nowrap'><span class='pull-right'><% {String value = null;try{value=context.getFormattedValue(getObject("CostCenterOrderBOOrderExtension:BudgetLevelPercentage"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {79}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>%</span></div>
</div>
<div class='row'>
<div class='col-md-3'><label><% {out.write(localizeISText("account.user.list.left.label","",null,null,null,null,null,null,null,null,null,null,null));} %></label></div>
<div class='col-md-5 text-nowrap'><span data-testing-id='cost-center-remaining-budget' class='pull-right'><% {String value = null;try{value=context.getFormattedValue(getObject("CostCenterOrderBOOrderExtension:getRemainingBudget"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {83}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></span></div>
<div class='col-md-3 text-nowrap'><span class='pull-right'><% {String value = null;try{value=context.getFormattedValue(getObject("CostCenterOrderBOOrderExtension:RemainingBudgetLevelPercentage"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {84}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>%</span></div>
</div>">
<div class="progress-bar<% _boolean_result=false;try {_boolean_result=((Boolean)(((( ((Number) getObject("CostCenterOrderBOOrderExtension:BudgetLevel")).doubleValue() >=((Number)(new Double(1.0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",86,e);}if (_boolean_result) { %> progress-bar-danger<% } %>" role="progressbar" aria-valuenow="<% {String value = null;try{value=context.getFormattedValue(((new Double( ((Number) getObject("CostCenterOrderBOOrderExtension:BudgetLevel")).doubleValue() *((Number) new Double(100)).doubleValue()))),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {86}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
aria-valuemin="0" aria-valuemax="100" style="width: <% {String value = null;try{value=context.getFormattedValue(getObject("PERCENT"),null,"DecimalSeparator=.");}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {87}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>%;">
<span class="progress-display"><% {String value = null;try{value=context.getFormattedValue(((new Double( ((Number) getObject("CostCenterOrderBOOrderExtension:BudgetLevel")).doubleValue() *((Number) new Double(100)).doubleValue()))),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {88}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>%</span>
</div>
</div>
</dd><% } %><% } %><% } %><% } %><% printFooter(out); %>