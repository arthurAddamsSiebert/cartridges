<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"content/ChannelModules", null, "2");} %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Assignment"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",4,e);}if (_boolean_result) { %><% {Object temp_obj = (getObject("Assignment:ParentSlot:ParentPagelet")); getPipelineDictionary().put("Pagelet", temp_obj);} %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("SlotPageletAssignment"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",6,e);}if (_boolean_result) { %><% {Object temp_obj = (getObject("SlotPageletAssignment:SubPagelet")); getPipelineDictionary().put("Pagelet", temp_obj);} %><% }} %><tr>
<td class="e"><% processOpenTag(response, pageContext, "getcontentrepositorydisplayname", new TagParameter[] {
new TagParameter("contentRepositoryDisplayName","contentRepositoryDisplayName"),
new TagParameter("contentDomain",getObject("Pagelet:Domain"))}, 11); %><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/status_shared_content_from.gif" alt="<%=context.getFormattedValue(localizeTextEx(context.getFormattedValue("ChannelPageComponentSharingInfo.SharedFromContentRepository.alt",null),new ParameterList().addParameter(encodeString(context.getFormattedValue(getObject("contentRepositoryDisplayName"),null)))),null)%>" title="<%=context.getFormattedValue(localizeTextEx(context.getFormattedValue("ChannelPageComponentSharingInfo.SharedFromContentRepository.title",null),new ParameterList().addParameter(encodeString(context.getFormattedValue(getObject("contentRepositoryDisplayName"),null)))),null)%>" border="0"/>
</td>
<td class="infobox_title" width="100%"><% {out.write(localizeISText("ChannelPageComponentSharingInfo.SharedFromContentRepository.infobox_title",null,null,encodeString(context.getFormattedValue(getObject("contentRepositoryDisplayName"),null)),null,null,null,null,null,null,null,null,null));} %></td>
</tr><% printFooter(out); %>