<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% out.print(context.prepareWAPlacement("JSWebLibraries")); %>jquery.js<% out.print("</waplacement>"); %><% out.print(context.prepareWAPlacement("JSWebLibraries")); %>jquery-migrate-1.2.1.js<% out.print("</waplacement>"); %><% out.print(context.prepareWAPlacement("JSWebLibraries")); %>jquery/tree/jquery.tree_utils.js<% out.print("</waplacement>"); %><% out.print(context.prepareWAPlacement("JSWebLibraries")); %>jquery/tree/jquery.tree.js<% out.print("</waplacement>"); %><% out.print(context.prepareWAPlacement("JSWebLibraries")); %>jquery/tree/jquery.tree.themes.js<% out.print("</waplacement>"); %><% out.print(context.prepareWAPlacement("JSWebLibraries")); %>jquery/tree/jquery.tree.json.js<% out.print("</waplacement>"); %><% out.print(context.prepareWAPlacement("JSWebLibraries")); %>jquery/tree/jquery.tree.ui.js<% out.print("</waplacement>"); %><% out.print(context.prepareWAPlacement("JSWebLibraries")); %>jquery/tree/jquery.tree.hotkeys.js<% out.print("</waplacement>"); %><% out.print(context.prepareWAPlacement("JSWebLibraries")); %>jquery/popupmenu/jquery.popupmenu.js<% out.print("</waplacement>"); %><% out.print(context.prepareWAPlacement("JSWebLibraries")); %>jquery/tree/jquery.tree.checkbox.js<% out.print("</waplacement>"); %><% out.print(context.prepareWAPlacement("JSWebLibraries")); %>jquery/tree/jquery.tree.menu.js<% out.print("</waplacement>"); %><% out.print(context.prepareWAPlacement("CSSWebLibraries")); %>jquery/popupmenu/jquery.popupmenu.css<% out.print("</waplacement>"); %><% out.print(context.prepareWAPlacement("CSSWebLibraries")); %>jquery/tree/jquery.tree.css<% out.print("</waplacement>"); %><% out.print(context.prepareWAPlacement("CSSWebLibraries")); %>jquery/tree/themes/default/jquery.tree.default.css<% out.print("</waplacement>"); %><div id="<% {String value = null;try{value=context.getFormattedValue(getObject("id"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {24}",e);}if (value==null) value="";value = encodeString(value,"javascript");out.write(value);} %>"></div><% {Object temp_obj = (context.getFormattedValue("#",null) + context.getFormattedValue(getObject("id"),null)); getPipelineDictionary().put("selector", temp_obj);} %><% {Object temp_obj = (context.getFormattedValue("intershop.template.istree.",null) + context.getFormattedValue(getObject("configuration"),null)); getPipelineDictionary().put("config", temp_obj);} %><script type="text/javascript">
(function() {
var config;
(typeof window.treeConfig !== 'undefined') || (window.treeConfig = {});
window.treeConfig['<% {String value = null;try{value=context.getFormattedValue(getObject("id"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {37}",e);}if (value==null) value="";value = encodeString(value,"javascript");out.write(value);} %>'] = <% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,context.getFormattedValue(getObject("configtemplate"),null), null, "37");} %>;
config = window.treeConfig['<% {String value = null;try{value=context.getFormattedValue(getObject("id"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {38}",e);}if (value==null) value="";value = encodeString(value,"javascript");out.write(value);} %>'];
<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("datatemplate"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",40,e);}if (_boolean_result) { %>
(typeof config.json !== 'undefined') || (config.json = {});
(typeof config.json.data !== 'undefined') || (config.json.data = <% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,context.getFormattedValue(getObject("datatemplate"),null), null, "42");} %>);
<% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("menutemplate"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",45,e);}if (_boolean_result) { %>
(typeof config.menu !== 'undefined') || (config.menu = <% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,context.getFormattedValue(getObject("menutemplate"),null), null, "46");} %>);
<% } %>
})();
</script><% out.print(context.prepareWAPlacement("JSWebControls")); %>
;(function() {
var el = $("<% {String value = null;try{value=context.getFormattedValue(getObject("selector"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {53}",e);}if (value==null) value="";value = encodeString(value,"javascript");out.write(value);} %>"),
config = window.treeConfig['<% {String value = null;try{value=context.getFormattedValue(getObject("id"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {54}",e);}if (value==null) value="";value = encodeString(value,"javascript");out.write(value);} %>'];
el.tree(config);
})();
<% out.print("</waplacement>"); %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("scripttemplate"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",62,e);}if (_boolean_result) { %><script type="text/javascript"><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,context.getFormattedValue(getObject("scripttemplate"),null), null, "64");} %></script><% } %><% printFooter(out); %>