<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><%@page import="com.intershop.beehive.core.capi.pipeline.PipelineDictionary,
	com.intershop.sellside.pmc.capi.modelrepository.ApplicationBOPageletModelRepositoryHelper"%><%
	getPipelineDictionary().put("ModelRepositoryHelper", com.intershop.sellside.pmc.capi.modelrepository.ApplicationBOPageletModelRepositoryHelper.INSTANCE);
%><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"content/Modules", null, "7");} %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("SlotPageletAssignment"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",9,e);}if (_boolean_result) { %><% {Object temp_obj = (getObject("SlotPageletAssignment:SubPagelet")); getPipelineDictionary().put("Pagelet", temp_obj);} %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (((!(context.getFormattedValue(getObject("Pagelet:Domain:UUID"),null).equals(context.getFormattedValue(getObject("ContentRepository:RepositoryDomain:UUID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) (((((Boolean) getObject("Pagelet:isView")).booleanValue() && ((Boolean) getObject("Pagelet:isShared")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",12,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("Pagelet:isView")).booleanValue() && ((Boolean) getObject("Pagelet:isShared")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",13,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "getcontentrepositorydisplayname", new TagParameter[] {
new TagParameter("contentRepositoryDisplayName","contentRepositoryDisplayName"),
new TagParameter("contentDomain",getObject("Pagelet:Base:Domain"))}, 14); %><% } else { %><% processOpenTag(response, pageContext, "getcontentrepositorydisplayname", new TagParameter[] {
new TagParameter("contentRepositoryDisplayName","contentRepositoryDisplayName"),
new TagParameter("contentDomain",getObject("Pagelet:Domain"))}, 16); %><% } %><table border="0" cellpadding="4" cellspacing="0" width="100%" class="object_state w e s">
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ModelRepositoryHelper:isPageletDefinitionOverridden(Pagelet:PageletDefinition)"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",21,e);}if (_boolean_result) { %><td class="e">
<table border="0" cellspacing="0" cellpadding="0" width="22" height="19">
<tr>
<td>
<div align="center"><img class="status_icon" src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/status_shared_content_overridden.gif" alt="<%=context.getFormattedValue(localizeTextEx(context.getFormattedValue("PageletSharingInfo.SharedFrom0.alt",null),new ParameterList().addParameter(encodeString(context.getFormattedValue(getObject("contentRepositoryDisplayName"),null)))),null)%>" title="<%=context.getFormattedValue(localizeTextEx(context.getFormattedValue("PageletSharingInfo.SharedFrom0.title",null),new ParameterList().addParameter(encodeString(context.getFormattedValue(getObject("contentRepositoryDisplayName"),null)))),null)%>" border="0"/></div>
</td>
</tr>
</table>
</td>
<td width="100%"><% {out.write(localizeISText("PageletSharingInfo.SharedFrom0AndOverwrittenInThisApplication.infobox_title",null,null,encodeString(context.getFormattedValue(getObject("contentRepositoryDisplayName"),null)),null,null,null,null,null,null,null,null,null));} %></td><% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("Pagelet:View")).booleanValue() && ((Boolean) getObject("Pagelet:isDerived")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",34,e);}if (_boolean_result) { %><td class="e">
<table border="0" cellspacing="0" cellpadding="0" width="22" height="19">
<tr>
<td>
<div align="center"><img class="status_icon" src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/status_shared_content_overridden.gif" alt="<%=context.getFormattedValue(localizeTextEx(context.getFormattedValue("PageletStatus.SharedFrom1.alt",null),new ParameterList().addParameter(encodeString(context.getFormattedValue(getObject("contentRepositoryDisplayName"),null)))),null)%>" title="<%=context.getFormattedValue(localizeTextEx(context.getFormattedValue("PageletStatus.SharedFrom1.title",null),new ParameterList().addParameter(encodeString(context.getFormattedValue(getObject("contentRepositoryDisplayName"),null)))),null)%>" border="0"/></div>
</td>
</tr>
</table>
</td>
<td width="100%"><% {out.write(localizeISText("PageletSharingInfo.SharedFrom0AndOverwrittenInThisContext.infobox_title",null,null,encodeString(context.getFormattedValue(getObject("contentRepositoryDisplayName"),null)),null,null,null,null,null,null,null,null,null));} %></td><% } else { %><td class="e">
<table border="0" cellspacing="0" cellpadding="0" width="22" height="19">
<tr>
<td>
<div align="center"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/status_shared_content_from.gif" alt="<%=context.getFormattedValue(localizeTextEx(context.getFormattedValue("PageletStatus.SharedFrom0.alt1",null),new ParameterList().addParameter(encodeString(context.getFormattedValue(getObject("contentRepositoryDisplayName"),null)))),null)%>" title="<%=context.getFormattedValue(localizeTextEx(context.getFormattedValue("PageletStatus.SharedFrom0.title1",null),new ParameterList().addParameter(encodeString(context.getFormattedValue(getObject("contentRepositoryDisplayName"),null)))),null)%>" border="0"/></div>
</td>
</tr>
</table>
</td>
<td width="100%"><% {out.write(localizeISText("PageletSharingInfo.SharedFrom0.infobox_title",null,null,encodeString(context.getFormattedValue(getObject("contentRepositoryDisplayName"),null)),null,null,null,null,null,null,null,null,null));} %></td><% }} %></tr>
</table><% } %><% printFooter(out); %>