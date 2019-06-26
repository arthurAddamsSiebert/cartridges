<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><%@page import = "com.intershop.sellside.enterprise.internal.product.validation.ProductValidationResultModel"%><%@page import = "com.intershop.component.product.validation.capi.config.ValidationRuleConfigurationBORepository"%><%@page import = "com.intershop.beehive.core.capi.query.Row"%><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/Modules", null, "7");} %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ProductValidationResult"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",9,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "seq-init", new TagParameter[] {
new TagParameter("name","count"),
new TagParameter("modulo","2")}, 11); %><%
	    ValidationRuleConfigurationBORepository validationRuleConfigurationBORepository = getPipelineDictionary()
	                    .get("ValidationRuleConfigurationBORepository");

	    ProductValidationResultModel pvrModel = new ProductValidationResultModel(
	                    validationRuleConfigurationBORepository.getAllActiveValidationRuleConfigurationBOs(),
	                    (Iterator<Row>)getPipelineDictionary().get("ProductValidationResult"));

	    getPipelineDictionary().put("ResultNodes", pvrModel.getResultNodes());
	%><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("ResultNodes") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",26,e);}if (_boolean_result) { %><table class="s" width="100%" cellspacing="0" cellpadding="0"
border="0">
<tr>
<td colspan="5" class="w e s">
<table border="0" cellspacing="5" cellpadding="0" width="100%">
<tr>
<td class="table_detail"><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","product.validation.completeness.sublabel")}, 33); %></td>
</tr>
</table>
</td>
</tr><% {Object temp_obj = (new Double(0)); getPipelineDictionary().put("All", temp_obj);} %><% {Object temp_obj = (new Double(0)); getPipelineDictionary().put("Counter", temp_obj);} %><% while (loop("ResultNodes","ResultNode",null)) { %><% {Object temp_obj = ((new Double( ((Number) getObject("All")).doubleValue() +((Number) new Double(1)).doubleValue()))); getPipelineDictionary().put("All", temp_obj);} %><% } %><% while (loop("ResultNodes","ResultNode",null)) { %><% {Object temp_obj = ((new Double( ((Number) getObject("Counter")).doubleValue() +((Number) new Double(1)).doubleValue()))); getPipelineDictionary().put("Counter", temp_obj);} %><% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(((new Double( ((Number) getObject("Counter")).doubleValue() %((Number) new Double(2)).doubleValue()))),null).equals(context.getFormattedValue(new Double(0),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",45,e);}if (_boolean_result) { %><tr>
<td class="w" width="45%" valign="top"><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"objectstatistics/inc/ChannelProductValidationResultTableInc.isml", null, "48");} %></td>
<td width="2%"></td>
<td width="1" class="overview_vertical_line"><img
src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="100%" alt=""
border="0" /></td><% } else { %><td width="2%"></td>
<td class="e" valign="top"><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"objectstatistics/inc/ChannelProductValidationResultTableInc.isml", null, "57");} %></td>
</tr><% } %><% } %><!-- close tags if no next --><% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(((new Double( ((Number) getObject("Counter")).doubleValue() %((Number) new Double(2)).doubleValue()))),null).equals(context.getFormattedValue(new Double(0),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",65,e);}if (_boolean_result) { %><td></td>
<td class="e"></td>
</tr><% } %></table><% } %><% } %><% printFooter(out); %>