<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %>

<% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/CSRFGuardJSToken", null, "3");} %>
<input type="hidden" name="LinkSource" value="Shopping" />


<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) getObject("UserBO:Extension(\"UserBORoleExtension\"):hasRole(\"APP_B2B_OCI_USER\")")).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",7,e);}if (_boolean_result) { %>
	<a data-csrf-guarded href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCart-Dispatch",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("createQuote",null),context.getFormattedValue("true",null)))),null)%>" class="btn btn-default" id="createQuote" name="createQuote">
		<% {out.write(localizeISText("shopping_cart.quote.create.button","",null,null,null,null,null,null,null,null,null,null,null));} %>
	</a>
<% } %><% printFooter(out); %>