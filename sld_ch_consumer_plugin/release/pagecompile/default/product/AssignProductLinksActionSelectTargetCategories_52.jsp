<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- Working Area -->
<!--AssignProductLinksActionSelectCategories_52.isml-->
<!-- Page Navigator --><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("removeid","SelectLinkType"),
new TagParameter("hide","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductProcessingWizard_52-Dispatch",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("selectAction",null),context.getFormattedValue(context.getFormattedValue(localizeText(context.getFormattedValue("AssignProductLinksActionSelectTargetCategories_52.Previous",null)),null) + context.getFormattedValue(" >>",null),null))).addURLParameter(context.getFormattedValue("PageableID",null),context.getFormattedValue(getObject("PageableID"),null)).addURLParameter(context.getFormattedValue("ActionID",null),context.getFormattedValue("AssignProductLinks",null)).addURLParameter(context.getFormattedValue("IsSearchFired",null),context.getFormattedValue(getObject("IsSearchFired"),null)).addURLParameter(context.getFormattedValue("LinkType",null),context.getFormattedValue(getObject("LinkType"),null)).addURLParameter(context.getFormattedValue("LinkTarget",null),context.getFormattedValue(getObject("LinkTarget"),null)))),
new TagParameter("wizard","true"),
new TagParameter("text",localizeText(context.getFormattedValue("AssignProductLinksActionSelectTargetCategories_52.Step2AssignProductCategoryLinks.text",null))),
new TagParameter("id","SelectLinkType")}, 7); %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("listview","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductProcessingWizard_52-Dispatch",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ActionID",null),context.getFormattedValue("AssignProductLinks",null))).addURLParameter(context.getFormattedValue("LinkTarget",null),context.getFormattedValue(getObject("LinkTarget"),null)).addURLParameter(context.getFormattedValue("CategoryLinkType",null),context.getFormattedValue(getObject("CategoryLinkType"),null)).addURLParameter(context.getFormattedValue("ProductLinkType",null),context.getFormattedValue(getObject("ProductLinkType"),null)).addURLParameter(context.getFormattedValue("PageableID",null),context.getFormattedValue(getObject("PageableID"),null)).addURLParameter(context.getFormattedValue("linkType",null),context.getFormattedValue(context.getFormattedValue("<< ",null) + context.getFormattedValue(localizeText(context.getFormattedValue("AssignProductLinksActionSelectTargetCategories_52.Next",null)),null),null)))),
new TagParameter("wizard","true"),
new TagParameter("text",localizeText(context.getFormattedValue("AssignProductLinksActionSelectTargetCategories_52.Step3AssignProductCategoryLinks.text",null)))}, 18); %><!-- EO Page Navigator --><% URLPipelineAction action47 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductProcessingWizard_52-Dispatch",null)))),null));String site47 = null;String serverGroup47 = null;String actionValue47 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductProcessingWizard_52-Dispatch",null)))),null);if (site47 == null){  site47 = action47.getDomain();  if (site47 == null)  {      site47 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup47 == null){  serverGroup47 = action47.getServerGroup();  if (serverGroup47 == null)  {      serverGroup47 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductProcessingWizard_52-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("ActionParameterForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue47, site47, serverGroup47,true)); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/AssignProductLinksActionSelectTargetCategories", null, "30");} %><% out.print("</form>"); %><!-- EO Main Content -->
<!-- EO Working Area --><% printFooter(out); %>