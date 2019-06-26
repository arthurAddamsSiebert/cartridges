<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><%@page import="com.intershop.beehive.core.capi.domain.Domain"%><%@page import="com.intershop.component.organization.capi.OrganizationStructureMgr"%><%@page import="com.intershop.component.organization.capi.Organization"%><%@page import="com.intershop.component.mvc.capi.catalog.Repository"%><%@page import="com.intershop.beehive.core.capi.naming.NamingMgr"%><%@page import="com.intershop.component.mvc.capi.catalog.MVCatalogMgr"%><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"content/Modules", null, "9");} %><!-- Page Navigator --><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("hide","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewOverview-MasterContent",null))))),
new TagParameter("start","true"),
new TagParameter("text",localizeText(context.getFormattedValue("ContentSharingOrganizationList.MasterContent.text",null)))}, 12); %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("listview","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewContentSharingList-ListOrganization",null))))),
new TagParameter("text",localizeText(context.getFormattedValue("ContentSharingOrganizationList.ContentSharing.text",null)))}, 13); %><!-- EO Page Navigator -->
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" class="table_title aldi"><% {out.write(localizeISText("ContentSharingOrganizationList.ContentSharing.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td class="table_title_description w e s"><% {out.write(localizeISText("ContentSharingOrganizationList.TheListShowsAllSourcesOfContent.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td class="table_title2 w e s" colspan="2"><% {out.write(localizeISText("ContentSharingOrganizationList.Sources.table_title2",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="table_header w e s"><% {out.write(localizeISText("ContentSharingOrganizationList.Source.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s"><% {out.write(localizeISText("ContentSharingOrganizationList.Type.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s"><% {out.write(localizeISText("ContentSharingOrganizationList.SharingEnabledFor.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><%
					MVCatalogMgr mvcMgr = NamingMgr.getManager(MVCatalogMgr.class);
					OrganizationStructureMgr orgMgr = NamingMgr.getManager(OrganizationStructureMgr.class);
				%><% while (loop("ShareableContentDomains","contentDomain",null)) { %><% processOpenTag(response, pageContext, "getcontentrepositorydisplayname", new TagParameter[] {
new TagParameter("contentRepositoryDisplayName","contentRepositoryDisplayName"),
new TagParameter("contentDomain",getObject("contentDomain"))}, 47); %> 
<%
						Repository repository = mvcMgr.getRepositoryByRepositoryDomain((Domain)getObject("contentDomain"));
						getPipelineDictionary().put("contentRepository", repository);

						Organization org = orgMgr.getOrganizationByOrganizationDomain(repository.getOwningDomain());
						getPipelineDictionary().put("contentOrganization", org);
					%><% {try{executePipeline("ViewContentSharingList-GetSourceUsageCount",((java.util.Map)(((new ParameterMap().addParameter(new ParameterEntry("ContentSourceDomain",getObject("contentDomain")))).addParameter(new ParameterEntry("Organization",getObject("CurrentOrganization")))))),"SourceUsage");}catch(Exception e){Logger.error(this,"ISPIPELINE failed. Line: 55.",e);}} %><tr>
<td class="table_detail w e s" nowrap="nowrap"><% {String value = null;try{value=context.getFormattedValue(getObject("contentRepositoryDisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {57}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
<td class="table_detail e s" nowrap="nowrap"><% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("contentOrganization:TypeCode")).doubleValue() ==((Number)(new Double(20))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",59,e);}if (_boolean_result) { %><% {out.write(localizeISText("ContentSharingOrganizationList.EnterpriseOrganization.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("contentOrganization:TypeCode")).doubleValue() ==((Number)(new Double(30))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",59,e);}if (_boolean_result) { %><% {out.write(localizeISText("ContentSharingOrganizationList.PartnerOrganization.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><% }} %></td>
<td class="table_detail e s" nowrap="nowrap"><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewContentSharingList-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ContentSourceDomainID",null),context.getFormattedValue(getObject("contentDomain:UUID"),null)))),null)%>" class="table_detail_link"><% {String value = null;try{value=context.getFormattedValue(getObject("SourceUsage:Count"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {61}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> <% {out.write(localizeISText("ContentSharingOrganizationList.ChannelS.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a></td>
</tr><% } %></table>
<table width="100%">
<tr>
<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></td>
</tr>
</table>
</td>
</tr>
</table><% printFooter(out); %>