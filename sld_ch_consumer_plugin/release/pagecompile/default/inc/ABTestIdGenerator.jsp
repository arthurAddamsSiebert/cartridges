<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%! protected Boolean printTemplateMarker() { return Boolean.FALSE; } %><%%><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><%@page import="com.intershop.beehive.core.capi.naming.NamingMgr,
                com.intershop.beehive.core.capi.component.ComponentMgr,
                com.intershop.component.marketing.capi.abtest.ABTest,
                com.intershop.component.foundation.capi.id.NameOrIdGenerator,
                com.intershop.beehive.core.capi.localization.LocaleInformation" 
%><%

    NamingMgr nMgr = NamingMgr.getInstance();
    ComponentMgr componentMgr = (ComponentMgr)nMgr.getManager(ComponentMgr.class);
    NameOrIdGenerator<ABTest> generator = componentMgr.getGlobalComponentInstance("abTestNameOrIdGenerator");

    getPipelineDictionary().put("ID", generator.getNextId());
%><% {String value = null;try{value=context.getFormattedValue(getObject("ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {14}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% printFooter(out); %>