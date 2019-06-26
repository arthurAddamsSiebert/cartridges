<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"content/Modules", null, "3");} %><% processOpenTag(response, pageContext, "pageletmodelutils", new TagParameter[] {
new TagParameter("PageletModelUtils","PageletModelUtils")}, 4); %><!-- Working Area -->
<!-- Page Navigator --><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewContentPage-New",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ContentRepositoryUUID",null),context.getFormattedValue(getObject("ContentRepository:UUID"),null))).addURLParameter(context.getFormattedValue("Breadcrumb",null),context.getFormattedValue("Breadcrumb",null)))),
new TagParameter("id","NewPageletEntryPoint"),
new TagParameter("text",localizeText(context.getFormattedValue("NewContentPage.NewContentPage.text",null)))}, 8); %><!-- EO Page Navigator -->
<!-- Titel and Description -->
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" class="table_title aldi"><% {out.write(localizeISText("NewContentPage.NewContentPage.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<!-- Error Handling --><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("CreatePage:PageType:isMissing")).booleanValue() || ((Boolean) getObject("CreatePage:Name:isMissing")).booleanValue() || ((Boolean) getObject("CreatePage:PageID:isInvalid")).booleanValue() || ((Boolean) getObject("CreatePage:PageID:isMissing")).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("ErrorCode")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",20,e);}if (_boolean_result) { %><tr>
<td>
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr>
<td class="error_icon middle e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error top" width="100%"><% {out.write(localizeISText("NewContentPage.ThePageCouldNotBeCreated.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("CreatePage:Name:isMissing"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",30,e);}if (_boolean_result) { %><br/><% {out.write(localizeISText("NewContentPage.PleaseProvideAName.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("CreatePage:PageID:isMissing"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",33,e);}if (_boolean_result) { %><br/><% {out.write(localizeISText("NewContentPage.PleaseProvideAnID.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("CreatePage:PageID:isInvalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",36,e);}if (_boolean_result) { %><br/><% {out.write(localizeISText("NewContentPage.PleaseProvideAnIDWithoutSpecialCharacters.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("CreatePage:PageType:isMissing")).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("CreatePage:PageType:Value"),null).equals(context.getFormattedValue("none",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",39,e);}if (_boolean_result) { %><br/><% {out.write(localizeISText("NewContentPage.PleaseSelectAType.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ErrorCode"),null).equals(context.getFormattedValue("1",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",42,e);}if (_boolean_result) { %><br/><% {out.write(localizeISText("NewContentPage.TheIDIsAlreadyUsedByADifferentPage.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %></td>
</tr>
</table>
</td>
</tr><% } %><!-- EO Error Handling -->
<tr>
<td class="table_title_description w e s"><% {out.write(localizeISText("NewContentPage.NameYourPageAndGiveItAProperDescriptionChooseAType.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<!-- Main Content --><% URLPipelineAction action447 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewContentPage-Dispatch",null)))),null));String site447 = null;String serverGroup447 = null;String actionValue447 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewContentPage-Dispatch",null)))),null);if (site447 == null){  site447 = action447.getDomain();  if (site447 == null)  {      site447 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup447 == null){  serverGroup447 = action447.getServerGroup();  if (serverGroup447 == null)  {      serverGroup447 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewContentPage-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("formMask");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue447, site447, serverGroup447,true)); %><table border="0" cellpadding="4" cellspacing="0" width="100%" class="infobox_locale w e s">
<tr>
<td nowrap="nowrap" class="label_select"><label class="label label_light label_select" for="LocaleId"><% {out.write(localizeISText("NewContentPage.SelectLanguage.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td class="infobox_item"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PageletEntryPoint"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",64,e);}if (_boolean_result) { %><input type="hidden" name="LocaleId" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Locale:LocaleID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {65}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<select name="LocaleId" id="LocaleId" class="select inputfield_en" disabled="disabled"><% } else { %><select name="LocaleId" id="LocaleId" class="select inputfield_en"><% } %><% while (loop("Locales","Locales",null)) { %><option value="<% {String value = null;try{value=context.getFormattedValue(getObject("Locales:LocaleID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {71}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Locales:LocaleID"),null).equals(context.getFormattedValue(getObject("Locale:LocaleID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",71,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {String value = null;try{value=context.getFormattedValue(getObject("Locales:getDisplayName(CurrentSession:Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {71}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</option><% } %></select>
</td>
<td width="100%">
<table border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="button">
<div style="display:none;"><input type="submit" name="create" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("NewContentPage.Apply.button",null)),null)%>" class="button"/></div>
<input type="submit" name="setLocaleForNew" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("NewContentPage.Apply.button",null)),null)%>" <% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PageletEntryPoint"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",80,e);}if (_boolean_result) { %>disabled="disabled"<% } %> class="button"/>
</td> 
</tr>
</table>
</td>
</tr>
</table>
<table cellpadding="0" cellspacing="0" border="0" width="100%">
<tr><td class="w e" colspan="2"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="4" alt="" border="0"/></td></tr>
<tr>
<td class="w e s">
<table cellpadding="0" cellspacing="0" border="0" width="100%">
<tr>
<td nowrap="nowrap" class="label"><label class="label <% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("CreatePage:Name:isMissing"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",93,e);}if (_boolean_result) { %>label_error<% } %>" for="CreatePage_Name"><% {out.write(localizeISText("NewContentPage.Name.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></label></td>
<td class="table_detail" colspan="7" width="100%">
<input type="text" name="CreatePage_Name" id="CreatePage_Name" maxlength="256" size="50" value="<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CreatePage:Name:Value"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",95,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("CreatePage:Name:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {95}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %><% {String value = null;try{value=context.getFormattedValue(getObject("CreatePage_Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {95}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %>" class="inputfield_en"/>
</td>
</tr>
<tr>
<td nowrap="nowrap" class="label"><label class="label <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("CreatePage:PageID:isMissing")).booleanValue() || ((Boolean) getObject("CreatePage:PageID:isInvalid")).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("ErrorCode"),null).equals(context.getFormattedValue("1",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",99,e);}if (_boolean_result) { %>label_error<% } %>" for="CreatePage_PageID"><% {out.write(localizeISText("NewContentPage.ID.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></label></td>
<td class="table_detail" colspan="7">
<input type="text" name="CreatePage_PageID" id="CreatePage_PageID" maxlength="256" size="50" value="<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CreatePage:PageID:Value"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",101,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("CreatePage:PageID:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {101}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("CreatePage_PageID"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",101,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("CreatePage_PageID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {101}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %><% processOpenTag(response, pageContext, "getnewpageletid", new TagParameter[] {
}, 101); %><% }} %>" class="inputfield_en"/>
</td>
</tr>
<tr>
<td nowrap="nowrap" class="label_textarea"><label class="label label_textarea" for="CreatePage_Description"><% {out.write(localizeISText("NewContentPage.Description.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td class="table_detail" colspan="7">
<textarea rows="5" cols="50" name="CreatePage_Description" id="CreatePage_Description" class="inputfield_en"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CreatePage:Description:Value"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",108,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("CreatePage:Description:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {108}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %><% {String value = null;try{value=context.getFormattedValue(getObject("CreatePage_Description"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {108}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %></textarea>
</td>
</tr>
<tr>
<td nowrap="nowrap" class="label"><label class="label" for="ParentPageletEntryPointDisplayName"><% {out.write(localizeISText("NewContentPage.Parent.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td class="table_detail" colspan="7">
<table cellpadding="0" cellspacing="0" border="0">
<tr>
<td><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ParentPageletEntryPoint"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",118,e);}if (_boolean_result) { %><input type="hidden" name="ParentPageletEntryPointUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ParentPageletEntryPoint:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {119}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" />
<input type="text" name="ParentPageletEntryPointDisplayName" id="ParentPageletEntryPointDisplayName" maxlength="256" size="42" class="inputfield_en" readonly="readonly"
value="<% processOpenTag(response, pageContext, "pageletentrypointdisplayname", new TagParameter[] {
new TagParameter("Locale",getObject("Locale")),
new TagParameter("PageletEntryPoint",getObject("ParentPageletEntryPoint"))}, 121); %>" /><% } else { %><input type="text" name="ParentPageletEntryPointDisplayName" id="ParentPageletEntryPointDisplayName" maxlength="256" size="42" class="inputfield_en" readonly="readonly"/><% } %></td>
<td>&nbsp;</td>
<td align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button">
<input type="submit" name="selectParent" value="..." class="button" <% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PageletEntryPoint"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",131,e);}if (_boolean_result) { %>disabled="disabled"<% } %>/>
<input type="hidden" name="ParentSelectionTarget" value="New" />
</td>
</tr>
</table> 
</td>
</tr>
</table>
</td>
</tr>
<tr>
<td nowrap="nowrap" class="label_select"><label class="label label_select <% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("CreatePage:PageType:isMissing"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",143,e);}if (_boolean_result) { %>label_error<% } %>" for="CreatePage_PageType"><% {out.write(localizeISText("NewContentPage.Type.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></label></td>
<td class="table_detail" colspan="7">
<select name="CreatePage_PageType" id="CreatePage_PageType" class="select inputfield_en" onchange="var el=document.createElement('input');el.type='hidden';el.name='setLocaleForNew';el.value='typeChanged';this.form.appendChild(el);this.form.submit();"><% {Object temp_obj = (getObject("PageletModelUtils:OrderedNameableAndReferencableElements(PageletModelUtils:PageTypes(PageletModelRepository))")); getPipelineDictionary().put("pageTypes", temp_obj);} %><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("pageTypes") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",147,e);}if (_boolean_result) { %><% while (loop("pageTypes","pageType",null)) { %><% {Object temp_obj = (getObject("pageType")); getPipelineDictionary().put("selectedPageType", temp_obj);} %><% if (getLoopStack().isEmpty()) {Logger.error(this,"ISBREAK occured outside ISLOOP. Line: {}",150);}else{getLoopStack().pop();break;} %><% } %><% while (loop("pageTypes","pageType",null)) { %><option value="<% {String value = null;try{value=context.getFormattedValue(getObject("pageType:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {153}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" 
<% _boolean_result=false;try {_boolean_result=((Boolean)((((((Boolean) (disableErrorMessages().isDefined(getObject("CreatePage_PageType")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("CreatePage_PageType"),null).equals(context.getFormattedValue(getObject("pageType:QualifiedName"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",154,e);}if (_boolean_result) { %>
selected="selected"
<% {Object temp_obj = (getObject("pageType")); getPipelineDictionary().put("selectedPageType", temp_obj);} %><% } %>><% {String value = null;try{value=context.getFormattedValue(getObject("PageletModelUtils:DisplayName(pageType,CurrentRequest:Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {157}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></option><% } %><% } %></select>
</td>
</tr> 
<tr>
<td nowrap="nowrap" class="label"><label class="label" for="CreatePageletEntryPoint_Group"><% {out.write(localizeISText("NewContentPage.Group.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td class="table_detail" colspan="7">
<input type="text" name="CreatePageletEntryPoint_Group" id="CreatePageletEntryPoint_Group" readonly="readonly" size="50" value="<% {String value = null;try{value=context.getFormattedValue(getObject("PageletModelUtils:DisplayGroup(selectedPageType,CurrentRequest:Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {166}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="inputfield_en disabled"/>
</td>
</tr>
<tr>
<td nowrap="nowrap" class="label_textarea"><label class="label label_textarea" for="CreatePageletEntryPoint_ApplicationTypes"><% {out.write(localizeISText("NewContentPage.ApplicationTypes.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td class="table_detail" colspan="7">
<select size="5" name="CreatePageletEntryPoint_ApplicationTypes" id="CreatePageletEntryPoint_ApplicationTypes" class="inputfield_en disabled" readonly="readonly" style="min-width:200px"><% while (loop("PageletModelUtils:ApplicationTypes(selectedPageType:PageletModel)","type",null)) { %><option><% {String value = null;try{value=context.getFormattedValue(getObject("type:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {174}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></option><% } %></select>
</td>
</tr>
<tr><td colspan="8"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="4" alt="" border="0"/></td></tr>
</table>
</td>
</tr>
<tr>
<td align="right" class="w e s">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button">
<input type="hidden" name="ContentRepositoryUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ContentRepository:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {189}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PageletEntryPoint"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",190,e);}if (_boolean_result) { %><input type="hidden" name="PageletEntryPointUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("PageletEntryPoint:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {191}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><% } %><input type="submit" name="create" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("NewContentPage.Apply.button",null)),null)%>" class="button"/>
</td>
<td class="button">
<input type="submit" name="cancel" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("NewContentPage.Cancel.button",null)),null)%>" class="button"/>
</td>
</tr>
</table>
</td>
</tr>
</table><% out.print("</form>"); %><!-- EO Main Content --><% printFooter(out); %>