<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>

<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><table cellpadding="0" cellspacing="0" border="0" width="100%">
<tr>
<td class="table_detail" colspan="2"><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("Condition:MinValueOperator")))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("Condition:MinValueOperator"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("Condition:MinValue")))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("Condition:MinValue"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",7,e);}if (_boolean_result) { %><% {out.write(localizeISText("DisplayShippingWindowCondition.Product.table_detail","",null,null,null,null,null,null,null,null,null,null,null));} %>&nbsp;<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("readonly")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("readonly"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",8,e);}if (_boolean_result) { %><a href="<% {String value = null;try{value=context.getFormattedValue(getObject("ConditionConfigurationURL"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {8}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="table_detail_link"><% {out.write(localizeISText("DisplayShippingWindowCondition.MinimumShippingTime.link","",null,null,null,null,null,null,null,null,null,null,null));} %></a>&nbsp;<% } else { %><% {out.write(localizeISText("DisplayShippingWindowCondition.MinimumShippingTime.link1","",null,null,null,null,null,null,null,null,null,null,null));} %>&nbsp;<% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("Condition:MinValueOperator"),null).equals(context.getFormattedValue("equalto",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",9,e);}if (_boolean_result) { %>=&nbsp;
<% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("Condition:MinValueOperator"),null).equals(context.getFormattedValue("notequalto",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",10,e);}if (_boolean_result) { %>!=&nbsp;
<% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("Condition:MinValueOperator"),null).equals(context.getFormattedValue("greaterthan",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",11,e);}if (_boolean_result) { %>&gt;&nbsp;
<% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("Condition:MinValueOperator"),null).equals(context.getFormattedValue("lessthan",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",12,e);}if (_boolean_result) { %>&lt;&nbsp;
<% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("Condition:MinValueOperator"),null).equals(context.getFormattedValue("greaterthanorequalto",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",13,e);}if (_boolean_result) { %>&gt;=&nbsp;
<% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("Condition:MinValueOperator"),null).equals(context.getFormattedValue("lessthanorequalto",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",14,e);}if (_boolean_result) { %>&lt;=&nbsp;
<% }}}}}} %><% {String value = null;try{value=context.getFormattedValue(getObject("Condition:MinValue"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {16}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;<% {out.write(localizeISText("DisplayShippingWindowCondition.Days.link","",null,null,null,null,null,null,null,null,null,null,null));} %>&nbsp;<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("Condition:MaxValueOperator")))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("Condition:MaxValueOperator"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("Condition:MaxValue")))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("Condition:MaxValue"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",16,e);}if (_boolean_result) { %><% {out.write(localizeISText("DisplayShippingWindowCondition.And.link","",null,null,null,null,null,null,null,null,null,null,null));} %>&nbsp;<% } %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("Condition:MaxValueOperator")))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("Condition:MaxValueOperator"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("Condition:MaxValue")))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("Condition:MaxValue"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",18,e);}if (_boolean_result) { %><% {out.write(localizeISText("DisplayShippingWindowCondition.Product.link","",null,null,null,null,null,null,null,null,null,null,null));} %>&nbsp;<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("readonly")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("readonly"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",19,e);}if (_boolean_result) { %><a href="<% {String value = null;try{value=context.getFormattedValue(getObject("ConditionConfigurationURL"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {19}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="table_detail_link"><% {out.write(localizeISText("DisplayShippingWindowCondition.MaximumShippingTime.link","",null,null,null,null,null,null,null,null,null,null,null));} %></a>&nbsp;<% } else { %><% {out.write(localizeISText("DisplayShippingWindowCondition.MaximumShippingTime.link1","",null,null,null,null,null,null,null,null,null,null,null));} %>&nbsp;<% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("Condition:MaxValueOperator"),null).equals(context.getFormattedValue("equalto",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",20,e);}if (_boolean_result) { %>=&nbsp;
<% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("Condition:MaxValueOperator"),null).equals(context.getFormattedValue("notequalto",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",21,e);}if (_boolean_result) { %>!=&nbsp;
<% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("Condition:MaxValueOperator"),null).equals(context.getFormattedValue("greaterthan",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",22,e);}if (_boolean_result) { %>&gt;&nbsp;
<% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("Condition:MaxValueOperator"),null).equals(context.getFormattedValue("lessthan",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",23,e);}if (_boolean_result) { %>&lt;&nbsp;
<% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("Condition:MaxValueOperator"),null).equals(context.getFormattedValue("greaterthanorequalto",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",24,e);}if (_boolean_result) { %>&gt;=&nbsp;
<% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("Condition:MaxValueOperator"),null).equals(context.getFormattedValue("lessthanorequalto",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",25,e);}if (_boolean_result) { %>&lt;=&nbsp;
<% }}}}}} %><% {String value = null;try{value=context.getFormattedValue(getObject("Condition:MaxValue"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {27}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;<% {out.write(localizeISText("DisplayShippingWindowCondition.Days.link1","",null,null,null,null,null,null,null,null,null,null,null));} %>&nbsp;<% } %></td>
</tr>
</table><% printFooter(out); %>