<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentSession:TransientObject(\"sessionTakeover\")"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",4,e);}if (_boolean_result) { %><div class="system-notification userSessionMessage">
<div class="container">
<div class="row">
<div class="col-sm-12">
<a href="<%=context.getFormattedValue(url(true,context.getFormattedValue(getObject("InsecureURL"),null), context.getFormattedValue("",null), (new URLPipelineAction(context.getFormattedValue("ViewHomepage-Start",null)))),null)%>" class="system-notification-close userSessionMessage-close">
<span class="glyphicon glyphicon-remove"></span>
</a>
<div class="system-notification-icon">
<span class="glyphicon glyphicon-warning-sign"></span>
</div>
<div class="system-notification-text">
<h2><% {out.write(localizeISText("security.session.takeover.title","",null,null,null,null,null,null,null,null,null,null,null));} %></h2>
<p><% {out.write(localizeISText("security.session.takeover.message",null,null,encodeString(context.getFormattedValue(getObject("CurrentRequest:ChannelSite:DisplayName"),null)),null,null,null,null,null,null,null,null,null));} %></p>
</div>
</div>
</div>
</div>
</div>
<script type="text/javascript">
$(function() {
$('.userSessionMessage-close').on('click', function(e) {
e.preventDefault();
var self = this;
// Fade out the message
$(this).closest('.userSessionMessage').fadeOut();
$.ajax({
url: $(this).attr('href'),
data: {},
// if there is an error then fade in the message again
error: function(jqXHR, textStatus, errorThrown) {
$(self).closest('.userSessionMessage').fadeIn();
}
});
});
});
</script><% } %><% printFooter(out); %>