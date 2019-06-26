<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"content/Modules", null, "3");} %><% context.setCustomTagTemplateName("contentpagetreehaselements","content/contentpage/ContentPageTreeHasElements.isml",true,new String[]{"PageletEntryPoint","ContentRepository"},new String[]{"ContentPageTreeHasElements"}); %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewCustomSearchIndex-SelectPage",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ApplicationState:ChannelID"),null))).addURLParameter(context.getFormattedValue("ContentRepositoryUUID",null),context.getFormattedValue(getObject("ContentRepository:UUID"),null)).addURLParameter(context.getFormattedValue("SearchIndexID",null),context.getFormattedValue(getObject("SearchIndex:IndexID"),null)))),
new TagParameter("text","Add Page Step 1: Select Page")}, 11); %><% URLPipelineAction action180 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCustomSearchIndex-Dispatch",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ApplicationState:ChannelID"),null))).addURLParameter(context.getFormattedValue("ContentRepositoryUUID",null),context.getFormattedValue(getObject("ContentRepository:UUID"),null))),null));String site180 = null;String serverGroup180 = null;String actionValue180 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCustomSearchIndex-Dispatch",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ApplicationState:ChannelID"),null))).addURLParameter(context.getFormattedValue("ContentRepositoryUUID",null),context.getFormattedValue(getObject("ContentRepository:UUID"),null))),null);if (site180 == null){  site180 = action180.getDomain();  if (site180 == null)  {      site180 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup180 == null){  serverGroup180 = action180.getServerGroup();  if (serverGroup180 == null)  {      serverGroup180 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCustomSearchIndex-Dispatch",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ApplicationState:ChannelID"),null))).addURLParameter(context.getFormattedValue("ContentRepositoryUUID",null),context.getFormattedValue(getObject("ContentRepository:UUID"),null))),null));out.print("\"");out.print(" name=\"");out.print("PageList");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue180, site180, serverGroup180,true)); %> 
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td width="100%" class="table_title w e s n"><input type="hidden" name="SearchIndexID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("SearchIndex:IndexID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {17}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><input type="hidden" name="ContentRepositoryUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ContentRepository:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {17}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" />
Indexed Attributes - Add Page Step 1: Select Page
</td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined("ERROR_CODE"))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ERROR_CODE"),null).equals(context.getFormattedValue("NotSelected",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",21,e);}if (_boolean_result) { %><tr>
<td>
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box">
<tr>
<td class="error_icon top e s"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error top s" width="100%">You have not selected anything.<br/>
Select a page and click &quot;Next &gt;&gt;&quot; again.
</td>
</tr>
</table>
</td>
</tr><% } %><tr>
<td class="table_title_description w e s">
Step 1 of 2: Next Step: Configure Indexing<br/>
Please select the page you want to index and click &quot;Next &gt;&gt;&quot; to proceed to the index configuration for the page.
Click &quot;Cancel&quot; to stop everything and go back to the list.
</td>
</tr> 
<% processOpenTag(response, pageContext, "contentpagetreehaselements", new TagParameter[] {
new TagParameter("ContentPageTreeHasElements","ContentPageTreeHasElements"),
new TagParameter("ContentRepository",getObject("ContentRepository"))}, 44); %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ContentPageTreeHasElements"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",45,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "contentpagetree", new TagParameter[] {
new TagParameter("Locale",getObject("Locale")),
new TagParameter("Site",getObject("CurrentDomain")),
new TagParameter("ContentRepository",getObject("ContentRepository")),
new TagParameter("SelectionListing","true"),
new TagParameter("SelectedElement",getObject("SelectedPage"))}, 46); %><% } else { %><table cellspacing="0" cellpadding="0" border="0" width="100%">
<tr>
<td class="table_detail w e s"><% {out.write(localizeISText("ContentIndexSelectPage.ThereAreNoPagesToShowHere.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% } %><table cellspacing="0" cellpadding="0" border="0" width="100%">
<tr>
<td>
<table class="w e s right" width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td align="right"> 
<table border="0" cellspacing="4" cellpadding="0">
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("SelectedPageUUID")))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("SelectedPageUUID"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",70,e);}if (_boolean_result) { %><td class="button"><input type="hidden" name="SelectedPageUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("SelectedPageUUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {71}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input class="button" type="submit" name="selectPage" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ContentIndexSelectPage.Next.button",null)),null)%>&nbsp;&gt;&gt;" /></td><% } else { %><td class="button"><input disabled="disabled" class="button" type="submit" name="selectPage" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ContentIndexSelectPage.Next.button",null)),null)%>&nbsp;&gt;&gt;" /></td><% } %> 
<td class="button"><input class="button" type="submit" name="cancelPageletSelect" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ContentIndexSelectPage.Cancel.button",null)),null)%>" /></td> 
</tr> 
</table> 
</td>
</tr>
</table>
</td>
</tr>
</table><% out.print("</form>"); %><% printFooter(out); %>