<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- Working Area -->
<!-- Page Navigator --><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewUserGroup_52-New",null))))),
new TagParameter("id","ConsumerGroup/Detail"),
new TagParameter("text",localizeText(context.getFormattedValue("NewUserGroup_52.NewCustomerSegmentGeneral.text",null)))}, 5); %><!-- Tabs -->
<table border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="w e n table_tabs_en_background" nowrap="nowrap"><% {out.write(localizeISText("NewUserGroup_52.General.table_tabs_en_background",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="e n s table_tabs_dis_background" nowrap="nowrap"><% {out.write(localizeISText("NewUserGroup_52.Customers.table_tabs_dis_background",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="s" width="100%"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="1" border="0" alt=""/></td>
</tr>
</table>
<!-- EO Tabs -->
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" class="table_title w e s"><% {out.write(localizeISText("NewUserGroup_52.NewCustomerSegment.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<!-- start error handling --><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("UserGroupForm:isSubmitted"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",22,e);}if (_boolean_result) { %><tr>
<td>
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr valign="top">
<td class="error_icon top e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error top" width="100%"><% {out.write(localizeISText("NewUserGroup_52.CustomerSegmentCreationFailed.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ErrorCode"),null).equals(context.getFormattedValue("UserGroupIDIsNotUnique",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",30,e);}if (_boolean_result) { %><% {out.write(localizeISText("NewUserGroup_52.CustomerSegmentIdIsAlreadyInUse.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ErrorCode"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",32,e);}if (_boolean_result) { %><% {out.write(localizeISText("NewUserGroup_52.Error.error",null,null,null,null,null,null,null,null,null,null,null,null));} %>: <% {String value = null;try{value=context.getFormattedValue(getObject("ErrorCode"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {33}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% }} %> 
<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("UserGroupForm:Name:isMissing")).booleanValue() || ((Boolean) getObject("UserGroupForm:Name:isInvalid")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",35,e);}if (_boolean_result) { %><% {out.write(localizeISText("NewUserGroup_52.PleaseProvideAValidNameForTheCustomerSegment.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("UserGroupForm:UserGroupID:isMissing")).booleanValue() || ((Boolean) getObject("UserGroupForm:UserGroupID:isInvalid")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",38,e);}if (_boolean_result) { %><% {out.write(localizeISText("NewUserGroup_52.PleaseProvideAValidIdForTheCustomerSegment.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("UserGroupForm:Description:isInvalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",41,e);}if (_boolean_result) { %><% {out.write(localizeISText("NewUserGroup_52.PleaseProvideAValidDescriptionForTheCustomerSegment.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/><% } %></td>
</tr>
</table>
</td>
</tr><% } %><!-- end error handling -->
<tr>
<td class="table_title_description w e s"><% {out.write(localizeISText("NewUserGroup_52.FieldsWithRedAsteriskAreMandatory.table_title_description",null,null,"star",null,null,null,null,null,null,null,null,null));} %><br/><br/><% {out.write(localizeISText("NewUserGroup_52.ClickApplyToSaveTheDetails.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% URLPipelineAction action291 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewUserGroup_52-New",null)))),null));String site291 = null;String serverGroup291 = null;String actionValue291 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewUserGroup_52-New",null)))),null);if (site291 == null){  site291 = action291.getDomain();  if (site291 == null)  {      site291 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup291 == null){  serverGroup291 = action291.getServerGroup();  if (serverGroup291 == null)  {      serverGroup291 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewUserGroup_52-New",null)))),null));out.print("\"");out.print(" name=\"");out.print("setLocale");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue291, site291, serverGroup291,true)); %><table border="0" cellpadding="4" cellspacing="0" width="100%" class="infobox_locale w e s">
<tr>
<td nowrap="nowrap" class="label_select"><label class="label label_select label_light" for="LocaleId"><% {out.write(localizeISText("NewUserGroup_52.SelectLanguage.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td>
<select name="LocaleId" id="LocaleId" class="select inputfield_en"><% while (loop("Locales","Locales",null)) { %><option value="<% {String value = null;try{value=context.getFormattedValue(getObject("Locales:LocaleID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {66}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Locales:LocaleID"),null).equals(context.getFormattedValue(getObject("Locale:LocaleID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",66,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {String value = null;try{value=context.getFormattedValue(getObject("Locales:getDisplayName(CurrentSession:Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {66}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</option><% } %></select>
</td>
<td width="100%">
<table border="0" cellspacing="2" cellpadding="0">
<tr>
<td class="button">
<input type="hidden" name="ChannelID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ChannelRepository:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {74}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="submit" name="apply" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("NewUserGroup_52.Apply.button",null)),null)%>" class="button"/>
</td>
</tr>
</table>
</td>
</tr>
</table><% out.print("</form>"); %><% URLPipelineAction action292 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewUserGroup_52-Dispatch",null)))),null));String site292 = null;String serverGroup292 = null;String actionValue292 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewUserGroup_52-Dispatch",null)))),null);if (site292 == null){  site292 = action292.getDomain();  if (site292 == null)  {      site292 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup292 == null){  serverGroup292 = action292.getServerGroup();  if (serverGroup292 == null)  {      serverGroup292 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewUserGroup_52-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("UserGroupForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue292, site292, serverGroup292,true)); %><table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td>
<input type="hidden" name="webform_id" value="UserGroupForm"/>
<input type="hidden" name="ChannelID" value="<%=context.getFormattedValue(getObject("ChannelRepository:UUID"),null)%>"/>
<table cellspacing="0" cellpadding="0" border="0" width="100%" class="w e s">
<tr><td colspan="2"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="4" alt="" border="0"/></td></tr>
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("UserGroupForm:Name:isMissing")).booleanValue() || ((Boolean) getObject("UserGroupForm:Name:isInvalid")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",93,e);}if (_boolean_result) { %><td nowrap="nowrap" class="label"><label class="label label_error" for="UserGroupForm_Name"><% {out.write(localizeISText("NewUserGroup_52.Name.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></label></td><% } else { %><td nowrap="nowrap" class="label"><label class="label" for="UserGroupForm_Name"><% {out.write(localizeISText("NewUserGroup_52.Name.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></label></td><% } %><td class="table_detail"><input type="text" name="UserGroupForm_Name" id="UserGroupForm_Name" class="inputfield_en" size="37" value="<% {String value = null;try{value=context.getFormattedValue(getObject("UserGroupForm:Name:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {98}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/></td>
</tr>
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("UserGroupForm:UserGroupID:isMissing")).booleanValue() || ((Boolean) getObject("UserGroupForm:UserGroupID:isInvalid")).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("ErrorCode"),null).equals(context.getFormattedValue("UserGroupIDIsNotUnique",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",101,e);}if (_boolean_result) { %><td nowrap="nowrap" class="label"><label class="label label_error" for="UserGroupForm_UserGroupID"><% {out.write(localizeISText("NewUserGroup_52.ID.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></label></td><% } else { %><td nowrap="nowrap" class="label"><label class="label" for="UserGroupForm_UserGroupID"><% {out.write(localizeISText("NewUserGroup_52.ID.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></label></td><% } %><td class="table_detail" width="100%"><input type="text" class="inputfield_en" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("NewUserGroup_52.CG_.inputfield_en",null)),null)%>" disabled="disabled" size="3"/><input type="text" id ="UserGroupForm_UserGroupID" name="UserGroupForm_UserGroupID" class="inputfield_en" size="37" value="<% {String value = null;try{value=context.getFormattedValue(getObject("UserGroupForm:UserGroupID:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {106}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/></td>
</tr>
<tr><td colspan="2"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="1" alt="" border="0"/></td></tr>
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("UserGroupForm:Description:isInvalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",110,e);}if (_boolean_result) { %><td nowrap="nowrap" class="label_textarea"><label class="label label_textarea label_error" for="UserGroupForm_Description"><% {out.write(localizeISText("NewUserGroup_52.Description.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td><% } else { %><td nowrap="nowrap" class="label_textarea"><label class="label label_textarea" for="UserGroupForm_Description"><% {out.write(localizeISText("NewUserGroup_52.Description.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td><% } %><td class="table_detail" colspan="3">
<textarea name="UserGroupForm_Description" id="UserGroupForm_Description" rows="5" cols="69" class="inputfield_en"><% {String value = null;try{value=context.getFormattedValue(getObject("UserGroupForm:Description:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {116}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></textarea>
</td>
</tr>
<tr><td colspan="2"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></td></tr>
</table>
<table class="w e s" width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button">
<input type="hidden" name="LocaleId" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Locale:LocaleID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {127}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input class="button" type="submit" name="create" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("NewUserGroup_52.Apply.button",null)),null)%>"/>
</td>
<td class="button"><input class="button" type="submit" name="cancelCreate" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("NewUserGroup_52.Cancel.button",null)),null)%>"/></td>
</tr>
</table>
</td>
</tr>
</table>
</td>
</tr>
</table><% out.print("</form>"); %><!-- EO Working Area --><% printFooter(out); %>