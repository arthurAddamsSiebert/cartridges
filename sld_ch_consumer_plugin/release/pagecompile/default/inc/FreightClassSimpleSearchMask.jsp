<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><tr>
<td colspan="2">
<table border="0" cellpadding="0" cellspacing="0">
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("FreightClassSearchForm:FreightClassName:isInvalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",7,e);}if (_boolean_result) { %><td class="label" nowrap="nowrap"><label class="label label_error"><% {out.write(localizeISText("FreightClassSimpleSearchMask.NameOrID",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td><% } else { %><td class="label" nowrap="nowrap"><label class="label label_light"><% {out.write(localizeISText("FreightClassSimpleSearchMask.NameOrID",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td><% } %><td>
<input type="hidden" name="DefaultButton" value="simpleSearch"/>
<input type="text" name="FreightClassSearchForm_FreightClassNameOrID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("FreightClassSearchForm:FreightClassNameOrID:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {14}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" maxlength="255" size="35" class="inputfield_en"/>
</td>
<td>&nbsp;</td>
<td>
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button">
<input type="submit" name="simpleSearch" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("FreightClassSimpleSearchMask.Find.button",null)),null)%>" class="button"/>
</td>
</tr>
</table>
</td>
</tr>
</table>
</td>
</tr><% printFooter(out); %>