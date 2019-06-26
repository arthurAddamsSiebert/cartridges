<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><div class="component-palette-content" data-role="list-search">
<div class="search-palette">
<input type="text" class="sfe-input search-palette-input" placeholder="<% {out.write(localizeISText("ComponentTemplatePalette.Search.placeholder","",null,null,null,null,null,null,null,null,null,null,null));} %>">
<button class="btn-remove-search-palette" type="button" name="removes" title="<% {out.write(localizeISText("ComponentTemplatePalette.Search.tooltip","",null,null,null,null,null,null,null,null,null,null,null));} %>">
<span class="search-palette-remove"></span>
</button>
</div><% while (loop("Palette:KeySet","PageletGroups",null)) { %><div class="component-tileset">
<div class="component-tileset-title table_opened"><% {String value = null;try{value=context.getFormattedValue(getObject("PageletGroups"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {13}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></div>
<div class="component-tileset-content"><% while (loop("Palette:get(PageletGroups)","PaletteElement",null)) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("PaletteElement:Object:isTemplate"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",17,e);}if (_boolean_result) { %><div class="component-tile-container" draggable="true"
data-component-template="<%=context.getFormattedValue(getObject("PaletteElement:Object:UUID"),null)%>"
data-component-name="<% {String value = null;try{value=context.getFormattedValue(getObject("PaletteElement:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {20}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
>
<div class="component-tile">
<div class="component-tile-img">
<img src="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPageletImage-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("QualifiedName",null),context.getFormattedValue(getObject("PaletteElement:Object:PageletDefinition:QualifiedName"),null)))),null)%>" width="120px" draggable="false">
</div>
<div class="component-tile-title" title="<% {String value = null;try{value=context.getFormattedValue(getObject("PaletteElement:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {26}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" data-role="search-field"><% {String value = null;try{value=context.getFormattedValue(getObject("PaletteElement:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {27}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></div>
</div>
<div class="component-tile-help"></div>
<div class="tooltip">
<p>
<h6><% {String value = null;try{value=context.getFormattedValue(getObject("PaletteElement:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {34}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></h6><% {String value = null;try{value=context.getFormattedValue(getObject("PaletteElement:Object:Description"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {35}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></p>
<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPagelet-View",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("PageletUUID",null),context.getFormattedValue(getObject("PaletteElement:Object:UUID"),null))).addURLParameter(context.getFormattedValue("ContentRepositoryUUID",null),context.getFormattedValue(getObject("ContentRepositoryUUID"),null))),null)%>" target="_blank"><% {out.write(localizeISText("ComponentTemplatesPalette.MoreDetails","",null,null,null,null,null,null,null,null,null,null,null));} %></a>
</div>
</div><% } else { %><div class="component-tile-container" draggable="true"
data-component-type="<% {String value = null;try{value=context.getFormattedValue(getObject("PaletteElement:Object:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {42}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
data-component-name="<% {String value = null;try{value=context.getFormattedValue(getObject("PaletteElement:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {43}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
>
<div class="component-tile">
<div class="component-tile-img">
<img src="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPageletImage-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("QualifiedName",null),context.getFormattedValue(getObject("PaletteElement:Object:QualifiedName"),null)))),null)%>" width="120px" draggable="false">
</div>
<div class="component-tile-title" title="<% {String value = null;try{value=context.getFormattedValue(getObject("PaletteElement:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {49}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" data-role="search-field"><% {String value = null;try{value=context.getFormattedValue(getObject("PaletteElement:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {50}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></div>
</div>
<div class="component-tile-help"></div>
<div class="tooltip">
<p>
<h6><% {String value = null;try{value=context.getFormattedValue(getObject("PageletModelUtils:DisplayName(PaletteElement:Object,CurrentRequest:Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {57}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></h6><% {String value = null;try{value=context.getFormattedValue(getObject("PageletModelUtils:Description(PaletteElement:Object,CurrentRequest:Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {58}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></p>
<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPageletOverview-Start",null)))),null)%><%=context.getFormattedValue(encodeString(context.getFormattedValue(context.getFormattedValue("#",null) + context.getFormattedValue(getObject("PaletteElement:Object:PageletModel:Name"),null),null)),null)%>" target="_blank"><% {out.write(localizeISText("ComponentTemplatesPalette.MoreDetails","",null,null,null,null,null,null,null,null,null,null,null));} %></a>
</div>
</div><% } %><% } %></div>
</div><% } %></div><% printFooter(out); %>