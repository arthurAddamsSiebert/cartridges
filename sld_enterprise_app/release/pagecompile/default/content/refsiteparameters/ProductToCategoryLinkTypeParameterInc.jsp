<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% {try{executePipeline("ViewConfigurationParameterSelectProductToCategoryLinkType-GetAvailableTypeCodeDefinitions",((java.util.Map)(((new ParameterMap().addParameter(new ParameterEntry("ChannelRepositoryUUID",getObject("CurrentChannel:UUID"))))))),"resultDict");}catch(Exception e){Logger.error(this,"ISPIPELINE failed. Line: 2.",e);}} %><% {Object temp_obj = (getObject("resultDict:TypeCodeDefinitions")); getPipelineDictionary().put("TypeCodeDefinitions", temp_obj);} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"content/refsiteparameters/TypeCodeDefinitionParameterIncInclude", null, "4");} %><% printFooter(out); %>