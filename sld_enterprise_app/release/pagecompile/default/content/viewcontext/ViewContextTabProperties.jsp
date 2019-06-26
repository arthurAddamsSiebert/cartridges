<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"content/Modules", null, "2");} %><% processOpenTag(response, pageContext, "pageletmodelutils", new TagParameter[] {
new TagParameter("PageletModelUtils","PageletModelUtils")}, 4); %><% processOpenTag(response, pageContext, "createmap", new TagParameter[] {
new TagParameter("key1","ContentRepository"),
new TagParameter("key2","Locale"),
new TagParameter("key0","ViewContext"),
new TagParameter("value2",getObject("Locale")),
new TagParameter("value1",getObject("ContentRepository")),
new TagParameter("value0",getObject("ViewContext")),
new TagParameter("mapname","ViewContextPropertiesParams")}, 6); %><% {try{executePipeline("ViewViewContextProperties-TemplateCallback",((java.util.Map)(getObject("ViewContextPropertiesParams"))),"Result");}catch(Exception e){Logger.error(this,"ISPIPELINE failed. Line: 10.",e);}} %><% processOpenTag(response, pageContext, "populatedictionary", new TagParameter[] {
new TagParameter("map",getObject("Result"))}, 11); %><% processOpenTag(response, pageContext, "viewcontexteditable", new TagParameter[] {
new TagParameter("ViewContext",getObject("ViewContext")),
new TagParameter("LockedForOther","ViewContextLockedForOther"),
new TagParameter("ContentRepository",getObject("ContentRepository")),
new TagParameter("Result","IsViewContextEditable")}, 12); %><% processOpenTag(response, pageContext, "contentpermissionmap", new TagParameter[] {
new TagParameter("ContentRepository",getObject("ContentRepository")),
new TagParameter("PermissionMap","PermissionMap")}, 15); %><table border="0" cellpadding="0" cellspacing="0" width="100%">
<!-- Error Handling --><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ViewContextForm:isInvalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",21,e);}if (_boolean_result) { %><tr>
<td>
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr>
<td class="error_icon middle e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error top" width="100%"><% {out.write(localizeISText("ViewContextTabProperties.TheViewContextCouldNotBeUpdated.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ViewContextForm:DisplayName:isInvalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",29,e);}if (_boolean_result) { %><% while (loop("ViewContextForm:DisplayName:Errors","Error",null)) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("Error"),null).equals(context.getFormattedValue("error.required",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",31,e);}if (_boolean_result) { %><br/><% {out.write(localizeISText("ViewContextTabProperties.PleaseProvideAName.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %><% } %><% } %></td>
</tr>
</table>
</td>
</tr><% } %><!-- EO Error Handling -->
</table>
<!-- Main Content --><% URLPipelineAction action393 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewViewContextProperties-Dispatch",null)))),null));String site393 = null;String serverGroup393 = null;String actionValue393 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewViewContextProperties-Dispatch",null)))),null);if (site393 == null){  site393 = action393.getDomain();  if (site393 == null)  {      site393 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup393 == null){  serverGroup393 = action393.getServerGroup();  if (serverGroup393 == null)  {      serverGroup393 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewViewContextProperties-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print(context.getFormattedValue(getObject("ViewContextForm:ID"),null));out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue393, site393, serverGroup393,true)); %><input type="hidden" name="ViewContextUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ViewContext:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {46}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="ContentRepositoryUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ContentRepository:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {47}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="PageLocatorName" value="<% {String value = null;try{value=context.getFormattedValue(getObject("PageLocatorName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {48}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<!-- delete confirmation --><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Result:confirmDelete"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",51,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("subject",localizeText(context.getFormattedValue("ViewContextTabProperties.Viewcontext.subject",null))),
new TagParameter("cancelbtnname","cancel"),
new TagParameter("okbtnname","delete"),
new TagParameter("message",localizeText(context.getFormattedValue("ViewContextTabProperties.AreYouSureThatYouWantToDeleteThisViewContext.message",null))),
new TagParameter("type","mdc")}, 52); %><% } %><tr>
<td class="table_title_description w e s"><% {out.write(localizeISText("sld_enterprise_app.FieldsWithARedAsterisk.table_title_description",null,null,"star",null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<table border="0" cellpadding="4" cellspacing="0" width="100%" class="infobox_locale w e s">
<tr>
<td class="infobox_item" nowrap="nowrap"><% {out.write(localizeISText("ViewContextTabProperties.SelectLanguage.infobox_item",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td class="infobox_item">
<select name="LocaleId" class="select inputfield_en"><% while (loop("Locales","Locales",null)) { %><option value="<% {String value = null;try{value=context.getFormattedValue(getObject("Locales:LocaleID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {70}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Locales:LocaleID"),null).equals(context.getFormattedValue(getObject("Locale:LocaleID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",70,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {String value = null;try{value=context.getFormattedValue(getObject("Locales:getDisplayName(CurrentSession:Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {70}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</option><% } %></select>
</td>
<td width="100%">
<table border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="button">
<input type="submit" name="setLocale" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ViewContextTabProperties.Apply.button",null)),null)%>" class="button"/>
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
<td class="<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ViewContextForm:DisplayName:isInvalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",93,e);}if (_boolean_result) { %>fielditem2_error<% } else { %>fielditem2<% } %>" nowrap="nowrap"><% {out.write(localizeISText("ViewContextTabProperties.Name.isif",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></td>
<td class="table_detail" width="100%"><% processOpenTag(response, pageContext, "displayname", new TagParameter[] {
new TagParameter("Locale",getObject("Locale")),
new TagParameter("Nameable",getObject("ViewContext")),
new TagParameter("Print","false"),
new TagParameter("NameableDisplayName","ViewContextDisplayName")}, 95); %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ViewContextForm:DisplayName:isInvalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",96,e);}if (_boolean_result) { %><% {Object temp_obj = (getObject("ViewContextForm:DisplayName:Value")); getPipelineDictionary().put("ViewContextDisplayName", temp_obj);} %><% } %> 
<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PermissionMap:SLD_MANAGE_CONTENT"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",99,e);}if (_boolean_result) { %><input type="text" name="<% {String value = null;try{value=context.getFormattedValue(getObject("ViewContextForm:DisplayName:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {100}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" maxlength="256" size="50" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ViewContextDisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {100}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="inputfield_en"
<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (getObject("IsViewContextEditable"))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",101,e);}if (_boolean_result) { %>
disabled="disabled"
<% } %>
/><% } else { %><input type="text" disabled="disabled" name="<% {String value = null;try{value=context.getFormattedValue(getObject("ViewContextForm:DisplayName:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {106}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" maxlength="256" size="50" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ViewContextDisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {106}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="inputfield_en" /><% } %> 
</td>
</tr>
<tr>
<td class="<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ViewContextForm:Id:isInvalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",111,e);}if (_boolean_result) { %>fielditem2_error<% } else { %>fielditem2<% } %>" nowrap="nowrap"><% {out.write(localizeISText("ViewContextTabProperties.ID.isif",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></td>
<td class="table_detail">
<input type="text" name="<% {String value = null;try{value=context.getFormattedValue(getObject("ViewContextForm:Id:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {113}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" maxlength="256" size="50" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ViewContext:Id"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {113}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" readonly="readonly" class="inputfield_en disabled"/>
</td>
</tr>
<tr>
<td class="fielditem2" nowrap="nowrap"><% {out.write(localizeISText("ViewContextTabProperties.Description.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td> 
<td class="table_detail"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PermissionMap:SLD_MANAGE_CONTENT"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",119,e);}if (_boolean_result) { %><textarea rows="5" cols="47" name="<% {String value = null;try{value=context.getFormattedValue(getObject("ViewContextForm:Description:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {120}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="inputfield_en"
<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (getObject("IsViewContextEditable"))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",121,e);}if (_boolean_result) { %>
disabled="disabled"
<% } %>><% {String value = null;try{value=context.getFormattedValue(getObject("ViewContextForm:Description:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {124}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></textarea><% } else { %><textarea rows="5" cols="47" disabled="disabled" name="<% {String value = null;try{value=context.getFormattedValue(getObject("ViewContextForm:Description:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {127}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="inputfield_en"><% {String value = null;try{value=context.getFormattedValue(getObject("ViewContextForm:Description:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {128}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></textarea><% } %> 
</td>
</tr>
<tr>
<td class="<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ViewContextForm:DefinitionQualifiedName:isInvalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",134,e);}if (_boolean_result) { %>fielditem2_error<% } else { %>fielditem2<% } %>" nowrap="nowrap"><% {out.write(localizeISText("ViewContextTabProperties.Type.isif",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></td>
<td class="table_detail">
<input type="hidden" name="<% {String value = null;try{value=context.getFormattedValue(getObject("ViewContextForm:DefinitionQualifiedName:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {136}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ViewContext:DefinitionQualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {136}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="text" name="ViewContext_ContextObjectRelation_Name" maxlength="256" size="50" readonly="readonly" class="inputfield_en disabled"
value="<% {String value = null;try{value=context.getFormattedValue(getObject("PageletModelUtils:DisplayName(ViewContext:ContextObjectRelation,Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {138}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
title="<% {String value = null;try{value=context.getFormattedValue(getObject("ViewContext:DefinitionQualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {139}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
/>
</td>
</tr>
<tr>
<td nowrap="nowrap" class="label"><label class="label" for="EditViewContext_Group"><% {out.write(localizeISText("ViewContextTabProperties.Group.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td class="table_detail">
<input type="text" name="EditViewContext_Group" id="EditViewContext_Group" readonly="readonly" size="50" value="<% {String value = null;try{value=context.getFormattedValue(getObject("PageletModelUtils:DisplayGroup(ViewContext:ContextObjectRelation,Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {146}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="inputfield_en disabled"/>
</td>
</tr>
<tr>
<td nowrap="nowrap" class="label_textarea"><label class="label label_textarea" for="EditViewContext_ApplicationTypes"><% {out.write(localizeISText("ViewContextTabProperties.ApplicationTypes.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td class="table_detail">
<select size="5" name="EditViewContext_ApplicationTypes" id="EditViewContext_ApplicationTypes" class="inputfield_en disabled" readonly="readonly" style="min-width:200px"><% while (loop("PageletModelUtils:ApplicationTypes(ViewContext:ContextObjectRelation:PageletModel)","type",null)) { %><option><% {String value = null;try{value=context.getFormattedValue(getObject("type:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {154}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></option><% } %></select>
</td>
</tr>
</table>
</td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PermissionMap:SLD_MANAGE_CONTENT"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",162,e);}if (_boolean_result) { %><tr>
<td align="right" class="w e s">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button">
<input type="submit" name="update" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ViewContextTabProperties.Apply.button",null)),null)%>" class="button" 
<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (getObject("IsViewContextEditable"))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",169,e);}if (_boolean_result) { %>
disabled="disabled"
<% } %>
/>
</td>
<td class="button">
<input type="reset" name="reset" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ViewContextTabProperties.Reset.button",null)),null)%>" class="button" 
<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (getObject("IsViewContextEditable"))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",176,e);}if (_boolean_result) { %>
disabled="disabled"
<% } %>
/>
</td>
<td class="button">
<input type="submit" name="confirmDelete" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ViewContextTabProperties.Delete.button",null)),null)%>" class="button" 
<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("ViewContext:SystemManaged")).booleanValue() || !((Boolean) (getObject("IsViewContextEditable"))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",183,e);}if (_boolean_result) { %>
disabled="disabled"
<% } %>
/>
</td>
</tr>
</table>
</td>
</tr><% } %></table><% out.print("</form>"); %><% printFooter(out); %>