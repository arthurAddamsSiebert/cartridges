<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><div id="configContainer_<% {String value = null;try{value=context.getFormattedValue(getObject("ConfigurationParameterDefinition:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {3}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>">
<select name="ConfigurationParameter_<% {String value = null;try{value=context.getFormattedValue(getObject("ConfigurationParameterDefinition:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {11}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" 
id="ConfigurationParameter_<% {String value = null;try{value=context.getFormattedValue(getObject("ConfigurationParameterDefinition:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {12}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" 
class="inputfield_en"
<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (getObject("IsPageletEditable"))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",14,e);}if (_boolean_result) { %>disabled="disabled"<% } %>>
<option value="none"><% {out.write(localizeISText("TitleTypeConfigParameterInc.None.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="h1"><% {out.write(localizeISText("TitleTypeConfigParameterInc.MainHeadingH1.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="h2"><% {out.write(localizeISText("TitleTypeConfigParameterInc.SectionHeadingH2.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="h3"><% {out.write(localizeISText("TitleTypeConfigParameterInc.GroupHeadingH3.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="h4"><% {out.write(localizeISText("TitleTypeConfigParameterInc.H4HeadingH4.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="h5"><% {out.write(localizeISText("TitleTypeConfigParameterInc.H5HeadingH5.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="div"><% {out.write(localizeISText("TitleTypeConfigParameterInc.SimpleDiv.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="span"><% {out.write(localizeISText("TitleTypeConfigParameterInc.SimpleSpan.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
</select>
</div>
<script type="text/javascript">
function selectOptionByValue(selectFieldId, value) {
var selObj = document.getElementById(selectFieldId);
for (i=0; i< selObj.options.length; i++){
if (selObj.options[i].value == value){
selObj.options[i].selected = true;
break;
}
}
}
selectOptionByValue(
'ConfigurationParameter_<% {String value = null;try{value=context.getFormattedValue(getObject("ConfigurationParameterDefinition:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {37}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>', 
'<% {String value = null;try{value=context.getFormattedValue(getObject("ConfigurationParameterWebForm:getParameter(ConfigurationParameterDefinition:Name):Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {38}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>'
);
</script><% printFooter(out); %>