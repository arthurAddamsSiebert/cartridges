<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><%@page import="com.intershop.component.foundation.capi.condition.ConditionDescriptorRegistry"%><%@page import="com.intershop.component.foundation.capi.condition.Condition"%><%
	Condition root = (Condition)getObject("Rebate:Condition");
	ConditionDescriptorRegistry reg = (ConditionDescriptorRegistry)getObject("ConditionDescriptorRegistry"); 
	if (root != null && reg!=null)
	{
		int cnt = 0;%><table class="w e s w100">
<tr><td colspan="2"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="4" alt="" border="0"/></td></tr>
<tr>
<td class="fielditem2"><% {out.write(localizeISText("SmallConditionTree.Chart.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td class="w100"><%printCondition(root, out, reg);%></td>
</tr>
</table><% } 
%><% int cnt=1; %><%!
	String getDisplayName(Condition c, ConditionDescriptorRegistry reg)
	{
		String name ="";
		if (c.isOperator() && !c.isTypeGroupOperator()) {
			if (reg.getAndOperator().getID().equals(c.getConditionDescriptorID())) 
				name="AND";
			else
				name="OR";
			if (c.isGroupingOperator()) name=String.format("<strong>%s</strong>", name);
		} else if (c.isTypeGroupOperator()) {
			name="TG";
		} else {
			name = "C" ; 
		}
		return name;
	} 
%><%!
	void printCondition(Condition c, JspWriter out, ConditionDescriptorRegistry reg)
	{
		try {
		String name = getDisplayName(c, reg);
		out.println(String.format("<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\"><tr><td colspan=\"%s\" class=\"table_detail top center aldi\">%s</td></tr>", 
								c.getSubConditionsCount(), name)); 
		if (c.getSubConditionsCount() > 0) {
			out.println("<tr>");
			for (Condition sub : c.getSortedSubConditions()) {
				out.println("<td class=\"table_detail top center\">");
				printCondition(sub, out, reg);
				out.println("</td>");
			}
			out.println("</tr>");
		}
		out.println("</table>");
		} catch (Exception e)
		{}
	}
%><% printFooter(out); %>