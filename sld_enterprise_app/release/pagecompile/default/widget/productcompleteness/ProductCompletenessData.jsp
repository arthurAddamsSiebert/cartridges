<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><%@page import = "com.intershop.sellside.enterprise.internal.product.validation.ProductValidationResultModel"%><%@page import = "com.intershop.component.product.validation.capi.config.ValidationRuleConfigurationBORepository"%><%@page import = "com.intershop.beehive.core.capi.query.Row"%><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/Modules", null, "7");} %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ProductValidationResult"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",9,e);}if (_boolean_result) { %><%
	    ValidationRuleConfigurationBORepository validationRuleConfigurationBORepository = getPipelineDictionary()
	                    .get("ValidationRuleConfigurationBORepository");
	
	    ProductValidationResultModel pvrModel = new ProductValidationResultModel(
	                    validationRuleConfigurationBORepository.getAllActiveValidationRuleConfigurationBOs(),
	                    (Iterator<Row>)getPipelineDictionary().get("ProductValidationResult"));
	
	    getPipelineDictionary().put("ResultNodes", pvrModel.getResultNodes());
	%><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("ResultNodes") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",23,e);}if (_boolean_result) { %><table border="0" cellspacing="5" cellpadding="0" width="100%" class="sm">
<tr>
<td class="table_detail"><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","product.validation.completeness.sublabel")}, 27); %></td>
</tr>
</table><% {Object temp_obj = (new Double(0)); getPipelineDictionary().put("All", temp_obj);} %><% {Object temp_obj = (new Double(0)); getPipelineDictionary().put("Counter", temp_obj);} %><% while (loop("ResultNodes","ResultNode",null)) { %><% {Object temp_obj = ((new Double( ((Number) getObject("All")).doubleValue() +((Number) new Double(1)).doubleValue()))); getPipelineDictionary().put("All", temp_obj);} %><% } %><% while (loop("ResultNodes","ResultNode",null)) { %><% {Object temp_obj = ((new Double( ((Number) getObject("Counter")).doubleValue() +((Number) new Double(1)).doubleValue()))); getPipelineDictionary().put("Counter", temp_obj);} %><table width="100%" cellspacing="5" cellpadding="0" border="0"> 
<tr>
<td class="table_detail"><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("Process")))).booleanValue() && ((Boolean) ((( ((Number) getObject("Process:Status")).doubleValue() ==((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && !((Boolean) ((( ((Number) getObject("Process:ExtendedStatus")).doubleValue() ==((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",41,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((!(context.getFormattedValue(getObject("ProductValidationAssortmentConfigurationBO:Configuration:String(ResultNode:ValidationRuleConfigurationID)"),null).equals(context.getFormattedValue(getObject("NULL"),null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",43,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ResultNode:LastModified")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("Process:LastExecutionTime")))).booleanValue() && ((Boolean) ((( ((Number) getObject("ResultNode:LastModified:Time")).doubleValue() >((Number)(getObject("Process:LastExecutionTime:Time"))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",44,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("ResultNode:ValidationRuleConfigurationName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {45}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %><% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("ResultNode:FailuresCount")).doubleValue() >((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",47,e);}if (_boolean_result) { %> 
<a class="table_detail_link"
href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductValidationResultList-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ValidationRuleConfigurationID",null),context.getFormattedValue(getObject("ResultNode:ValidationRuleConfigurationID"),null))).addURLParameter(context.getFormattedValue("ValidationAssortmentID",null),context.getFormattedValue(getObject("ProductValidationOverviewForm_ProductAssortmentName"),null))),null)%>" target="_parent"><% {String value = null;try{value=context.getFormattedValue(getObject("ResultNode:ValidationRuleConfigurationName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {50}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></a><% } else { %><% {String value = null;try{value=context.getFormattedValue(getObject("ResultNode:ValidationRuleConfigurationName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {53}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %><% } %><% } else { %><% {String value = null;try{value=context.getFormattedValue(getObject("ResultNode:ValidationRuleConfigurationName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {57}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %><% } else { %><% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("ResultNode:FailuresCount")).doubleValue() >((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",60,e);}if (_boolean_result) { %> 
<a class="table_detail_link"
href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductValidationResultList-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ValidationRuleConfigurationID",null),context.getFormattedValue(getObject("ResultNode:ValidationRuleConfigurationID"),null))).addURLParameter(context.getFormattedValue("ValidationAssortmentID",null),context.getFormattedValue(getObject("ProductValidationOverviewForm_ProductAssortmentName"),null))),null)%>" target="_parent"><% {String value = null;try{value=context.getFormattedValue(getObject("ResultNode:ValidationRuleConfigurationName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {63}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></a><% } else { %><% {String value = null;try{value=context.getFormattedValue(getObject("ResultNode:ValidationRuleConfigurationName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {66}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %><% } %></td>
<td align="right" class="table_detail" nowrap="nowrap"><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("Process")))).booleanValue() && ((Boolean) ((( ((Number) getObject("Process:Status")).doubleValue() ==((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && !((Boolean) ((( ((Number) getObject("Process:ExtendedStatus")).doubleValue() ==((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",72,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((!(context.getFormattedValue(getObject("ProductValidationAssortmentConfigurationBO:Configuration:String(ResultNode:ValidationRuleConfigurationID)"),null).equals(context.getFormattedValue(getObject("NULL"),null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",74,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ResultNode:LastModified")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("Process:LastExecutionTime")))).booleanValue() && ((Boolean) ((( ((Number) getObject("ResultNode:LastModified:Time")).doubleValue() >((Number)(getObject("Process:LastExecutionTime:Time"))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",75,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","product.validation.completeness.rule.edited")}, 76); %><% } else { %><% {String value = null;try{value=context.getFormattedValue(getObject("ResultNode:FailuresCount"),new Integer(INTEGER),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {78}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %><% } else { %><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","product.validation.completeness.rule.edited")}, 81); %><% } %><% } else { %><% {String value = null;try{value=context.getFormattedValue(getObject("ResultNode:FailuresCount"),new Integer(INTEGER),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {84}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %> 
</td>
</tr> 
<% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("Counter")).doubleValue() <((Number)(getObject("All"))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",88,e);}if (_boolean_result) { %><tr>
<td colspan="2" class="overview_line"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="2" height="1" alt="" border="0" style="float: left;"/></td> 
</tr><% } %></table> 
<% } %><% } %><% } %><% printFooter(out); %>