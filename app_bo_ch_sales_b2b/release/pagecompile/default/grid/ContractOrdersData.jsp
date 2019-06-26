<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/javascript;charset=utf-8" %><%setEncodingType("text/javascript"); %>
function (args) {
var data = [
<% while (loop("pageable","ContractOrder",null)) { %>
{
creationDate: 
<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ContractOrder:OrderExists"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",9,e);}if (_boolean_result) { %>
"<a href='<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewSellerOrder_52-FindByNumber",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null))).addURLParameter(context.getFormattedValue("OrderID",null),context.getFormattedValue(getObject("ContractOrder:OrderBO:ID"),null))),null)%>'><% {String value = null;try{value=context.getFormattedValue(getObject("ContractOrder:OrderBO:CreationDate"),new Integer(DATE_SHORT),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {10}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></a>",
<% } else { %>
"-",
<% } %>
lastModifiedDate:
<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ContractOrder:OrderExists"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",15,e);}if (_boolean_result) { %>
"<a href='<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewSellerOrder_52-FindByNumber",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null))).addURLParameter(context.getFormattedValue("OrderID",null),context.getFormattedValue(getObject("ContractOrder:OrderBO:ID"),null))),null)%>'><% {String value = null;try{value=context.getFormattedValue(getObject("ContractOrder:OrderBO:LastModified"),new Integer(DATE_SHORT),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {16}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></a>",
<% } else { %>
"-",
<% } %>
documentNo:
<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ContractOrder:OrderExists"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",21,e);}if (_boolean_result) { %>
"<a href='<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewSellerOrder_52-FindByNumber",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null))).addURLParameter(context.getFormattedValue("OrderID",null),context.getFormattedValue(getObject("ContractOrder:OrderBO:ID"),null))),null)%>'><% {String value = null;try{value=context.getFormattedValue(getObject("ContractOrder:OrderBO:DocumentNo"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {22}",e);}if (value==null) value="";value = encodeString(value,"javascript");out.write(value);} %></a>",
<% } else { %>
"<% {String value = null;try{value=context.getFormattedValue(getObject("ContractOrder:DocumentNo"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {24}",e);}if (value==null) value="";value = encodeString(value,"javascript");out.write(value);} %>",
<% } %>
contractRevenue: "<% {String value = null;try{value=context.getFormattedValue(getObject("ContractOrder:Revenue"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {26}",e);}if (value==null) value="";value = encodeString(value,"javascript");out.write(value);} %>",
grandTotalGross:
<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ContractOrder:OrderExists"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",28,e);}if (_boolean_result) { %>
"<% {String value = null;try{value=context.getFormattedValue(getObject("ContractOrder:OrderBO:GrandTotalGross"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {29}",e);}if (value==null) value="";value = encodeString(value,"javascript");out.write(value);} %>",
<% } else { %>
"-",
<% } %>
statusDisplayName:
<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ContractOrder:OrderExists"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",34,e);}if (_boolean_result) { %>
"<% {String value = null;try{value=context.getFormattedValue(getObject("ContractOrder:OrderBO:StatusDisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {35}",e);}if (value==null) value="";value = encodeString(value,"javascript");out.write(value);} %>",
<% } else { %>
"-",
<% } %>
}<% _boolean_result=false;try {_boolean_result=((Boolean)((hasNext("ContractOrder") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",39,e);}if (_boolean_result) { %>,<% } %><% } %>
];
args.callback({
<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("params:SortBy"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",44,e);}if (_boolean_result) { %>
orderColumnId: "<% {String value = null;try{value=context.getFormattedValue(getObject("params:SortBy"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {45}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>".toLowerCase(),
order: <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("params:SortDirection"),null).equals(context.getFormattedValue("descending",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",46,e);}if (_boolean_result) { %>"desc"<% } else { %>"asc"<% } %>,
<% } %>
offset: <% {String value = null;try{value=context.getFormattedValue((new Double( ((Number) getObject("pageable:PageStart")).doubleValue() -((Number) new Double(1)).doubleValue())),"0",null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {48}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>,
total: <% {String value = null;try{value=context.getFormattedValue(getObject("pageable:ElementCount"),"0",null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {49}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>,
items: data
});
}
<% printFooter(out); %>