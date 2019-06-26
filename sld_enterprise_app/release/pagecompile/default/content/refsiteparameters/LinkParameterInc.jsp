<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"webcontrols/Modules", null, "2");} %><% out.print(context.prepareWAPlacement("JSWebLibraries")); %>bridge/bridge.js<% out.print("</waplacement>"); %><% out.print(context.prepareWAPlacement("JSWebLibraries")); %>pageselection.js<% out.print("</waplacement>"); %><% out.print(context.prepareWAPlacement("JSWebLibraries")); %>jquery/popupmenu/jquery.popupmenu.js<% out.print("</waplacement>"); %><% out.print(context.prepareWAPlacement("CSSWebLibraries")); %>jquery/popupmenu/jquery.popupmenu.css<% out.print("</waplacement>"); %><div id="<%=context.getFormattedValue(encodeString(context.getFormattedValue(context.getFormattedValue("categorySelectionDialog_",null) + context.getFormattedValue(getObject("ConfigurationParameterDefinition:Name"),null),null)),null)%>" class="js-dialog" data-title="<% {out.write(localizeISText("content.pageselection.selectcategory.title","",null,null,null,null,null,null,null,null,null,null,null));} %>" width="989" data-draggable="true" data-configparametername="<%=context.getFormattedValue(encodeString(context.getFormattedValue(getObject("ConfigurationParameterDefinition:Name"),null)),null)%>">
<iframe src="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCategorySelection-Start",null)))),null)%>" class="dialog-iframe"></iframe>
</div>
<div id="<%=context.getFormattedValue(encodeString(context.getFormattedValue(context.getFormattedValue("productSelectionDialog_",null) + context.getFormattedValue(getObject("ConfigurationParameterDefinition:Name"),null),null)),null)%>" class="js-dialog" data-title="<% {out.write(localizeISText("content.pageselection.selectproduct.title","",null,null,null,null,null,null,null,null,null,null,null));} %>" width="989" data-draggable="true" data-configparametername="<%=context.getFormattedValue(encodeString(context.getFormattedValue(getObject("ConfigurationParameterDefinition:Name"),null)),null)%>">
<iframe src="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductSelection-Search",null)))),null)%>" class="dialog-iframe"></iframe>
</div>
<div id="<%=context.getFormattedValue(encodeString(context.getFormattedValue(context.getFormattedValue("pageSelectionDialog_",null) + context.getFormattedValue(getObject("ConfigurationParameterDefinition:Name"),null),null)),null)%>" class="js-dialog" data-title="<% {out.write(localizeISText("content.pageselection.selectpage.title","",null,null,null,null,null,null,null,null,null,null,null));} %>" width="989" data-draggable="true" data-configparametername="<%=context.getFormattedValue(encodeString(context.getFormattedValue(getObject("ConfigurationParameterDefinition:Name"),null)),null)%>">
<iframe src="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPageSelection-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ContentRepositoryUUID",null),context.getFormattedValue(getObject("ContentRepositoryUUID"),null)))),null)%>" class="dialog-iframe"></iframe>
</div>
<table border="0" cellpadding="0" cellspacing="0">
<tr>
<td>
<input type="text" size="48" class="inputfield_en"
id="ConfigurationParameter_<% {String value = null;try{value=context.getFormattedValue(getObject("ConfigurationParameterDefinition:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {27}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
name="ConfigurationParameter_<% {String value = null;try{value=context.getFormattedValue(getObject("ConfigurationParameterDefinition:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {28}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" 
value="<% {String value = null;try{value=context.getFormattedValue(getObject("ConfigurationParameterWebForm:getParameter(ConfigurationParameterDefinition:Name):Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {29}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" 
<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (getObject("IsPageletEditable"))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",30,e);}if (_boolean_result) { %>disabled="disabled"<% } %>
/>
</td>
<td class="button">
<button class="button button_popmenu button_with_margin"
id="button_popmenu_<% {String value = null;try{value=context.getFormattedValue(getObject("ConfigurationParameterDefinition:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {35}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (getObject("IsPageletEditable"))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",36,e);}if (_boolean_result) { %>disabled="disabled"<% } %>><% {out.write(localizeISText("content.pageselection.selectpage.button.text","",null,null,null,null,null,null,null,null,null,null,null));} %></button>
<style>
.small
{
height: 650px !important;
}
.medium
{
height: 720px !important;
}
.big
{
height: 820px !important;
}
</style>
<script>
function dialogResize()
{
var expression = "<%=context.getFormattedValue(context.getFormattedValue("_",null) + context.getFormattedValue(getObject("ConfigurationParameterDefinition:Name"),null),null)%>";
if($(window).height() > 950)
{
$("div[id*='" + expression + "']").removeClass('small');
$("div[id*='" + expression + "']").removeClass('medium');
$("div[id*='" + expression + "']").addClass('big');
}
else if($(window).height() <= 950 && $(window).height() > 880)
{
$("div[id*='" + expression + "']").removeClass('big');
$("div[id*='" + expression + "']").removeClass('small');
$("div[id*='" + expression + "']").addClass('medium');
}
else if($(window).height() <= 880)
{
$("div[id*='" + expression + "']").removeClass('medium');
$("div[id*='" + expression + "']").removeClass('big');
$("div[id*='" + expression + "']").addClass('small');
}
}
dialogResize();
$(window).resize(function(){
dialogResize();
})
var items = [
{
render: '<span data-action="dialog-open <%=context.getFormattedValue(encodeString(context.getFormattedValue(context.getFormattedValue("#productSelectionDialog_",null) + context.getFormattedValue(getObject("ConfigurationParameterDefinition:Name"),null),null),(String)("javascript")),null)%>"><% {out.write(localizeISText("content.pageselection.selectpage.productpage.text","",null,null,null,null,null,null,null,null,null,null,null));} %></span>',
cssClass: 'dialog_open'
},
{
render: '<span data-action="dialog-open <%=context.getFormattedValue(encodeString(context.getFormattedValue(context.getFormattedValue("#categorySelectionDialog_",null) + context.getFormattedValue(getObject("ConfigurationParameterDefinition:Name"),null),null),(String)("javascript")),null)%>"><% {out.write(localizeISText("content.pageselection.selectpage.categorypage.text","",null,null,null,null,null,null,null,null,null,null,null));} %></span>',
cssClass: 'dialog_open'
},
{
render: '<span data-action="dialog-open <%=context.getFormattedValue(encodeString(context.getFormattedValue(context.getFormattedValue("#pageSelectionDialog_",null) + context.getFormattedValue(getObject("ConfigurationParameterDefinition:Name"),null),null),(String)("javascript")),null)%>"><% {out.write(localizeISText("content.pageselection.selectpage.contentpage.text","",null,null,null,null,null,null,null,null,null,null,null));} %></span>',
cssClass: 'dialog_open'
}
];
$('<%=context.getFormattedValue(context.getFormattedValue("#button_popmenu_",null) + context.getFormattedValue(getObject("ConfigurationParameterDefinition:Name"),null),null)%>').popupmenu({
items: items
});
</script>
</td>
</tr>
</table><% printFooter(out); %>