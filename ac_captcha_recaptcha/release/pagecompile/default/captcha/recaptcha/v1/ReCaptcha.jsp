<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %>



<script type="text/javascript">
var RecaptchaOptions = {
	custom_translations : {
	    instructions_visual : "<% {out.write(localizeISText("recaptcha.instruction.visual",null,null,null,null,null,null,null,null,null,null,null,null));} %>",
	    instructions_audio : "<% {out.write(localizeISText("recaptcha.instruction.audio",null,null,null,null,null,null,null,null,null,null,null,null));} %>",
	    play_again : "<% {out.write(localizeISText("recaptcha.play.again",null,null,null,null,null,null,null,null,null,null,null,null));} %>",
	    cant_hear_this : "<% {out.write(localizeISText("recaptcha.cantHear",null,null,null,null,null,null,null,null,null,null,null,null));} %>",
	    visual_challenge : "<% {out.write(localizeISText("recaptcha.challenge.visual",null,null,null,null,null,null,null,null,null,null,null,null));} %>",
	    audio_challenge : "<% {out.write(localizeISText("recaptcha.challenge.audio",null,null,null,null,null,null,null,null,null,null,null,null));} %>",
	    refresh_btn : "<% {out.write(localizeISText("recaptcha.btn.refresh",null,null,null,null,null,null,null,null,null,null,null,null));} %>",
	    help_btn : "<% {out.write(localizeISText("recaptcha.btn.help",null,null,null,null,null,null,null,null,null,null,null,null));} %>",
	    incorrect_try_again : "<% {out.write(localizeISText("recaptcha.incorrect",null,null,null,null,null,null,null,null,null,null,null,null));} %>",
    },
	theme: "white",
	lang: "<% {String value = null;try{value=context.getFormattedValue(getObject("CurrentRequest:Locale:Language"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {19}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
};			        	
</script>
<% _boolean_result=false;try {_boolean_result=((Boolean)((((((Boolean) ((disableErrorMessages().isDefined(getObject("captchaFormData"))))).booleanValue() && ((Boolean) ((disableErrorMessages().isDefined(getObject("captchaFormData:HTMLSnippet"))))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",22,e);}if (_boolean_result) { %>
	<% {String value = null;try{value=context.getFormattedValue(getObject("captchaFormData:HTMLSnippet"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {23}",e);}if (value==null) value="";out.write(value);} %>
<% } %>

<% processOpenTag(response, pageContext, "uuid", new TagParameter[] {
new TagParameter("name","CaptchaID")}, 26); %>
<div id="<%=context.getFormattedValue(context.getFormattedValue("captcha-",null) + context.getFormattedValue(getObject("CaptchaID"),null),null)%>" class="captcha"></div>

<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("formField:Invalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",29,e);}if (_boolean_result) { %>
	<small class="help-block"><% {out.write(localizeISText("recaptcha.incorrect.error","",null,null,null,null,null,null,null,null,null,null,null));} %></small>
<% } %>


<input type="hidden" name="<%=context.getFormattedValue(getObject("formField:QualifiedName"),null)%>" value="<%=context.getFormattedValue(getObject("formField:QualifiedName"),null)%>"/><% printFooter(out); %>