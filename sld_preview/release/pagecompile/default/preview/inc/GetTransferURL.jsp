<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%! protected Boolean printTemplateMarker() { return Boolean.FALSE; } %><%%><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"editing/Modules", null, "1");} %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("previewContext:PreviewConfigurationAttribute(\"PreviewApplication\"):Selected"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",2,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "getmodifiedurl", new TagParameter[] {
new TagParameter("targetSite",getObject("targetSite")),
new TagParameter("ModifiedURL","ModifiedURL"),
new TagParameter("currency",getObject("previewContext:PreviewConfigurationAttribute(\"PreviewCurrency\"):SelectedValue:ValueObject")),
new TagParameter("urlIdentifier",getObject("previewContext:PreviewConfigurationAttribute(\"PreviewApplication\"):SelectedValue:ValueObject:UrlIdentifier")),
new TagParameter("locale",getObject("previewContext:PreviewConfigurationAttribute(\"PreviewLocale\"):SelectedValue:ValueObject")),
new TagParameter("targetUrl",getObject("targeturl"))}, 3); %><% } else { %><% processOpenTag(response, pageContext, "getmodifiedurl", new TagParameter[] {
new TagParameter("targetSite",getObject("targetSite")),
new TagParameter("ModifiedURL","ModifiedURL"),
new TagParameter("currency",getObject("previewContext:PreviewConfigurationAttribute(\"PreviewCurrency\"):SelectedValue:ValueObject")),
new TagParameter("locale",getObject("previewContext:PreviewConfigurationAttribute(\"PreviewLocale\"):SelectedValue:ValueObject")),
new TagParameter("targetUrl",getObject("targeturl"))}, 10); %><% } %><% {Object temp_obj = (getObject("ModifiedURL")); getPipelineDictionary().put("transferURL", temp_obj);} %><% printFooter(out); %>