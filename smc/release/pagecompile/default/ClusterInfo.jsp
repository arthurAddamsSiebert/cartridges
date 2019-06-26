<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %>
<table border="0" cellspacing="0" cellpadding="0" width="100%">
	<tr>
		<td colspan="5" class="overview_title"><% {out.write(localizeISText("smc.InstallationMaintenance.overview_title","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
	</tr>
	<tr>
		<td colspan="5" class="table_title_description"><% {out.write(localizeISText("ClusterInfo.ThisSectionOffersThePossibilityToGatherInfo.table_title_description","",null,null,null,null,null,null,null,null,null,null,null));} %><br>&nbsp;</td>
	</tr>
	<tr>
		<td width="50%">
			<table border="0" cellspacing="0" cellpadding="0" width="100%">
				<tr>
					<td class="overview_arrow"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/arrow_right_down.gif" width="9" height="9" alt="" border="0"/></td>
					<td class="overview_subtitle" nowrap="nowrap" width="100%"><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("StartUp-Dispatch",null)))),null)%>" class="overview_subtitle"><% {out.write(localizeISText("smc.ClusterInformation.link","",null,null,null,null,null,null,null,null,null,null,null));} %></a></td>
				</tr>
				<tr>
					<td colspan="2" class="overview_title_description" valign="top"><% {out.write(localizeISText("ClusterInfo.InformationAboutTheCluster.overview_title_description","",null,null,null,null,null,null,null,null,null,null,null));} %> <br/>&nbsp;</td>
				</tr>
				<tr>
					<td colspan="2" class="overview_line"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="2" height="1" alt="" border="0"/></td>
				</tr>
			</table>
		</td>
		<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="12" height="1" alt="" border="0"/></td><td class="overview_vertical_line"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="2" alt="" border="0"/></td><td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="12" height="1" alt="" border="0"/></td>
		<td width="50%">
			<table border="0" cellspacing="0" cellpadding="0" width="100%">
				<tr>
					<td class="overview_arrow"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/arrow_right_down.gif" width="9" height="9" alt="" border="0"/></td>
					<td class="overview_subtitle" nowrap="nowrap" width="100%"><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("Threaddump-Dispatch",null)))),null)%>" class="overview_subtitle"><% {out.write(localizeISText("smc.DumpGeneration.link","",null,null,null,null,null,null,null,null,null,null,null));} %></a></td>
				</tr>
				<tr>
					<td colspan="2" class="overview_title_description" valign="top"><% {out.write(localizeISText("ClusterInfo.InformationAboutThreaddumpsAndHeapdumps.overview_title_description","",null,null,null,null,null,null,null,null,null,null,null));} %> <br/>&nbsp;</td>
				</tr>
				<tr>
					<td colspan="2" class="overview_line"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="2" height="1" alt="" border="0"/></td>
				</tr>
			</table>
		</td>
		<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="12" height="1" alt="" border="0"/></td><td class="overview_vertical_line"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="2" alt="" border="0"/></td><td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="12" height="1" alt="" border="0"/></td>
	</tr>
	<tr>
		<td width="50%">
			<table border="0" cellspacing="0" cellpadding="0" width="100%">
				<tr>
					<td class="overview_arrow"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/arrow_right_down.gif" width="9" height="9" alt="" border="0"/></td>
					<td class="overview_subtitle" nowrap="nowrap" width="100%"><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("DataTransfer-ListAll",null)))),null)%>" class="overview_subtitle"><% {out.write(localizeISText("smc.InformationFiles.link","",null,null,null,null,null,null,null,null,null,null,null));} %></a></td>
				</tr>
				<tr>
					<td colspan="2" class="overview_title_description" valign="top"><% {out.write(localizeISText("ClusterInfo.InformationAboutLogFiles.overview_title_description","",null,null,null,null,null,null,null,null,null,null,null));} %> <br/>&nbsp;</td>
				</tr>
				<tr>
					<td colspan="2" class="overview_line"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="2" height="1" alt="" border="0"/></td>
				</tr>
			</table>
		</td>
		<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="12" height="1" alt="" border="0"/></td><td class="overview_vertical_line"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="2" alt="" border="0"/></td><td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="12" height="1" alt="" border="0"/></td>
	</tr>
</table><% printFooter(out); %>