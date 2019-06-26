<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><table border="0" width="100%" cellpadding="0" cellspacing="4">
<tr>
<td>&nbsp;</td><% processOpenTag(response, pageContext, "dateinput", new TagParameter[] {
new TagParameter("InputFieldName",getObject("ConditionForm:SinceDate:QualifiedName")),
new TagParameter("Required","true"),
new TagParameter("InputFieldEditClass","table_detail"),
new TagParameter("InputFieldLabel","SinceDate"),
new TagParameter("DateString",getObject("ConditionForm:SinceDate:FormattedValue")),
new TagParameter("DateObject",getObject("Condition:SinceDate")),
new TagParameter("Invalid",getObject("ConditionForm:SinceDate:isInvalid"))}, 8); %><td class="w100">&nbsp;</td>
</tr>
</table><% printFooter(out); %>