<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><table cellpadding="0" cellspacing="0" border="0" width="100%">
<tr>
<td class="table_detail" colspan="2"><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("readonly")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("readonly"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",6,e);}if (_boolean_result) { %><a href="<% {String value = null;try{value=context.getFormattedValue(getObject("ConditionConfigurationURL"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {7}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="table_detail_link"><% {out.write(localizeISText("DisplayProductAttributeCondition.Product.link","",null,null,null,null,null,null,null,null,null,null,null));} %></a>&nbsp;<% {out.write(localizeISText("DisplayProductAttributeCondition.Attribute.link","",null,null,null,null,null,null,null,null,null,null,null));} %>&nbsp;<a href="<% {String value = null;try{value=context.getFormattedValue(getObject("ConditionConfigurationURL"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {7}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="table_detail_link"><% {String value = null;try{value=context.getFormattedValue(getObject("Condition:AttributeName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {7}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></a>&nbsp;<% } else { %><% {out.write(localizeISText("DisplayProductAttributeCondition.ProductAttribute.link","",null,null,null,null,null,null,null,null,null,null,null));} %>&nbsp;<% {String value = null;try{value=context.getFormattedValue(getObject("Condition:AttributeName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {8}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;
<% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("Condition:AttributeValueOperator"),null).equals(context.getFormattedValue("equalto",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",10,e);}if (_boolean_result) { %><% {out.write(localizeISText("DisplayProductAttributeCondition.EqualTo.link","",null,null,null,null,null,null,null,null,null,null,null));} %>&nbsp;<% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("Condition:AttributeValueOperator"),null).equals(context.getFormattedValue("notequalto",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",11,e);}if (_boolean_result) { %><% {out.write(localizeISText("DisplayProductAttributeCondition.NotEqualTo.link","",null,null,null,null,null,null,null,null,null,null,null));} %>&nbsp;<% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("Condition:AttributeValueOperator"),null).equals(context.getFormattedValue("greaterthan",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",12,e);}if (_boolean_result) { %><% {out.write(localizeISText("DisplayProductAttributeCondition.GreaterThan.link","",null,null,null,null,null,null,null,null,null,null,null));} %>&nbsp;<% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("Condition:AttributeValueOperator"),null).equals(context.getFormattedValue("lessthan",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",13,e);}if (_boolean_result) { %><% {out.write(localizeISText("DisplayProductAttributeCondition.LessThan.link","",null,null,null,null,null,null,null,null,null,null,null));} %>&nbsp;<% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("Condition:AttributeValueOperator"),null).equals(context.getFormattedValue("greaterthanorequalto",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",14,e);}if (_boolean_result) { %><% {out.write(localizeISText("DisplayProductAttributeCondition.GreaterOrEqualTo.link","",null,null,null,null,null,null,null,null,null,null,null));} %>&nbsp;<% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("Condition:AttributeValueOperator"),null).equals(context.getFormattedValue("lessthanorequalto",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",15,e);}if (_boolean_result) { %><% {out.write(localizeISText("DisplayProductAttributeCondition.LessOrEqualTo.link","",null,null,null,null,null,null,null,null,null,null,null));} %>&nbsp;<% } %><% {String value = null;try{value=context.getFormattedValue(getObject("Condition:AttributeValue"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {16}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;<% {String value = null;try{value=context.getFormattedValue(getObject("Condition:AttributeUnit"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {16}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
</tr>
</table><% printFooter(out); %>