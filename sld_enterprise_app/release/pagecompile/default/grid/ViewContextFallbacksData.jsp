<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/javascript;charset=utf-8" %><%setEncodingType("text/javascript"); %>
function(args) {
var data = [
<% while (loop("pageable","Fallback",null)) { %>
{
pageletentrypointid: "<% {String value = null;try{value=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("Fallback:From:UUID"),null)),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {7}",e);}if (value==null) value="";value = encodeString(value,"json");out.write(value);} %>",
page: "<% {String value = null;try{value=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("Fallback:From:Page"),null)),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {8}",e);}if (value==null) value="";value = encodeString(value,"json");out.write(value);} %>",
name: "<% {String value = null;try{value=context.getFormattedValue(getObject("params:PageletModelUtils:DisplayName(Fallback:ModelElement,params:Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {9}",e);}if (value==null) value="";value = encodeString(value,"json");out.write(value);} %>",
description: "<% {String value = null;try{value=context.getFormattedValue(getObject("params:PageletModelUtils:Description(Fallback:ModelElement,params:Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {10}",e);}if (value==null) value="";value = encodeString(value,"json");out.write(value);} %>",
type: "<% {String value = null;try{value=context.getFormattedValue(getObject("params:PageletModelUtils:DisplayName(params:PageletModelUtils:ContentEntryPointDefinition(Fallback:ModelElement:ContentEntryPointDefinition:ReferencedName,Fallback:To:Page,params:PageletModelRepository),params:Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {11}",e);}if (value==null) value="";value = encodeString(value,"json");out.write(value);} %>",
}<% _boolean_result=false;try {_boolean_result=((Boolean)((hasNext("Fallback") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",12,e);}if (_boolean_result) { %>,<% } %><% } %>
];
args.callback({
<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("params:SortBy"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",17,e);}if (_boolean_result) { %>
orderColumnId: "<% {String value = null;try{value=context.getFormattedValue(getObject("params:SortBy"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {18}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>".toLowerCase(),
order: <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("params:SortDirection"),null).equals(context.getFormattedValue("descending",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",19,e);}if (_boolean_result) { %>"desc"<% } else { %>"asc"<% } %>,
<% } %>
items: data
});
}
<% printFooter(out); %>