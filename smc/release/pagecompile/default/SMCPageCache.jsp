<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- Working Area -->
<!-- Page Navigator -->
<table border="0" cellspacing="0" cellpadding="0" width="100%">
<tr>
<td class="breadcrumb"><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("Cache-ListAllSites",null),context.getFormattedValue("",null),context.getFormattedValue("SMC",null)))),null)%>" class="breadcrumb"><% {out.write(localizeISText("smc.SiteManagement.link","",null,null,null,null,null,null,null,null,null,null,null));} %></a>&nbsp;&gt;&nbsp;<% {String value = null;try{value=context.getFormattedValue(getObject("Site:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {7}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> - <% {out.write(localizeISText("SMCPageCache.PageCache.link","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<div><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="7" alt="" border="0"/></div>
<!-- EO Page Navigator --><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("Site"))))).booleanValue() && ((Boolean) (getObject("Site:isPageCachingAllowed"))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",12,e);}if (_boolean_result) { %><% {Object temp_obj = ("true"); getPipelineDictionary().put("PageCachingEnabled", temp_obj);} %><% } else { %><% {Object temp_obj = ("false"); getPipelineDictionary().put("PageCachingEnabled", temp_obj);} %><% } %><table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td><% {Object temp_obj = ("Page Cache"); getPipelineDictionary().put("SelectedTab", temp_obj);} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"SiteManagementTabs", null, "21");} %></td>
</tr>
</table><% URLPipelineAction action12 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("SMCViewPageCache-Dispatch",null)))),null));String site12 = null;String serverGroup12 = null;String actionValue12 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("SMCViewPageCache-Dispatch",null)))),null);if (site12 == null){  site12 = action12.getDomain();  if (site12 == null)  {      site12 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup12 == null){  serverGroup12 = action12.getServerGroup();  if (serverGroup12 == null)  {      serverGroup12 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("SMCViewPageCache-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("PageCacheForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue12, site12, serverGroup12,true)); %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PageCachingEnabled"),null).equals(context.getFormattedValue("false",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",26,e);}if (_boolean_result) { %><input type="hidden" name="DomainPageCacheIndexingEnabled" value="<% {String value = null;try{value=context.getFormattedValue(getObject("DomainPageCacheIndexingEnabled"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {27}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="DomainPageCacheKeywordProcessingEnabled" value="<% {String value = null;try{value=context.getFormattedValue(getObject("DomainPageCacheKeywordProcessingEnabled"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {28}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><% } %><table border="0" cellpadding="0" cellspacing="0" width="100%" class="w e">
<tr>
<td colspan="3" width="100%" class="table_title s"><input type="hidden" name="DomainUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Site:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {32}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><input type="hidden" name="ChannelID" value="<%=context.getFormattedValue(getObject("ChannelRepository:UUID"),null)%>"/><% {String value = null;try{value=context.getFormattedValue(getObject("Site:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {32}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
</tr>
<tr>
<td colspan="3" class="table_title_description s"><% {out.write(localizeISText("SMCPageCache.MaximumAgeOfStaticContentDefinition.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="4" border="0" alt=""/></td>
</tr>
<tr>
<td class="fielditem2" nowrap="nowrap"><% {out.write(localizeISText("SMCPageCache.MaximumAgeOfStaticContent.fielditem2","",null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td class="table_detail" width="100%" colspan="2"><input type="text" name="DomainStaticContentMaxAge" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Site:StaticContentMaxAge"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {44}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="inputfield_en" size="12" />&nbsp;<% {out.write(localizeISText("SMCPageCache.MaximumAgeOfStaticContent.comment","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td class="fielditem" nowrap="nowrap"><% {out.write(localizeISText("SMCPageCache.PageCaching.fielditem2","",null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td class="table_detail" colspan="2"><input type="checkbox" name="DomainPageCachingAllowed" value="true" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PageCachingEnabled"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",48,e);}if (_boolean_result) { %>checked="checked"<% } %>/></td>
</tr>
<tr>
<td class="fielditem" nowrap="nowrap"><% {out.write(localizeISText("SMCPageCache.ExplicitKeywordProcessing.fielditem2","",null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td class="table_detail" colspan="2"><input type="checkbox" name="DomainPageCacheKeywordProcessingEnabled" value="Enabled" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("DomainPageCacheKeywordProcessingEnabled"),null).equals(context.getFormattedValue("Enabled",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",52,e);}if (_boolean_result) { %>checked="checked"<% } %> <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PageCachingEnabled"),null).equals(context.getFormattedValue("false",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",52,e);}if (_boolean_result) { %>disabled="disabled"<% } %>/></td>
</tr>
<tr>
<td class="fielditem" nowrap="nowrap"><% {out.write(localizeISText("SMCPageCache.FullTextIndexing.fielditem2","",null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td class="table_detail" colspan="2"><input type="checkbox" name="DomainPageCacheIndexingEnabled" value="Enabled" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("DomainPageCacheIndexingEnabled"),null).equals(context.getFormattedValue("Enabled",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",56,e);}if (_boolean_result) { %>checked="checked"<% } %> <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PageCachingEnabled"),null).equals(context.getFormattedValue("false",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",56,e);}if (_boolean_result) { %>disabled="disabled"<% } %>/></td>
</tr>
<tr>
<td colspan="3"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="4" border="0" alt=""/></td>
</tr>
<tr>
<td class="n" align="right" colspan="3">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><input type="submit" class = "button" name="Ok" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("smc.Apply.button",null)),null)%>"/></td>
<td class="button"><input type="reset" class = "button" name="reset" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("smc.Reset.button",null)),null)%>"/></td>
</tr>
</table>
</td>
</tr>
<tr>
<td colspan="3" class="table_subtitle s n"><% {out.write(localizeISText("SMCPageCache.PageCacheInvalidation.table_subtitle","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Invalidate"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",74,e);}if (_boolean_result) { %><tr>
<td colspan="3">
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="notification s">
<tr valign="top">
<td class="e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/informations_ico.png" alt="" /></td>
<td width="100%"><% {out.write(localizeISText("SMCPageCache.ThePageCacheInvalidationWasSuccessful.fielditem2","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<td>
</tr><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Prefetch"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",86,e);}if (_boolean_result) { %><tr>
<td colspan="3">
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="notification s">
<tr valign="top">
<td class="e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/informations_ico.png" alt="" /></td>
<td width="100%"><% {out.write(localizeISText("SMCPageCache.ThePrefetchingOfThePageCacheWasStarted.fielditem2","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<td>
</tr><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("StopPrefetch"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",98,e);}if (_boolean_result) { %><tr>
<td colspan="3">
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="notification s">
<tr valign="top">
<td class="e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/informations_ico.png" alt="" /></td>
<td width="100%"><% {out.write(localizeISText("SMCPageCache.ThePrefetchingOfThePageCacheWasStopped.fielditem2","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<td>
</tr><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("InvalidateBySearchword"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",111,e);}if (_boolean_result) { %><tr>
<td colspan="3">
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="notification s">
<tr valign="top">
<td class="e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/informations_ico.png" alt="" /></td>
<td width="100%"><% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("InvalidationSearchwords"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",118,e);}if (_boolean_result) { %><% {out.write(localizeISText("SMCPageCache.TheSelectivePageCacheInvalidationHasBeenInitiated.fielditem2","",null,encodeString(context.getFormattedValue(getObject("InvalidationSearchwords"),null)),null,null,null,null,null,null,null,null,null));} %><br/><% } else { %><% {out.write(localizeISText("SMCPageCache.PleaseSpecifyASearchwordFirst.fielditem2","",null,null,null,null,null,null,null,null,null,null,null));} %><% } %></td>
</tr>
</table>
<td>
</tr><% } %><tr>
<td colspan="3" class="table_title_description s"><% {out.write(localizeISText("SMCPageCache.InsertSearchwordsAndClickInvalidate.table_title_description","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td colspan="3"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="4" border="0" alt=""/></td>
</tr>
<tr>
<td class="fielditem2" ><% {out.write(localizeISText("SMCPageCache.InvalidateAllPagesContainingTheFollowing.fielditem2","",null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td class="table_detail">
<table border="0" cellspacing="0" cellpadding="0">
<tr>
<td><textarea rows="5" cols="50" name="InvalidationSearchwords" class="inputfield_en" <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((context.getFormattedValue(getObject("PageCachingEnabled"),null).equals(context.getFormattedValue("false",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) (((((Boolean) (((!(context.getFormattedValue(getObject("DomainPageCacheKeywordProcessingEnabled"),null).equals(context.getFormattedValue("Enabled",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("DomainPageCacheIndexingEnabled"),null).equals(context.getFormattedValue("Enabled",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",142,e);}if (_boolean_result) { %>disabled="disabled"<% } %>><% {String value = null;try{value=context.getFormattedValue(getObject("InvalidationSearchwords"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {142}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></textarea></td>
<td valign="top" style="padding-left: 6px;padding-top: 1px;">
</td>
</tr>
</table>
</td> 
<td class="table_detail_comment" width="100%"><% {out.write(localizeISText("SMCPageCache.MultipleSearchwordsAreSeparated.catalog_description","",null,null,null,null,null,null,null,null,null,null,null));} %><br /><br /><br /><br />
<table border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="button">
<input type="submit" class="button" name="InvalidateBySearchword" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("SMCPageCache.Invalidate.button",null)),null)%>" <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((context.getFormattedValue(getObject("PageCachingEnabled"),null).equals(context.getFormattedValue("false",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) (((((Boolean) (((!(context.getFormattedValue(getObject("DomainPageCacheKeywordProcessingEnabled"),null).equals(context.getFormattedValue("Enabled",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("DomainPageCacheIndexingEnabled"),null).equals(context.getFormattedValue("Enabled",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",154,e);}if (_boolean_result) { %>disabled="disabled"<% } %>/>
</td>
</tr>
</table>
</td>
</tr>
<tr>
<td class="n s" align="right" colspan="3">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><input type="submit" class="button" name="StopPrefetch" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("SMCPageCache.StopPrefetching.button",null)),null)%>" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PageCachingEnabled"),null).equals(context.getFormattedValue("false",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",164,e);}if (_boolean_result) { %>disabled="disabled"<% } %>/></td>
<td class="button"><input type="submit" class="button" name="Prefetch" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("SMCPageCache.PrefetchCache.button",null)),null)%>" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PageCachingEnabled"),null).equals(context.getFormattedValue("false",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",165,e);}if (_boolean_result) { %>disabled="disabled"<% } %>/></td>
<td class="button"><input type="submit" class="button" name="Invalidate" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("SMCPageCache.InvalidateCompleteCache.button",null)),null)%>" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PageCachingEnabled"),null).equals(context.getFormattedValue("false",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",166,e);}if (_boolean_result) { %>disabled="disabled"<% } %>/></td>
</tr>
</table>
</td>
</tr>
</table><% out.print("</form>"); %><% URLPipelineAction action13 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("Cache-ListAllSites",null)))),null));String site13 = null;String serverGroup13 = null;String actionValue13 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("Cache-ListAllSites",null)))),null);if (site13 == null){  site13 = action13.getDomain();  if (site13 == null)  {      site13 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup13 == null){  serverGroup13 = action13.getServerGroup();  if (serverGroup13 == null)  {      serverGroup13 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("Cache-ListAllSites",null)))),null));out.print("\"");out.print(" name=\"");out.print("backForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue13, site13, serverGroup13,true)); %><table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="backbar_left">
<table border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="button"><input type="submit" name="back" value="&lt;&lt;&nbsp;<%=context.getFormattedValue(localizeText(context.getFormattedValue("smc.BackToList.button",null)),null)%>" class="button"/></td>
</tr>
</table>
</td>
</tr>
</table><% out.print("</form>"); %><!-- EO Main Content -->
<!-- EO Working Area --><% printFooter(out); %>