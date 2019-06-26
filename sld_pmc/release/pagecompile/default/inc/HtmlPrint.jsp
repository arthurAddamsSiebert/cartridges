<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("value"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",2,e);}if (_boolean_result) { %><%@page import = "com.intershop.sellside.pmc.internal.htmleditor.KupuFilterWriter"%><%@page import="com.intershop.sellside.pmc.capi.linkparser.StorefrontLinkParser"%><%@page import="com.intershop.sellside.pmc.capi.linkparser.StorefrontLinkRenderer"%><%@page import="com.intershop.beehive.core.capi.domain.Application" %><%@page import="com.intershop.beehive.core.capi.url.URLComposer" %><%
    String text = (String)getObject("value");
    String mode = (String)getObject("mode");
    KupuFilterWriter filter = new KupuFilterWriter("backoffice".equals(mode));
    filter.write(text);
    filter.flush();
    String processedValue = filter.toString();

    // setup LinkParser-component call
    final URLComposer composer = getTemplateExecutionConfig().getURLComposer();
    final String objectName = StorefrontLinkParser.class.getSimpleName();
    final StorefrontLinkParser parser  = getRequest().getExecutionApplication().getApplicationType().getNamedObject(objectName);
    if (parser != null)
    {
        processedValue = parser.parse(processedValue, composer, null, getTemplateExecutionConfig().getRequest());
    }
    
    getPipelineDictionary().put("value", processedValue);

%><% {String value = null;try{value=context.getFormattedValue(getObject("value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {30}",e);}if (value==null) value="";out.write(value);} %><% } %><% printFooter(out); %>