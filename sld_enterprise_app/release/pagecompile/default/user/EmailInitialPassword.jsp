<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<% %><%@ page contentType="text/html;charset=utf-8" %><%%><%@ page session="false"%><%setEncodingType("text/html"); %><!-- TemplateName : EmailInitialPassword.isml -->
<!-- TemplateComment : EMail --><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("User:Profile:Title")))).booleanValue() && ((Boolean) ((( ((Number) (new Double(context.getFormattedValue(getObject("User:Profile:Title"),null).length()))).doubleValue() >((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",5,e);}if (_boolean_result) { %><% {Object temp_obj = (context.getFormattedValue(getObject("User:Profile:Title"),null) + context.getFormattedValue(" ",null)); getPipelineDictionary().put("UserTitle", temp_obj);} %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("User:Profile:DefaultAddress:Title")))).booleanValue() && ((Boolean) ((( ((Number) (new Double(context.getFormattedValue(getObject("User:Profile:DefaultAddress:Title"),null).length()))).doubleValue() >((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",7,e);}if (_boolean_result) { %><% {Object temp_obj = (context.getFormattedValue(getObject("User:Profile:DefaultAddress:Title"),null) + context.getFormattedValue(" ",null)); getPipelineDictionary().put("UserTitle", temp_obj);} %><% }} %><subject><% {out.write(localizeISText("EmailInitialPassword.YourPassword",null,null,null,null,null,null,null,null,null,null,null,null));} %></subject><html>
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
</style>
</head>
<body>
<p><% {out.write(localizeISText("EmailInitialPassword.Dear012PPYourNewPasswordIs3PPPleaseChangeYourPassw",null,null,encodeString(context.getFormattedValue(getObject("UserTitle"),null)),encodeString(context.getFormattedValue(getObject("User:Profile:DefaultAddress:FirstName"),null)),encodeString(context.getFormattedValue(getObject("User:Profile:DefaultAddress:LastName"),null)),encodeString(context.getFormattedValue(getObject("Password"),null)),encodeString(context.getFormattedValue(getObject("CurrentOrganization:OwningDomain:DomainName"),null)),null,null,null,null,null));} %><br/>
</body>
</html><% printFooter(out); %>