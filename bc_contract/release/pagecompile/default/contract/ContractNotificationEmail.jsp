<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% {Object temp_obj = (getObject("UserBO:FirstName")); getPipelineDictionary().put("Firstname", temp_obj);} %><% {Object temp_obj = (getObject("UserBO:LastName")); getPipelineDictionary().put("Lastname", temp_obj);} %><% {Object temp_obj = (getObject("ContractBO:CustomerBO:CustomerNo")); getPipelineDictionary().put("CustomerName", temp_obj);} %><% {Object temp_obj = (getObject("ContractBO:Name")); getPipelineDictionary().put("ContractName", temp_obj);} %><% {Object temp_obj = (getObject("ContractBO:ContractID")); getPipelineDictionary().put("ContractID", temp_obj);} %><% {Object temp_obj = (getObject("ContractBO:SalesTarget:Target")); getPipelineDictionary().put("TargetRevenue", temp_obj);} %><% {Object temp_obj = (getObject("ContractBO:SalesTarget:Actual")); getPipelineDictionary().put("ReachedRevenue", temp_obj);} %><% {Object temp_obj = (getObject("ContractBO:EndDate")); getPipelineDictionary().put("ExpirationDate", temp_obj);} %><% {Object temp_obj = (getObject("CurrentOrganization:DisplayName")); getPipelineDictionary().put("Organization", temp_obj);} %><subject><% {out.write(localizeISText("contract.email.notification.template.subject",null,null,getObject("Organization"),null,null,null,null,null,null,null,null,null));} %></subject><html>
	<head><% insertIntershopSignature(request,(com.intershop.beehive.core.capi.request.ServletResponse)response); %><style type="text/css">
body {
font: 80% Verdana, Arial, Helvetica, sans-serif;
color: #000;
background: #fff;
}
body p { 
font-size: 100%;
}
p {
font-size: 0.75em;
}
p.footer {
font-size: 90%;
text-align: center;
color: #808080;
}
td {
vertical-align: top;
}
td.indent {
padding-left: 20px;
}
</style>
</head>
<body>
<p><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("Firstname"))))).booleanValue() && ((Boolean) ((disableErrorMessages().isDefined(getObject("Lastname"))))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("Firstname"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("Lastname"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",44,e);}if (_boolean_result) { %><% {out.write(localizeISText("contract.email.notification.template.salutation",null,null,null,null,null,null,null,null,null,null,null,null));} %>&nbsp;<% {String value = null;try{value=context.getFormattedValue(getObject("Firstname"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {45}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;<% {String value = null;try{value=context.getFormattedValue(getObject("Lastname"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {45}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>,
<% } else { %><% {out.write(localizeISText("contract.email.notification.template.salutation",null,null,null,null,null,null,null,null,null,null,null,null));} %>,
<% } %></p>
<p><% {out.write(localizeISText("contract.email.notification.template.notification",null,null,null,null,null,null,null,null,null,null,null,null));} %></p>
<p>
<table>
<tr>
<td nowrap="nowrap"><% {out.write(localizeISText("contract.email.notification.template.customer_name",null,null,null,null,null,null,null,null,null,null,null,null));} %>:
</td>
<td class="indent"><% {String value = null;try{value=context.getFormattedValue(getObject("CustomerName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {60}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
</tr>
<tr>
<td nowrap="nowrap"><% {out.write(localizeISText("contract.email.notification.template.contract_name",null,null,null,null,null,null,null,null,null,null,null,null));} %>:
</td>
<td class="indent"><% {String value = null;try{value=context.getFormattedValue(getObject("ContractName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {68}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
</tr>
<tr>
<td nowrap="nowrap"><% {out.write(localizeISText("contract.email.notification.template.contract_id",null,null,null,null,null,null,null,null,null,null,null,null));} %>:
</td>
<td class="indent"><% {String value = null;try{value=context.getFormattedValue(getObject("ContractID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {76}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
</tr>
<tr><td>&nbsp;</td></tr>
<tr>
<td nowrap="nowrap"><% {out.write(localizeISText("contract.email.notification.template.target_revenue",null,null,null,null,null,null,null,null,null,null,null,null));} %>:
</td>
<td class="indent"><% {String value = null;try{value=context.getFormattedValue(getObject("TargetRevenue"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {85}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
</tr>
<tr>
<td nowrap="nowrap"><% {out.write(localizeISText("contract.email.notification.template.reached_revenue",null,null,null,null,null,null,null,null,null,null,null,null));} %>:
</td>
<td class="indent"><% {String value = null;try{value=context.getFormattedValue(getObject("ReachedRevenue"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {93}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
</tr>
<tr><td>&nbsp;</td></tr>
<tr>
<td nowrap="nowrap"><% {out.write(localizeISText("contract.email.notification.template.expiration_date",null,null,null,null,null,null,null,null,null,null,null,null));} %>:
</td>
<td class="indent"><% {String value = null;try{value=context.getFormattedValue(getObject("ExpirationDate"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {102}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
</tr>
</table>
</p>
</br>
<p><% {out.write(localizeISText("contract.email.notification.template.complimentary_close",null,null,null,null,null,null,null,null,null,null,null,null));} %></br><% {out.write(localizeISText("contract.email.notification.template.service",null,null,getObject("Organization"),null,null,null,null,null,null,null,null,null));} %></p>
<p class="footer"><% {out.write(localizeISText("contract.email.notification.template.footer1",null,null,null,null,null,null,null,null,null,null,null,null));} %></br><% {out.write(localizeISText("contract.email.notification.template.footer2",null,null,null,null,null,null,null,null,null,null,null,null));} %></p>
</body>
</html><% printFooter(out); %>