<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% processOpenTag(response, pageContext, "previewlink", new TagParameter[] {
new TagParameter("contextParameter2",getObject("contextParameter2")),
new TagParameter("contextParameter3",getObject("contextParameter3")),
new TagParameter("contextParameter4",getObject("contextParameter4")),
new TagParameter("previewURL",getObject("previewURL")),
new TagParameter("contextParameter5",getObject("contextParameter5")),
new TagParameter("contextParameter6",getObject("contextParameter6")),
new TagParameter("contextParameter7",getObject("contextParameter7")),
new TagParameter("contextValue0",getObject("contextValue0")),
new TagParameter("contextParameter8",getObject("contextParameter8")),
new TagParameter("imageBorder",getObject("imageBorder")),
new TagParameter("linkTarget",getObject("linkTarget")),
new TagParameter("contextValue1",getObject("contextValue1")),
new TagParameter("contextParameter9",getObject("contextParameter9")),
new TagParameter("imageSrc","/images/preview_page.png"),
new TagParameter("imageAlt",getObject("imageAlt")),
new TagParameter("contextParameter0",getObject("contextParameter0")),
new TagParameter("contextParameter1",getObject("contextParameter1")),
new TagParameter("contextApplicationUUID",getObject("contextApplicationUUID")),
new TagParameter("contextPipeline",getObject("contextPipeline")),
new TagParameter("contextValue2",getObject("contextValue2")),
new TagParameter("contextValue3",getObject("contextValue3")),
new TagParameter("contextValue4",getObject("contextValue4")),
new TagParameter("contextValue5",getObject("contextValue5")),
new TagParameter("imageTitle",getObject("imageTitle")),
new TagParameter("contextValue6",getObject("contextValue6")),
new TagParameter("contextValue7",getObject("contextValue7")),
new TagParameter("contextValue8",getObject("contextValue8")),
new TagParameter("contextValue9",getObject("contextValue9")),
new TagParameter("linkId",getObject("linkId")),
new TagParameter("linkClass",getObject("linkClass"))}, 1); %><% printFooter(out); %>