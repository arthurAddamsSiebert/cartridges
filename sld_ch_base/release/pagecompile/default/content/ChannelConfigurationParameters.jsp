<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% {Object temp_obj = ("false"); getPipelineDictionary().put("isSomethingVisible", temp_obj);} %><% while (loop("ConfigurationParameterCtnr:ConfigurationParameterDefinitionCtnr:ConfigurationParameterDefinitions","cPD",null)) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("cPD:Visible"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",4,e);}if (_boolean_result) { %><% {Object temp_obj = ("true"); getPipelineDictionary().put("isSomethingVisible", temp_obj);} %><% if (getLoopStack().isEmpty()) {Logger.error(this,"ISBREAK occured outside ISLOOP. Line: {}",4);}else{getLoopStack().pop();break;} %><% } %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("isSomethingVisible"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",6,e);}if (_boolean_result) { %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/Modules", null, "7");} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"content/ChannelModules", null, "8");} %><% processOpenTag(response, pageContext, "pageletmodelutils", new TagParameter[] {
new TagParameter("PageletModelUtils","PageletModelUtils")}, 9); %><% processOpenTag(response, pageContext, "uidefinitionutils", new TagParameter[] {
new TagParameter("UIDefinitionUtils","UIDefinitionUtils")}, 10); %> 
<% processOpenTag(response, pageContext, "contentpermissionmap", new TagParameter[] {
new TagParameter("ContentRepository",getObject("ContentRepository")),
new TagParameter("PermissionMap","PermissionMap")}, 11); %><% processOpenTag(response, pageContext, "configurationparameterctnreditable", new TagParameter[] {
new TagParameter("ConfigurationParameterCtnr",getObject("ConfigurationParameterCtnr")),
new TagParameter("User",getObject("CurrentUser")),
new TagParameter("ContentRepository",getObject("ContentRepository")),
new TagParameter("PermissionMap",getObject("PermissionMap")),
new TagParameter("Result","IsPageletEditable")}, 12); %> 
<% {Object temp_obj = (replace(context.getFormattedValue(getObject("ConfigurationParameterCtnr:UUID"),null),(String)("\\."),(String)("-"))); getPipelineDictionary().put("ContainerIDSuffix", temp_obj);} %><script type="text/javascript" src="<%=context.getFormattedValue(context.webRoot(),null)%>/js/parameter.js"></script><% processOpenTag(response, pageContext, "createmap", new TagParameter[] {
new TagParameter("key1","DisplayOptionKey"),
new TagParameter("key0","DisplayOptionContainerID"),
new TagParameter("value1","PageletParameters_Open"),
new TagParameter("value0",context.getFormattedValue(getObject("TargetPipeline_PageletUUID"),null) + context.getFormattedValue("_DisplayOptions",null)),
new TagParameter("mapname","DisplayOptionParameters")}, 16); %><% {try{executePipeline("ViewDisplayOptions-GetDisplayOption",((java.util.Map)(getObject("DisplayOptionParameters"))),"DisplayOption");}catch(Exception e){Logger.error(this,"ISPIPELINE failed. Line: 19.",e);}} %><% _boolean_result=false;try {_boolean_result=((Boolean)(((!((Boolean) (disableErrorMessages().isDefined(getObject("DisplayOption:Value")))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("DisplayOption:Value"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",20,e);}if (_boolean_result) { %><% {Object temp_obj = ("true"); getPipelineDictionary().put("DisplayOption_Open", temp_obj);} %><% } else { %><% {Object temp_obj = ("false"); getPipelineDictionary().put("DisplayOption_Open", temp_obj);} %><% } %><% URLPipelineAction action87 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelConfigurationParameters-Dispatch",null)))),null));String site87 = null;String serverGroup87 = null;String actionValue87 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelConfigurationParameters-Dispatch",null)))),null);if (site87 == null){  site87 = action87.getDomain();  if (site87 == null)  {      site87 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup87 == null){  serverGroup87 = action87.getServerGroup();  if (serverGroup87 == null)  {      serverGroup87 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelConfigurationParameters-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("ConfigParametersForm");out.print("\"");out.print(" onsubmit=\"");out.print("selectOptionsForSubmit()");out.print("\"");out.print(" id=\"");out.print(context.getFormattedValue(context.getFormattedValue("cpo-form-",null) + context.getFormattedValue(getObject("ContainerIDSuffix"),null),null));out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue87, site87, serverGroup87,true)); %><!-- Configuration Parameter List --><% {Object temp_obj = (context.getFormattedValue("WebForm_",null) + context.getFormattedValue(getObject("ConfigurationParameterCtnr:UUID"),null)); getPipelineDictionary().put("WebFormKey", temp_obj);} %><% {Object temp_obj = (getObject("CurrentSession:Object(WebFormKey)")); getPipelineDictionary().put("ConfigurationParameterWebForm", temp_obj);} %><input type="hidden" name="PageLocatorName" value="<% {String value = null;try{value=context.getFormattedValue(getObject("PageLocatorName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {31}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><% _boolean_result=false;try {_boolean_result=((Boolean)(((!((Boolean) ((disableErrorMessages().isDefined(getObject("CollapsibleFrame"))))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("CollapsibleFrame"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",33,e);}if (_boolean_result) { %><% {Object temp_obj = ("false"); getPipelineDictionary().put("CollapsibleFrame", temp_obj);} %> 
<% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("CollapsibleFrame"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",38,e);}if (_boolean_result) { %> 
<% processOpenTag(response, pageContext, "pipelinecallutils", new TagParameter[] {
new TagParameter("Utils","URLUtils")}, 39); %> 
<% processOpenTag(response, pageContext, "createmap", new TagParameter[] {
new TagParameter("key1","DisplayOptionKey"),
new TagParameter("value6",getObject("PageLocatorName")),
new TagParameter("key2","DisplayOptionValue"),
new TagParameter("value5","true"),
new TagParameter("key0","DisplayOptionContainerID"),
new TagParameter("value2",(((Boolean) ((((context.getFormattedValue(getObject("DisplayOption_Open"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) ),
new TagParameter("key5","ContextPipeline_removeLastBreadCrumb"),
new TagParameter("value1","PageletParameters_Open"),
new TagParameter("key6","ContextPipeline_PageLocatorName"),
new TagParameter("key3","ContextPipeline"),
new TagParameter("value4",getObject("TargetPipelineMap")),
new TagParameter("value3",getObject("TargetPipelineMap:TargetPipeline")),
new TagParameter("key4","ContextPipeline_"),
new TagParameter("mapname","URLParameters"),
new TagParameter("value0",context.getFormattedValue(getObject("TargetPipeline_PageletUUID"),null) + context.getFormattedValue("_DisplayOptions",null))}, 40); %><table border="0" cellpadding="0" cellspacing="0" width="100%" class="aldi">
<tr>
<td class="table_title2" nowrap="nowrap" colspan="2">
<a href="<% {String value = null;try{value=context.getFormattedValue(getObject("URLUtils:URLFromMap(\"ViewDisplayOptions-SetDisplayOption\",URLParameters)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {52}",e);}if (value==null) value="";out.write(value);} %>" 
class="<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("DisplayOption_Open"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",53,e);}if (_boolean_result) { %>table_opened<% } else { %>table_closed<% } %>"><% {out.write(localizeISText("ChannelConfigurationParameters.Parameters.link",null,null,null,null,null,null,null,null,null,null,null,null));} %> 
</a>
</td>
</tr> 
</table> 
<% processOpenTag(response, pageContext, "configurationparametererrors", new TagParameter[] {
new TagParameter("ConfigurationParameterCtnr",getObject("ConfigurationParameterCtnr")),
new TagParameter("Locale",getObject("CurrentSession:Locale")),
new TagParameter("ContentRepository",getObject("ContentRepository")),
new TagParameter("Class","error_box w e s")}, 59); %> 
<% } %> 
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("DisplayOption_Open"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",66,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "uiscripthandlers", new TagParameter[] {
new TagParameter("ConfigurationParameterCtnr",getObject("ConfigurationParameterCtnr")),
new TagParameter("ContentRepository",getObject("ContentRepository"))}, 67); %><table cellpadding="0" cellspacing="0" border="0" width="100%" class="w e hover-table <% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) ((disableErrorMessages().isDefined(getObject("ConfigurationParameterCtnr:ParentPagelet"))))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",68,e);}if (_boolean_result) { %>s<% } %> <% {String value = null;try{value=context.getFormattedValue(getObject("Class"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {68}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ConfigurationParameterCtnr:ParentContainer"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",69,e);}if (_boolean_result) { %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"content/inc/UIScriptMessage", null, "70");} %><% } %><tr><td colspan="4"><img width="1" height="4" border="0" alt="" src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif"/></td></tr><% while (loop("ConfigurationParameterCtnr:ConfigurationParameterDefinitionCtnr:ConfigurationParameterDefinitions","ConfigurationParameterDefinition",null)) { %> 
<% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"content/ConfigurationParameterUIRow", null, "74");} %><% } %><tr><td colspan="4"><img width="1" height="4" border="0" alt="" src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif"/></td></tr>
</table>
<table cellpadding="0" cellspacing="0" border="0" width="100%" class="w e s sfe-hidden <% {String value = null;try{value=context.getFormattedValue(getObject("Class"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {78}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>">
<tr>
<td colspan="4" align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr class="cpo-non-revert-buttons"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ConfigurationParameterCtnr:ParentContainer"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",83,e);}if (_boolean_result) { %><td class="button">
<input type="button" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ChannelConfigurationParameters.RevertToInheritedValues.button",null)),null)%>" class="button cpo-action-start-revert<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (getObject("IsPageletEditable"))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",85,e);}if (_boolean_result) { %> cpo-disabled<% } %>" id="sfe-start-revert-<% {String value = null;try{value=context.getFormattedValue(getObject("ContainerIDSuffix"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {85}",e);}if (value==null) value="";out.write(value);} %>" <% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (getObject("IsPageletEditable"))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",85,e);}if (_boolean_result) { %>disabled="disabled"<% } %>/>
</td> 
<% } %> 
<td class="button">
<input type="hidden" name="ChannelID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ChannelID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {89}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" />
<input name="LocaleId" type="hidden" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Locale:LocaleID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {90}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input name="ConfigurationParameterCtnrUUID" type="hidden" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ConfigurationParameterCtnr:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {91}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input name="ContentRepositoryUUID" type="hidden" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ContentRepository:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {92}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" />
<input type="submit" name="Update" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ChannelConfigurationParameters.Apply.button",null)),null)%>" class="button sfe-action-inline sfe-layout-change" id="sfe-save-<% {String value = null;try{value=context.getFormattedValue(getObject("ContainerIDSuffix"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {93}",e);}if (value==null) value="";out.write(value);} %>" <% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (getObject("IsPageletEditable"))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",93,e);}if (_boolean_result) { %>disabled="disabled"<% } %>/>
</td>
<td class="button"><% while (loop("TargetPipelineMap:KeySet","Key",null)) { %><input name="<% {String value = null;try{value=context.getFormattedValue(context.getFormattedValue("TargetPipeline_",null) + context.getFormattedValue(getObject("Key"),null),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {97}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" type="hidden" value="<% {String value = null;try{value=context.getFormattedValue(getObject("TargetPipelineMap:get(Key)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {97}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><% } %><input type="submit" name="reset" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ChannelConfigurationParameters.Reset.button",null)),null)%>" class="button sfe-action-inline" id="sfe-reset-<% {String value = null;try{value=context.getFormattedValue(getObject("ContainerIDSuffix"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {99}",e);}if (value==null) value="";out.write(value);} %>" <% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (getObject("IsPageletEditable"))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",99,e);}if (_boolean_result) { %>disabled="disabled"<% } %>/>
</td>
</tr>
<tr class="cpo-hidden cpo-revert-buttons">
<td class="button">
<input type="submit" name="RevertToInheriting" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ChannelConfigurationParameters.Revert.button",null)),null)%>" class="button sfe-action-inline sfe-layout-change" id="sfe-revert-<% {String value = null;try{value=context.getFormattedValue(getObject("ContainerIDSuffix"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {104}",e);}if (value==null) value="";out.write(value);} %>"/>
</td>
<td class="button">
<input type="button" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ChannelConfigurationParameters.Cancel.button",null)),null)%>" class="button cpo-action-cancel-revert" id="sfe-cancel-revert-<% {String value = null;try{value=context.getFormattedValue(getObject("ContainerIDSuffix"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {107}",e);}if (value==null) value="";out.write(value);} %>"/>
</td>
</tr>
</table>
</td>
</tr>
</table><% } %><% out.print("</form>"); %><% } %><% printFooter(out); %>