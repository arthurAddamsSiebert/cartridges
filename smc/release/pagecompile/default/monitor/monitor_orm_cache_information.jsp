<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><table cellpadding="0" cellspacing="0" border="0" class="w100">
<tr>
<td class="breadcrumb"><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("Monitor-Start",null),context.getFormattedValue("",null),context.getFormattedValue("SMC",null)))),null)%>" class="breadcrumb"><% {out.write(localizeISText("monitor.Monitoring.link","",null,null,null,null,null,null,null,null,null,null,null));} %></a>&nbsp;&gt;&nbsp;<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("Monitor-ORM",null),context.getFormattedValue("",null),context.getFormattedValue("SMC",null)))),null)%>" class="breadcrumb"><% {out.write(localizeISText("monitor.ORMapping.link","",null,null,null,null,null,null,null,null,null,null,null));} %></a>&nbsp;&gt;&nbsp;<% {out.write(localizeISText("monitor.Cache.link","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></td>
</tr>
<tr>
<td><% {out.flush();%><%@page import="com.intershop.beehive.core.capi.url.*"%><%URLRewriteHandler handler = getTemplateExecutionConfig().getURLRewriteHandler();
try
{
getTemplateExecutionConfig().setURLRewriteHandler(NullURLRewriteHandler.getInstance());
processRemoteIncludeAutomatic((com.intershop.beehive.core.capi.request.ServletResponse)response,context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewServerSelection-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("TargetPipeline",null),context.getFormattedValue("ViewORMCacheInformation-Start",null))).addURLParameter(context.getFormattedValue("TargetServerID",null),context.getFormattedValue(getObject("TargetServerID"),null))),null), null, null, "10");}
finally
{
    getTemplateExecutionConfig().setURLRewriteHandler(handler);
}} %></td>
</tr>
<tr>
<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/spacer.gif" width="1" height="5" border="0" alt=""/></td> <!-- blank line, separates server select from content -->
</tr>
<!-- Content Area -->
<tr>
<td class="table_title aldi"><% {out.write(localizeISText("monitor_orm_cache_information.ORMappingCache.table_title","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td class="table_title_description w e"><% {out.write(localizeISText("monitor_orm_cache_information.PageDisplaysORMCacheInformation.table_title_description","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ErrorMessage"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",22,e);}if (_boolean_result) { %><tr>
<td>
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr>
<td class="error_icon e middle"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error"><% {String value = null;try{value=context.getFormattedValue(getObject("ErrorMessage"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {28}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
</tr>
</table>
</td>
</tr><% } else { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SortBy"),null).equals(context.getFormattedValue("Name",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",34,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SortOrder"),null).equals(context.getFormattedValue("Ascending",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",35,e);}if (_boolean_result) { %><% {Object temp_obj = ("Descending"); getPipelineDictionary().put("NewOrderName", temp_obj);} %><% } else { %><% {Object temp_obj = ("Ascending"); getPipelineDictionary().put("NewOrderName", temp_obj);} %><% } %><% } else { %><% {Object temp_obj = (getObject("SortOrder")); getPipelineDictionary().put("NewOrderName", temp_obj);} %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SortBy"),null).equals(context.getFormattedValue("CacheCount",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",43,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SortOrder"),null).equals(context.getFormattedValue("Ascending",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",44,e);}if (_boolean_result) { %><% {Object temp_obj = ("Descending"); getPipelineDictionary().put("NewOrderCacheCount", temp_obj);} %><% } else { %><% {Object temp_obj = ("Ascending"); getPipelineDictionary().put("NewOrderCacheCount", temp_obj);} %><% } %><% } else { %><% {Object temp_obj = (getObject("SortOrder")); getPipelineDictionary().put("NewOrderCacheCount", temp_obj);} %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SortBy"),null).equals(context.getFormattedValue("LoadedCount",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",52,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SortOrder"),null).equals(context.getFormattedValue("Ascending",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",53,e);}if (_boolean_result) { %><% {Object temp_obj = ("Descending"); getPipelineDictionary().put("NewOrderLoadedCount", temp_obj);} %><% } else { %><% {Object temp_obj = ("Ascending"); getPipelineDictionary().put("NewOrderLoadedCount", temp_obj);} %><% } %><% } else { %><% {Object temp_obj = (getObject("SortOrder")); getPipelineDictionary().put("NewOrderLoadedCount", temp_obj);} %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SortBy"),null).equals(context.getFormattedValue("CacheReads",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",61,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SortOrder"),null).equals(context.getFormattedValue("Ascending",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",62,e);}if (_boolean_result) { %><% {Object temp_obj = ("Descending"); getPipelineDictionary().put("NewOrderCacheReads", temp_obj);} %><% } else { %><% {Object temp_obj = ("Ascending"); getPipelineDictionary().put("NewOrderCacheReads", temp_obj);} %><% } %><% } else { %><% {Object temp_obj = (getObject("SortOrder")); getPipelineDictionary().put("NewOrderCacheReads", temp_obj);} %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SortBy"),null).equals(context.getFormattedValue("CacheHits",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",70,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SortOrder"),null).equals(context.getFormattedValue("Ascending",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",71,e);}if (_boolean_result) { %><% {Object temp_obj = ("Descending"); getPipelineDictionary().put("NewOrderCacheHits", temp_obj);} %><% } else { %><% {Object temp_obj = ("Ascending"); getPipelineDictionary().put("NewOrderCacheHits", temp_obj);} %><% } %><% } else { %><% {Object temp_obj = (getObject("SortOrder")); getPipelineDictionary().put("NewOrderCacheHits", temp_obj);} %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SortBy"),null).equals(context.getFormattedValue("CacheMisses",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",79,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SortOrder"),null).equals(context.getFormattedValue("Ascending",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",80,e);}if (_boolean_result) { %><% {Object temp_obj = ("Descending"); getPipelineDictionary().put("NewOrderCacheMisses", temp_obj);} %><% } else { %><% {Object temp_obj = ("Ascending"); getPipelineDictionary().put("NewOrderCacheMisses", temp_obj);} %><% } %><% } else { %><% {Object temp_obj = (getObject("SortOrder")); getPipelineDictionary().put("NewOrderCacheMisses", temp_obj);} %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SortBy"),null).equals(context.getFormattedValue("CacheHitRatio",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",88,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SortOrder"),null).equals(context.getFormattedValue("Ascending",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",89,e);}if (_boolean_result) { %><% {Object temp_obj = ("Descending"); getPipelineDictionary().put("NewOrderCacheHitRatio", temp_obj);} %><% } else { %><% {Object temp_obj = ("Ascending"); getPipelineDictionary().put("NewOrderCacheHitRatio", temp_obj);} %><% } %><% } else { %><% {Object temp_obj = (getObject("SortOrder")); getPipelineDictionary().put("NewOrderCacheHitRatio", temp_obj);} %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SortBy"),null).equals(context.getFormattedValue("DatabaseReads",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",97,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SortOrder"),null).equals(context.getFormattedValue("Ascending",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",98,e);}if (_boolean_result) { %><% {Object temp_obj = ("Descending"); getPipelineDictionary().put("NewOrderDatabaseReads", temp_obj);} %><% } else { %><% {Object temp_obj = ("Ascending"); getPipelineDictionary().put("NewOrderDatabaseReads", temp_obj);} %><% } %><% } else { %><% {Object temp_obj = (getObject("SortOrder")); getPipelineDictionary().put("NewOrderDatabaseReads", temp_obj);} %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SortBy"),null).equals(context.getFormattedValue("DatabaseHits",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",106,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SortOrder"),null).equals(context.getFormattedValue("Ascending",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",107,e);}if (_boolean_result) { %><% {Object temp_obj = ("Descending"); getPipelineDictionary().put("NewOrderDatabaseHits", temp_obj);} %><% } else { %><% {Object temp_obj = ("Ascending"); getPipelineDictionary().put("NewOrderDatabaseHits", temp_obj);} %><% } %><% } else { %><% {Object temp_obj = (getObject("SortOrder")); getPipelineDictionary().put("NewOrderDatabaseHits", temp_obj);} %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SortBy"),null).equals(context.getFormattedValue("DatabaseMisses",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",115,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SortOrder"),null).equals(context.getFormattedValue("Ascending",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",116,e);}if (_boolean_result) { %><% {Object temp_obj = ("Descending"); getPipelineDictionary().put("NewOrderDatabaseMisses", temp_obj);} %><% } else { %><% {Object temp_obj = ("Ascending"); getPipelineDictionary().put("NewOrderDatabaseMisses", temp_obj);} %><% } %><% } else { %><% {Object temp_obj = (getObject("SortOrder")); getPipelineDictionary().put("NewOrderDatabaseMisses", temp_obj);} %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SortBy"),null).equals(context.getFormattedValue("DatabaseHitRatio",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",124,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SortOrder"),null).equals(context.getFormattedValue("Ascending",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",125,e);}if (_boolean_result) { %><% {Object temp_obj = ("Descending"); getPipelineDictionary().put("NewOrderDatabaseHitRatio", temp_obj);} %><% } else { %><% {Object temp_obj = ("Ascending"); getPipelineDictionary().put("NewOrderDatabaseHitRatio", temp_obj);} %><% } %><% } else { %><% {Object temp_obj = (getObject("SortOrder")); getPipelineDictionary().put("NewOrderDatabaseHitRatio", temp_obj);} %><% } %><% } %><tr>
<!-- Main Content -->
<td>
<table width="100%" cellpadding="0" cellspacing="0" border="0" class="aldi">
<tr>
<td colspan="11" class="table_subtitle s" nowrap="nowrap"><% {out.write(localizeISText("monitor_orm_cache_information.GeneralCacheInformation.table_subtitle","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr><td colspan="11"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/spacer.gif" width="1" height="5" border="0" alt=""/></td></tr>
<tr>
<td class="table_detail3" valign="top" nowrap="nowrap"><% {out.write(localizeISText("monitor_orm_cache_information.NumberOfCachedInstances.table_detail3","",null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td class="table_detail w100" valign="top" colspan="10"><% {String value = null;try{value=context.getFormattedValue(getObject("ORM_CacheSize"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {144}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
</tr>
<tr><td colspan="11"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/spacer.gif" width="1" height="5" border="0" alt=""/></td></tr>
<tr>
<td class="table_detail3" valign="top" nowrap="nowrap"><% {out.write(localizeISText("monitor_orm_cache_information.CacheSynchronization.table_detail3","",null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td colspan="10" class="table_detail w100" valign="top"><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ORM_CacheSynchroEnabled"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",150,e);}if (_boolean_result) { %><% {out.write(localizeISText("monitor_orm_cache_information.Enabled.table_detail","",null,null,null,null,null,null,null,null,null,null,null));} %><% } else { %><% {out.write(localizeISText("monitor_orm_cache_information.Disabled.table_detail","",null,null,null,null,null,null,null,null,null,null,null));} %><% } %></td>
</tr>
<tr><td colspan="11"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/spacer.gif" width="1" height="5" border="0" alt=""/></td></tr>
<tr>
<td colspan="11" class="table_subtitle n s" nowrap="nowrap"><% {out.write(localizeISText("monitor_orm_cache_information.PersistentObjectsInTheCache.table_subtitle","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr><td colspan="11"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/spacer.gif" width="1" height="5" border="0" alt=""/></td></tr>
<tr>
<td class="table_detail3" valign="top" nowrap="nowrap" colspan="9"><% {out.write(localizeISText("monitor_orm_cache_information.ORMMonitoring.table_detail3","",null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td class="table_detail w100" valign="top" nowrap="nowrap"><% URLPipelineAction action48 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewORMCacheInformation-Start",null)))),null));String site48 = null;String serverGroup48 = null;String actionValue48 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewORMCacheInformation-Start",null)))),null);if (site48 == null){  site48 = action48.getDomain();  if (site48 == null)  {      site48 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup48 == null){  serverGroup48 = action48.getServerGroup();  if (serverGroup48 == null)  {      serverGroup48 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewORMCacheInformation-Start",null)))),null));out.print("\"");out.print(" name=\"");out.print("RefreshForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue48, site48, serverGroup48,true)); %><input type="hidden" name="SortBy" value="<% {String value = null;try{value=context.getFormattedValue(getObject("SortBy"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {162}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="SortOrder" value="<% {String value = null;try{value=context.getFormattedValue(getObject("SortOrder"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {163}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<table cellpadding="0" cellspacing="0" border="0">
<tr>
<td class="button">
<input type="submit" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("monitor.Refresh.button",null)),null)%>" class="button"/>
</td>
</tr>
</table><% out.print("</form>"); %></td>
<td class="table_detail w100" valign="top" nowrap="nowrap"><% URLPipelineAction action49 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewORMCacheInformation-Reset",null)))),null));String site49 = null;String serverGroup49 = null;String actionValue49 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewORMCacheInformation-Reset",null)))),null);if (site49 == null){  site49 = action49.getDomain();  if (site49 == null)  {      site49 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup49 == null){  serverGroup49 = action49.getServerGroup();  if (serverGroup49 == null)  {      serverGroup49 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewORMCacheInformation-Reset",null)))),null));out.print("\"");out.print(" name=\"");out.print("ResetForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue49, site49, serverGroup49,true)); %><input type="hidden" name="SortBy" value="<% {String value = null;try{value=context.getFormattedValue(getObject("SortBy"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {175}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="SortOrder" value="<% {String value = null;try{value=context.getFormattedValue(getObject("SortOrder"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {176}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<table cellpadding="0" cellspacing="0" border="0">
<tr>
<td class="button">
<input type="submit" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("monitor.Reset.button",null)),null)%>" class="button"/>
</td>
</tr>
</table><% out.print("</form>"); %></td>
</tr>
<tr><td colspan="11"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/spacer.gif" width="1" height="5" border="0" alt=""/></td></tr>
<tr>
<td class="table_header n e" width="100%">&nbsp;</td>
<td class="table_header n e s center" colspan="6"><% {out.write(localizeISText("monitor.Cache.table_header","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header n s center" colspan="4"><% {out.write(localizeISText("monitor_orm_cache_information.Database.table_header","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td class="table_header e s nowrap" width="100%"><a class="tableheader" href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewORMCacheInformation-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SortBy",null),context.getFormattedValue("Name",null))).addURLParameter(context.getFormattedValue("SortOrder",null),context.getFormattedValue(getObject("NewOrderName"),null))),null)%>"><% {out.write(localizeISText("monitor_orm_cache_information.PersistentObject.link","",null,null,null,null,null,null,null,null,null,null,null));} %></a></td>
<td class="table_header e s nowrap center"><a class="tableheader" href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewORMCacheInformation-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SortBy",null),context.getFormattedValue("CacheCount",null))).addURLParameter(context.getFormattedValue("SortOrder",null),context.getFormattedValue(getObject("NewOrderCacheCount"),null))),null)%>"><% {out.write(localizeISText("monitor_orm_cache_information.Count.link","",null,null,null,null,null,null,null,null,null,null,null));} %></a></td>
<td class="table_header e s nowrap center"><a class="tableheader" href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewORMCacheInformation-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SortBy",null),context.getFormattedValue("LoadedCount",null))).addURLParameter(context.getFormattedValue("SortOrder",null),context.getFormattedValue(getObject("NewOrderLoadedCount"),null))),null)%>"><% {out.write(localizeISText("monitor_orm_cache_information.Loaded.link","",null,null,null,null,null,null,null,null,null,null,null));} %></a></td>
<td class="table_header e s nowrap center"><a class="tableheader" href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewORMCacheInformation-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SortBy",null),context.getFormattedValue("CacheReads",null))).addURLParameter(context.getFormattedValue("SortOrder",null),context.getFormattedValue(getObject("NewOrderCacheReads"),null))),null)%>"><% {out.write(localizeISText("monitor.Reads.link","",null,null,null,null,null,null,null,null,null,null,null));} %></a></td>
<td class="table_header e s nowrap center"><a class="tableheader" href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewORMCacheInformation-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SortBy",null),context.getFormattedValue("CacheHits",null))).addURLParameter(context.getFormattedValue("SortOrder",null),context.getFormattedValue(getObject("NewOrderCacheHits"),null))),null)%>"><% {out.write(localizeISText("monitor.Hits.link","",null,null,null,null,null,null,null,null,null,null,null));} %></a></td>
<td class="table_header e s nowrap center"><a class="tableheader" href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewORMCacheInformation-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SortBy",null),context.getFormattedValue("CacheMisses",null))).addURLParameter(context.getFormattedValue("SortOrder",null),context.getFormattedValue(getObject("NewOrderCacheMisses"),null))),null)%>"><% {out.write(localizeISText("monitor.Misses.link","",null,null,null,null,null,null,null,null,null,null,null));} %></a></td>
<td class="table_header e s nowrap center"><a class="tableheader" href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewORMCacheInformation-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SortBy",null),context.getFormattedValue("CacheHitRatio",null))).addURLParameter(context.getFormattedValue("SortOrder",null),context.getFormattedValue(getObject("NewOrderCacheHitRatio"),null))),null)%>"><% {out.write(localizeISText("monitor.HitRatio.link","",null,null,null,null,null,null,null,null,null,null,null));} %></a></td>
<td class="table_header e s nowrap center"><a class="tableheader" href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewORMCacheInformation-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SortBy",null),context.getFormattedValue("DatabaseReads",null))).addURLParameter(context.getFormattedValue("SortOrder",null),context.getFormattedValue(getObject("NewOrderDatabaseReads"),null))),null)%>"><% {out.write(localizeISText("monitor.Reads.link","",null,null,null,null,null,null,null,null,null,null,null));} %></a></td>
<td class="table_header e s nowrap center"><a class="tableheader" href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewORMCacheInformation-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SortBy",null),context.getFormattedValue("DatabaseHits",null))).addURLParameter(context.getFormattedValue("SortOrder",null),context.getFormattedValue(getObject("NewOrderDatabaseHits"),null))),null)%>"><% {out.write(localizeISText("monitor.Hits.link","",null,null,null,null,null,null,null,null,null,null,null));} %></a></td>
<td class="table_header e s nowrap center"><a class="tableheader" href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewORMCacheInformation-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SortBy",null),context.getFormattedValue("DatabaseMisses",null))).addURLParameter(context.getFormattedValue("SortOrder",null),context.getFormattedValue(getObject("NewOrderDatabaseMisses"),null))),null)%>"><% {out.write(localizeISText("monitor.Misses.link","",null,null,null,null,null,null,null,null,null,null,null));} %></a></td>
<td class="table_header s nowrap center"><a class="tableheader" href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewORMCacheInformation-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SortBy",null),context.getFormattedValue("DatabaseHitRatio",null))).addURLParameter(context.getFormattedValue("SortOrder",null),context.getFormattedValue(getObject("NewOrderDatabaseHitRatio"),null))),null)%>"><% {out.write(localizeISText("monitor.HitRatio.link","",null,null,null,null,null,null,null,null,null,null,null));} %></a></td>
</tr><% while (loop("ORM_CacheDump","CM",null)) { %><tr>
<td class="table_detail e" width="100%"><%
							String className = (String) getObject("CM:ClassDescription:PersistentClass:Name");
							String shortName = className.substring(className.lastIndexOf('.') + 1);
							out.print("<div title=\"" + className + "\">" + shortName + "</div>");
							%></td>
<td class="table_detail e nowrap right"><% {String value = null;try{value=context.getFormattedValue(getObject("CM:CacheCount"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {215}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
<td class="table_detail e nowrap right"><% {String value = null;try{value=context.getFormattedValue(getObject("CM:LoadedCount"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {216}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
<td class="table_detail e nowrap right"><% {String value = null;try{value=context.getFormattedValue(getObject("CM:CacheReadCount"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {217}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
<td class="table_detail e nowrap right"><% {String value = null;try{value=context.getFormattedValue(getObject("CM:CacheHitCount"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {218}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
<td class="table_detail e nowrap right"><% {String value = null;try{value=context.getFormattedValue(getObject("CM:CacheMissCount"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {219}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
<td class="table_detail e nowrap right"><% {String value = null;try{value=context.getFormattedValue(getObject("CM:CacheHitRatio"),"0.0",null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {220}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>%</td>
<td class="table_detail e nowrap right"><% {String value = null;try{value=context.getFormattedValue(getObject("CM:DatabaseReadCount"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {221}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
<td class="table_detail e nowrap right"><% {String value = null;try{value=context.getFormattedValue(getObject("CM:DatabaseHitCount"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {222}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
<td class="table_detail e nowrap right"><% {String value = null;try{value=context.getFormattedValue(getObject("CM:DatabaseMissCount"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {223}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
<td class="table_detail nowrap right"><% {String value = null;try{value=context.getFormattedValue(getObject("CM:DatabaseHitRatio"),"0.0",null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {224}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>%</td>
</tr><% } %></table>
</td>
<!-- /Main Content -->
</tr>
</table>
<!-- /Content Area --><% printFooter(out); %>