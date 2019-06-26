<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><%@page import="com.intershop.beehive.core.capi.pipeline.PipelineDictionary,
    com.intershop.sellside.pmc.capi.modelrepository.ApplicationBOPageletModelRepositoryHelper"%><%
    getPipelineDictionary().put("ModelRepositoryHelper", com.intershop.sellside.pmc.capi.modelrepository.ApplicationBOPageletModelRepositoryHelper.INSTANCE);
%><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"content/Modules", null, "7");} %><% _boolean_result=false;try {_boolean_result=((Boolean)((((!(context.getFormattedValue(getObject("PageletEntryPoint:Domain:UUID"),null).equals(context.getFormattedValue(getObject("ContentRepository:RepositoryDomain:UUID"),null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",8,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "getcontentrepositorydisplayname", new TagParameter[] {
new TagParameter("contentRepositoryDisplayName","contentRepositoryDisplayName"),
new TagParameter("contentDomain",getObject("PageletEntryPoint:Domain"))}, 9); %><table border="0" cellpadding="4" cellspacing="0" width="100%" class="w e s">
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ModelRepositoryHelper:isPageEntryPointDefinitionOverridden(PageletEntryPoint:ContentEntryPointDefinition)"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",13,e);}if (_boolean_result) { %><td class="e">
<table border="0" cellspacing="0" cellpadding="0" width="22" height="19">
<tr>
<td>
<div align="center"><img class="status_icon" src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/status_shared_content_overridden.gif" alt="<%=context.getFormattedValue(localizeTextEx(context.getFormattedValue("PageletEntryPointSharingInfo.SharedFrom0.alt",null),new ParameterList().addParameter(encodeString(context.getFormattedValue(getObject("contentRepositoryDisplayName"),null)))),null)%>" title="<%=context.getFormattedValue(localizeTextEx(context.getFormattedValue("PageletEntryPointSharingInfo.SharedFrom0.title",null),new ParameterList().addParameter(encodeString(context.getFormattedValue(getObject("contentRepositoryDisplayName"),null)))),null)%>" border="0"/></div>
</td>
</tr>
</table>
</td>
<td class="infobox_title" width="100%"><% {out.write(localizeISText("PageletEntryPointSharingInfo.SharedFrom0AndOverriddenInThisApplication.infobox_title",null,null,encodeString(context.getFormattedValue(getObject("contentRepositoryDisplayName"),null)),null,null,null,null,null,null,null,null,null));} %></td><% } else { %><td class="e">
<table border="0" cellspacing="0" cellpadding="0" width="22" height="19">
<tr>
<td>
<div align="center"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/status_shared_content_from.gif" alt="<%=context.getFormattedValue(localizeTextEx(context.getFormattedValue("PageletEntryPointSharingInfo.SharedFrom0.alt",null),new ParameterList().addParameter(encodeString(context.getFormattedValue(getObject("contentRepositoryDisplayName"),null)))),null)%>" title="<%=context.getFormattedValue(localizeTextEx(context.getFormattedValue("PageletEntryPointSharingInfo.SharedFrom0.title",null),new ParameterList().addParameter(encodeString(context.getFormattedValue(getObject("contentRepositoryDisplayName"),null)))),null)%>" border="0"/></div>
</td>
</tr>
</table>
</td>
<td class="infobox_title" width="100%"><% {out.write(localizeISText("PageletEntryPointSharingInfo.SharedFrom0.infobox_title",null,null,encodeString(context.getFormattedValue(getObject("contentRepositoryDisplayName"),null)),null,null,null,null,null,null,null,null,null));} %></td><% } %></tr>
</table><% } %><% printFooter(out); %>