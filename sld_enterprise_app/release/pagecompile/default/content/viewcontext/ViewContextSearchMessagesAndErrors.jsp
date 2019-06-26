<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("SearchResultDict:confirmDelete"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",3,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Clipboard:ObjectUUIDs") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",4,e);}if (_boolean_result) { %><table border="0" cellspacing="0" cellpadding="4" width="100%" class="confirm_box w e s">
<tr>
<td class="confim_icon e">
<img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/confirmation.gif" width="16" height="15" alt="" border="0"/>
</td>
<td class="confirm" width="100%"><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","content.viewcontexts.confirmdelete.message")}, 11); %></td>
<td>
<table border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="button">
<input type="submit" name="delete" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ViewContextSearchMessagesAndErrors.OK.button",null)),null)%>" class="button"/>
</td>
<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="4" height="0" alt="" border="0"/></td>
<td class="button"><input type="submit" name="cancel" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ViewContextSearchMessagesAndErrors.Cancel.button",null)),null)%>" class="button"/></td>
</tr>
</table>
</td>
</tr>
</table><% } else { %><table class="error_box w e s" width="100%" border="0" cellpadding="4" cellspacing="0">
<tr>
<td class="error_icon e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error" width="100%"><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","content.confirmdelete.viewcontext.noselection")}, 30); %></td>
</tr>
</table><% } %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("SearchResultDict:selectStagingTarget"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",35,e);}if (_boolean_result) { %><table class="error_box w e s" width="100%" border="0" cellpadding="4" cellspacing="0">
<tr>
<td class="error_icon e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error" width="100%"><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","content.viewcontexts.publishing.noselection")}, 40); %><br/><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","content.publishing.noselection.helpmessage")}, 40); %> 
</td>
</tr>
</table><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("SearchResultDict:SearchErrorsMap:ErrorNameOrIDExpression"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",45,e);}if (_boolean_result) { %><table class="error_box w e s" width="100%" border="0" cellpadding="4" cellspacing="0">
<tr>
<td class="error_icon e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error" width="100%"><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","content.viewcontexts.search.nameoridinvalid")}, 50); %><br/><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SearchResultDict:SearchErrorsMap:ErrorNameOrIDExpression"),null).equals(context.getFormattedValue("NotEnoughCharactersBeforeWildcard",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",51,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","content.viewcontexts.search.nameoridinvalid.notenoughcharacters")}, 52); %><br/><% } %></td>
</tr>
</table><% } %><% printFooter(out); %>