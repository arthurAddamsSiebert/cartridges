<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %>
<tr>
	<td class="s" colspan="4">
		<table border="0" cellspacing="0" cellpadding="4" width="100%" class="information">
			<tr>
				<td class="inform_icon e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/information.gif" width="16" height="15" alt="" border="0"/></td>
				<td width="100%">
					<span class="cpo-hidden cpo-message-inheriting">
						<% {out.write(localizeISText("UIScriptMessage.TheseValuesAreInheritedFromParentElements",null,null,null,null,null,null,null,null,null,null,null,null));} %>
					</span>
					
					<span class="cpo-hidden cpo-message-overloading">					
						<span class="bold"><% {out.write(localizeISText("UIScriptMessage.SomeOrAllValuesAreOverwritten",null,null,null,null,null,null,null,null,null,null,null,null));} %></span> <% {out.write(localizeISText("UIScriptMessage.ToRevertToTheInheritedValuesClickRevertTo",null,null,null,null,null,null,null,null,null,null,null,null));} %>  
					</span>
					
					<span class="cpo-hidden cpo-message-revert">
						<% {out.write(localizeISText("UIScriptMessage.ToRevertToTheInheritedValuesPleaseCheckTheValues",null,null,null,null,null,null,null,null,null,null,null,null));} %>
					</span>										
				</td>
			</tr>
		</table>
	</td>
</tr><% printFooter(out); %>