<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% {Object temp_obj = (getObject("CustomerBO:Extension(\"CompanyCustomer\")")); getPipelineDictionary().put("CompanyCustomer", temp_obj);} %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CompanyCustomer"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",7,e);}if (_boolean_result) { %><div class="row section">
<div class="col-md-4 pull-right col-xs-2"><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("UserBO:Extension(\"UserBORoleExtension\"):hasPermission(\"APP_B2B_MANAGE_USERS\")"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",10,e);}if (_boolean_result) { %><a class="btn-tool" title="<% {out.write(localizeISText("account.profile.update.link","",null,null,null,null,null,null,null,null,null,null,null));} %>" href="<%=context.getFormattedValue(url(true,context.getFormattedValue(getObject("SecureURL"),null), context.getFormattedValue("",null), (new URLPipelineAction(context.getFormattedValue("ViewCompanyProfileSettings-ViewProfilePreferences",null)))),null)%>">
<span class="glyphicon glyphicon-pencil"></span>
</a><% } %></div>
<div class="col-md-8 col-xs-10">
<h3><% {out.write(localizeISText("account.company_profile.detail.heading","",null,null,null,null,null,null,null,null,null,null,null));} %></h3>
<div class="row">
<div class="col-sm-12">
<dl class="dl-horizontal dl-separator">
<dt><% {out.write(localizeISText("account.company_profile.name.label","",null,null,null,null,null,null,null,null,null,null,null));} %></dt>
<dd><% {String value = null;try{value=context.getFormattedValue(getObject("CompanyCustomer:CompanyName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {25}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("CompanyCustomer:CompanyName2")))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("CompanyCustomer:CompanyName2"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",26,e);}if (_boolean_result) { %><br/><% {String value = null;try{value=context.getFormattedValue(getObject("CompanyCustomer:CompanyName2"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {27}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %></dd>
<dt><% {out.write(localizeISText("account.company_profile.industry.label","",null,null,null,null,null,null,null,null,null,null,null));} %></dt>
<dd><% {String value = null;try{value=context.getFormattedValue(getObject("CompanyCustomer:Industry"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {33}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></dd>
<dt><% {out.write(localizeISText("account.company_profile.taxation_id.label","",null,null,null,null,null,null,null,null,null,null,null));} %></dt>
<dd><% {String value = null;try{value=context.getFormattedValue(getObject("CompanyCustomer:TaxationID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {38}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></dd>
</dl>
</div>
</div>
</div>
</div><% } %><% printFooter(out); %>