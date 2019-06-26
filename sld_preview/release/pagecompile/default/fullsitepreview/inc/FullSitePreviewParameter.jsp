<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><%@page import="com.intershop.beehive.core.capi.request.Request"%><%@page import="com.intershop.beehive.core.capi.template.TemplateIdentifier"%><%@page import="com.intershop.beehive.core.capi.template.TemplateMgr"%><%@page import="com.intershop.beehive.core.capi.naming.NamingMgr"%><%
	java.lang.String templateToLoad = null;
	boolean exists = false;
	com.intershop.component.preview.capi.configuration.PreviewConfigurationAttribute previewAttribute = 
		(com.intershop.component.preview.capi.configuration.PreviewConfigurationAttribute) getPipelineDictionary().get("previewAttribute");
	if (previewAttribute != null)
	{
		java.lang.String id = previewAttribute.getID();
		templateToLoad = "fullsitepreview/" + id + ".isml";
		
		TemplateMgr tmgr = (TemplateMgr)NamingMgr.getInstance().lookupManager(TemplateMgr.REGISTRY_NAME);
	 	TemplateIdentifier tid = new TemplateIdentifier(templateToLoad);
	 	exists = tmgr.validateTemplateIdentifier(tid);
	}
	if(exists)
	{
		getPipelineDictionary().put("templateToLoad", templateToLoad);
    }
 %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("templateToLoad")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("previewAttribute")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",27,e);}if (_boolean_result) { %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,context.getFormattedValue(getObject("templateToLoad"),null), null, "28");} %><% } else { %><!-- 
one of the mandatory input parameters is missing
previewAttribute: <% {String value = null;try{value=context.getFormattedValue(getObject("previewAttribute"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {32}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>
--><% } %><% printFooter(out); %>