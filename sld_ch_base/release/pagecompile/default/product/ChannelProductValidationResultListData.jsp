<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>

<% %><%! protected Boolean printTemplateMarker() { return Boolean.FALSE; } %><%%><%@ page contentType="text/javascript;charset=utf-8" %><%setEncodingType("text/javascript"); %>
function (args) {
var data = [];
<% while (loop("pageable","ProductValidationResult",null)) { %><% processOpenTag(response, pageContext, "createmap", new TagParameter[] {
new TagParameter("key1","ValidationRuleConfigurationID"),
new TagParameter("key2","ProductID"),
new TagParameter("key0","ValidationResultBORepository"),
new TagParameter("value2",getObject("ProductValidationResult:ValidatedObject:ID")),
new TagParameter("value1",getObject("params:ValidationRuleConfigurationID")),
new TagParameter("key3","ValidationAssortmentID"),
new TagParameter("value3",getObject("params:ValidationAssortmentID")),
new TagParameter("value0",getObject("params:ValidationResultBORepository")),
new TagParameter("mapname","AllProductValidationResultParams")}, 8); %><% {try{executePipeline("ProcessProductValidationResults-GetProductValidationResults",((java.util.Map)(getObject("AllProductValidationResultParams"))),"AllProductValidationResultDictionary");}catch(Exception e){Logger.error(this,"ISPIPELINE failed. Line: 13.",e);}} %><% {Object temp_obj = (getObject("AllProductValidationResultDictionary:ProductValidationResults")); getPipelineDictionary().put("ValidationResultByProductIterator", temp_obj);} %>
data.push({
productName: "<a href='<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue(context.getFormattedValue("ViewProduct_",null) + context.getFormattedValue(getObject("params:CurrentChannel:TypeCode"),null) + context.getFormattedValue("-Edit",null),null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("params:CurrentChannel:UUID"),null))).addURLParameter(context.getFormattedValue("ProductID",null),context.getFormattedValue(getObject("ProductValidationResult:ValidatedObject:ID"),null))),null)%>' class='table_detail_link'><% {String value = null;try{value=context.getFormattedValue(getObject("ProductValidationResult:ValidatedObject:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {17}",e);}if (value==null) value="";value = encodeString(value,"javascript");out.write(value);} %></a>",
productID: "<a href='<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue(context.getFormattedValue("ViewProduct_",null) + context.getFormattedValue(getObject("params:CurrentChannel:TypeCode"),null) + context.getFormattedValue("-Edit",null),null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("params:CurrentChannel:UUID"),null))).addURLParameter(context.getFormattedValue("ProductID",null),context.getFormattedValue(getObject("ProductValidationResult:ValidatedObject:ID"),null))),null)%>' class='table_detail_link'><% {String value = null;try{value=context.getFormattedValue(getObject("ProductValidationResult:ValidatedObject:SKU"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {18}",e);}if (value==null) value="";value = encodeString(value,"javascript");out.write(value);} %></a>",
<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ValidationResultByProductIterator")))).booleanValue() && ((Boolean) (hasLoopElements("ValidationResultByProductIterator") ? Boolean.TRUE : Boolean.FALSE)).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",19,e);}if (_boolean_result) { %>
problemMessage: "<ul class='problem_list'><% while (loop("ValidationResultByProductIterator","ValidationResultByProduct",null)) { %><li class='problem_list_item'><% {String value = null;try{value=context.getFormattedValue(getObject("ValidationResultByProduct:Message"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {20}",e);}if (value==null) value="";value = encodeString(value,"javascript");out.write(value);} %></li><% } %></ul>" 
<% } else { %>
problemMessage: "" 
<% } %>
});
<% } %>
args.callback({
<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("params:SortBy"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",27,e);}if (_boolean_result) { %>
orderColumnId: "<% {String value = null;try{value=context.getFormattedValue(getObject("params:SortBy"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {28}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>",
order: <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("params:SortDirection"),null).equals(context.getFormattedValue("descending",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",29,e);}if (_boolean_result) { %>"desc"<% } else { %>"asc"<% } %>,
<% } %>
offset: <% {String value = null;try{value=context.getFormattedValue((new Double( ((Number) getObject("pageable:PageStart")).doubleValue() -((Number) new Double(1)).doubleValue())),"0",null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {31}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>,
total: <% {String value = null;try{value=context.getFormattedValue(getObject("pageable:ElementCount"),"0",null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {32}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>,
items: data
});
}
<% printFooter(out); %>