<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %>
<table class="attributes" summary="This table shows details of your selected bank account.">
	<tr>
		<td colspan="2"class="name"><% {out.write(localizeISText("CheckoutMini.DirectDebitTransfer.name","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
	</tr>
	<tr>
		<td class="name"><% {out.write(localizeISText("CheckoutMini.AccountHolder.name","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
		<td class="value"><% {String value = null;try{value=context.getFormattedValue(getObject("PII:CustomAttributes:AccountHolder"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {8}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
	</tr>
	<tr>
		<td class="name"><% {out.write(localizeISText("CheckoutMini.AccountNumber.name","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
		<td class="value"><% processOpenTag(response, pageContext, "garblestring", new TagParameter[] {
new TagParameter("output","truncatedAccountNumber"),
new TagParameter("character","x"),
new TagParameter("length","4"),
new TagParameter("text",getObject("PII:CustomAttributes:AccountNumber")),
new TagParameter("direction","begin")}, 12); %><% {String value = null;try{value=context.getFormattedValue(getObject("truncatedAccountNumber"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {12}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
	</tr>
</table>

<% printFooter(out); %>