<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><!-- TEMPLATENAME: GeneralFilterEditorTemplate.isml -->
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("FilterConfiguration:Filter"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",4,e);}if (_boolean_result) { %><td>
<table cellpadding="0" cellspacing="0">
<tr>
<td>
<input type="text" class="inputfield_en" disabled="disabled" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("GeneralFilterEditorTemplate.FilterDefined.inputfield_en",null)),null)%>" name="FilterIndicator">
</td>
<td>
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button">
<input type="submit" class="button" name="<% {String value = null;try{value=context.getFormattedValue(getObject("FilterConfiguration:SubmitEdit"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {15}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("GeneralFilterEditorTemplate.EditFilter.button",null)),null)%>">
</td>
<td class="button">
<input type="submit" class="button" name="<% {String value = null;try{value=context.getFormattedValue(getObject("FilterConfiguration:SubmitRemove"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {18}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("GeneralFilterEditorTemplate.RemoveFilter.button",null)),null)%>">
</td> 
</tr>
</table>
</td> 
</tr>
</table>
</td><% } else { %><td>
<table cellpadding="0" cellspacing="0">
<tr>
<td>
<input type="text" class="inputfield_en" disabled="disabled" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("GeneralFilterEditorTemplate.NoFilterDefined.inputfield_en",null)),null)%>" name="FilterIndicator">
</td>
<td>
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button">
<input type="submit" class="button" name="<% {String value = null;try{value=context.getFormattedValue(getObject("FilterConfiguration:SubmitCreate"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {37}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("GeneralFilterEditorTemplate.CreateFilter.button",null)),null)%>">
</td> 
</tr>
</table>
</td> 
</tr>
</table>
</td><% } %><% printFooter(out); %>