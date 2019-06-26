<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%! protected Boolean printTemplateMarker() { return Boolean.FALSE; } %><%%><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %>
[
<% while (loop("params:AvailableTemplates","Template",null)) { %>
{
render: function(e) {
$(e.li).attr('id', '<% {String value = null;try{value=context.getFormattedValue(getObject("Template:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {8}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>')
.html('<% {out.write(localizeISText(context.getFormattedValue(getObject("Template:LocalizationKey"),null),"",null,null,null,null,null,null,null,null,null,null,null));} %>');
},
click: function click() {
$("[name='promotionTemplate']").attr('value', '<% {String value = null;try{value=context.getFormattedValue(getObject("Template:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {13}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>');
$("[name='createWithTemplate']").click();
}
},
<% } %>
{
type: 'separator'
}, 
{
render: '<% {out.write(localizeISText("marketing.promotionlist.promotionType.CustomizedPromotion","",null,null,null,null,null,null,null,null,null,null,null));} %>',
click: function click() {
$("<%=context.getFormattedValue("#",null)%>SubmitNewCustomizedPromotion").click();
}
}
]
<% printFooter(out); %>