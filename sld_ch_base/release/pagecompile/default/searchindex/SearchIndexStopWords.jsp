<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("text1",context.getFormattedValue(" - ",null) + context.getFormattedValue(localizeText(context.getFormattedValue("SearchIndexStopWords.StopWords.text1",null)),null)),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewSearchIndex-StopWords",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ApplicationState:ChannelID"),null))).addURLParameter(context.getFormattedValue("SearchIndexID",null),context.getFormattedValue(context.getFormattedValue(getObject("SearchIndex:IndexID"),null) + context.getFormattedValue("@",null) + context.getFormattedValue(getObject("SearchIndex:Domain:DomainName"),null),null)))),
new TagParameter("id",getObject("SearchIndex:IndexID")),
new TagParameter("text",getObject("SearchIndex:IndexID"))}, 2); %><% {Object temp_obj = (((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_SEARCH_INDEXES")))).booleanValue() && !((Boolean) (getObject("SearchIndex:Shared"))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE)); getPipelineDictionary().put("SearchIndexEditable", temp_obj);} %><% {Object temp_obj = ("StopWords"); getPipelineDictionary().put("SelectedTab", temp_obj);} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/SearchIndexTabs", null, "8");} %><table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td width="100%" class="table_title w e s"><% {String value = null;try{value=context.getFormattedValue(getObject("SearchIndex:IndexID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {13}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> - <% {out.write(localizeISText("SearchIndexStopWords.StopWords.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<!-- Structural changes require an update of the SearchIndex --><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (getObject("SearchIndex:isConsistent"))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",17,e);}if (_boolean_result) { %><tr>
<td><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"searchindex/SearchIndexInconsistentMessage", null, "20");} %></td>
</tr><% } %></table><% URLPipelineAction action178 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewSearchIndex-Dispatch",null)))),null));String site178 = null;String serverGroup178 = null;String actionValue178 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewSearchIndex-Dispatch",null)))),null);if (site178 == null){  site178 = action178.getDomain();  if (site178 == null)  {      site178 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup178 == null){  serverGroup178 = action178.getServerGroup();  if (serverGroup178 == null)  {      serverGroup178 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewSearchIndex-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("StopWords");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue178, site178, serverGroup178,true)); %><input type="hidden" name="SearchIndexID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("SearchIndex:IndexID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {27}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="table_title_description w e s"><% {out.write(localizeISText("SearchIndexStopWords.TheListShowsAllStopWords.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td class="w e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></td>
</tr>
<tr>
<td class="table_detail w e"><% _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("SearchIndexEditable"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",39,e);}if (_boolean_result) { %><textarea cols="120" rows="25" class="inputfield_en" name="StopWords_Text"><% {String value = null;try{value=context.getFormattedValue(getObject("StopWords_Text"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {40}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></textarea><% } else { %><textarea cols="120" rows="25" class="inputfield_en" name="StopWords_Text" disabled="disabled"><% {String value = null;try{value=context.getFormattedValue(getObject("StopWords_Text"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {42}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></textarea><% } %></td>
</tr>
<tr>
<td class="w e s"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("SearchIndexEditable"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",49,e);}if (_boolean_result) { %><tr>
<td>
<table class="w e s right" width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><input class="button" type="submit" name="applyStopWords" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("SearchIndexStopWords.Apply.button",null)),null)%>" /></td>
<td class="button"><input class="button" type="reset" name="resetStopWords" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("SearchIndexStopWords.Reset.button",null)),null)%>" /></td>
</tr>
</table>
</td>
</tr>
</table>
</td>
</tr><% } %></table><% out.print("</form>"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/BackToList", null, "69");} %><% printFooter(out); %>