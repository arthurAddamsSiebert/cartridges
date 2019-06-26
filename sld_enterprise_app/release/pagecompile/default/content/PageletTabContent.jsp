<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% processOpenTag(response, pageContext, "createmap", new TagParameter[] {
new TagParameter("key1","Locale"),
new TagParameter("key2","Pagelet"),
new TagParameter("key0","ContentRepository"),
new TagParameter("value2",getObject("Pagelet")),
new TagParameter("value1",getObject("Locale")),
new TagParameter("value0",getObject("ContentRepository")),
new TagParameter("mapname","ViewPageParams")}, 2); %><% {try{executePipeline("ViewPageletContent-TemplateCallback",((java.util.Map)(getObject("ViewPageParams"))),"Result");}catch(Exception e){Logger.error(this,"ISPIPELINE failed. Line: 6.",e);}} %><% processOpenTag(response, pageContext, "populatedictionary", new TagParameter[] {
new TagParameter("map",getObject("Result"))}, 7); %><% processOpenTag(response, pageContext, "pageletmodelutils", new TagParameter[] {
new TagParameter("PageletModelUtils","PageletModelUtils")}, 8); %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("Pagelet:PageletDefinition:Description:get(CurrentSession:Locale:LocaleID)")))).booleanValue() && ((Boolean) ((( ((Number) (new Double(context.getFormattedValue(getObject("Pagelet:PageletDefinition:Description:get(CurrentSession:Locale:LocaleID)"),null).length()))).doubleValue() >((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",9,e);}if (_boolean_result) { %><table cellpadding="0" cellspacing="0" border="0" width="100%">
<tr>
<td class="table_title_description w e s"><% {String value = null;try{value=context.getFormattedValue(getObject("Pagelet:PageletDefinition:Description:get(CurrentSession:Locale:LocaleID)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {12}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
</tr>
</table><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (hasLoopElements("Pagelet:PageletDefinition:ConfigurationParameterDefinitions") ? Boolean.TRUE : Boolean.FALSE)).booleanValue() || ((Boolean) (hasLoopElements("PageletModelUtils:SlotConfigurationParameterDefinitions(Pagelet:PageletDefinition)") ? Boolean.TRUE : Boolean.FALSE)).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",16,e);}if (_boolean_result) { %><!-- Content - Page Configuration Parameters --> 
<% URLPipelineAction action437 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPageletContent-Dispatch",null)))),null));String site437 = null;String serverGroup437 = null;String actionValue437 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPageletContent-Dispatch",null)))),null);if (site437 == null){  site437 = action437.getDomain();  if (site437 == null)  {      site437 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup437 == null){  serverGroup437 = action437.getServerGroup();  if (serverGroup437 == null)  {      serverGroup437 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPageletContent-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("setLocale");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue437, site437, serverGroup437,true)); %><table border="0" cellpadding="4" cellspacing="0" width="100%" class="infobox_locale w e s">
<tr>
<td nowrap="nowrap" class="label_select"><label class="label label_select label_light" for="LocaleId"><% {out.write(localizeISText("PageletTabContent.SelectLanguage.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td class="infobox_item">
<select name="LocaleId" id="LocaleId" class="select inputfield_en"><% while (loop("Result:Locales","Current",null)) { %><option value="<% {String value = null;try{value=context.getFormattedValue(getObject("Current:LocaleID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {25}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Current:LocaleID"),null).equals(context.getFormattedValue(getObject("Locale:LocaleID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",25,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {String value = null;try{value=context.getFormattedValue(getObject("Current:getDisplayName(CurrentSession:Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {25}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</option><% } %></select>
</td>
<td width="100%">
<table border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="button"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ContextPipeline"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",33,e);}if (_boolean_result) { %><input name="ContextPipeline" type="hidden" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ContextPipeline"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {34}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input name="<% {String value = null;try{value=context.getFormattedValue(getObject("parametername0"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {35}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" value="<% {String value = null;try{value=context.getFormattedValue(getObject("parametervalue0"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {35}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" type="hidden"/>
<input name="<% {String value = null;try{value=context.getFormattedValue(getObject("parametername1"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {36}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" value="<% {String value = null;try{value=context.getFormattedValue(getObject("parametervalue1"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {36}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" type="hidden"/>
<input name="<% {String value = null;try{value=context.getFormattedValue(getObject("parametername2"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {37}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" value="<% {String value = null;try{value=context.getFormattedValue(getObject("parametervalue2"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {37}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" type="hidden"/><% } %><input name="PageletUUID" type="hidden" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Pagelet:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {39}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input name="RepositoryUUID" type="hidden" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ContentRepository:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {40}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="PageLocatorName" value="<% {String value = null;try{value=context.getFormattedValue(getObject("PageLocatorName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {41}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="submit" name="setLocale" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PageletTabContent.Apply.button",null)),null)%>" class="button"/>
</td> 
</tr>
</table> 
</td>
</tr>
</table> 
<% out.print("</form>"); %><% } %> 
<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Pagelet:isTemplate"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",51,e);}if (_boolean_result) { %><div><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></div><% processOpenTag(response, pageContext, "pageletoverview", new TagParameter[] {
new TagParameter("Locale",getObject("Locale")),
new TagParameter("parametername0",getObject("parametername0")),
new TagParameter("parametervalue3",getObject("parametervalue3")),
new TagParameter("parametername1",getObject("parametername1")),
new TagParameter("parametervalue2",getObject("parametervalue2")),
new TagParameter("parametervalue1",getObject("parametervalue1")),
new TagParameter("parametername2",getObject("parametername2")),
new TagParameter("parametervalue0",getObject("parametervalue0")),
new TagParameter("parametername3",getObject("parametername3")),
new TagParameter("ContextPipeline",getObject("ContextPipeline")),
new TagParameter("ContentRepository",getObject("ContentRepository")),
new TagParameter("Pagelet",getObject("Pagelet"))}, 53); %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Pagelet:PageletDefinition:ConfigurationParameterDefinitions") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",67,e);}if (_boolean_result) { %><div><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></div> 
<% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("ContentRepository:TypeCode")).doubleValue() ==((Number)(new Double(21))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",69,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "configurationparameters", new TagParameter[] {
new TagParameter("parametervalue7",getObject("parametervalue2")),
new TagParameter("targetpipeline",getObject("ContextPipeline")),
new TagParameter("parametervalue6",getObject("parametervalue1")),
new TagParameter("parametervalue5",getObject("parametervalue0")),
new TagParameter("parametervalue4",getObject("Assignment:To:UUID")),
new TagParameter("PageLocatorName",getObject("PageLocatorName")),
new TagParameter("parametername0","PageletUUID"),
new TagParameter("parametervalue3",getObject("Assignment:UUID")),
new TagParameter("parametername1","RepositoryUUID"),
new TagParameter("parametervalue2",getObject("Locale:LocaleID")),
new TagParameter("parametervalue1",getObject("ContentRepository:UUID")),
new TagParameter("parametername2","LocaleId"),
new TagParameter("parametervalue0",getObject("Pagelet:UUID")),
new TagParameter("parametername3","AssignmentUUID"),
new TagParameter("locale",getObject("Locale")),
new TagParameter("CollapsibleFrame","true"),
new TagParameter("ContentRepository",getObject("ContentRepository")),
new TagParameter("parametername4","ContextObjectUUID"),
new TagParameter("parametername5",getObject("parametername0")),
new TagParameter("configurationparameterctnr",getObject("Pagelet")),
new TagParameter("parametername6",getObject("parametername1")),
new TagParameter("parametername7",getObject("parametername2"))}, 70); %><% } else { %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"content/ChannelModules", null, "94");} %><% processOpenTag(response, pageContext, "channelconfigurationparameters", new TagParameter[] {
new TagParameter("parametervalue7",getObject("parametervalue2")),
new TagParameter("targetpipeline",getObject("ContextPipeline")),
new TagParameter("parametervalue6",getObject("parametervalue1")),
new TagParameter("parametervalue5",getObject("parametervalue0")),
new TagParameter("parametervalue4",getObject("Assignment:To:UUID")),
new TagParameter("PageLocatorName",getObject("PageLocatorName")),
new TagParameter("parametername0","PageletUUID"),
new TagParameter("parametervalue3",getObject("Assignment:UUID")),
new TagParameter("parametername1","RepositoryUUID"),
new TagParameter("parametervalue2",getObject("Locale:LocaleID")),
new TagParameter("parametervalue1",getObject("ContentRepository:UUID")),
new TagParameter("parametername2","LocaleId"),
new TagParameter("parametervalue0",getObject("Pagelet:UUID")),
new TagParameter("parametername3","AssignmentUUID"),
new TagParameter("locale",getObject("Locale")),
new TagParameter("CollapsibleFrame","true"),
new TagParameter("SelectedTab",getObject("SelectedTab")),
new TagParameter("ContentRepository",getObject("ContentRepository")),
new TagParameter("parametername4","ContextObjectUUID"),
new TagParameter("parametername5",getObject("parametername0")),
new TagParameter("configurationparameterctnr",getObject("Pagelet")),
new TagParameter("parametername6",getObject("parametername1")),
new TagParameter("parametername7",getObject("parametername2"))}, 95); %><% } %><% } %><div class="sfe-dialog-hidden"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Pagelet:Parent"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",122,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "placeholderlist", new TagParameter[] {
new TagParameter("Locale",getObject("Locale")),
new TagParameter("parametervalue5",getObject("parametervalue2")),
new TagParameter("User",getObject("CurrentUser")),
new TagParameter("parametervalue4",getObject("parametervalue1")),
new TagParameter("PageLocatorName",getObject("PageLocatorName")),
new TagParameter("parametername0","PageletUUID"),
new TagParameter("parametervalue3",getObject("parametervalue0")),
new TagParameter("parametername1","RepositoryUUID"),
new TagParameter("parametervalue2",getObject("Locale:LocaleID")),
new TagParameter("parametervalue1",getObject("ContentRepository:UUID")),
new TagParameter("parametername2","LocaleId"),
new TagParameter("parametervalue0",getObject("Pagelet:UUID")),
new TagParameter("parametername3",getObject("parametername0")),
new TagParameter("ContextPipeline",getObject("ContextPipeline")),
new TagParameter("StartFlag",((((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("StartFlag")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("StartFlag"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("IsTabSwitched")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("IsTabSwitched"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE)),
new TagParameter("ContentRepository",getObject("ContentRepository")),
new TagParameter("parametername4",getObject("parametername1")),
new TagParameter("parametername5",getObject("parametername2")),
new TagParameter("Pagelet",getObject("Pagelet"))}, 123); %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("PageletModelUtils:SlotInclusionDefinitions(Pagelet:PageletDefinition)") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",143,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "slotlist", new TagParameter[] {
new TagParameter("slottargetpipeline",getObject("ContextPipeline")),
new TagParameter("PageLocatorName",getObject("PageLocatorName")),
new TagParameter("slotparametervalue2",getObject("Locale:LocaleID")),
new TagParameter("slotparametername3",getObject("parametername0")),
new TagParameter("slotparametername2","LocaleId"),
new TagParameter("slotparametervalue3",getObject("parametervalue0")),
new TagParameter("slotparametervalue4",getObject("parametervalue1")),
new TagParameter("slotparametername5",getObject("parametername2")),
new TagParameter("slotparametername4",getObject("parametername1")),
new TagParameter("slotparametervalue5",getObject("parametervalue2")),
new TagParameter("locale",getObject("Locale")),
new TagParameter("slotparametervalue0",getObject("Pagelet:UUID")),
new TagParameter("slotparametername1","RepositoryUUID"),
new TagParameter("StartFlag",((((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("StartFlag")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("StartFlag"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("IsTabSwitched")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("IsTabSwitched"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE)),
new TagParameter("slotparametername0","PageletUUID"),
new TagParameter("slotparametervalue1",getObject("ContentRepository:UUID")),
new TagParameter("pagelet",getObject("Pagelet")),
new TagParameter("ContentRepository",getObject("ContentRepository"))}, 144); %><% }} %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Pagelet:isTemplate"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",165,e);}if (_boolean_result) { %><div><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></div> 
<% processOpenTag(response, pageContext, "displayplaceholderdefinitions", new TagParameter[] {
new TagParameter("Locale",getObject("Locale")),
new TagParameter("Repository",getObject("ContentRepository")),
new TagParameter("Pagelet",getObject("Pagelet"))}, 167); %> 
<% } %></div><% printFooter(out); %>