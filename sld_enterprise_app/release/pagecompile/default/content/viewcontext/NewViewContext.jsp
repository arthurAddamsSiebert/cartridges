<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"content/Modules", null, "3");} %><% processOpenTag(response, pageContext, "pageletmodelutils", new TagParameter[] {
new TagParameter("PageletModelUtils","PageletModelUtils")}, 4); %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewViewContext-New",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ContentRepositoryUUID",null),context.getFormattedValue(getObject("ContentRepository:UUID"),null))))),
new TagParameter("id","NewViewContext"),
new TagParameter("text",localizeText(context.getFormattedValue("NewViewContext.NewViewContext.text",null)))}, 6); %><table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" class="table_title aldi"><% {out.write(localizeISText("NewViewContext.NewViewContext.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<!-- Error Handling --><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ViewContextForm:isInvalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",13,e);}if (_boolean_result) { %><tr>
<td>
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr>
<td class="error_icon middle e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error top" width="100%"><% {out.write(localizeISText("NewViewContext.TheViewContextCouldNotBeCreated.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ViewContextForm:DisplayName:isInvalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",21,e);}if (_boolean_result) { %><% while (loop("ViewContextForm:DisplayName:Errors","Error",null)) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("Error"),null).equals(context.getFormattedValue("error.required",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",23,e);}if (_boolean_result) { %><br/><% {out.write(localizeISText("NewViewContext.PleaseProvideAName.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %><% } %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ViewContextForm:Id:isInvalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",28,e);}if (_boolean_result) { %><% while (loop("ViewContextForm:Id:Errors","Error",null)) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("Error"),null).equals(context.getFormattedValue("error.required",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",30,e);}if (_boolean_result) { %><br/><% {out.write(localizeISText("NewViewContext.PleaseProvideAnID.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("Error"),null).equals(context.getFormattedValue("error.regexp",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",32,e);}if (_boolean_result) { %><br/><% {out.write(localizeISText("NewViewContext.TheIDMustNotContainSpecialCharactersValidCharacter.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("Error"),null).equals(context.getFormattedValue("error.ViewContextAlreadyExists",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",34,e);}if (_boolean_result) { %><br/><% {out.write(localizeISText("NewViewContext.TheIDIsAlreadyUsedByADifferentViewContextPleasePro.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><% }}} %><% } %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ViewContextForm:DefinitionQualifiedName:isInvalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",39,e);}if (_boolean_result) { %><% while (loop("ViewContextForm:DefinitionQualifiedName:Errors","Error",null)) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("Error"),null).equals(context.getFormattedValue("error.required",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",41,e);}if (_boolean_result) { %><br/><% {out.write(localizeISText("NewViewContext.PleaseSelectAType.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %><br/><% } %><% } %></td>
</tr>
</table>
</td>
</tr><% } %><!-- EO Error Handling -->
<tr>
<td class="table_title_description w e s"><% {out.write(localizeISText("NewViewContext.NameYourViewContextAndChooseAType.table_title_description",null,null,"star",null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<!-- Main Content --><% URLPipelineAction action390 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewViewContext-Dispatch",null)))),null));String site390 = null;String serverGroup390 = null;String actionValue390 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewViewContext-Dispatch",null)))),null);if (site390 == null){  site390 = action390.getDomain();  if (site390 == null)  {      site390 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup390 == null){  serverGroup390 = action390.getServerGroup();  if (serverGroup390 == null)  {      serverGroup390 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewViewContext-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print(context.getFormattedValue(getObject("ViewContextForm:ID"),null));out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue390, site390, serverGroup390,true)); %><input type="hidden" name="ContentRepositoryUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ContentRepository:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {62}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<table border="0" cellpadding="4" cellspacing="0" width="100%" class="infobox_locale w e s">
<tr>
<td class="infobox_item" nowrap="nowrap"><% {out.write(localizeISText("NewViewContext.SelectLanguage.infobox_item",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td class="infobox_item">
<select name="LocaleId" class="select inputfield_en"><% while (loop("Locales","Locales",null)) { %><option value="<% {String value = null;try{value=context.getFormattedValue(getObject("Locales:LocaleID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {69}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Locales:LocaleID"),null).equals(context.getFormattedValue(getObject("Locale:LocaleID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",69,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {String value = null;try{value=context.getFormattedValue(getObject("Locales:getDisplayName(CurrentSession:Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {69}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</option><% } %></select>
</td>
<td width="100%">
<table border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="button">
<input type="submit" name="setLocaleForNew" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("NewViewContext.Apply.button",null)),null)%>" class="button"/>
</td>
</tr>
</table>
</td>
</tr>
</table>
<table cellpadding="0" cellspacing="0" border="0" width="100%">
<tr><td class="w e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="4" alt="" border="0"/></td></tr>
<tr>
<td class="w e">
<table cellpadding="0" cellspacing="0" border="0" width="100%">
<tr>
<td class="<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ViewContextForm:DisplayName:isInvalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",91,e);}if (_boolean_result) { %>fielditem2_error<% } else { %>fielditem2<% } %>" nowrap="nowrap"><% {out.write(localizeISText("NewViewContext.Name.isif",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></td>
<td class="table_detail" width="100%">
<input type="text" name="<% {String value = null;try{value=context.getFormattedValue(getObject("ViewContextForm:DisplayName:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {93}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" maxlength="256" size="50" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ViewContextForm:DisplayName:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {93}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="inputfield_en"/>
</td>
</tr>
<tr>
<td class="<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ViewContextForm:Id:isInvalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",97,e);}if (_boolean_result) { %>fielditem2_error<% } else { %>fielditem2<% } %>" nowrap="nowrap"><% {out.write(localizeISText("NewViewContext.ID.isif",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></td>
<td class="table_detail">
<input type="text" name="<% {String value = null;try{value=context.getFormattedValue(getObject("ViewContextForm:Id:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {99}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" maxlength="256" size="50" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ViewContextForm:Id:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {99}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="inputfield_en"/>
</td>
</tr>
<tr>
<td class="fielditem2" nowrap="nowrap"><% {out.write(localizeISText("NewViewContext.Description.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td> 
<td class="table_detail">
<textarea rows="5" cols="47" name="<% {String value = null;try{value=context.getFormattedValue(getObject("ViewContextForm:Description:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {105}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="inputfield_en"><% {String value = null;try{value=context.getFormattedValue(getObject("ViewContextForm:Description:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {105}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></textarea>
</td>
</tr>
<tr>
<td class="<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ViewContextForm:DefinitionQualifiedName:isInvalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",109,e);}if (_boolean_result) { %>fielditem2_error<% } else { %>fielditem2<% } %>" nowrap="nowrap"><% {out.write(localizeISText("NewViewContext.Type.isif",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></td> 
<td class="table_detail"><% {Object temp_obj = (getObject("null")); getPipelineDictionary().put("selectedContextObjectRelation", temp_obj);} %><select class="select inputfield_en" name="<% {String value = null;try{value=context.getFormattedValue(getObject("ViewContextForm:DefinitionQualifiedName:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {112}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" onchange="var el=document.createElement('input');el.type='hidden';el.name='setLocaleForNew';el.value='typeChanged';this.form.appendChild(el);this.form.submit();">
<optgroup label="Category Page"><% processOpenTag(response, pageContext, "contextobjectrelationselectoptions", new TagParameter[] {
new TagParameter("Locale",getObject("Locale")),
new TagParameter("ObjectType","Category"),
new TagParameter("NewSelection","selectedContextObjectRelation"),
new TagParameter("PageletModelRepository",getObject("PageletModelRepository")),
new TagParameter("Page","true"),
new TagParameter("CurrentSelection",getObject("selectedContextObjectRelation")),
new TagParameter("SelectedContextObjectRelation",getObject("ViewContextForm:DefinitionQualifiedName:Value"))}, 114); %></optgroup>
<optgroup label="Product Page"><% processOpenTag(response, pageContext, "contextobjectrelationselectoptions", new TagParameter[] {
new TagParameter("Locale",getObject("Locale")),
new TagParameter("ObjectType","Product"),
new TagParameter("NewSelection","selectedContextObjectRelation"),
new TagParameter("PageletModelRepository",getObject("PageletModelRepository")),
new TagParameter("Page","true"),
new TagParameter("CurrentSelection",getObject("selectedContextObjectRelation")),
new TagParameter("SelectedContextObjectRelation",getObject("ViewContextForm:DefinitionQualifiedName:Value"))}, 117); %></optgroup>
<optgroup label="Category Include"><% processOpenTag(response, pageContext, "contextobjectrelationselectoptions", new TagParameter[] {
new TagParameter("Locale",getObject("Locale")),
new TagParameter("ObjectType","Category"),
new TagParameter("NewSelection","selectedContextObjectRelation"),
new TagParameter("PageletModelRepository",getObject("PageletModelRepository")),
new TagParameter("Page","false"),
new TagParameter("CurrentSelection",getObject("selectedContextObjectRelation")),
new TagParameter("SelectedContextObjectRelation",getObject("ViewContextForm:DefinitionQualifiedName:Value"))}, 120); %></optgroup>
<optgroup label="Product Include"><% processOpenTag(response, pageContext, "contextobjectrelationselectoptions", new TagParameter[] {
new TagParameter("Locale",getObject("Locale")),
new TagParameter("ObjectType","Product"),
new TagParameter("NewSelection","selectedContextObjectRelation"),
new TagParameter("PageletModelRepository",getObject("PageletModelRepository")),
new TagParameter("Page","false"),
new TagParameter("CurrentSelection",getObject("selectedContextObjectRelation")),
new TagParameter("SelectedContextObjectRelation",getObject("ViewContextForm:DefinitionQualifiedName:Value"))}, 123); %></optgroup>
</select>
</td>
</tr>
<tr>
<td nowrap="nowrap" class="label"><label class="label" for="CreateViewContext_Group"><% {out.write(localizeISText("NewViewContext.Group.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td class="table_detail">
<input type="text" name="CreateViewContext_Group" id="CreateViewContext_Group" readonly="readonly" size="50" value="<% {String value = null;try{value=context.getFormattedValue(getObject("PageletModelUtils:DisplayGroup(selectedContextObjectRelation,CurrentRequest:Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {131}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="inputfield_en disabled"/>
</td>
</tr>
<tr>
<td nowrap="nowrap" class="label_textarea"><label class="label label_textarea" for="CreateViewContext_ApplicationTypes"><% {out.write(localizeISText("NewViewContext.ApplicationTypes.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td class="table_detail">
<select size="5" name="CreateViewContext_ApplicationTypes" id="CreateViewContext_ApplicationTypes" class="inputfield_en disabled" readonly="readonly" style="min-width:200px"><% while (loop("PageletModelUtils:ApplicationTypes(selectedContextObjectRelation:PageletModel)","type",null)) { %><option><% {String value = null;try{value=context.getFormattedValue(getObject("type:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {139}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></option><% } %></select>
</td>
</tr>
</table>
</td>
</tr>
<tr><td class="w e s"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="4" alt="" border="0"/></td></tr>
<tr>
<td align="right" class="w e s">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button">
<input type="submit" name="create" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("NewViewContext.Apply.button",null)),null)%>" class="button"/>
</td>
<td class="button">
<input type="submit" name="cancel" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("NewViewContext.Cancel.button",null)),null)%>" class="button"/>
</td>
</tr>
</table>
</td>
</tr>
</table><% out.print("</form>"); %><% printFooter(out); %>