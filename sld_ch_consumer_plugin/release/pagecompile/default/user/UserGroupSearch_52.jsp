<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% _boolean_result=false;try {_boolean_result=((Boolean)(((!((Boolean) ((disableErrorMessages().isDefined(getObject("SearchType"))))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("SearchType"),null).equals(context.getFormattedValue("simple",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",4,e);}if (_boolean_result) { %><table border="0" cellpadding="5" cellspacing="0" width="100%" class="infobox w e s">
<tr>
<td class="infobox_title" nowrap="nowrap" colspan="3"><% {out.write(localizeISText("UserGroupSearch_52.FindCustomerSegments.infobox_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("SearchTermError"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",10,e);}if (_boolean_result) { %><td nowrap="nowrap" class="label"><label class="label label_light label_error" for="SearchTerm"><% {out.write(localizeISText("UserGroupSearch_52.NameOrID.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td><% } else { %><td nowrap="nowrap" class="label"><label class="label label_light" for="SearchTerm"><% {out.write(localizeISText("UserGroupSearch_52.NameOrID.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td><% } %><td><input type="text" name="SearchTerm" id="SearchTerm" maxlength="350" size="35" value="<% {String value = null;try{value=context.getFormattedValue(getObject("SearchTerm"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {15}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="inputfield_en"/></td>
<td class="w100">
<table border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="button"><input type="hidden" name="SearchType" value="simple"/><input type="submit" name="simpleSearch" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("UserGroupSearch_52.Find.button",null)),null)%>" class="button"/></td>
</tr>
</table>
</td>
</tr>
</table><% } %><% printFooter(out); %>