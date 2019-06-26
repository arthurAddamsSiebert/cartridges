<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% processOpenTag(response, pageContext, "pageletmodelutils", new TagParameter[] {
new TagParameter("PageletModelUtils","PageletModelUtils")}, 2); %><% processOpenTag(response, pageContext, "createmap", new TagParameter[] {
new TagParameter("key1","ContentRepository"),
new TagParameter("key2","Locale"),
new TagParameter("key0","ViewContext"),
new TagParameter("value2",getObject("Locale")),
new TagParameter("value1",getObject("ContentRepository")),
new TagParameter("value0",getObject("ViewContext")),
new TagParameter("mapname","ViewContextParams")}, 4); %><% {try{executePipeline("ViewViewContext-TemplateCallback",((java.util.Map)(getObject("ViewContextParams"))),"Result");}catch(Exception e){Logger.error(this,"ISPIPELINE failed. Line: 8.",e);}} %><% processOpenTag(response, pageContext, "populatedictionary", new TagParameter[] {
new TagParameter("map",getObject("Result"))}, 9); %><% processOpenTag(response, pageContext, "configurationparametererrors", new TagParameter[] {
new TagParameter("ConfigurationParameterCtnr",getObject("ViewContext")),
new TagParameter("Locale",getObject("Locale")),
new TagParameter("ContentRepository",getObject("ContentRepository")),
new TagParameter("Class","error_box w e s")}, 11); %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ViewContext:ContextObjectRelation:Description:get(Locale:LocaleID)")))).booleanValue() && ((Boolean) ((( ((Number) (new Double(context.getFormattedValue(getObject("ViewContext:ContextObjectRelation:Description:get(CurrentSession:Locale:LocaleID)"),null).length()))).doubleValue() >((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",18,e);}if (_boolean_result) { %><table cellpadding="0" cellspacing="0" border="0" width="100%">
<tr>
<td class="table_title_description w e s"><% {String value = null;try{value=context.getFormattedValue(getObject("ViewContext:ContextObjectRelation:Description:get(Locale:LocaleID)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {21}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
</tr>
</table><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("ViewContext:ConfigurationParameterDefinitionCtnr:ConfigurationParameterDefinitions") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",26,e);}if (_boolean_result) { %><% URLPipelineAction action387 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewViewContext-Dispatch",null)))),null));String site387 = null;String serverGroup387 = null;String actionValue387 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewViewContext-Dispatch",null)))),null);if (site387 == null){  site387 = action387.getDomain();  if (site387 == null)  {      site387 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup387 == null){  serverGroup387 = action387.getServerGroup();  if (serverGroup387 == null)  {      serverGroup387 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewViewContext-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("setLocale");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue387, site387, serverGroup387,true)); %><input type="hidden" name="ViewContextUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ViewContext:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {28}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="ContentRepositoryUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ContentRepository:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {29}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<table border="0" cellpadding="4" cellspacing="0" width="100%" class="infobox_locale w e s">
<tr>
<td class="label_select" nowrap="nowrap"><label class="label label_select label_light" for="LocaleId"><% {out.write(localizeISText("ViewContextTabDetails.SelectLanguage.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td class="infobox_item">
<select name="LocaleId" id="LocaleId" class="select inputfield_en"><% while (loop("Locales","Locales",null)) { %><option value="<% {String value = null;try{value=context.getFormattedValue(getObject("Locales:LocaleID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {36}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Locales:LocaleID"),null).equals(context.getFormattedValue(getObject("Locale:LocaleID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",36,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {String value = null;try{value=context.getFormattedValue(getObject("Locales:getDisplayName(CurrentSession:Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {36}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</option><% } %></select>
</td>
<td width="100%">
<table border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="button">
<input type="submit" name="setLocale" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ViewContextTabDetails.Apply.button",null)),null)%>" class="button"/>
</td>
</tr>
</table>
</td>
</tr>
</table><% out.print("</form>"); %><!-- Configuration Parameters --> 
<table cellpadding="0" cellspacing="0" border="0" width="100%">
<tr>
<td nowrap="nowrap" class="table_title2 aldi"><% {out.write(localizeISText("ViewContextTabDetails.Parameters.table_title2",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td><% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("ContentRepository:TypeCode")).doubleValue() ==((Number)(new Double(21))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",60,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "configurationparameters", new TagParameter[] {
new TagParameter("targetpipeline","ViewViewContext-View"),
new TagParameter("PageLocatorName",getObject("PageLocatorName")),
new TagParameter("parametername0","ViewContextUUID"),
new TagParameter("parametername1","ContentRepositoryUUID"),
new TagParameter("parametervalue2",getObject("Locale:LocaleID")),
new TagParameter("parametervalue1",getObject("ContentRepository:UUID")),
new TagParameter("parametername2","LocaleId"),
new TagParameter("parametervalue0",getObject("ViewContext:UUID")),
new TagParameter("ContentRepository",getObject("ContentRepository")),
new TagParameter("configurationparameterctnr",getObject("ViewContext")),
new TagParameter("locale",getObject("Locale"))}, 61); %><% } else { %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"content/ChannelModules", null, "74");} %><% processOpenTag(response, pageContext, "channelconfigurationparameters", new TagParameter[] {
new TagParameter("targetpipeline","ViewViewContext-View"),
new TagParameter("PageLocatorName",getObject("PageLocatorName")),
new TagParameter("parametername0","ViewContextUUID"),
new TagParameter("parametername1","ContentRepositoryUUID"),
new TagParameter("parametervalue2",getObject("Locale:LocaleID")),
new TagParameter("parametervalue1",getObject("ContentRepository:UUID")),
new TagParameter("parametername2","LocaleId"),
new TagParameter("parametervalue0",getObject("ViewContext:UUID")),
new TagParameter("ContentRepository",getObject("ContentRepository")),
new TagParameter("configurationparameterctnr",getObject("ViewContext")),
new TagParameter("locale",getObject("Locale"))}, 75); %><% } %></td> 
</tr>
</table><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("ViewContext:PageletEntryPointViewContextAssignmentFallbacks") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",93,e);}if (_boolean_result) { %><table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="table_title2 w e s" colspan="3"><% {out.write(localizeISText("ViewContextTabDetails.GlobalFallbacks.table_title2",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td class="table_title_description w e s" colspan="3"><% {out.write(localizeISText("ViewContextTabDetails.TheTableShowsAnOverviewOfTheSystemFallbacksForThis.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% URLPipelineAction action388 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewViewContext-Dispatch",null)))),null));String site388 = null;String serverGroup388 = null;String actionValue388 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewViewContext-Dispatch",null)))),null);if (site388 == null){  site388 = action388.getDomain();  if (site388 == null)  {      site388 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup388 == null){  serverGroup388 = action388.getServerGroup();  if (serverGroup388 == null)  {      serverGroup388 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewViewContext-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("fallbackForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue388, site388, serverGroup388,true)); %> 
<% processOpenTag(response, pageContext, "createmap", new TagParameter[] {
new TagParameter("key1","PageletModelUtils"),
new TagParameter("key2","Locale"),
new TagParameter("key0","Application"),
new TagParameter("value2",getObject("Locale")),
new TagParameter("value1",getObject("PageletModelUtils")),
new TagParameter("key3","PageletModelRepository"),
new TagParameter("value4",getObject("ContentRepository:UUID")),
new TagParameter("value3",getObject("PageletModelRepository")),
new TagParameter("key4","ContentRepositoryUUID"),
new TagParameter("value0",getObject("CurrentApplication")),
new TagParameter("mapname","params")}, 107); %><% processOpenTag(response, pageContext, "grid", new TagParameter[] {
new TagParameter("currentapplication",getObject("CurrentApplication")),
new TagParameter("columnstemplate","grid/ViewContextFallbacksColumns.isml"),
new TagParameter("configuration","viewcontextfallback"),
new TagParameter("datatemplate","grid/ViewContextFallbacksData.isml"),
new TagParameter("pageable",getObject("PageletModelUtils:OrderedPageletEntryPointViewContextAssignmentFallbacks(ViewContext)")),
new TagParameter("id","FallbackList"),
new TagParameter("pageablename","Fallback"),
new TagParameter("params",getObject("params"))}, 114); %><% out.print("</form>"); %><% } %><% printFooter(out); %>