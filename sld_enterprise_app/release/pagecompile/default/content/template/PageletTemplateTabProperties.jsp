<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/Modules", null, "2");} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"content/Modules", null, "3");} %><% processOpenTag(response, pageContext, "createmap", new TagParameter[] {
new TagParameter("key1","ContentRepository"),
new TagParameter("key2","ContextObject"),
new TagParameter("key0","Pagelet"),
new TagParameter("value2",getObject("Assignment:To")),
new TagParameter("value1",getObject("ContentRepository")),
new TagParameter("key3","Assignment"),
new TagParameter("value3",getObject("Assignment")),
new TagParameter("value0",getObject("Pagelet")),
new TagParameter("mapname","PageletTemplatePropertiesParams")}, 5); %><% {try{executePipeline("ViewPageletTemplateProperties-TemplateCallback",((java.util.Map)(getObject("PageletTemplatePropertiesParams"))),"Result");}catch(Exception e){Logger.error(this,"ISPIPELINE failed. Line: 10.",e);}} %><% processOpenTag(response, pageContext, "populatedictionary", new TagParameter[] {
new TagParameter("map",getObject("Result"))}, 11); %><% processOpenTag(response, pageContext, "contentpermissionmap", new TagParameter[] {
new TagParameter("ContentRepository",getObject("ContentRepository")),
new TagParameter("PermissionMap","PermissionMap")}, 12); %><% processOpenTag(response, pageContext, "pageletmodelutils", new TagParameter[] {
new TagParameter("PageletModelUtils","PageletModelUtils")}, 13); %><% processOpenTag(response, pageContext, "pageleteditable", new TagParameter[] {
new TagParameter("User",getObject("CurrentUser")),
new TagParameter("ContentRepository",getObject("ContentRepository")),
new TagParameter("PageletLockedForOther","PageletLockedForOther"),
new TagParameter("Pagelet",getObject("Pagelet")),
new TagParameter("Result","IsPageletEditable")}, 14); %><% {Object temp_obj = ((disableErrorMessages().isDefined(getObject("PermissionMap:SLD_MANAGE_TEMPLATES")))); getPipelineDictionary().put("HasEditPermission", temp_obj);} %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Assignment"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",16,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "pageletassignmenteditable", new TagParameter[] {
new TagParameter("Assignment",getObject("Assignment")),
new TagParameter("User",getObject("CurrentUser")),
new TagParameter("ContentRepository",getObject("ContentRepository")),
new TagParameter("Result","IsPageletAssignmentEditable")}, 17); %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("HasEditPermission")).booleanValue() && ((Boolean) (((((Boolean) getObject("EditPagelet:Name:isMissing")).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("ErrorCode")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("AssignmentFromIncorrect")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("AssignmentToIncorrect")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("AssignmentPeriodIncorrect")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",21,e);}if (_boolean_result) { %><% {Object temp_obj = ((( ((Number) new Double(1)).doubleValue() ==((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE)); getPipelineDictionary().put("ValidationError", temp_obj);} %><table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr>
<td class="error_icon middle e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error top" width="100%"><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Pagelet:Page"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",27,e);}if (_boolean_result) { %><% {out.write(localizeISText("PageletTemplateTabProperties.ThePageTemplateCouldNotBeUpdated.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else { %><% {out.write(localizeISText("PageletTemplateTabProperties.TheComponentTemplateCouldNotBeUpdated.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("EditPagelet:Name:isMissing"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",32,e);}if (_boolean_result) { %><br/><% {out.write(localizeISText("PageletTemplateTabProperties.PleaseProvideAName.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("AssignmentFromIncorrect"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",35,e);}if (_boolean_result) { %><br/><% {out.write(localizeISText("PageletTemplateTabProperties.PleaseProvideACorrectFromDate.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("AssignmentToIncorrect"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",38,e);}if (_boolean_result) { %><br/><% {out.write(localizeISText("PageletTemplateTabProperties.PleaseProvideACorrectUntilDate.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("AssignmentPeriodIncorrect"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",41,e);}if (_boolean_result) { %><br/><% {out.write(localizeISText("PageletTemplateTabProperties.InvalidVisibilityPeriodFromDateMustBeBeforeUntilDa.error",null,null,null,null,null,null,null,null,null,null,null,null));} %> 
<% } %></td>
</tr>
</table><% } %><% processOpenTag(response, pageContext, "editpageleterror", new TagParameter[] {
}, 48); %><% URLPipelineAction action455 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPageletTemplateProperties-Dispatch",null)))),null));String site455 = null;String serverGroup455 = null;String actionValue455 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPageletTemplateProperties-Dispatch",null)))),null);if (site455 == null){  site455 = action455.getDomain();  if (site455 == null)  {      site455 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup455 == null){  serverGroup455 = action455.getServerGroup();  if (serverGroup455 == null)  {      serverGroup455 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPageletTemplateProperties-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("formMask");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue455, site455, serverGroup455,true)); %><input type="hidden" name="DatePattern" value="<% {String value = null;try{value=context.getFormattedValue(getObject("CurrentSession:Locale:DefaultRegionalSettings:inputDatePattern"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {52}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>,<% {String value = null;try{value=context.getFormattedValue(getObject("CurrentSession:Locale:DefaultRegionalSettings:inputTimePattern"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {52}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="PageletUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Pagelet:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {53}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="ContentRepositoryUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ContentRepository:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {54}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="ContextObjectUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ContextObject:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {55}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="PageLocatorName" value="<% {String value = null;try{value=context.getFormattedValue(getObject("PageLocatorName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {56}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="ContextPipeline" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ContextPipeline"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {57}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Assignment"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",58,e);}if (_boolean_result) { %><input type="hidden" name="AssignmentUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Assignment:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {59}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("HasEditPermission"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",62,e);}if (_boolean_result) { %><table border="0" cellpadding="0" cellspacing="0" width="100%"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Result:confirmDelete"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",65,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Pagelet:DomainID"),null).equals(context.getFormattedValue(getObject("ContentRepository:RepositoryDomainID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",66,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Pagelet:Page"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",67,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Pagelet:hasChildren"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",68,e);}if (_boolean_result) { %><% {Object temp_obj = (localizeText(context.getFormattedValue("PageletTemplateTabProperties.DeletingThisPageTemplateDeletesAllDerivedPageTempl.value",null))); getPipelineDictionary().put("MessageText", temp_obj);} %><% } else { %><% {Object temp_obj = (localizeText(context.getFormattedValue("PageletTemplateTabProperties.AreYouSureThatYouWantToDeleteThePageTemplate.value",null))); getPipelineDictionary().put("MessageText", temp_obj);} %><% } %><% } else { %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Pagelet:hasChildren"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",74,e);}if (_boolean_result) { %><% {Object temp_obj = (localizeText(context.getFormattedValue("PageletTemplateTabProperties.DeletingThisPageTemplateDeletesAllDerivedPageTempl.value1",null))); getPipelineDictionary().put("MessageText", temp_obj);} %><% } else { %><% {Object temp_obj = (localizeText(context.getFormattedValue("PageletTemplateTabProperties.AreYouSureThatYouWantToDeleteTheComponentTemplate.value",null))); getPipelineDictionary().put("MessageText", temp_obj);} %><% } %><% } %><% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("cancelbtnname","cancel"),
new TagParameter("okbtnname","delete"),
new TagParameter("okbtnclass","sfe-action-inline sfe-layout-change"),
new TagParameter("message",getObject("MessageText")),
new TagParameter("type","sdc"),
new TagParameter("cancelbtnclass","sfe-action-inline")}, 80); %><% } %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Result:PageletLockedForOther"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",87,e);}if (_boolean_result) { %><tr>
<td>
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr>
<td class="error_icon middle e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error top" width="100%"><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Pagelet:Page"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",94,e);}if (_boolean_result) { %><% {out.write(localizeISText("PageletTemplateTabProperties.TheSelectedPageTemplateCouldNotBeDeletedSinceItSel.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else { %><% {out.write(localizeISText("PageletTemplateTabProperties.TheSelectedComponentTemplateCouldNotBeDeletedSince.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %></td>
</tr>
</table>
</td>
</tr><% }} %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("Result:confirmUnassign")))).booleanValue() && ((Boolean) (((((Boolean) ((((context.getFormattedValue(getObject("IsPageletEditable"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) (getObject("IsPageletAssignmentEditable"))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",106,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("subject",localizeText(context.getFormattedValue("PageletTemplateTabProperties.Component.subject",null))),
new TagParameter("cancelbtnname","cancel"),
new TagParameter("okbtnname","unassign"),
new TagParameter("okbtnclass","sfe-action-inline sfe-layout-change"),
new TagParameter("message",localizeText(context.getFormattedValue("PageletTemplateTabProperties.AreYouSureThatYouWantToUnassignTheTemplateComponen.message",null))),
new TagParameter("type","mdc"),
new TagParameter("cancelbtnclass","sfe-action-inline")}, 107); %><% } %><tr>
<td class="table_title_description w e s" colspan="2"><% {out.write(localizeISText("sld_enterprise_app.FieldsWithARedAsterisk.table_title_description",null,null,"star",null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% } %><table border="0" cellpadding="4" cellspacing="0" width="100%" class="infobox_locale w e s">
<tr>
<td nowrap="nowrap" class="label_select"><label class="label label_select label_light" for="LocaleId"><% {out.write(localizeISText("PageletTemplateTabProperties.SelectLanguage.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td class="infobox_item">
<select name="LocaleId" id="LocaleId" class="select inputfield_en"><% while (loop("Locales","Locales",null)) { %><option value="<% {String value = null;try{value=context.getFormattedValue(getObject("Locales:LocaleID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {128}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Locales:LocaleID"),null).equals(context.getFormattedValue(getObject("Locale:LocaleID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",128,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {String value = null;try{value=context.getFormattedValue(getObject("Locales:getDisplayName(CurrentSession:Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {128}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</option><% } %></select>
</td>
<td width="100%">
<table border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="button">
<input type="submit" name="setLocale" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PageletTemplateTabProperties.Apply.button",null)),null)%>" class="button sfe-action-inline"/>
</td>
</tr>
</table>
</td>
</tr>
</table>
<table class="w e" cellpadding="0" cellspacing="0" border="0" width="100%">
<tr><td colspan="2"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="4" alt="" border="0"/></td></tr>
<tr>
<td nowrap="nowrap" class="label">
<label class="label <% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("EditPagelet:Name:isMissing"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",149,e);}if (_boolean_result) { %>label_error<% } %>" for="EditPagelet_Name"><% {out.write(localizeISText("PageletTemplateTabProperties.Name.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></label>
</td>
<td class="table_detail" width="100%">
<input type="text" name="EditPagelet_Name" id="EditPagelet_Name" maxlength="256" size="50" class="inputfield_en <% _boolean_result=false;try {_boolean_result=((Boolean)(((!((Boolean) (getObject("IsPageletEditable"))).booleanValue() || !((Boolean) (getObject("HasEditPermission"))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",152,e);}if (_boolean_result) { %>disabled<% } %>"
value="<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ValidationError"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",153,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("EditPagelet:Name:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {153}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %><% processOpenTag(response, pageContext, "pageletdisplayname", new TagParameter[] {
new TagParameter("Locale",getObject("Locale")),
new TagParameter("Pagelet",getObject("Pagelet"))}, 153); %><% } %>"
<% _boolean_result=false;try {_boolean_result=((Boolean)(((!((Boolean) (getObject("IsPageletEditable"))).booleanValue() || !((Boolean) (getObject("HasEditPermission"))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",154,e);}if (_boolean_result) { %>readonly="readonly"<% } %>
/><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PermissionMap:SLD_VIEW_STOREFRONT"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",156,e);}if (_boolean_result) { %><span class="fielditem3"><% processOpenTag(response, pageContext, "previewpagelet", new TagParameter[] {
new TagParameter("contextParameter2","SelectedTab"),
new TagParameter("contextParameter3","PageLocatorName"),
new TagParameter("contextValue0",getObject("ContentRepository:UUID")),
new TagParameter("contextValue1",getObject("Pagelet:UUID")),
new TagParameter("contextParameter0","ContentRepositoryUUID"),
new TagParameter("contextParameter1","PageletUUID"),
new TagParameter("PageFlag",getObject("Pagelet:Page")),
new TagParameter("contextPipeline","ViewPagelet-View"),
new TagParameter("ContentRepository",getObject("ContentRepository")),
new TagParameter("contextValue2","Properties"),
new TagParameter("contextValue3",getObject("PageLocatorName")),
new TagParameter("TemplateFlag","true"),
new TagParameter("Pagelet",getObject("Pagelet"))}, 158); %></span><% } %><input type="hidden" name="EditPagelet_Online" value="true" /><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (getObject("Pagelet:Online"))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",171,e);}if (_boolean_result) { %><span class="fielditem3">
<label class=""><% {out.write(localizeISText("PageletTemplateTabProperties.NotActive.label","",null,null,null,null,null,null,null,null,null,null,null));} %></label>
</span><% } %></td>
</tr>
<tr>
<td nowrap="nowrap" class="label">
<label class="label" for="EditPagelet_PageletID"><% {out.write(localizeISText("PageletTemplateTabProperties.ID.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></label>
</td>
<td class="table_detail">
<input type="text" name="EditPagelet_PageletID" id="EditPagelet_PageletID" maxlength="256" size="50" readonly="readonly" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Pagelet:Id"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {183}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="inputfield_en disabled"/>
</td>
</tr>
<tr>
<td nowrap="nowrap" class="label_textarea">
<label class="label label_textarea" for="EditPagelet_Description"><% {out.write(localizeISText("PageletTemplateTabProperties.Description.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label>
</td>
<td class="table_detail">
<textarea rows="5" cols="50" name="EditPagelet_Description" id="EditPagelet_Description" class="inputfield_en"
<% _boolean_result=false;try {_boolean_result=((Boolean)(((!((Boolean) (getObject("IsPageletEditable"))).booleanValue() || !((Boolean) (getObject("HasEditPermission"))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",192,e);}if (_boolean_result) { %>disabled="disabled"<% } %>
><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ValidationError"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",193,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("EditPagelet:Description:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {193}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %><% {String value = null;try{value=context.getFormattedValue(getObject("Pagelet:Description(Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {193}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %></textarea>
</td>
</tr>
<tr>
<td nowrap="nowrap" class="label">
<label class="label" for="ParentPageletDisplayName"><% {out.write(localizeISText("PageletTemplateTabProperties.Parent.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></label>
</td>
<td class="table_detail"><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Pagelet:hasParent"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",201,e);}if (_boolean_result) { %><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPagelet-View",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SelectedTab",null),context.getFormattedValue("Properties",null))).addURLParameter(context.getFormattedValue("PageletUUID",null),context.getFormattedValue(getObject("Pagelet:Parent:UUID"),null)).addURLParameter(context.getFormattedValue("ContentRepositoryUUID",null),context.getFormattedValue(getObject("ContentRepository:UUID"),null)).addURLParameter(context.getFormattedValue("PageLocatorName",null),context.getFormattedValue(context.getFormattedValue(getObject("Pagelet:Parent:UUID"),null) + context.getFormattedValue("_CompSearchContainer",null),null))),null)%>" class="overview_subtitle sfe-action-dialog" title="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PageletTemplateTabProperties.TemplateProperties.link",null)),null)%>"><% processOpenTag(response, pageContext, "pageletdisplayname", new TagParameter[] {
new TagParameter("Locale",getObject("Locale")),
new TagParameter("Pagelet",getObject("Pagelet:Parent"))}, 203); %></a><% } else { %><input type="text" name="ParentPageletDisplayName" id="ParentPageletDisplayName" maxlength="256" size="50" class="inputfield_en disabled" readonly="readonly"
value="<% {String value = null;try{value=context.getFormattedValue(getObject("PageletModelUtils:DisplayName(Pagelet:PageletDefinition,Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {207}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
title="<% {String value = null;try{value=context.getFormattedValue(getObject("Pagelet:DefinitionQualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {208}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" 
/><% } %></td>
</tr>
<tr>
<td nowrap="nowrap" class="label">
<label class="label" for="EditPagelet_Group"><% {out.write(localizeISText("PageletTemplateTabProperties.Group.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label>
</td>
<td class="table_detail">
<input type="text" name="EditPagelet_Group" id="EditPagelet_Group" readonly="readonly" size="50" value="<% {String value = null;try{value=context.getFormattedValue(getObject("PageletModelUtils:DisplayGroup(Pagelet:PageletDefinition,Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {218}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="inputfield_en disabled"/>
</td>
</tr>
<tr>
<td nowrap="nowrap" class="label_select_multiple">
<label class="label label_select_multiple" for="EditPagelet_ApplicationTypes"><% {out.write(localizeISText("PageletTemplateTabProperties.ApplicationTypes.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label>
</td>
<td class="table_detail">
<select size="5" name="EditPagelet_ApplicationTypes" id="EditPagelet_ApplicationTypes" class="inputfield_en disabled" readonly="readonly" style="min-width: 200px"><% while (loop("PageletModelUtils:ApplicationTypes(Pagelet)","type",null)) { %><option><% {String value = null;try{value=context.getFormattedValue(getObject("type:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {228}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></option><% } %></select>
</td>
</tr>
<tr><td class="s" colspan="2"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="4" alt="" border="0"/></td></tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Assignment"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",236,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "assignmentstrategy", new TagParameter[] {
new TagParameter("AssignmentStrategy","AssignStrategy"),
new TagParameter("PositionableHelper","PositionableHelper"),
new TagParameter("ContextObject",getObject("ContextObject")),
new TagParameter("FromClass","com.intershop.component.pmc.capi.pagelet.Pagelet"),
new TagParameter("Domain",getObject("Assignment:Domain"))}, 237); %><tr>
<td class="infobox_locale infobox_item s" style="padding: 4px;" nowrap="nowrap" colspan="9"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ContextObjectName"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",240,e);}if (_boolean_result) { %><% {out.write(localizeISText("PageletTemplateTabProperties.PriorityAndVisibilityFor.infobox_locale",null,null,encodeString(context.getFormattedValue(getObject("ContextObjectName"),null)),null,null,null,null,null,null,null,null,null));} %><% } else { %><% {out.write(localizeISText("PageletTemplateTabProperties.PriorityAndVisibilityFor.infobox_locale",null,null,encodeString(context.getFormattedValue(getObject("ContextObject:Name"),null)),null,null,null,null,null,null,null,null,null));} %><% } %></td>
</tr>
<tr>
<td nowrap="nowrap" class="label_select">
<label class="label label_select" for="EditPagelet_AssignmentPosition"><% {out.write(localizeISText("PageletTemplateTabProperties.Priority.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></label>
</td>
<td class="fielditem2"><% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("PositionableHelper:PositionablesCount")).doubleValue() ==((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",252,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("IsPage"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",253,e);}if (_boolean_result) { %><% {out.write(localizeISText("PageletTemplateTabProperties.ThisIsTheOnlyPageItIsAssignedWithTheHighestPriorit.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else { %><% {out.write(localizeISText("PageletTemplateTabProperties.ThisIsTheOnlyPageComponentItIsAssignedWithTheHighe.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %><% } else { %><% processOpenTag(response, pageContext, "getcontentsharinghelper", new TagParameter[] {
new TagParameter("ContentSharingHelper","SharingHelper"),
new TagParameter("RepositoryDomain",getObject("ContentRepository:RepositoryDomain"))}, 259); %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("IsPageletAssignmentEditable"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",260,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "positionselect", new TagParameter[] {
new TagParameter("ReadOnly",((!((Boolean) (getObject("IsPageletAssignmentEditable"))).booleanValue() || !((Boolean) (getObject("HasEditPermission"))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE)),
new TagParameter("CurrentPosition",getObject("Assignment:Position")),
new TagParameter("SelectName","EditPagelet_AssignmentPosition"),
new TagParameter("SelectClass","select inputfield_en"),
new TagParameter("Positionables",getObject("SharingHelper:LocalAssignments(Assignments)"))}, 261); %><% } else { %><% processOpenTag(response, pageContext, "positionselect", new TagParameter[] {
new TagParameter("ReadOnly",((!((Boolean) (getObject("IsPageletAssignmentEditable"))).booleanValue() || !((Boolean) (getObject("HasEditPermission"))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE)),
new TagParameter("CurrentPosition",getObject("Assignment:Position")),
new TagParameter("SelectName","EditPagelet_AssignmentPosition"),
new TagParameter("SelectClass","select inputfield_en"),
new TagParameter("Positionables",getObject("Assignments"))}, 268); %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("IsPage"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",275,e);}if (_boolean_result) { %>
(<% {out.write(localizeISText("PageletTemplateTabProperties.Currently0PagesAssigned.table_detail",null,null,context.getFormattedValue(getObject("PositionableHelper:PositionablesCount"),null),null,null,null,null,null,null,null,null,null));} %>)
<% } else { %>
(<% {out.write(localizeISText("PageletTemplateTabProperties.Currently0ComponentsAssigned.table_detail",null,null,context.getFormattedValue(getObject("PositionableHelper:PositionablesCount"),null),null,null,null,null,null,null,null,null,null));} %>)
<% } %><% } %></td>
</tr>
<tr><td class="fielditem2" colspan="2"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="4" alt="" border="0"/></td></tr>
<tr>
<td class="label_radio" nowrap="nowrap">
<label class="label label_radio" for=""><% {out.write(localizeISText("PageletTemplateTabProperties.Visibility.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></label>
</td>
<td>
<table cellpadding="0" cellspacing="0" border="0">
<tr>
<td class="input_radio">
<input name="EditPagelet_AssignmentOnline" id="EditPagelet_AssignmentOnline_false" value="false" type="radio" 
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Assignment:Active"),null).equals(context.getFormattedValue("false",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",293,e);}if (_boolean_result) { %>checked="checked"<% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((!((Boolean) (getObject("IsPageletAssignmentEditable"))).booleanValue() || !((Boolean) (getObject("HasEditPermission"))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",294,e);}if (_boolean_result) { %>disabled="disabled"<% } %> 
/>
</td>
<td class="label_radio_text">
<label class="label label_radio_text" for="EditPagelet_AssignmentOnline_false"><% {out.write(localizeISText("PageletTemplateTabProperties.Hidden.label",null,null,null,null,null,null,null,null,null,null,null,null));} %></label>
</td>
</tr>
</table>
</td>
</tr>
<tr>
<td></td>
<td>
<table cellpadding="0" cellspacing="0" border="0">
<tr>
<td class="input_radio label_fix1">
<input name="EditPagelet_AssignmentOnline" id="EditPagelet_AssignmentOnline_true" value="true" type="radio"
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Assignment:Active"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",311,e);}if (_boolean_result) { %>checked="checked"<% } %> 
<% _boolean_result=false;try {_boolean_result=((Boolean)(((!((Boolean) (getObject("IsPageletAssignmentEditable"))).booleanValue() || !((Boolean) (getObject("HasEditPermission"))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",312,e);}if (_boolean_result) { %>disabled="disabled"<% } %> />
</td>
<td class="label_radio_text label_fix1">
<label class="label label_radio_text" for="EditPagelet_AssignmentOnline_true"><% {out.write(localizeISText("PageletTemplateTabProperties.Visible.label",null,null,null,null,null,null,null,null,null,null,null,null));} %></label>
</td>
</tr>
<tr>
<td></td>
<td>
<table cellpadding="0" cellspacing="0" border="0">
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Assignment:ValidFrom"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",323,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "dateinput", new TagParameter[] {
new TagParameter("InputFieldName","AssignmentValidFrom_Day"),
new TagParameter("readonly",((!((Boolean) (getObject("IsPageletAssignmentEditable"))).booleanValue() || !((Boolean) (getObject("HasEditPermission"))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE)),
new TagParameter("InputFieldLabel",localizeText(context.getFormattedValue("PageletTemplateTabProperties.From.InputFieldLabel",null))),
new TagParameter("DateString",getObject("Result:AssignmentValidFrom_Day")),
new TagParameter("DateObject",getObject("Assignment:ValidFrom")),
new TagParameter("Invalid",((((Boolean) (disableErrorMessages().isDefined(getObject("AssignmentFromIncorrect")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("AssignmentPeriodIncorrect")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))}, 324); %><% processOpenTag(response, pageContext, "timeinput", new TagParameter[] {
new TagParameter("InputFieldName","AssignmentValidFrom_Time"),
new TagParameter("TimeString",getObject("Result:AssignmentValidFrom_Time")),
new TagParameter("readonly",((!((Boolean) (getObject("IsPageletAssignmentEditable"))).booleanValue() || !((Boolean) (getObject("HasEditPermission"))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE)),
new TagParameter("DateObject",getObject("Assignment:ValidFrom")),
new TagParameter("Invalid",((((Boolean) (disableErrorMessages().isDefined(getObject("AssignmentFromIncorrect")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("AssignmentPeriodIncorrect")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))}, 332); %><% } else { %><% processOpenTag(response, pageContext, "dateinput", new TagParameter[] {
new TagParameter("InputFieldName","AssignmentValidFrom_Day"),
new TagParameter("readonly",((!((Boolean) (getObject("IsPageletAssignmentEditable"))).booleanValue() || !((Boolean) (getObject("HasEditPermission"))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE)),
new TagParameter("InputFieldLabel",localizeText(context.getFormattedValue("PageletTemplateTabProperties.From.InputFieldLabel",null))),
new TagParameter("DateString",getObject("Result:AssignmentValidFrom_Day")),
new TagParameter("Invalid",((((Boolean) (disableErrorMessages().isDefined(getObject("AssignmentFromIncorrect")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("AssignmentPeriodIncorrect")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))}, 340); %><% processOpenTag(response, pageContext, "timeinput", new TagParameter[] {
new TagParameter("InputFieldName","AssignmentValidFrom_Time"),
new TagParameter("TimeString",getObject("Result:AssignmentValidFrom_Time")),
new TagParameter("readonly",((!((Boolean) (getObject("IsPageletAssignmentEditable"))).booleanValue() || !((Boolean) (getObject("HasEditPermission"))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE)),
new TagParameter("Invalid",((((Boolean) (disableErrorMessages().isDefined(getObject("AssignmentFromIncorrect")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("AssignmentPeriodIncorrect")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))}, 347); %><% } %></tr>
<tr><% processOpenTag(response, pageContext, "dateinput", new TagParameter[] {
new TagParameter("InputFieldName","AssignmentValidTo_Day"),
new TagParameter("readonly",((!((Boolean) (getObject("IsPageletAssignmentEditable"))).booleanValue() || !((Boolean) (getObject("HasEditPermission"))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE)),
new TagParameter("InputFieldLabel",localizeText(context.getFormattedValue("PageletTemplateTabProperties.Until.InputFieldLabel",null))),
new TagParameter("DateString",getObject("Result:AssignmentValidTo_Day")),
new TagParameter("DateObject",getObject("Assignment:ValidTo")),
new TagParameter("Invalid",((((Boolean) (disableErrorMessages().isDefined(getObject("AssignmentToIncorrect")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("AssignmentPeriodIncorrect")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))}, 356); %><% processOpenTag(response, pageContext, "timeinput", new TagParameter[] {
new TagParameter("InputFieldName","AssignmentValidTo_Time"),
new TagParameter("TimeString",getObject("Result:AssignmentValidTo_Time")),
new TagParameter("readonly",((!((Boolean) (getObject("IsPageletAssignmentEditable"))).booleanValue() || !((Boolean) (getObject("HasEditPermission"))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE)),
new TagParameter("DateObject",getObject("Assignment:ValidTo")),
new TagParameter("Invalid",((((Boolean) (disableErrorMessages().isDefined(getObject("AssignmentToIncorrect")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("AssignmentPeriodIncorrect")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))}, 364); %></tr>
</table>
</td>
</tr>
</table>
</td>
</tr>
<tr><td class="fielditem2 s" colspan="2"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="4" alt="" border="0"/></td></tr><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("HasEditPermission"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",381,e);}if (_boolean_result) { %><tr class="sfe-hidden">
<td align="right" class="s" colspan="2">
<table border="0" cellspacing="4" cellpadding="0">
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("IsPageletEditable"),null).equals(context.getFormattedValue("false",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",386,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("IsPageletAssignmentEditable"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",387,e);}if (_boolean_result) { %><td class="button"><input type="submit" name="update" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PageletTemplateTabProperties.Apply.button",null)),null)%>" class="button sfe-action-inline sfe-layout-change" id="sfe-save-<% {String value = null;try{value=context.getFormattedValue(replace(context.getFormattedValue(getObject("Pagelet:UUID"),null),(String)("\\."),(String)("-")),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {388}",e);}if (value==null) value="";out.write(value);} %>"/></td>
<td class="button"><input type="reset" name="reset" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PageletTemplateTabProperties.Reset.button",null)),null)%>" class="button sfe-action-inline" id="sfe-reset-<% {String value = null;try{value=context.getFormattedValue(replace(context.getFormattedValue(getObject("Pagelet:UUID"),null),(String)("\\."),(String)("-")),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {389}",e);}if (value==null) value="";out.write(value);} %>"/></td><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("IsCopyPossible"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",391,e);}if (_boolean_result) { %><td class="button">
<input type="hidden" name="CopyOfPrefix" value="Copy of "/>
<input type="submit" name="copy" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PageletTemplateTabProperties.Copy.button",null)),null)%>" class="button sfe-action-dialog" id="sfe-copy-<% {String value = null;try{value=context.getFormattedValue(replace(context.getFormattedValue(getObject("Pagelet:UUID"),null),(String)("\\."),(String)("-")),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {394}",e);}if (value==null) value="";out.write(value);} %>"/>
</td><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("IsPageletAssignmentEditable"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",397,e);}if (_boolean_result) { %><td class="button">
<input type="submit" name="confirmUnassign" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PageletTemplateTabProperties.Unassign.button",null)),null)%>" class="button sfe-action-inline" id="sfe-unassign-<% {String value = null;try{value=context.getFormattedValue(replace(context.getFormattedValue(getObject("Pagelet:UUID"),null),(String)("\\."),(String)("-")),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {399}",e);}if (value==null) value="";out.write(value);} %>"/>
</td><% } %><% } else { %><td class="button">
<input type="submit" name="update" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PageletTemplateTabProperties.Apply.button",null)),null)%>" class="button sfe-action-inline sfe-layout-change" id="sfe-save-<% {String value = null;try{value=context.getFormattedValue(replace(context.getFormattedValue(getObject("Pagelet:UUID"),null),(String)("\\."),(String)("-")),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {404}",e);}if (value==null) value="";out.write(value);} %>"/>
</td>
<td class="button">
<input type="reset" name="reset" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PageletTemplateTabProperties.Reset.button",null)),null)%>" class="button sfe-action-inline" id="sfe-reset-<% {String value = null;try{value=context.getFormattedValue(replace(context.getFormattedValue(getObject("Pagelet:UUID"),null),(String)("\\."),(String)("-")),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {407}",e);}if (value==null) value="";out.write(value);} %>"/>
</td><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("IsCopyPossible"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",409,e);}if (_boolean_result) { %><td class="button">
<input type="hidden" name="CopyOfPrefix" value="Copy of "/>
<input type="submit" name="copy" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PageletTemplateTabProperties.Copy.button",null)),null)%>" class="button sfe-action-dialog" id="sfe-copy-<% {String value = null;try{value=context.getFormattedValue(replace(context.getFormattedValue(getObject("Pagelet:UUID"),null),(String)("\\."),(String)("-")),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {412}",e);}if (value==null) value="";out.write(value);} %>"/>
</td><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Assignment"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",415,e);}if (_boolean_result) { %><td class="button">
<input type="submit" name="confirmUnassign" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PageletTemplateTabProperties.Unassign.button",null)),null)%>" class="button sfe-action-inline" id="sfe-unassign-<% {String value = null;try{value=context.getFormattedValue(replace(context.getFormattedValue(getObject("Pagelet:UUID"),null),(String)("\\."),(String)("-")),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {417}",e);}if (value==null) value="";out.write(value);} %>"/>
</td><% } %><td class="button">
<input type="submit" name="confirmDelete" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PageletTemplateTabProperties.Delete.button",null)),null)%>" class="button sfe-action-inline" id="sfe-delete-<% {String value = null;try{value=context.getFormattedValue(replace(context.getFormattedValue(getObject("Pagelet:UUID"),null),(String)("\\."),(String)("-")),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {421}",e);}if (value==null) value="";out.write(value);} %>"/>
</td><% } %><% processOpenTag(response, pageContext, "publishtolivebutton", new TagParameter[] {
new TagParameter("addSeparatorBefore","true")}, 424); %></tr>
</table>
</td>
</tr><% } %></table><% out.print("</form>"); %><% printFooter(out); %>