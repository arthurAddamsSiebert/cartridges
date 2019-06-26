<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><div class="clearfix section section-seperator">
	<p>
		<a data-dialog
			href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewAjax-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("TargetPipeline",null),context.getFormattedValue("ViewOrderTemplate-ShowCreateFromOrderDialog",null))).addURLParameter(context.getFormattedValue("OrderID",null),context.getFormattedValue(getObject("OrderBO:ID"),null))),null)%>"
			class="btn btn-default getquickmodal"
			title="<% {out.write(localizeISText("account.order_template.list.button.add_template.label","",null,null,null,null,null,null,null,null,null,null,null));} %>">
			<% {out.write(localizeISText("approval.order_details.create_order_template.link","",null,null,null,null,null,null,null,null,null,null,null));} %>
		</a>
	</p>
</div>
<% printFooter(out); %>