<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><div class="component-palette-content"><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (getObject("Directory:isRoot"))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",5,e);}if (_boolean_result) { %><div class="component-palette-content-head">
<a href="<%=context.getFormattedValue("#",null)%>" class="directory" data-content-url="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPalette-MediaAssets",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("DirectoryPath",null),context.getFormattedValue(getObject("Directory:Parent:Path"),null)))),null)%>">
<span>&lt;&lt;</span> <% {String value = null;try{value=context.getFormattedValue(getObject("Directory:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {8}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></a>
</div><% } %><div class="component-tileset">
<div class="component-tileset-content"><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Directory:Directories") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",17,e);}if (_boolean_result) { %><% while (loop("Directory:Directories","SubDirectory",null)) { %><div class="component-tile-container">
<div class="component-tile folder-tile image-explorer-tile-folder-open directory" data-content-url="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPalette-MediaAssets",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("DirectoryPath",null),context.getFormattedValue(getObject("SubDirectory:Path"),null)))),null)%>">
<div class="component-tile-img">
<img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/folder_open.png" draggable="false">
</div>
<div class="component-tile-title"><% {String value = null;try{value=context.getFormattedValue(getObject("SubDirectory:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {25}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></div>
</div>
</div><% } %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Files") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",33,e);}if (_boolean_result) { %><% while (loop("Files","File",null)) { %><% {Object temp_obj = ((( ((Number) new Double(1)).doubleValue() !=((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE)); getPipelineDictionary().put("FileHandled", temp_obj);} %><% {out.flush();processExtensionPoint((com.intershop.beehive.core.capi.request.ServletResponse)response,"FileTypes", null, "37");} %><% } %><% } %></div>
</div>
</div><% printFooter(out); %>