<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- Working Area -->
<!-- Main Content --><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("text1",context.getFormattedValue(localizeText(context.getFormattedValue("ApplicationPreferencePromotionLegalContentMessage.LegalContentMessage.text1",null)),null) + context.getFormattedValue(":",null)),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewApplicationPromotionPreferenceLegalContentMessage-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ApplicationUUID",null),context.getFormattedValue(getObject("ApplicationUUID"),null))))),
new TagParameter("id","PromotionPreferences"),
new TagParameter("text",context.getFormattedValue(localizeText(context.getFormattedValue("ApplicationPreferencePromotionLegalContentMessage.PromotionPreferences.text",null)),null) + context.getFormattedValue(":",null))}, 4); %><!-- Tabs --><% {Object temp_obj = ("LegalContentMessage"); getPipelineDictionary().put("SelectedTab", temp_obj);} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/PromotionApplicationPreferencesTabsInc", null, "7");} %><!-- EO Tabs -->
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" class="table_title w e s"><% {out.write(localizeISText("ApplicationPreferencePromotionLegalContentMessage.PromotionPreferencesLegalContentMessage.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td class="table_title_description w e s"><% {out.write(localizeISText("ApplicationPreferencePromotionLegalContentMessage.TheFollowingMessageWillBeDisplayedIfAUserEntersPromotionDetails.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<!-- Select language to localize text. --><% URLPipelineAction action340 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewApplicationPromotionPreferenceLegalContentMessage-DispatchLegalContentMessage",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ApplicationUUID",null),context.getFormattedValue(getObject("ApplicationUUID"),null)))),null));String site340 = null;String serverGroup340 = null;String actionValue340 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewApplicationPromotionPreferenceLegalContentMessage-DispatchLegalContentMessage",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ApplicationUUID",null),context.getFormattedValue(getObject("ApplicationUUID"),null)))),null);if (site340 == null){  site340 = action340.getDomain();  if (site340 == null)  {      site340 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup340 == null){  serverGroup340 = action340.getServerGroup();  if (serverGroup340 == null)  {      serverGroup340 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewApplicationPromotionPreferenceLegalContentMessage-DispatchLegalContentMessage",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ApplicationUUID",null),context.getFormattedValue(getObject("ApplicationUUID"),null)))),null));out.print("\"");out.print(" name=\"");out.print("setLocale");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue340, site340, serverGroup340,true)); %><table border="0" cellpadding="4" cellspacing="0" width="100%" class="infobox_locale w e s">
<tr>
<td class="infobox_item" nowrap="nowrap"><% {out.write(localizeISText("ApplicationPreferencePromotionLegalContentMessage.SelectLanguage.infobox_item",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td class="infobox_item">
<select name="LocaleID" class="select"><% while (loop("AllLocales","Locale",null)) { %><option value="<% {String value = null;try{value=context.getFormattedValue(getObject("Locale:LocaleID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {29}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Locale:LocaleID"),null).equals(context.getFormattedValue(getObject("SelectedLocale:LocaleID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",30,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {String value = null;try{value=context.getFormattedValue(getObject("Locale:getDisplayName(CurrentSession:Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {31}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</option><% } %></select>
</td>
<td width="100%">
<table border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="button">
<!-- <input type="hidden" name="ChannelID" value="<%=context.getFormattedValue(getObject("CurrentChannel:UUID"),null)%>"/> -->
<input type="submit" name="setLocale" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ApplicationPreferencePromotionLegalContentMessage.Apply.button",null)),null)%>" class="button"/>
</td>
</tr>
</table>
</td>
</tr>
</table><% out.print("</form>"); %><% URLPipelineAction action341 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewApplicationPromotionPreferenceLegalContentMessage-DispatchLegalContentMessage",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ApplicationUUID",null),context.getFormattedValue(getObject("ApplicationUUID"),null)))),null));String site341 = null;String serverGroup341 = null;String actionValue341 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewApplicationPromotionPreferenceLegalContentMessage-DispatchLegalContentMessage",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ApplicationUUID",null),context.getFormattedValue(getObject("ApplicationUUID"),null)))),null);if (site341 == null){  site341 = action341.getDomain();  if (site341 == null)  {      site341 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup341 == null){  serverGroup341 = action341.getServerGroup();  if (serverGroup341 == null)  {      serverGroup341 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewApplicationPromotionPreferenceLegalContentMessage-DispatchLegalContentMessage",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ApplicationUUID",null),context.getFormattedValue(getObject("ApplicationUUID"),null)))),null));out.print("\"");out.print(" name=\"");out.print(context.getFormattedValue(getObject("LegalContentMessageForm:ID"),null));out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue341, site341, serverGroup341,true)); %><table cellpadding="0" cellspacing="0" border="0" width="100%" class="w e s">
<tr>
<td colspan="2"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></td>
</tr>
<tr>
<td class="fielditem2" nowrap="nowrap" width="90"> <% {out.write(localizeISText("ApplicationPreferencePromotionLegalContentMessage.HTMLText.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td class="table_detail">
<textarea rows="5" cols="69" class="inputfield_en" 
name="<% {String value = null;try{value=context.getFormattedValue(getObject("LegalContentMessageForm:LegalMessage:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {58}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% {String value = null;try{value=context.getFormattedValue(getObject("LegalContentMessageForm:LegalMessage:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {59}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></textarea>
</td><% processOpenTag(response, pageContext, "htmleditor", new TagParameter[] {
new TagParameter("ProductLinkSite",getObject("CurrentChannel:RepositoryDomain:Site:DomainName")),
new TagParameter("LocaleId",getObject("Locale:LocaleID")),
new TagParameter("Configuration","Basic"),
new TagParameter("CategoryLinkPipeline","ViewStandardCatalog-Browse"),
new TagParameter("CategoryLinkSite",getObject("CurrentChannel:RepositoryDomain:Site:DomainName")),
new TagParameter("ProductLinkPipeline","ViewProduct-Start"),
new TagParameter("Enabled","true"),
new TagParameter("RepositoryId",getObject("CurrentChannel:RepositoryDomain:UUID")),
new TagParameter("Name",getObject("LegalContentMessageForm:LegalMessage:QualifiedName"))}, 62); %></tr>
<tr>
<td align="right" colspan="2" class="n">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button">
<input type="hidden" name="LocaleID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("SelectedLocale:LocaleID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {78}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="submit" name="apply" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ApplicationPreferencePromotionLegalContentMessage.Apply.button",null)),null)%>" class="button"/>
</td>
<td class="button">
<input type="reset" name="reset" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ApplicationPreferencePromotionLegalContentMessage.Reset.button",null)),null)%>" class="button"/>
</td>
</tr>
</table>
</td>
</tr>
</table><% out.print("</form>"); %><!-- EO Main Content -->
<!-- EO Working Area --><% printFooter(out); %>