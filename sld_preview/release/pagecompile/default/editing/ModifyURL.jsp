<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%! protected Boolean printTemplateMarker() { return Boolean.FALSE; } %><%%><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% {try{executePipeline("ViewPreviewConfiguration-ModifyUpdateUrl",((java.util.Map)(((new ParameterMap().addParameter(new ParameterEntry("UpdateUrl",getObject("targetUrl")))).addParameter(new ParameterEntry("TargetSite",getObject("targetSite"))).addParameter(new ParameterEntry("LocaleID",getObject("locale:LocaleID"))).addParameter(new ParameterEntry("CurrencyID",getObject("currency:Mnemonic"))).addParameter(new ParameterEntry("UrlIdentifier",getObject("urlIdentifier")))))),"Result");}catch(Exception e){Logger.error(this,"ISPIPELINE failed. Line: 1.",e);}} %><% {Object temp_obj = (getObject("Result:UpdateUrl")); getPipelineDictionary().put("ModifiedURL", temp_obj);} %><% printFooter(out); %>