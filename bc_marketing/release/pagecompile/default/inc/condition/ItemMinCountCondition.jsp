<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><table border="0" cellpadding="0" cellspacing="0">
<tr>
<td class="fielditem2"><% {out.write(localizeISText("ItemMinCountCondition.Trigger.fielditem2","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_detail"><% {out.write(localizeISText("ItemMinCountCondition.MinimumNumberOfIncludedItems.table_detail","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td <% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ConditionForm:MinCount:Invalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",9,e);}if (_boolean_result) { %>class="fielditem2_error"<% } else { %>class="fielditem2"<% } %> nowrap="nowrap"><% {out.write(localizeISText("ItemMinCountCondition.MinimumNumber","",null,null,null,null,null,null,null,null,null,null,null));} %><span class="star">*</span></td>
<td class="table_detail">
<input type="text" maxlength="8" size="12" class="inputfield_en"
name="<% {String value = null;try{value=context.getFormattedValue(getObject("ConditionForm:MinCount:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {12}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" 
value="<% {String value = null;try{value=context.getFormattedValue(getObject("ConditionForm:MinCount:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {13}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
/>
</td>
</tr>
</table><% printFooter(out); %>