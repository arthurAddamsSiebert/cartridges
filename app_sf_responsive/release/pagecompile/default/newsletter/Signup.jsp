<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"modules/common/Modules", null, "2");} %><div class="modal-dialog">
<div class="modal-content">
<div class="modal-header">
<button type="button" class="close" data-dismiss="modal" title="<% {out.write(localizeISText("dialog.close.text","",null,null,null,null,null,null,null,null,null,null,null));} %>" aria-label="<% {out.write(localizeISText("dialog.close.text","",null,null,null,null,null,null,null,null,null,null,null));} %>"><span aria-hidden="true">&times;</span></button>
<h2 class="modal-title"><% {out.write(localizeISText("newsletter.signup.heading","",null,null,null,null,null,null,null,null,null,null,null));} %></h2>
</div>
<div class="modal-body"><% _boolean_result=false;try {_boolean_result=((Boolean)((((((Boolean) getObject("EmailSignupForm:Submitted")).booleanValue() && ((Boolean) ((((Boolean) getObject("EmailSignupForm:Invalid")).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue()) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",11,e);}if (_boolean_result) { %><h2><% {out.write(localizeISText("newsletter.thankyou.message","",null,null,null,null,null,null,null,null,null,null,null));} %></h2>
<div class="signup-success-msg"><% {out.write(localizeISText("newsletter.signup.success.message","",null,null,null,null,null,null,null,null,null,null,null));} %></div><% } else { %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("EmailSignupForm:Email:Invalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",17,e);}if (_boolean_result) { %><div><% {out.write(localizeISText("newsletter.email.invalid.error","",null,null,null,null,null,null,null,null,null,null,null));} %></div><% } %><% } %></div>
<div class="modal-footer">
<button type="button" class="btn btn-primary" data-dismiss="modal"><% {out.write(localizeISText("newsletter.signup.button.ok.label","",null,null,null,null,null,null,null,null,null,null,null));} %></button>
</div>
</div>
</div><% printFooter(out); %>