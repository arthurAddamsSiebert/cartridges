<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><div class="overviewItem">
<table border="0" cellspacing="0" cellpadding="0" height="100%">
<tr>
<script type="text/javascript">
var currentRow = $('script').last().closest('tr');
var overviewItem = currentRow.closest('.overviewItem');
if (overviewItem.index() % 2 == 1) {
currentRow.append("<td width='12'><img src='<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif' width='12' height='1' alt='' border='0'></td>");
}
</script>
<td>
<table>
<tr>
<td class="overview_arrow"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/arrow_right_down.gif" width="9" height="9" alt="" border="0"/></td>
<td class="overview_subtitle" nowrap="nowrap" width="100%">
<a href="<% {String value = null;try{value=context.getFormattedValue(getObject("linkurl"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {20}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="overview_subtitle"
<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("datatestingclass"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",21,e);}if (_boolean_result) { %>data-testing-class="<% {String value = null;try{value=context.getFormattedValue(getObject("datatestingclass"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {21}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"<% } %>
><% {out.write(localizeISText(context.getFormattedValue(getObject("displayname"),null),null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
</td>
</tr>
<tr>
<td colspan="2" class="overview_title_description" valign="top">
<div class="overview_description_container"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("apptext"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",30,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("parameter0",getObject("parameter0")),
new TagParameter("key",getObject("description"))}, 31); %><% } else { %><% {out.write(localizeISText(context.getFormattedValue(getObject("description"),null),null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %><br/>&nbsp;
</div>
</td>
</tr>
<tr>
<td colspan="2" class="overview_line" style="padding: 0"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="2" height="1" alt="" border="0"/></td>
</tr>
</table>
</td>
<script type="text/javascript">
if (overviewItem.index() % 2 == 0) {
currentRow.append("<td width='12'><img src='<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif' width='12' height='1' alt='' border='0'></td>");
currentRow.append("<td class='overview_vertical_line'><img src='<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif' width='1' height='2' alt='' border='0'></td>");
}
</script>
</tr>
</table>
</div><% printFooter(out); %>