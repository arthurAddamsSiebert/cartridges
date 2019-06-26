<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%! protected Boolean printTemplateMarker() { return Boolean.FALSE; } %><%%><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!DOCTYPE html><html>
<head><% insertIntershopSignature(request,(com.intershop.beehive.core.capi.request.ServletResponse)response); %><meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title><% {out.write(localizeISText("StorefrontFullSitePreview.FullSitePreview.title","",null,null,null,null,null,null,null,null,null,null,null));} %></title>
<script type="text/javascript">
var imgDir = "<%=context.getFormattedValue(context.webRoot(),null)%>/images/";
</script>
<link href="<%=context.getFormattedValue(context.webRoot(),null)%>/css/reset.css" rel="stylesheet" >
<link href="<%=context.getFormattedValue(context.webRoot(),null)%>/css/designer.css" rel="stylesheet" >
</head>
<body class="backoffice">
<div id="viewable-area" class="previewMode"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PreviewTargetURL"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",16,e);}if (_boolean_result) { %><iframe src="<% {String value = null;try{value=context.getFormattedValue(getObject("PreviewTargetURL"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {17}",e);}if (value==null) value="";out.write(value);} %>" id="siteContent" name="siteContent" frameBorder="0"></iframe><% } else { %><iframe src="<% {String value = null;try{value=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("Default-Start",null)))),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {19}",e);}if (value==null) value="";out.write(value);} %>" id="siteContent" name="siteContent" frameBorder="0"></iframe><% } %></div><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"fullsitepreview/FullSitePreviewSettings.isml", null, "22");} %><script src="<%=context.getFormattedValue(context.webRoot(),null)%>/js/jquery.js"></script>
<script src="<%=context.getFormattedValue(context.webRoot(),null)%>/js/jquery-migrate-1.2.1.js"></script>
<script src="<%=context.getFormattedValue(context.webRoot(),null)%>/js/fullSitePreview.js"></script>
</body>
</html><% printFooter(out); %>