<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %>


<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PaymentDisplayMode"),null).equals(context.getFormattedValue("short",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",4,e);}if (_boolean_result) { %>
	<% {String value = null;try{value=context.getFormattedValue(getObject("PII:CustomAttributes:AccountHolder"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {5}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> <% processOpenTag(response, pageContext, "garblestring", new TagParameter[] {
new TagParameter("output","truncatedAccountNumber"),
new TagParameter("character","x"),
new TagParameter("length","4"),
new TagParameter("text",getObject("PII:CustomAttributes:AccountNumber")),
new TagParameter("direction","begin")}, 5); %><% {String value = null;try{value=context.getFormattedValue(getObject("truncatedAccountNumber"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {5}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>
<% } %>


<% _boolean_result=false;try {_boolean_result=((Boolean)(((!((Boolean) ((disableErrorMessages().isDefined(getObject("PaymentDisplayMode"))))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("PaymentDisplayMode"),null).equals(context.getFormattedValue("long",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",9,e);}if (_boolean_result) { %>

	<table class="attributes" summary="This table shows details of your selected bank account.">
	    <tr>
	        <td class="name"><% {out.write(localizeISText("ShowPIIMini.AccountHolder.name","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
	        <td class="value"><% {String value = null;try{value=context.getFormattedValue(getObject("PII:CustomAttributes:AccountHolder"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {14}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
	    </tr>
	    <tr>
	        <td class="name"><% {out.write(localizeISText("ShowPIIMini.AccountNumber.name","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
	        <td class="value"><% processOpenTag(response, pageContext, "garblestring", new TagParameter[] {
new TagParameter("output","truncatedAccountNumber"),
new TagParameter("character","x"),
new TagParameter("length","4"),
new TagParameter("text",getObject("PII:CustomAttributes:AccountNumber")),
new TagParameter("direction","begin")}, 18); %><% {String value = null;try{value=context.getFormattedValue(getObject("truncatedAccountNumber"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {18}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
	    </tr>
	    <tr>
	        <td class="name"><% {out.write(localizeISText("ShowPIIMini.BankCode.name","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
	        <td class="value"><% {String value = null;try{value=context.getFormattedValue(getObject("PII:CustomAttributes:BankCode"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {22}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
	    </tr>   
	</table>
	
<% } %>
<% printFooter(out); %>