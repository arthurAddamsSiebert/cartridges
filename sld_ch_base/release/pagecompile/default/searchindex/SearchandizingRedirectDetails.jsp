<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><!-- TEMPLATENAME: searchindex/SearchandizingRedirectDetails.isml -->
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"content/pageletentrypoint/Modules", null, "3");} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"preview/Modules", null, "4");} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"content/Modules", null, "5");} %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("RedirectAction"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",7,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("text1",context.getFormattedValue(" - ",null) + context.getFormattedValue(localizeText(context.getFormattedValue("SearchandizingRedirectDetails.RedirectDetails.text1",null)),null)),
new TagParameter("listview","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewRedirectAction-DispatchRedirects",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ApplicationState:ChannelID"),null))).addURLParameter(context.getFormattedValue("SearchIndexID",null),context.getFormattedValue(getObject("SearchIndex:IndexID"),null)).addURLParameter(context.getFormattedValue("Term",null),context.getFormattedValue(getObject("RedirectAction:Term"),null)))),
new TagParameter("id","Redirect"),
new TagParameter("text",getObject("RedirectAction:Term"))}, 8); %><% } else { %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("listview","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewRedirectAction-NewRedirect",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ApplicationState:ChannelID"),null))).addURLParameter(context.getFormattedValue("SearchIndexID",null),context.getFormattedValue(getObject("SearchIndex:IndexID"),null)).addURLParameter(context.getFormattedValue("cancelSelectCategory",null),context.getFormattedValue("true",null)))),
new TagParameter("id","Redirect"),
new TagParameter("text",localizeText(context.getFormattedValue("SearchandizingRedirectDetails.NewRedirect.text",null)))}, 10); %><% } %><% {Object temp_obj = (((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_SEARCH_INDEXES")))).booleanValue() && !((Boolean) (getObject("SearchIndex:Shared"))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE)); getPipelineDictionary().put("SearchIndexEditable", temp_obj);} %><script type="text/javascript">
function enableElements(form, type) 
{
if(form != 3)
{
form.selectTarget_category.disabled = (type != 'category');
form.selectTarget_product.disabled = (type != 'product');
form.selectTarget_page.disabled = (type != 'page');
form.gotoTarget_category.disabled = true;
form.gotoTarget_product.disabled = true;
form.gotoTarget_page.disabled = true;
if (type == 'category' && form.CategoryName.value != '') {
{
form.gotoTarget_category.disabled = false; 
} 
}
if (type == 'product' && form.ProductName.value != '') {
{
form.gotoTarget_product.disabled = false; 
} 
}
if (type == 'page' && form.PageName.value != '') {
{
form.gotoTarget_page.disabled = false; 
} 
}
}
form.CategoryName.disabled = ('category' != type);
form.ProductName.disabled = ('product' != type);
form.PageName.disabled = ('page' != type);
document.getElementById('RedirectTargetSearch').disabled = ('search' != type);
document.getElementById('RedirectTargetURL').disabled = ('url' != type);
return false;
}
</script>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" class="table_title aldi"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("RedirectAction"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",60,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("Form:Term:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {61}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %><% {out.write(localizeISText("SearchandizingRedirectDetails.NewRedirect.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %></td>
</tr>
</table>
</td>
</tr><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"searchindex/inc/SearchandizingPreviewErrors", null, "70");} %></table><% URLPipelineAction action183 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewRedirectAction-DispatchRedirects",null)))),null));String site183 = null;String serverGroup183 = null;String actionValue183 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewRedirectAction-DispatchRedirects",null)))),null);if (site183 == null){  site183 = action183.getDomain();  if (site183 == null)  {      site183 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup183 == null){  serverGroup183 = action183.getServerGroup();  if (serverGroup183 == null)  {      serverGroup183 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewRedirectAction-DispatchRedirects",null)))),null));out.print("\"");out.print(" name=\"");out.print(context.getFormattedValue(getObject("Form:ID"),null));out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue183, site183, serverGroup183,true)); %><input type="hidden" name="SearchIndexID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("SearchIndex:IndexID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {75}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("RedirectTargetObject"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",76,e);}if (_boolean_result) { %><input type="hidden" name="<% {String value = null;try{value=context.getFormattedValue(getObject("Form:RedirectTarget:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {77}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" value="<% {String value = null;try{value=context.getFormattedValue(getObject("RedirectTargetObject:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {77}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("RedirectAction"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",79,e);}if (_boolean_result) { %><input type="hidden" name="Term" value="<% {String value = null;try{value=context.getFormattedValue(getObject("RedirectAction:Term"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {80}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="<% {String value = null;try{value=context.getFormattedValue(getObject("Form:Term:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {81}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" value="<% {String value = null;try{value=context.getFormattedValue(getObject("RedirectAction:Term"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {81}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><% } %><table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td>
<table border="0" cellpadding="0" cellspacing="0" width="100%"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("confirmDelete"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",88,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("subject","searchTermRedirect"),
new TagParameter("cancelbtnname","cancelDelete"),
new TagParameter("okbtnname","delete"),
new TagParameter("type","sdc")}, 89); %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Form:isInvalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",91,e);}if (_boolean_result) { %><tr>
<td class="w e s" >
<table border="0" cellpadding="4" cellspacing="0" width="100%" class="error_box">
<tr>
<td class="error_icon e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error top" width="100%">
<b><% {out.write(localizeISText("SearchandizingRedirectDetails.ThisConfigurationCouldNotBeSaved.error",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</b><br/><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Form:Term:isInvalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",99,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Form:Term:isError(\"error.required\")"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",100,e);}if (_boolean_result) { %><% {out.write(localizeISText("SearchandizingRedirectDetails.TheSearchTermIsMandatory.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Form:Term:isError(\"error.notunique\")"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",103,e);}if (_boolean_result) { %><% {out.write(localizeISText("SearchandizingRedirectDetails.TheSearchTermIsNotUnique.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/><% } %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Form:RedirectTarget:isInvalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",107,e);}if (_boolean_result) { %><% {out.write(localizeISText("SearchandizingRedirectDetails.PleaseProvideAValidRedirectTargetForYourChoice.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Form:RedirectTarget:isError(\"error.urlstring\")"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",110,e);}if (_boolean_result) { %><% {out.write(localizeISText("SearchandizingRedirectDetails.TheURLTargetIsInvalid.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/><% } %></td>
</tr>
</table>
</td>
</tr><% } %><tr>
<td class="table_title_description e w s"><% {out.write(localizeISText("SearchandizingRedirectDetails.PleaseEnterASearchTermAndSelectAMatchingOption.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/><br/> 
<% {out.write(localizeISText("SearchandizingRedirectDetails.FieldsWithARedAsterisk.table_title_description",null,null,"star",null,null,null,null,null,null,null,null,null));} %> 
</td>
</tr>
<tr>
<td>
<table border="0" cellspacing="5" cellpadding="0" width="100%" class="infobox w e s">
<tr>
<td nowrap="nowrap" class="infobox_title"><% {out.write(localizeISText("SearchandizingRedirectDetails.IndexLanguage.infobox_title",null,null,null,null,null,null,null,null,null,null,null,null));} %>:&nbsp;</td>
<td class="infobox_item w100"><% {String value = null;try{value=context.getFormattedValue(getObject("SearchIndex:Configuration:Locale:DisplayName(CurrentSession:Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {131}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
</tr>
</table>
</td>
</tr>
<tr>
<td>
<table border="0" cellspacing="0" cellpadding="0" width="100%" class="form_bg w e s">
<colgroup>
<col width="10%">
<col width="1%">
<col width="1%">
<col width="35%">
<col width="1%">
<col width="52%">
</colgroup>
<tr>
<td colspan="5"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></td>
</tr>
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Form:Term:isInvalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",153,e);}if (_boolean_result) { %><td class="fielditem2_error" nowrap="nowrap"><% {out.write(localizeISText("SearchandizingRedirectDetails.SearchTerm.fielditem2_error",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></td><% } else { %><td class="fielditem2" nowrap="nowrap"><% {out.write(localizeISText("SearchandizingRedirectDetails.SearchTerm.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></td><% } %><td class="table_detail" colspan="3"><input type="text" name="<% {String value = null;try{value=context.getFormattedValue(getObject("Form:Term:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {158}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" maxlength="256" size="55" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Form:Term:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {158}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" <% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("RedirectAction"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",158,e);}if (_boolean_result) { %>disabled="disabled"<% } %> class="inputfield_en w100" /></td>
<td class="table_detail">
<select class="inputfield_en" size="1" name="<% {String value = null;try{value=context.getFormattedValue(getObject("Form:PartialMatch:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {160}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>">
<option <% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("Form:PartialMatch:Value"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",161,e);}if (_boolean_result) { %>selected="selected"<% } %> value="false"><% {out.write(localizeISText("SearchandizingRedirectDetails.ExactMatch.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Form:PartialMatch:Value"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",162,e);}if (_boolean_result) { %>selected="selected"<% } %> value="true"><% {out.write(localizeISText("SearchandizingRedirectDetails.PartialMatch.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
</select>
</td>
<td>
<table border="0" cellspacing="0" cellpadding="0">
<tr>
<td>&nbsp;&nbsp;&nbsp;</td>
<td>
<input type="checkbox" name="<% {String value = null;try{value=context.getFormattedValue(getObject("Form:NoResult:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {170}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" value="true"
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Form:NoResult:Value"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",171,e);}if (_boolean_result) { %>
checked="checked" 
<% } %>
>
</td>
<td class="table_detail"><% {out.write(localizeISText("SearchandizingRedirectDetails.TriggerWhenNoSearchResult.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
</td>
</tr>
<tr><td colspan="5"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="12" height="10" alt="" border="0"/></td></tr>
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Form:RedirectTarget:isInvalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",185,e);}if (_boolean_result) { %><td class="fielditem2_error" nowrap="nowrap"><% {out.write(localizeISText("SearchandizingRedirectDetails.RedirectedTo.fielditem2_error",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></td><% } else { %><td class="fielditem2" nowrap="nowrap"><% {out.write(localizeISText("SearchandizingRedirectDetails.RedirectedTo.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></td><% } %><td width="1%">
<input type=radio name="<% {String value = null;try{value=context.getFormattedValue(getObject("Form:RedirectType:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {191}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" value="category" <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((Boolean) (disableErrorMessages().isDefined(getObject("Form:RedirectType:Value")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("Form:RedirectType:Value"),null).equals(context.getFormattedValue("category",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",191,e);}if (_boolean_result) { %>checked="checked"<% } %> onclick="enableElements(this.form, 'category');"/>
</td>
<td width="1%" class="infobox_item">
<span><% {out.write(localizeISText("SearchandizingRedirectDetails.Category.infobox_item",null,null,null,null,null,null,null,null,null,null,null,null));} %>&nbsp;</span>
</td>
<td class="table_detail"><input type="text" name="CategoryName" maxlength="" <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("Form:RedirectType:Value"))))).booleanValue() && !((Boolean) ((((context.getFormattedValue(getObject("Form:RedirectType:Value"),null).equals(context.getFormattedValue("category",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",196,e);}if (_boolean_result) { %>disabled="disabled"<% } else { %> value="<% {String value = null;try{value=context.getFormattedValue(getObject("RedirectTargetObject:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {196}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"<% } %> class="inputfield_en w100"/></td>
<td class="table_detail" colspan="2">
<table cellspacing="1" cellpadding="0" border="0">
<tr>
<td class="button">
<input type="submit" name="selectTarget_category" <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("Form:RedirectType:Value"))))).booleanValue() && !((Boolean) ((((context.getFormattedValue(getObject("Form:RedirectType:Value"),null).equals(context.getFormattedValue("category",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",201,e);}if (_boolean_result) { %>disabled="disabled"<% } %> value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("SearchandizingRedirectDetails.Select.button",null)),null)%>" class="button"/>
</td>
<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="4" height="1" alt="" border="0"/></td>
<td class="button">
<input type="submit" name="gotoTarget_category" <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("Form:RedirectType:Value"))))).booleanValue() && !((Boolean) ((((context.getFormattedValue(getObject("Form:RedirectType:Value"),null).equals(context.getFormattedValue("category",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((((Boolean) ((disableErrorMessages().isDefined(getObject("RedirectTargetObject"))))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",205,e);}if (_boolean_result) { %>disabled="disabled"<% } %> value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("SearchandizingRedirectDetails.Open.button",null)),null)%>" class="button"/>
</td>
</tr>
</table>
</td>
</tr>
<tr>
<td class="fielditem2" nowrap="nowrap">&nbsp;</td>
<td ><input type=radio name="<% {String value = null;try{value=context.getFormattedValue(getObject("Form:RedirectType:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {213}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" value="product" <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("Form:RedirectType:Value"))))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("Form:RedirectType:Value"),null).equals(context.getFormattedValue("product",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",213,e);}if (_boolean_result) { %>checked="checked"<% } %> onclick="enableElements(this.form, 'product');"/></td>
<td class="infobox_item">
<span><% {out.write(localizeISText("SearchandizingRedirectDetails.Product.infobox_item",null,null,null,null,null,null,null,null,null,null,null,null));} %>&nbsp;</span>
</td>
<td class="table_detail"><input type="text" name="ProductName" maxlength="" <% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (((((Boolean) ((disableErrorMessages().isDefined(getObject("Form:RedirectType:Value"))))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("Form:RedirectType:Value"),null).equals(context.getFormattedValue("product",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",219,e);}if (_boolean_result) { %>disabled="disabled"<% } else { %> value="<% {String value = null;try{value=context.getFormattedValue(getObject("RedirectTargetObject:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {219}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"<% } %> class="inputfield_en w100" /></td>
<td class="table_detail" colspan="2">
<table cellspacing="1" cellpadding="0" border="0">
<tr>
<td class="button">
<input type="submit" name="selectTarget_product" <% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (((((Boolean) ((disableErrorMessages().isDefined(getObject("Form:RedirectType:Value"))))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("Form:RedirectType:Value"),null).equals(context.getFormattedValue("product",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",224,e);}if (_boolean_result) { %>disabled="disabled"<% } %> value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("SearchandizingRedirectDetails.Select.button",null)),null)%>" class="button"/>
</td>
<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="4" height="1" alt="" border="0"/></td>
<td class="button">
<input type="submit" name="gotoTarget_product" <% _boolean_result=false;try {_boolean_result=((Boolean)(((!((Boolean) (((((Boolean) ((disableErrorMessages().isDefined(getObject("Form:RedirectType:Value"))))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("Form:RedirectType:Value"),null).equals(context.getFormattedValue("product",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((((Boolean) ((disableErrorMessages().isDefined(getObject("RedirectTargetObject"))))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",228,e);}if (_boolean_result) { %>disabled="disabled"<% } %> value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("SearchandizingRedirectDetails.Open.button",null)),null)%>" class="button"/>
</td>
</tr>
</table>
</td>
</tr>
<tr>
<td class="fielditem2" nowrap="nowrap">&nbsp;</td>
<td><input type=radio name="<% {String value = null;try{value=context.getFormattedValue(getObject("Form:RedirectType:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {236}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" value="page" <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("Form:RedirectType:Value"))))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("Form:RedirectType:Value"),null).equals(context.getFormattedValue("page",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",236,e);}if (_boolean_result) { %>checked="checked"<% } %> onclick="enableElements(this.form, 'page');"/></td>
<td class="infobox_item">
<span><% {out.write(localizeISText("SearchandizingRedirectDetails.Page.infobox_item",null,null,null,null,null,null,null,null,null,null,null,null));} %>&nbsp;</span>
</td>
<td class="table_detail"><input type="text" name="PageName" maxlength="" <% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (((((Boolean) ((disableErrorMessages().isDefined(getObject("Form:RedirectType:Value"))))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("Form:RedirectType:Value"),null).equals(context.getFormattedValue("page",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",240,e);}if (_boolean_result) { %>disabled="disabled"<% } else { %> value="<% processOpenTag(response, pageContext, "pageletentrypointdisplayname", new TagParameter[] {
new TagParameter("Locale",getObject("CurrentRequest:Locale")),
new TagParameter("PageletEntryPoint",getObject("RedirectTargetObject"))}, 240); %>"<% } %> class="inputfield_en w100" /></td>
<td class="table_detail" colspan="2">
<table cellspacing="1" cellpadding="0" border="0">
<tr>
<td class="button">
<input type="submit" name="selectTarget_page" <% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (((((Boolean) ((disableErrorMessages().isDefined(getObject("Form:RedirectType:Value"))))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("Form:RedirectType:Value"),null).equals(context.getFormattedValue("page",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",245,e);}if (_boolean_result) { %>disabled="disabled"<% } %> value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("SearchandizingRedirectDetails.Select.button",null)),null)%>" class="button"/>
</td>
<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="4" height="1" alt="" border="0"/></td>
<td class="button">
<input type="submit" name="gotoTarget_page" <% _boolean_result=false;try {_boolean_result=((Boolean)(((!((Boolean) (((((Boolean) ((disableErrorMessages().isDefined(getObject("Form:RedirectType:Value"))))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("Form:RedirectType:Value"),null).equals(context.getFormattedValue("page",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((((Boolean) ((disableErrorMessages().isDefined(getObject("RedirectTargetObject"))))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",249,e);}if (_boolean_result) { %>disabled="disabled"<% } %> value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("SearchandizingRedirectDetails.Open.button",null)),null)%>" class="button" />
</td>
</tr>
</table>
</td>
</tr>
<tr>
<td class="fielditem2" nowrap="nowrap">&nbsp;</td>
<td>
<input type=radio name="<% {String value = null;try{value=context.getFormattedValue(getObject("Form:RedirectType:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {258}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" value="search" <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("Form:RedirectType:Value"))))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("Form:RedirectType:Value"),null).equals(context.getFormattedValue("search",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",258,e);}if (_boolean_result) { %>checked="checked"<% } %> onclick="enableElements(this.form, 'search');"/>
</td>
<td class="infobox_item">
<span><% {out.write(localizeISText("SearchandizingRedirectDetails.Search.infobox_item",null,null,null,null,null,null,null,null,null,null,null,null));} %>&nbsp;</span>
</td>
<td class="table_detail"><input type="text" id="RedirectTargetSearch" name="<% {String value = null;try{value=context.getFormattedValue(getObject("Form:RedirectTarget:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {263}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" maxlength="" <% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (((((Boolean) ((disableErrorMessages().isDefined(getObject("Form:RedirectType:Value"))))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("Form:RedirectType:Value"),null).equals(context.getFormattedValue("search",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",263,e);}if (_boolean_result) { %>disabled="disabled"<% } else { %> value="<% {String value = null;try{value=context.getFormattedValue(getObject("Form:RedirectTarget:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {263}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"<% } %> class="inputfield_en w100" /></td>
<td class="table_detail" colspan="2">&nbsp;
</td>
</tr>
<tr>
<td class="fielditem2" nowrap="nowrap">&nbsp;</td>
<td>
<input type=radio name="<% {String value = null;try{value=context.getFormattedValue(getObject("Form:RedirectType:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {270}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" value="url" <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("Form:RedirectType:Value"))))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("Form:RedirectType:Value"),null).equals(context.getFormattedValue("url",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",270,e);}if (_boolean_result) { %>checked="checked"<% } %> onclick="enableElements(this.form, 'url');"/>
</td>
<td class="infobox_item">
<span><% {out.write(localizeISText("SearchandizingRedirectDetails.URL.infobox_item",null,null,null,null,null,null,null,null,null,null,null,null));} %>&nbsp;</span>
</td>
<td class="table_detail"><input type="text" id="RedirectTargetURL" name="<% {String value = null;try{value=context.getFormattedValue(getObject("Form:RedirectTarget:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {275}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" maxlength="" <% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (((((Boolean) ((disableErrorMessages().isDefined(getObject("Form:RedirectType:Value"))))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("Form:RedirectType:Value"),null).equals(context.getFormattedValue("url",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",275,e);}if (_boolean_result) { %>disabled="disabled"<% } else { %> value="<% {String value = null;try{value=context.getFormattedValue(getObject("Form:RedirectTarget:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {275}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"<% } %> class="inputfield_en w100" /></td>
<td colspan="2">&nbsp;</td>
</tr>
<tr>
<td colspan="5"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("RedirectAction"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",281,e);}if (_boolean_result) { %><tr>
<td class="fielditem2" nowrap="nowrap"><% {out.write(localizeISText("SearchandizingRedirectDetails.Preview.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td class="table_detail" colspan="5"><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((context.getFormattedValue(getObject("RedirectAction:RedirectType"),null).equals(context.getFormattedValue("category",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_CATALOGS")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("RedirectAction:RedirectTargetObject(CurrentChannel:RepositoryDomain)")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",285,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "previewlink", new TagParameter[] {
new TagParameter("linkTitle",localizeText(context.getFormattedValue("SearchandizingRedirectDetails.OpenASitePreviewDirectlyOnTheCatalogCategoryPage.linkTitle",null))),
new TagParameter("previewURL",url(true,(new URLPipelineAction(context.getFormattedValue("ViewRedirectAction-Preview",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("RedirectType",null),context.getFormattedValue("category",null))).addURLParameter(context.getFormattedValue("PreviewCatalogCategoryID",null),context.getFormattedValue(getObject("RedirectTargetObject:UUID"),null)).addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null)))),
new TagParameter("contextPipeline","ViewRedirectAction-EditRedirect"),
new TagParameter("contextValue0",getObject("SearchIndexID")),
new TagParameter("contextValue1",getObject("Form:Term:Value")),
new TagParameter("linkText",getObject("RedirectTargetObject:DisplayName")),
new TagParameter("imageTitle",localizeText(context.getFormattedValue("SearchandizingRedirectDetails.OpenASitePreviewDirectlyOnTheCatalogCategoryPage.imageTitle",null))),
new TagParameter("imageAlt",localizeText(context.getFormattedValue("SearchandizingRedirectDetails.OpenASitePreviewDirectlyOnTheCatalogCategoryPage.imageAlt",null))),
new TagParameter("linkClass","table_detail_link"),
new TagParameter("contextParameter0","SearchIndexID"),
new TagParameter("contextParameter1","Term")}, 286); %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((context.getFormattedValue(getObject("RedirectAction:RedirectType"),null).equals(context.getFormattedValue("product",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_CATALOGS")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("RedirectAction:RedirectTargetObject(CurrentChannel:RepositoryDomain)")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",296,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "previewlink", new TagParameter[] {
new TagParameter("linkTitle",localizeText(context.getFormattedValue("SearchandizingRedirectDetails.OpenASitePreviewDirectlyOnTheProductDetailPage.linkTitle",null))),
new TagParameter("previewURL",url(true,(new URLPipelineAction(context.getFormattedValue("ViewRedirectAction-Preview",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("RedirectType",null),context.getFormattedValue("product",null))).addURLParameter(context.getFormattedValue("ProductID",null),context.getFormattedValue(getObject("RedirectTargetObject:UUID"),null)))),
new TagParameter("contextPipeline","ViewRedirectAction-EditRedirect"),
new TagParameter("contextValue0",getObject("SearchIndexID")),
new TagParameter("contextValue1",getObject("Form:Term:Value")),
new TagParameter("linkText",getObject("RedirectTargetObject:Name")),
new TagParameter("imageTitle",localizeText(context.getFormattedValue("SearchandizingRedirectDetails.OpenASitePreviewDirectlyOnTheProductDetailPage.imageTitle",null))),
new TagParameter("imageAlt",localizeText(context.getFormattedValue("SearchandizingRedirectDetails.OpenASitePreviewDirectlyOnTheProductDetailPage.imageAlt",null))),
new TagParameter("linkClass","table_detail_link"),
new TagParameter("contextParameter0","SearchIndexID"),
new TagParameter("contextParameter1","Term")}, 297); %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((context.getFormattedValue(getObject("RedirectAction:RedirectType"),null).equals(context.getFormattedValue("page",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_CATALOGS")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("RedirectAction:RedirectTargetObject(CurrentChannel:RepositoryDomain)")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",307,e);}if (_boolean_result) { %><% {try{executePipeline("ProcessContentRepository-GetContentRepository",java.util.Collections.emptyMap(),"cms");}catch(Exception e){Logger.error(this,"ISPIPELINE failed. Line: 308.",e);}} %><% processOpenTag(response, pageContext, "previewlink", new TagParameter[] {
new TagParameter("linkTitle",localizeText(context.getFormattedValue("SearchandizingRedirectDetails.OpenASitePreviewForThisPageWithTheCurrentDate.linkTitle",null))),
new TagParameter("previewURL",url(true,(new URLPipelineAction(context.getFormattedValue("ViewRedirectAction-Preview",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("RedirectType",null),context.getFormattedValue("page",null))).addURLParameter(context.getFormattedValue("ContentRepositoryUUID",null),context.getFormattedValue(getObject("cms:ContentRepository:UUID"),null)).addURLParameter(context.getFormattedValue("PageletEntryPointUUID",null),context.getFormattedValue(getObject("RedirectTargetObject:UUID"),null)))),
new TagParameter("contextPipeline","ViewRedirectAction-EditRedirect"),
new TagParameter("contextValue0",getObject("SearchIndexID")),
new TagParameter("contextValue1",getObject("Form:Term:Value")),
new TagParameter("linkText",localizeText(context.getFormattedValue("SearchandizingRedirectDetails.ClickHere.linkText",null))),
new TagParameter("imageTitle",localizeText(context.getFormattedValue("SearchandizingRedirectDetails.OpenASitePreviewForThisPageWithTheCurrentDate.imageTitle",null))),
new TagParameter("imageAlt",localizeText(context.getFormattedValue("SearchandizingRedirectDetails.OpenASitePreviewForThisPageWithTheCurrentDate.imageAlt",null))),
new TagParameter("linkClass","table_detail_link"),
new TagParameter("contextParameter0","SearchIndexID"),
new TagParameter("contextParameter1","Term")}, 309); %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("RedirectAction:RedirectType"),null).equals(context.getFormattedValue("url",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",319,e);}if (_boolean_result) { %><a target="_blank" href="<% {String value = null;try{value=context.getFormattedValue(getObject("RedirectAction:RedirectTarget"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {320}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% {String value = null;try{value=context.getFormattedValue(getObject("RedirectAction:RedirectTarget"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {320}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></a><% } else { %><% {out.write(localizeISText("SearchandizingRedirectDetails.NA.link",null,null,null,null,null,null,null,null,null,null,null,null));} %><% }}}} %></td>
</tr><% } %> 
</table>
</td>
</tr>
<tr>
<td>
<table cellpadding="0" cellspacing="0" border="0" width="100%" class="w e s">
<tr>
<td align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("RedirectAction"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",339,e);}if (_boolean_result) { %><td class="button"><input type="submit" name="update" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("SearchandizingRedirectDetails.Apply.button",null)),null)%>" class="button"/></td>
<td class="button"><input type="reset" name="reset" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("SearchandizingRedirectDetails.Reset.button",null)),null)%>" class="button"/></td>
<td class="button"><input type="submit" name="confirmDelete" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("SearchandizingRedirectDetails.Delete.button",null)),null)%>" class="button"/></td><% } else { %><td class="button"><input type="submit" name="create" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("SearchandizingRedirectDetails.Apply.button",null)),null)%>" class="button"/></td>
<td class="button"><input type="submit" name="cancel" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("SearchandizingRedirectDetails.Cancel.button",null)),null)%>" class="button"/></td><% } %></tr>
</table>
</td>
</tr>
</table>
</td>
</tr>
</table>
</td> 
</tr>
</table><% out.print("</form>"); %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("RedirectAction"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",360,e);}if (_boolean_result) { %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/BackToList", null, "361");} %><% } %><% printFooter(out); %>