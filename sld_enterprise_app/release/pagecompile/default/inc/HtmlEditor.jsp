<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("CurrentRequest:Object(\"TinyMCE.initialized\")"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",3,e);}if (_boolean_result) { %><script type="text/javascript" src="<%=context.getFormattedValue(context.webRoot(),null)%>/tinymce/js/tinymce/tinymce.min.js"></script>
<script type="text/javascript" src="<%=context.getFormattedValue(context.webRoot(),null)%>/js/ObjectGlue.js"></script>
<script type="text/javascript" src="<%=context.getFormattedValue(context.webRoot(),null)%>/js/CodeBlueprint.js"></script>
<script type="text/javascript" src="<%=context.getFormattedValue(context.webRoot(),null)%>/htmleditor/ServerBrowser.js"></script>
<script type="text/javascript" src="<%=context.getFormattedValue(context.webRoot(),null)%>/js/StaticMediaLink.js"></script>
<script type="text/javascript" src="<%=context.getFormattedValue(context.webRoot(),null)%>/htmleditor/BasicEditor.js"></script>
<script type="text/javascript" src="<%=context.getFormattedValue(context.webRoot(),null)%>/htmleditor/AdvancedEditor.js"></script>
<script type="text/javascript" src="<%=context.getFormattedValue(context.webRoot(),null)%>/htmleditor/EditorControls.js"></script>
<style type="text/css">
.defaultSkin span.hide {
background-position: -460px -20px;
}
.disabledEditor {
z-index: 201;
position: absolute;
background: #dddddd;
filter:alpha(opacity=40); /* set alpha for IE < 9 */
opacity: 0.4;
}
.editor_mode_triggers {
margin-bottom: 10px;
}
.editor_mode_triggers a,
.editor_mode_trigger {
margin: 0 10px 20px 0;
text-decoration: underline;
}
.editor_mode_triggers a.active,
.editor_mode_trigger.active {
font-weight: bold;
text-decoration: none;
}
</style><% com.intershop.beehive.core.capi.request.Request.getCurrent().putObject("TinyMCE.initialized", "true"); %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("repositoryid"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",41,e);}if (_boolean_result) { %><% {Object temp_obj = (getObject("repositoryid")); getPipelineDictionary().put("OrganizationDomainId", temp_obj);} %><% } else { %><% {Object temp_obj = (getObject("OrganizationDomain:DomainID")); getPipelineDictionary().put("OrganizationDomainId", temp_obj);} %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("norepositorylinks"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",48,e);}if (_boolean_result) { %><% {Object temp_obj = (url(true,(new URLPipelineAction(context.getFormattedValue("HtmlEditor-GetLibraries",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("OrganizationDomainId",null),context.getFormattedValue(getObject("OrganizationDomainId"),null))).addURLParameter(context.getFormattedValue("RepositoryDomainID",null),context.getFormattedValue(getObject("repositoryid"),null)).addURLParameter(context.getFormattedValue("ImageLinks",null),context.getFormattedValue("true",null)).addURLParameter(context.getFormattedValue("ContentImageLinks",null),context.getFormattedValue("true",null)).addURLParameter(context.getFormattedValue("LocaleId",null),context.getFormattedValue(getObject("localeid"),null)))); getPipelineDictionary().put("linkURI", temp_obj);} %><% } else { %><% {Object temp_obj = (url(true,(new URLPipelineAction(context.getFormattedValue("HtmlEditor-GetLibraries",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("OrganizationDomainId",null),context.getFormattedValue(getObject("OrganizationDomainId"),null))).addURLParameter(context.getFormattedValue("RepositoryDomainID",null),context.getFormattedValue(getObject("repositoryid"),null)).addURLParameter(context.getFormattedValue("ProductLinks",null),context.getFormattedValue("true",null)).addURLParameter(context.getFormattedValue("CategoryLinkPipeline",null),context.getFormattedValue(getObject("categorylinkpipeline"),null)).addURLParameter(context.getFormattedValue("CategoryLinkSite",null),context.getFormattedValue(getObject("categorylinksite"),null)).addURLParameter(context.getFormattedValue("ProductLinkPipeline",null),context.getFormattedValue(getObject("productlinkpipeline"),null)).addURLParameter(context.getFormattedValue("ProductLinkSite",null),context.getFormattedValue(getObject("productlinksite"),null)).addURLParameter(context.getFormattedValue("ImageLinks",null),context.getFormattedValue("true",null)).addURLParameter(context.getFormattedValue("ContentImageLinks",null),context.getFormattedValue("true",null)).addURLParameter(context.getFormattedValue("LocaleId",null),context.getFormattedValue(getObject("localeid"),null)))); getPipelineDictionary().put("linkURI", temp_obj);} %><% } %><script type="text/javascript">
createEditor._config = {
preferredMode : "<% {String value = null;try{value=context.getFormattedValue(getObject("configuration"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {55}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>",
id : "<% {String value = null;try{value=context.getFormattedValue(getObject("name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {56}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>",
enabled : <% {String value = null;try{value=context.getFormattedValue(getObject("enabled"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {57}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>,
uri: "<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ServerBrowser-Open",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ImageLinks",null),context.getFormattedValue("true",null))).addURLParameter(context.getFormattedValue("LocaleId",null),context.getFormattedValue(getObject("localeid"),null))),null)%>",
media : "<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("HtmlEditor-GetLibraries",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("OrganizationDomainId",null),context.getFormattedValue(getObject("OrganizationDomainId"),null))).addURLParameter(context.getFormattedValue("RepositoryDomainID",null),context.getFormattedValue(getObject("repositoryid"),null)).addURLParameter(context.getFormattedValue("ProductImages",null),context.getFormattedValue("true",null)).addURLParameter(context.getFormattedValue("ContentImages",null),context.getFormattedValue("true",null)).addURLParameter(context.getFormattedValue("LocaleId",null),context.getFormattedValue(getObject("localeid"),null))),null)%>",
links : "<% {String value = null;try{value=context.getFormattedValue(getObject("linkURI"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {60}",e);}if (value==null) value="";out.write(value);} %>",
styleSheet : "<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("HtmlEditor-StyleSheetHook",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("dummy1",null),context.getFormattedValue(getObject("CurrentOrganization:UUID"),null))).addURLParameter(context.getFormattedValue("dummy2",null),context.getFormattedValue(getObject("CurrentSession:PersonalizationGroupID"),null)).addURLParameter(context.getFormattedValue("RepositoryDomainID",null),context.getFormattedValue(getObject("repositoryid"),null))),null)%>",
templateURL : "<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("HtmlEditor-GetTemplateList",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("OrganizationDomainId",null),context.getFormattedValue(getObject("OrganizationDomainId"),null))).addURLParameter(context.getFormattedValue("RepositoryDomainID",null),context.getFormattedValue(getObject("repositoryid"),null)).addURLParameter(context.getFormattedValue("ProductImages",null),context.getFormattedValue("true",null)).addURLParameter(context.getFormattedValue("LocaleId",null),context.getFormattedValue(getObject("localeid"),null))),null)%>",
language : "<% {String value = null;try{value=context.getFormattedValue(getObject("CurrentRequest:Locale:Language"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {63}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>",
staticURLMappingPrefix : "<%=com.intershop.beehive.core.capi.url.URLUtils.getStaticPath()%>" , 
labels : {
advanced: "<% {out.write(localizeISText("HtmlEditor.FullNbspMode",null,null,null,null,null,null,null,null,null,null,null,null));} %>",
basic: "<% {out.write(localizeISText("HtmlEditor.SimpleNbspMode",null,null,null,null,null,null,null,null,null,null,null,null));} %>",
noEditor: "<% {out.write(localizeISText("HtmlEditor.EditorNbspDisabled",null,null,null,null,null,null,null,null,null,null,null,null));} %>"
}
}
if(createEditor._config.id != 'false') createEditor(createEditor._config);
</script><% printFooter(out); %>