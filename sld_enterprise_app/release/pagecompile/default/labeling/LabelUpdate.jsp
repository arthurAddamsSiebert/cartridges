<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/Modules", null, "2");} %><!-- Working Area --><% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("Label:DisplayName"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",5,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("text1",context.getFormattedValue(" - ",null) + context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.General.text1",null)),null)),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewLabel-Edit",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("LabelID",null),context.getFormattedValue(getObject("Label:UUID"),null))))),
new TagParameter("id","LabelDetail"),
new TagParameter("text",getObject("Label:DisplayName"))}, 6); %><% } else { %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("text1",context.getFormattedValue(" - ",null) + context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.General.text1",null)),null)),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewLabel-Edit",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("LabelID",null),context.getFormattedValue(getObject("Label:UUID"),null))))),
new TagParameter("id","LabelDetail"),
new TagParameter("text",getObject("Label:Name"))}, 8); %><% } %><% {Object temp_obj = ("General"); getPipelineDictionary().put("SelectedTab", temp_obj);} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"labeling/LabelTabs", null, "12");} %><!-- Titel and Description --><% URLPipelineAction action687 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewLabel-Dispatch",null)))),null));String site687 = null;String serverGroup687 = null;String actionValue687 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewLabel-Dispatch",null)))),null);if (site687 == null){  site687 = action687.getDomain();  if (site687 == null)  {      site687 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup687 == null){  serverGroup687 = action687.getServerGroup();  if (serverGroup687 == null)  {      serverGroup687 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewLabel-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("deleteForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue687, site687, serverGroup687,true)); %><table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" class="table_title w e s"><% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("Label:DisplayName"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",19,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("Label:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {20}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %><% {String value = null;try{value=context.getFormattedValue(getObject("Label:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {22}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("confirmSingleDelete"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",26,e);}if (_boolean_result) { %><tr>
<td>
<input type="hidden" name="LabelID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Label:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {29}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" /><% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("cancelbtnname","cancelUpdate"),
new TagParameter("okbtnname","singleDelete"),
new TagParameter("type","sdc")}, 30); %></td>
</tr><% } %><tr>
<td class="table_title_description w e s"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_LABELS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",36,e);}if (_boolean_result) { %><% {out.write(localizeISText("sld_enterprise_app.FieldsWithARedAsteriskSpanClassStarSpan.table_title_description",null,null,"star",null,null,null,null,null,null,null,null,null));} %><% } else { %><% {out.write(localizeISText("sld_enterprise_app.ThisPageShowsInformationAboutTheSelectedLabel.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %></td>
</tr>
</table><% out.print("</form>"); %><!-- EO Titel and Description --><% URLPipelineAction action688 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewLabel-Dispatch",null)))),null));String site688 = null;String serverGroup688 = null;String actionValue688 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewLabel-Dispatch",null)))),null);if (site688 == null){  site688 = action688.getDomain();  if (site688 == null)  {      site688 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup688 == null){  serverGroup688 = action688.getServerGroup();  if (serverGroup688 == null)  {      serverGroup688 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewLabel-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("setLocale");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue688, site688, serverGroup688,true)); %><table border="0" cellpadding="4" cellspacing="0" width="100%" class="infobox_locale w e s">
<tr>
<td nowrap="nowrap" class="label_select"><label class="label label_select label_light" for="LocaleId"><% {out.write(localizeISText("sld_enterprise_app.SelectLanguage.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td>
<select name="LocaleId" id="LocaleId" class="select inputfield_en"><% while (loop("Locales","Locales",null)) { %><option value="<% {String value = null;try{value=context.getFormattedValue(getObject("Locales:LocaleID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {54}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Locales:LocaleID"),null).equals(context.getFormattedValue(getObject("Locale:LocaleID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",54,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {String value = null;try{value=context.getFormattedValue(getObject("Locales:getDisplayName(CurrentSession:Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {54}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</option><% } %></select>
</td>
<td width="100%" align="left">
<table border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="button"><input type="submit" name="selectLocale" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.Apply.button",null)),null)%>" class="button"/><input type="hidden" name="LabelID" value="<%=context.getFormattedValue(getObject("Label:UUID"),null)%>"/></td>
</tr>
</table>
</td>
</tr>
</table><% out.print("</form>"); %><% URLPipelineAction action689 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewLabel-Dispatch",null)))),null));String site689 = null;String serverGroup689 = null;String actionValue689 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewLabel-Dispatch",null)))),null);if (site689 == null){  site689 = action689.getDomain();  if (site689 == null)  {      site689 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup689 == null){  serverGroup689 = action689.getServerGroup();  if (serverGroup689 == null)  {      serverGroup689 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewLabel-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("labelForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue689, site689, serverGroup689,true)); %><table cellspacing="0" cellpadding="0" border="0" class="w e s" width="100%">
<tr><td colspan="2"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="4" alt="" border="0"/></td></tr>
<tr>
<td nowrap="nowrap" class="label"><label class="label" for="LabelForm_DisplayName"><% {out.write(localizeISText("sld_enterprise_app.Name.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td class="table_detail" width="100%"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_LABELS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",75,e);}if (_boolean_result) { %><input type="text" name="LabelForm_DisplayName" id="LabelForm_DisplayName" maxlength="256" size="57" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Label:DisplayName(Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {76}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="inputfield_en"/><% } else { %><input type="text" name="LabelForm_DisplayName" id="LabelForm_DisplayName" maxlength="256" size="57" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Label:DisplayName(Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {78}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="inputfield_en" disabled="disabled"/><% } %></td>
</tr>
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_LABELS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",83,e);}if (_boolean_result) { %><td nowrap="nowrap" class="label"><label class="label" for="LabelForm_Name"><% {out.write(localizeISText("sld_enterprise_app.ID.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></label></td><% } else { %><td nowrap="nowrap" class="label"><label class="label" for="LabelForm_Name"><% {out.write(localizeISText("sld_enterprise_app.ID.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td><% } %><td class="table_detail">
<input type="text" name="LabelForm_Name" id="LabelForm_Name" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Label:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {89}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" size="57" disabled="disabled" class="inputfield_en"/>
</td>
</tr>
<tr>
<td nowrap="nowrap" class="label_textarea"><label class="label label_textarea" for="LabelForm_Description"><% {out.write(localizeISText("sld_enterprise_app.Description.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td class="table_detail"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_LABELS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",95,e);}if (_boolean_result) { %><textarea rows="5" cols="56" name="LabelForm_Description" id="LabelForm_Description" class="inputfield_en"><% {String value = null;try{value=context.getFormattedValue(getObject("Label:Description(Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {96}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></textarea><% } else { %><textarea rows="5" cols="56" name="LabelForm_Description" id="LabelForm_Description" class="inputfield_en" disabled="disabled"><% {String value = null;try{value=context.getFormattedValue(getObject("Label:Description(Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {98}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></textarea><% } %></td>
</tr>
<tr><td colspan="2"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="4" alt="" border="0"/></td></tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_LABELS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",103,e);}if (_boolean_result) { %><tr>
<td align="right" class="n" colspan="2">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><input name="LabelID" type="hidden" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Label:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {108}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><input name="webform-id" type="hidden" value="LabelForm"/><input type="hidden" name="LocaleId" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Locale:LocaleID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {108}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><input type="submit" name="update" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.Apply.button",null)),null)%>" class="button"/></td>
<td class="button"><input type="submit" name="cancelUpdate" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.Reset.button",null)),null)%>" class="button" /></td>
<td class="button"><input type="submit" name="confirmSingleDelete" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.Delete.button",null)),null)%>" class="button"/></td><% {Object temp_obj = ("false"); getPipelineDictionary().put("ContainsProducts", temp_obj);} %><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Label:AssignedTypes") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",112,e);}if (_boolean_result) { %><% while (loop("Label:AssignedTypes","AssignedType",null)) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("AssignedType"),null).equals(context.getFormattedValue("Product",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",114,e);}if (_boolean_result) { %><% {Object temp_obj = ("true"); getPipelineDictionary().put("ContainsProducts", temp_obj);} %><% if (getLoopStack().isEmpty()) {Logger.error(this,"ISBREAK occured outside ISLOOP. Line: {}",116);}else{getLoopStack().pop();break;} %><% } %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("ContainsProducts"),null).equals(context.getFormattedValue("false",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",119,e);}if (_boolean_result) { %><td class="button"><input type="submit" name="selectAction" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.EditAll.button",null)),null)%>" class="button" /></td><% } else { %><td class="button"><input type="submit" name="selectAction" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.EditAll.button",null)),null)%>" class="button" disabled="disabled"/></td><% } %><% } else { %><td class="button"><input type="submit" name="selectAction" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.EditAll.button",null)),null)%>" class="button" disabled="disabled"/></td><% } %></tr>
</table>
</td>
</tr><% } %></table><% out.print("</form>"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/BackToList", null, "134");} %><% printFooter(out); %>