<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE html
PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en"> <head>
<title>HTML Editor</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
<link href="<%=context.getFormattedValue(context.webRoot(),null)%>/htmleditor/kupustyles.css" rel="stylesheet" type="text/css"/>
<link href="<%=context.getFormattedValue(context.webRoot(),null)%>/htmleditor/kupudrawerstyles.css" rel="stylesheet" type="text/css"/><% {out.flush();%><%@page import="com.intershop.beehive.core.capi.url.*"%><%URLRewriteHandler handler = getTemplateExecutionConfig().getURLRewriteHandler();
try
{
getTemplateExecutionConfig().setURLRewriteHandler(NullURLRewriteHandler.getInstance());
processRemoteIncludeAutomatic((com.intershop.beehive.core.capi.request.ServletResponse)response,context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("IncludeBrandingContent-StyleSheetHook",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("dummy1",null),context.getFormattedValue(getObject("OrganizationDomainId"),null))).addURLParameter(context.getFormattedValue("dummy2",null),context.getFormattedValue(getObject("CurrentSession:PersonalizationGroupID"),null)).addURLParameter(context.getFormattedValue("Hook_StyleSheet_Name",null),context.getFormattedValue("enterprisesite.css",null))),null), null, null, "11");}
finally
{
    getTemplateExecutionConfig().setURLRewriteHandler(handler);
}} %><script type="text/javascript" src="<%=context.getFormattedValue(context.webRoot(),null)%>/htmleditor/sarissa.js"> </script>
<script type="text/javascript" src="<%=context.getFormattedValue(context.webRoot(),null)%>/htmleditor/kupuhelpers.js"> </script>
<script type="text/javascript" src="<%=context.getFormattedValue(context.webRoot(),null)%>/htmleditor/kupueditor.js"> </script>
<script type="text/javascript" src="<%=context.getFormattedValue(context.webRoot(),null)%>/htmleditor/kupubasetools.js"> </script>
<script type="text/javascript" src="<%=context.getFormattedValue(context.webRoot(),null)%>/htmleditor/kupuloggers.js"> </script>
<script type="text/javascript" src="<%=context.getFormattedValue(context.webRoot(),null)%>/htmleditor/kupucontentfilters.js"> </script>
<script type="text/javascript" src="<%=context.getFormattedValue(context.webRoot(),null)%>/htmleditor/kupucleanupexpressions.js"> </script>
<script type="text/javascript" src="<%=context.getFormattedValue(context.webRoot(),null)%>/htmleditor/kupucontextmenu.js"> </script>
<script type="text/javascript" src="<%=context.getFormattedValue(context.webRoot(),null)%>/htmleditor/kupuinit_form.js"> </script>
<script type="text/javascript" src="<%=context.getFormattedValue(context.webRoot(),null)%>/htmleditor/kupustart_form.js"> </script>
<script type="text/javascript" src="<%=context.getFormattedValue(context.webRoot(),null)%>/htmleditor/kupusourceedit.js"> </script>
<script type="text/javascript" src="<%=context.getFormattedValue(context.webRoot(),null)%>/htmleditor/kupudrawers.js"> </script>
<script type="text/javascript">
var scriptBase = "<%=context.getFormattedValue(context.webRoot(),null)%>";
var SetTextParamName = "<% {String value = null;try{value=context.getFormattedValue(getObject("SetTextParamName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {27}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>">";
//window.kupuInitialized = false;
function startup()
{
var kupuStarter = new StartKupu('<% {String value = null;try{value=context.getFormattedValue(getObject("OrganizationDomainId"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {31}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>',"<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("HtmlEditor-GetText",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("LocaleId",null),context.getFormattedValue(getObject("LocaleId"),null))).addURLParameter(context.getFormattedValue("OrganizationDomainId",null),context.getFormattedValue(getObject("OrganizationDomainId"),null)).addURLParameter(context.getFormattedValue("TextSessionName",null),context.getFormattedValue(getObject("TextSessionName"),null)).addURLParameter(context.getFormattedValue("GetterPipeline",null),context.getFormattedValue(getObject("GetterPipeline"),null)).addURLParameter(context.getFormattedValue("GetTextParamName",null),context.getFormattedValue(getObject("GetTextParamName"),null)).addURLParameter(context.getFormattedValue("CategoryLinkSite",null),context.getFormattedValue(getObject("CategoryLinkSite"),null)).addURLParameter(context.getFormattedValue(getObject("GPN0"),null),context.getFormattedValue(getObject("GPV0"),null)).addURLParameter(context.getFormattedValue(getObject("GPN1"),null),context.getFormattedValue(getObject("GPV1"),null)).addURLParameter(context.getFormattedValue(getObject("GPN2"),null),context.getFormattedValue(getObject("GPV2"),null)).addURLParameter(context.getFormattedValue(getObject("GPN3"),null),context.getFormattedValue(getObject("GPV3"),null))),null)%>","<% {String value = null;try{value=context.getFormattedValue(getObject("ContextTemplateName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {31}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>");
var kupu = kupuStarter.getKupu();
if (window.opener != null)
{
<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("RefreshURL"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",36,e);}if (_boolean_result) { %>
// we refresh the opener (the back office) at startup
// to ensure that the back office is refreshed _after_
// the text has been sent to the server
window.opener.window.location.replace("<% {String value = null;try{value=context.getFormattedValue(getObject("RefreshURL"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {40}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>");
<% } else { %>
var formToSubmit = window.opener.window.document.forms.<% {String value = null;try{value=context.getFormattedValue(getObject("RefreshFormName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {42}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>;
formToSubmit.submit();
<% } %>
}
return kupu;
};
</script>
</head>
<body onload="kupu = startup();" dclass="n1 e1 s1 w1"><% URLPipelineAction action223 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("HtmlEditor-SetText",null)))),null));String site223 = null;String serverGroup223 = null;String actionValue223 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("HtmlEditor-SetText",null)))),null);if (site223 == null){  site223 = action223.getDomain();  if (site223 == null)  {      site223 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup223 == null){  serverGroup223 = action223.getServerGroup();  if (serverGroup223 == null)  {      serverGroup223 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("POST");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("HtmlEditor-SetText",null)))),null));out.print("\"");out.print(" name=\"");out.print("saveText");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue223, site223, serverGroup223,true)); %><div style="display: none;">
<xml id="kupuconfig">
<kupuconfig>
<dst>dummy</dst>
<use_css>0</use_css>
<reload_after_save>0</reload_after_save>
<strict_output>0</strict_output>
<content_type>application/xhtml+xml</content_type>
<compatible_singletons>1</compatible_singletons>
<!-- table_classes seems to be used by the table tool? -->
<table_classes>
<class>plain</class>
<class>listing</class>
<class>grid</class>
<class>data</class>
</table_classes>
<!-- cleanup_expressions seems to be used by?? intentioanlly left blank original content needs to be heavily escaped...-->
<cleanup_expressions>
</cleanup_expressions>
<!-- *image_* elements used to setup image repository -->
<image_xsl_uri><%=context.getFormattedValue(context.webRoot(),null)%>/htmleditor/kupudrawers/drawer.xsl</image_xsl_uri>
<image_libraries_uri><% {String value = null;try{value=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("HtmlEditor-GetLibraries",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("OrganizationDomainId",null),context.getFormattedValue(getObject("OrganizationDomainId"),null))).addURLParameter(context.getFormattedValue("ContentImages",null),context.getFormattedValue("true",null)).addURLParameter(context.getFormattedValue("ProductImages",null),context.getFormattedValue("true",null)).addURLParameter(context.getFormattedValue("LocaleId",null),context.getFormattedValue(getObject("LocaleId"),null))),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {73}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></image_libraries_uri>
<search_images_uri> </search_images_uri>
<!-- *link_* elements used to setup link repository -->
<link_xsl_uri><%=context.getFormattedValue(context.webRoot(),null)%>/htmleditor/kupudrawers/drawer.xsl</link_xsl_uri>
<link_libraries_uri><% {String value = null;try{value=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("HtmlEditor-GetLibraries",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("OrganizationDomainId",null),context.getFormattedValue(getObject("OrganizationDomainId"),null))).addURLParameter(context.getFormattedValue("CategoryLinks",null),context.getFormattedValue("true",null)).addURLParameter(context.getFormattedValue("CategoryLinkPipeline",null),context.getFormattedValue(getObject("CategoryLinkPipeline"),null)).addURLParameter(context.getFormattedValue("CategoryLinkSite",null),context.getFormattedValue(getObject("CategoryLinkSite"),null)).addURLParameter(context.getFormattedValue("ProductLinks",null),context.getFormattedValue("true",null)).addURLParameter(context.getFormattedValue("ProductLinkPipeline",null),context.getFormattedValue(getObject("ProductLinkPipeline"),null)).addURLParameter(context.getFormattedValue("ProductLinkSite",null),context.getFormattedValue(getObject("ProductLinkSite"),null)).addURLParameter(context.getFormattedValue("LocaleId",null),context.getFormattedValue(getObject("LocaleId"),null))),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {77}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></link_libraries_uri>
<search_links_uri> </search_links_uri>
</kupuconfig>
</xml>
</div><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("RefreshURL"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",82,e);}if (_boolean_result) { %><input type ="hidden" name = "RefreshURL" value = "<% {String value = null;try{value=context.getFormattedValue(getObject("RefreshURL"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {83}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% } else { %><input type ="hidden" name = "RefreshFormName" value = "<% {String value = null;try{value=context.getFormattedValue(getObject("RefreshFormName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {85}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% } %><input type ="hidden" name = "LocaleId" value = "<% {String value = null;try{value=context.getFormattedValue(getObject("LocaleId"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {87}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>">
<input type ="hidden" name = "OrganizationDomainId" value = "<% {String value = null;try{value=context.getFormattedValue(getObject("OrganizationDomainId"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {88}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>">
<input type ="hidden" name = "TextSessionName" value = "<% {String value = null;try{value=context.getFormattedValue(getObject("TextSessionName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {89}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>">
<input type ="hidden" name = "ContextTemplateName" value = "<% {String value = null;try{value=context.getFormattedValue(getObject("ContextTemplateName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {90}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>">
<input type ="hidden" name = "PersistingPipeline" value = "<% {String value = null;try{value=context.getFormattedValue(getObject("PersistingPipeline"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {91}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>">
<input type ="hidden" name = "SetTextParamName" value = "<% {String value = null;try{value=context.getFormattedValue(getObject("SetTextParamName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {92}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>">
<input type ="hidden" name = "PPN0" value = "<% {String value = null;try{value=context.getFormattedValue(getObject("PPN0"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {93}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>">
<input type ="hidden" name = "PPV0" value = "<% {String value = null;try{value=context.getFormattedValue(getObject("PPV0"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {94}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>">
<input type ="hidden" name = "<% {String value = null;try{value=context.getFormattedValue(getObject("PPN0"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {95}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" value = "<% {String value = null;try{value=context.getFormattedValue(getObject("PPV0"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {95}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>">
<input type ="hidden" name = "PPN1" value = "<% {String value = null;try{value=context.getFormattedValue(getObject("PPN1"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {97}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>">
<input type ="hidden" name = "PPV1" value = "<% {String value = null;try{value=context.getFormattedValue(getObject("PPV1"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {98}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>">
<input type ="hidden" name = "<% {String value = null;try{value=context.getFormattedValue(getObject("PPN1"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {99}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" value = "<% {String value = null;try{value=context.getFormattedValue(getObject("PPV1"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {99}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>">
<input type ="hidden" name = "PPN2" value = "<% {String value = null;try{value=context.getFormattedValue(getObject("PPN2"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {101}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>">
<input type ="hidden" name = "PPV2" value = "<% {String value = null;try{value=context.getFormattedValue(getObject("PPV2"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {102}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>">
<input type ="hidden" name = "<% {String value = null;try{value=context.getFormattedValue(getObject("PPN2"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {103}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" value = "<% {String value = null;try{value=context.getFormattedValue(getObject("PPV2"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {103}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>">
<input type ="hidden" name = "PPN3" value = "<% {String value = null;try{value=context.getFormattedValue(getObject("PPN3"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {105}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>">
<input type ="hidden" name = "PPV3" value = "<% {String value = null;try{value=context.getFormattedValue(getObject("PPV3"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {106}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>">
<input type ="hidden" name = "<% {String value = null;try{value=context.getFormattedValue(getObject("PPN3"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {107}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" value = "<% {String value = null;try{value=context.getFormattedValue(getObject("PPV3"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {107}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>">
<input type ="hidden" name = "GetterPipeline" value = "<% {String value = null;try{value=context.getFormattedValue(getObject("GetterPipeline"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {110}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>">
<input type ="hidden" name = "GetTextParamName" value = "<% {String value = null;try{value=context.getFormattedValue(getObject("GetTextParamName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {111}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>">
<input type ="hidden" name = "GPN0" value = "<% {String value = null;try{value=context.getFormattedValue(getObject("GPN0"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {112}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>">
<input type ="hidden" name = "GPV0" value = "<% {String value = null;try{value=context.getFormattedValue(getObject("GPV0"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {113}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>">
<input type ="hidden" name = "<% {String value = null;try{value=context.getFormattedValue(getObject("GPN0"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {114}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" value = "<% {String value = null;try{value=context.getFormattedValue(getObject("GPV0"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {114}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>">
<input type ="hidden" name = "GPN1" value = "<% {String value = null;try{value=context.getFormattedValue(getObject("GPN1"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {116}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>">
<input type ="hidden" name = "GPV1" value = "<% {String value = null;try{value=context.getFormattedValue(getObject("GPV1"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {117}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>">
<input type ="hidden" name = "<% {String value = null;try{value=context.getFormattedValue(getObject("GPN1"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {118}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" value = "<% {String value = null;try{value=context.getFormattedValue(getObject("GPV1"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {118}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>">
<input type ="hidden" name = "GPN2" value = "<% {String value = null;try{value=context.getFormattedValue(getObject("GPN2"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {120}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>">
<input type ="hidden" name = "GPV2" value = "<% {String value = null;try{value=context.getFormattedValue(getObject("GPV2"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {121}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>">
<input type ="hidden" name = "<% {String value = null;try{value=context.getFormattedValue(getObject("GPN2"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {122}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" value = "<% {String value = null;try{value=context.getFormattedValue(getObject("GPV2"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {122}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>">
<input type ="hidden" name = "GPN3" value = "<% {String value = null;try{value=context.getFormattedValue(getObject("GPN3"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {125}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>">
<input type ="hidden" name = "GPV3" value = "<% {String value = null;try{value=context.getFormattedValue(getObject("GPV3"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {126}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>">
<input type ="hidden" name = "<% {String value = null;try{value=context.getFormattedValue(getObject("GPN3"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {127}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" value = "<% {String value = null;try{value=context.getFormattedValue(getObject("GPV3"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {127}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) ((((context.getFormattedValue(getObject("CategoryLinkPipeline"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",130,e);}if (_boolean_result) { %><input type ="hidden" name = "CategoryLinkPipeline" value = "<% {String value = null;try{value=context.getFormattedValue(getObject("CategoryLinkPipeline"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {131}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>">
<input type ="hidden" name = "CategoryLinkSite" value = "<% {String value = null;try{value=context.getFormattedValue(getObject("CategoryLinkSite"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {132}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) ((((context.getFormattedValue(getObject("ProductLinkPipeline"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",135,e);}if (_boolean_result) { %><input type ="hidden" name = "ProductLinkPipeline" value = "<% {String value = null;try{value=context.getFormattedValue(getObject("ProductLinkPipeline"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {136}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>">
<input type ="hidden" name = "ProductLinkSite" value = "<% {String value = null;try{value=context.getFormattedValue(getObject("ProductLinkSite"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {137}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("FromChannel"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",139,e);}if (_boolean_result) { %><% {Object temp_obj = (context.getFormattedValue("htmleditor/TemplateList_",null) + context.getFormattedValue(getObject("FromChannel:TypeCode"),null)); getPipelineDictionary().put("templateListTemplateName", temp_obj);} %><% } else { %><% {Object temp_obj = ("htmleditor/TemplateList"); getPipelineDictionary().put("templateListTemplateName", temp_obj);} %><% } %><!-- kupu-fulleditor -->
<div class="kupu-fulleditor">
<div class="kupu-tb s1" id="toolbar">
<!-- kupu-tb-buttons -->
<span id="kupu-tb-buttons">
<span class="kupu-tb-buttongroup e1">
<!-- save button -->
<button xmlns:i18n="http://xml.zope.org/namespaces/i18n" type="button" class="kupu-save" id="kupu-save-button" title="Save" i18n:attributes="title" accesskey="s">&nbsp;</button>
<button xmlns:i18n="http://xml.zope.org/namespaces/i18n" type="button" class="kupu-template-button" id="kupu-template-button" title="Select Template" i18n:attributes="title" accesskey="s"
<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (existsTemplate(context.getFormattedValue(getObject("templateListTemplateName"),null)))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",156,e);}if (_boolean_result) { %>
style = "display:none"
<% } %>
>&nbsp;</button>
</span>
<!-- cut, copy, paste -->
<span class="kupu-tb-buttongroup w2 e1" id="kupu-bg-copypaste">
<button xmlns:i18n="http://xml.zope.org/namespaces/i18n" type="button" class="kupu-cut" id="kupu-cut-button" title="cut: alt-t" i18n:attributes="title" accesskey="t">&nbsp;</button>
<button xmlns:i18n="http://xml.zope.org/namespaces/i18n" type="button" class="kupu-copy" id="kupu-copy-button" title="copy alt-o" i18n:attributes="title" accesskey="o">&nbsp;</button>
<button xmlns:i18n="http://xml.zope.org/namespaces/i18n" type="button" class="kupu-paste" id="kupu-paste-button" title="paste alt-p" i18n:attributes="title" accesskey="p">&nbsp;</button>
</span>
<span class="kupu-tb-buttongroup w2 e1" id="kupu-bg-undo">
<button xmlns:i18n="http://xml.zope.org/namespaces/i18n" type="button" class="kupu-undo" id="kupu-undo-button" title="undo: alt-z" i18n:attributes="title" accesskey="z">&nbsp;</button>
<button xmlns:i18n="http://xml.zope.org/namespaces/i18n" type="button" class="kupu-redo" id="kupu-redo-button" title="redo: alt-y" i18n:attributes="title" accesskey="y">&nbsp;</button>
</span>
<!-- basic markup (bold, underline etc) -->
<span class="kupu-tb-buttongroup w2 e1" id="kupu-bg-basicmarkup">
<button xmlns:i18n="http://xml.zope.org/namespaces/i18n" type="button" class="kupu-bold" id="kupu-bold-button" title="bold: alt-b" i18n:attributes="title" accesskey="b">&nbsp;</button>
<button xmlns:i18n="http://xml.zope.org/namespaces/i18n" type="button" class="kupu-italic" id="kupu-italic-button" title="italic: alt-i" i18n:attributes="title" accesskey="i">&nbsp;</button>
<button xmlns:i18n="http://xml.zope.org/namespaces/i18n" type="button" class="kupu-underline" id="kupu-underline-button" title="underline: alt-u" i18n:attributes="title" accesskey="u">&nbsp;</button>
</span>
<span class="kupu-tb-buttongroup w2 e1" id="kupu-bg-subsuper">
<button xmlns:i18n="http://xml.zope.org/namespaces/i18n" type="button" class="kupu-subscript" id="kupu-subscript-button" title="subscript: alt--" i18n:attributes="title" accesskey="-">&nbsp;</button>
<button xmlns:i18n="http://xml.zope.org/namespaces/i18n" type="button" class="kupu-superscript" id="kupu-superscript-button" title="superscript: alt-+" i18n:attributes="title" accesskey="+">&nbsp;</button>
</span>
<span class="kupu-tb-buttongroup w2 e1">
<button xmlns:i18n="http://xml.zope.org/namespaces/i18n" type="button" class="kupu-forecolor" id="kupu-forecolor-button" title="text color: alt-f" i18n:attributes="title" accesskey="f">&nbsp;</button><span style="display: none;"><button xmlns:i18n="http://xml.zope.org/namespaces/i18n" type="button" class="kupu-hilitecolor" id="kupu-hilitecolor-button" title="background color: alt-h" i18n:attributes="title" accesskey="h">&nbsp;</button></span>
</span>
<span class="kupu-tb-buttongroup w2 e1" id="kupu-bg-justify">
<button xmlns:i18n="http://xml.zope.org/namespaces/i18n" type="button" class="kupu-justifyleft" id="kupu-justifyleft-button" title="left justify: alt-l" i18n:attributes="title" accesskey="l">&nbsp;</button>
<button xmlns:i18n="http://xml.zope.org/namespaces/i18n" type="button" class="kupu-justifycenter" id="kupu-justifycenter-button" title="center justify: alt-c" i18n:attributes="title" accesskey="c">&nbsp;</button>
<button xmlns:i18n="http://xml.zope.org/namespaces/i18n" type="button" class="kupu-justifyright" id="kupu-justifyright-button" title="right justify: alt-r" i18n:attributes="title" accesskey="r">&nbsp;</button>
</span>
<span class="kupu-tb-buttongroup w2 e1" id="kupu-bg-definitionlist">
<button xmlns:i18n="http://xml.zope.org/namespaces/i18n" type="button" class="kupu-insertdefinitionlist" id="kupu-list-dl-addbutton" title="definition list: alt-=" i18n:attributes="title" accesskey="=">&nbsp;</button>
</span>
<span class="kupu-tb-buttongroup w2 e1" id="kupu-bg-indent">
<button xmlns:i18n="http://xml.zope.org/namespaces/i18n" type="button" class="kupu-outdent" id="kupu-outdent-button" title="outdent: alt-&lt;" i18n:attributes="title" accesskey="&lt;">&nbsp;</button>
<button xmlns:i18n="http://xml.zope.org/namespaces/i18n" type="button" class="kupu-indent" id="kupu-indent-button" title="indent: alt-&gt;" i18n:attributes="title" accesskey="&gt;">&nbsp;</button>
</span>
<span class="kupu-tb-buttongroup w2" id="kupu-bg-delete">
<button xmlns:i18n="http://xml.zope.org/namespaces/i18n" type="button" class="kupu-delete" id="kupu-delete-button" title="delete: alt-d" i18n:attributes="title" accesskey="d">&nbsp;</button>
</span>
</span>
</div>
<div class="kupu-tb n2 s1" id="toolbar">
<!-- kupu-tb-buttons -->
<span id="kupu-tb-buttons">
<span class="kupu-tb-buttongroup e1">
<span id="kupu-bg-list">
<button xmlns:i18n="http://xml.zope.org/namespaces/i18n" type="button" class="kupu-insertorderedlist" title="numbered list: alt-c" id="kupu-list-ol-addbutton" i18n:attributes="title" accesskey="c">&nbsp;</button>
<button xmlns:i18n="http://xml.zope.org/namespaces/i18n" type="button" class="kupu-insertunorderedlist" title="unordered list: alt-*" id="kupu-list-ul-addbutton" i18n:attributes="title" accesskey="*">&nbsp;</button>
</span><select id="kupu-ulstyles">
<option xmlns:i18n="http://xml.zope.org/namespaces/i18n" value="disc" i18n:translate="list-disc">&<%=context.getFormattedValue("#",null)%>x25CF;</option>
<option xmlns:i18n="http://xml.zope.org/namespaces/i18n" value="square" i18n:translate="list-square">&<%=context.getFormattedValue("#",null)%>x25A0;</option>
<option xmlns:i18n="http://xml.zope.org/namespaces/i18n" value="circle" i18n:translate="list-circle">&<%=context.getFormattedValue("#",null)%>x25CB;</option>
<option xmlns:i18n="http://xml.zope.org/namespaces/i18n" value="none" i18n:translate="list-nobullet">no bullet</option>
</select><select id="kupu-olstyles">
<option xmlns:i18n="http://xml.zope.org/namespaces/i18n" value="decimal" i18n:translate="list-decimal">1</option>
<option xmlns:i18n="http://xml.zope.org/namespaces/i18n" value="upper-roman" i18n:translate="list-upperroman">I</option>
<option xmlns:i18n="http://xml.zope.org/namespaces/i18n" value="lower-roman" i18n:translate="list-lowerroman">i</option>
<option xmlns:i18n="http://xml.zope.org/namespaces/i18n" value="upper-alpha" i18n:translate="list-upperalpha">A</option>
<option xmlns:i18n="http://xml.zope.org/namespaces/i18n" value="lower-alpha" i18n:translate="list-loweralpha">a</option>
</select></span><span class="kupu-tb-buttongroup w2 e1">
<!-- adds the options for paragraphs-->
<select id="kupu-tb-styles">
<option xmlns:i18n="http://xml.zope.org/namespaces/i18n" value="P" i18n:translate="paragraph-normal">
Normal
</option>
<option value="H1">
<span xmlns:i18n="http://xml.zope.org/namespaces/i18n" i18n:translate="heading">
Heading
</span>
1
</option>
<option value="H2">
<span xmlns:i18n="http://xml.zope.org/namespaces/i18n" i18n:translate="heading">
Heading
</span>
2
</option>
<option value="H3">
<span xmlns:i18n="http://xml.zope.org/namespaces/i18n" i18n:translate="heading">
Heading
</span>
3
</option>
<option value="H4">
<span xmlns:i18n="http://xml.zope.org/namespaces/i18n" i18n:translate="heading">
Heading
</span>
4
</option>
<option value="H5">
<span xmlns:i18n="http://xml.zope.org/namespaces/i18n" i18n:translate="heading">
Heading
</span>
5
</option>
<option value="H6">
<span xmlns:i18n="http://xml.zope.org/namespaces/i18n" i18n:translate="heading">
Heading
</span>
6
</option>
<option xmlns:i18n="http://xml.zope.org/namespaces/i18n" value="PRE" i18n:translate="paragraph-formatted">
Formatted
</option>
</select>
</span>
<!-- end adds the options for paragraphs-->
<span class="kupu-tb-buttongroup w2 e1">
<button xmlns:i18n="http://xml.zope.org/namespaces/i18n" type="button" class="kupu-image" id="kupu-imagelibdrawer-button" title="image" i18n:attributes="title">&nbsp;</button>
<button xmlns:i18n="http://xml.zope.org/namespaces/i18n" type="button" class="kupu-inthyperlink" id="kupu-linklibdrawer-button" title="internal link" i18n:attributes="title"
<% _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("CategoryLinkPipeline"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",277,e);}if (_boolean_result) { %>
style = "display:none"
<% } %>
>&nbsp;</button>
<button xmlns:i18n="http://xml.zope.org/namespaces/i18n" type="button" class="kupu-exthyperlink-button" id="kupu-externallink-button" title="External Link" i18n:attributes="title" accesskey="s">&nbsp;</button>
<button xmlns:i18n="http://xml.zope.org/namespaces/i18n" type="button" class="kupu-setanchor-button" id="kupu-setanchor-button" title="Set Anchor" i18n:attributes="title" accesskey="s">&nbsp;</button>
<button xmlns:i18n="http://xml.zope.org/namespaces/i18n" type="button" class="kupu-linkanchor-button" id="kupu-linkanchor-button" title="Link to Anchor" i18n:attributes="title" accesskey="s">&nbsp;</button>
<button xmlns:i18n="http://xml.zope.org/namespaces/i18n" type="button" class="kupu-table" id="kupu-tabledrawer-button" title="table" i18n:attributes="title">&nbsp;</button>
</span>
<span class="kupu-tb-buttongroup w2" id="kupu-source">
<!-- edit source -->
<button xmlns:i18n="http://xml.zope.org/namespaces/i18n" type="button" class="kupu-source" id="kupu-source-button" title="edit HTML code" i18n:attributes="title">&nbsp;</button>
<!-- end edit source -->
</span>
</span>
<!-- END kupu-tb-buttons -->
</div>
<div id="kupu-librarydrawer" class="kupu-drawer"></div>
<div id="kupu-templatedrawer" class="kupu-drawer">
<div class="kupu-librarydrawer-title">
Select Template
</div>
<div class = "kupu-panels">
<table border="0" cellspacing="0" cellpadding="0">
<tr class="kupu-panelsrow">
<td class="kupu-templates-panel">
<div class = "overflow" id = "template-resource-items"><% _boolean_result=false;try {_boolean_result=((Boolean)(existsTemplate(context.getFormattedValue(getObject("templateListTemplateName"),null)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",307,e);}if (_boolean_result) { %><% {out.flush();%><%@page import="com.intershop.beehive.core.capi.url.*"%><%URLRewriteHandler handler = getTemplateExecutionConfig().getURLRewriteHandler();
try
{
getTemplateExecutionConfig().setURLRewriteHandler(NullURLRewriteHandler.getInstance());
processRemoteIncludeAutomatic((com.intershop.beehive.core.capi.request.ServletResponse)response,context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("HtmlEditor-GetTemplateList",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("TemplateListName",null),context.getFormattedValue(getObject("templateListTemplateName"),null)))),null), null, null, "308");}
finally
{
    getTemplateExecutionConfig().setURLRewriteHandler(handler);
}} %><% } %></div>
<td><% _boolean_result=false;try {_boolean_result=((Boolean)(existsTemplate(context.getFormattedValue(getObject("templateListTemplateName"),null)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",312,e);}if (_boolean_result) { %><iframe id = "kupu-templates-preview" src="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("HtmlEditor-GetTemplate",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("TemplateName",null),context.getFormattedValue("htmleditor/Empty",null))).addURLParameter(context.getFormattedValue("OrganizationDomainId",null),context.getFormattedValue(getObject("OrganizationDomainId"),null))),null)%>" frameborder="0" scrolling="auto"></iframe><% } %></tr>
</table>
</div>
<div class="kupu-dialogbuttons">
<button type="button" id = "kupu-select-template-button" onclick="drawertool.current_drawer.setTemplate()">OK</button>
<button type="button" id = "kupu-select-cancel-button" onclick="drawertool.closeDrawer()">Cancel</button>
</div>
</div>
<div id="kupu-linktoanchordrawer" class="kupu-drawer">
<div class="kupu-librarydrawer-title">
Link to Anchor
</div>
<div class = "kupu-panels">
<table border="0" cellspacing="0" cellpadding="0">
<tr class="kupu-panelsrow">
<td class="kupu-linktoanchor-panel">
<div class = "overflow" id = "linktoanchor-resource-items">
</div>
<td>
</tr>
</table>
</div>
<div class="kupu-dialogbuttons">
<button type="button" id = "kupu-link-anchor-button" onclick="drawertool.current_drawer.createLinkToAnchor()">OK</button>
<button type="button" id = "kupu-link-anchor-cancel-button" onclick="drawertool.closeDrawer()">Cancel</button>
</div>
</div>
<div id="kupu-setanchordrawer" class="kupu-drawer">
<div class="kupu-librarydrawer-title">
Set Anchor
</div>
<div class = "kupu-panels">
<table border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="kupu-toolbox-label">Anchor Name:</td>
<td class="kupu-toolbox-content">
<input type="text" id="kupu-setanchor-name"/>
</td>
</tr>
<tr>
<td class="kupu-toolbox-label">Title:</td>
<td class="kupu-toolbox-content">
<input type="text" id="kupu-setanchor-title"/>
</td>
</tr>
</table>
</div>
<div class="kupu-dialogbuttons">
<button type="button" id = "kupu-set-anchor-button" onclick="drawertool.current_drawer.createAnchor()">OK</button>
<button type="button" id = "kupu-set-anchor-cancel-button" onclick="drawertool.closeDrawer()">Cancel</button>
</div>
</div>
<div id="kupu-externallinkdrawer" class="kupu-drawer">
<div class="kupu-librarydrawer-title">
External Link
</div>
<div class = "kupu-panels"> 
<table border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="kupu-toolbox-label">Target URL:</td>
<td class="kupu-toolbox-content">
<input type="text" id="kupu-externallink-url"/>
</td>
</tr>
<tr>
<td class="kupu-toolbox-label">Title:</td>
<td class="kupu-toolbox-content">
<input type="text" id="kupu-externallink-title"/>
</td>
</tr>
<tr>
<td class="kupu-toolbox-label">Target:</td>
<td class="kupu-toolbox-content">
<select id="kupu-externallink-target">
<option value="_blank">New Window</option>
<option value="_top">Topmost Window</option>
<option value="_self" selected="selected">Same Window</option>
<option value="_parent">Parent Window</option>
</select>
</td>
</tr>
<tr>
<td class="kupu-toolbox-label">SSL:</td>
<td class="kupu-toolbox-content">
<input type="checkbox" id="kupu-externallink-ssl"/>
</td>
</tr>
</table>
</div>
<div class="kupu-dialogbuttons">
<button type="button" id = "kupu-set-externallink-button" onclick="drawertool.current_drawer.createExternalLink()">OK</button>
<button type="button" id = "kupu-set-externallink-cancel-button" onclick="drawertool.closeDrawer()">Cancel</button>
</div>
</div>
<div id="kupu-tabledrawer" class="kupu-drawer">
<div class="kupu-librarydrawer-title">
Table
</div>
<div class="kupu-panels">
<table border="0" cellspacing="0" cellpadding="0">
<tr class="kupu-panelsrow">
<td>
<div id="kupu-tabledrawer-addtable">
<table border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="kupu-toolbox-label">Table Class:</td>
<td class="kupu-toolbox-content">
<select id="kupu-tabledrawer-classchooser" onchange="drawertool.current_drawer.tool.setTableClass(this.options[this.selectedIndex].value)">
<option value="plain">Plain</option>
<option value="listing">Listing</option>
<option value="grid">Grid</option>
<option value="data">Data</option>
</select>
</td>
</tr>
<tr>
<td class="kupu-toolbox-label">Rows:</td>
<td class="kupu-toolbox-content">
<input type="text" id="kupu-tabledrawer-newrows"/>
</td>
</tr>
<tr>
<td class="kupu-toolbox-label">Columns:</td>
<td class="kupu-toolbox-content">
<input type="text" id="kupu-tabledrawer-newcols"/>
</td>
</tr>
<tr>
<td class="kupu-toolbox-label">Headings:</td>
<td class="kupu-toolbox-content">
<input name="kupu-tabledrawer-makeheader" id="kupu-tabledrawer-makeheader" type="checkbox"/>
<label for="kupu-tabledrawer-makeheader">Create</label>
</td>
</tr>
<tr>
<td colspan="2" class="kupu-toolbox-label">
<div class="kupu-tablebuttons">
<button type="button" onclick="drawertool.current_drawer.createTable()">Add Table</button>
<button type="button" onclick="drawertool.current_drawer.tool.fixAllTables()">Fix All Tables</button>
</div>
</td>
</tr>
</table>
</div>
<div id="kupu-tabledrawer-edittable">
<table border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="kupu-toolbox-label">Table Class:</td>
<td class="kupu-toolbox-content">
<select id="kupu-tabledrawer-classchooser" onchange="drawertool.current_drawer.tool.setTableClass(this.options[this.selectedIndex].value)">
<option value="plain">Plain</option>
<option value="listing">Listing</option>
<option value="grid">Grid</option>
<option value="data">Data</option>
</select>
</td>
</tr>
<tr>
<td class="kupu-toolbox-label">Current column alignment:</td>
<td class="kupu-toolbox-content">
<select id="kupu-tabledrawer-alignchooser" onchange="drawertool.current_drawer.tool.setColumnAlign(this.options[this.selectedIndex].value)">
<option value="left">Left</option>
<option value="center">Center</option>
<option value="right">Right</option>
</select>
</td>
</tr>
<tr>
<td class="kupu-toolbox-label">Column:</td>
<td class="kupu-toolbox-content">
<div class="kupu-tablebuttons">
<button type="button" id="kupu-tabledrawer-addcolumn-button" onclick="drawertool.current_drawer.tool.addTableColumn()">Add</button>
<button type="button" id="kupu-tabledrawer-delcolumn-button" onclick="drawertool.current_drawer.tool.delTableColumn()">Remove</button>
</div>
</td>
</tr>
<tr>
<td class="kupu-toolbox-label">Row:</td>
<td class="kupu-toolbox-content">
<div class="kupu-tablebuttons">
<button type="button" id="kupu-tabledrawer-addrow-button" onclick="drawertool.current_drawer.tool.addTableRow()">Add</button>
<button type="button" id="kupu-tabledrawer-delrow-button" onclick="drawertool.current_drawer.tool.delTableRow()">Remove</button>
</div>
</td>
</tr>
<tr>
<td class="kupu-toolbox-label">Fix Table:</td>
<td class="kupu-toolbox-content">
<div class="kupu-tablebuttons">
<button type="button" id="kupu-tabledrawer-addrow-button" onclick="drawertool.current_drawer.tool.fixTable()">Fix</button>
</div>
</td>
</tr>
</table>
</div>
</td>
</tr>
</table>
</div>
<div class="kupu-dialogbuttons">
<button type="button" onclick="drawertool.closeDrawer()">Close</button>
</div>
</div>
<div xmlns="" class="kupu-toolboxes" style = "display:none">
<div id="kupu-toolbox-debuglog" class="kupu-toolbox-label"></div>
</div>
<table id="kupu-colorchooser" cellpadding="0" cellspacing="0" style="position: fixed; border-style: solid; border-color: black; border-width: 1px;"></table>
<div class="kupu-editorframe">
<iframe id="kupu-editor" frameborder="0" src="<% {String value = null;try{value=context.getFormattedValue(context.webRoot(),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {541}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>/htmleditor/kupuimages/space.gif" scrolling="auto"></iframe>
<textarea class="kupu-editor-textarea" id="kupu-editor-textarea"> </textarea>
</div>
</div>
<!-- END kupu-fulleditor --><% out.print("</form>"); %></body>
</html><% printFooter(out); %>