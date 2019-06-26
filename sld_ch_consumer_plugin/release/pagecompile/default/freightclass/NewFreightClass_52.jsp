<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- Working Area -->
<!-- Main Content --><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewFreightClass_52-New",null))))),
new TagParameter("text",localizeText(context.getFormattedValue("NewFreightClass.text",null))),
new TagParameter("id","newFreightClass")}, 4); %><table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td><%
			getPipelineDictionary().put("SelectedTab", "General");
			%><table border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="w e n table_tabs_en_background" nowrap="nowrap"><% {out.write(localizeISText("General.table_tabs_en_background",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="e n s table_tabs_dis_background" nowrap="nowrap"><% {out.write(localizeISText("FreightEligibleShippingMethods.table_tabs_en_background",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="e n s table_tabs_dis_background" nowrap="nowrap"><% {out.write(localizeISText("Attributes.table_tabs_en_background",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="s" width="100%"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="1" border="0" alt=""/></td>
</tr>
</table>
</td>
</tr>
<tr>
<td width="100%" class="table_title w e s"><% {out.write(localizeISText("NewFreightClass.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<!-- errors --><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (getObject("FreightClassForm:FreightClassID:isMissing"))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("ErrorIDAlreadyExists"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) (getObject("FreightClassForm:FreightClassDisplayName:isMissing"))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",27,e);}if (_boolean_result) { %><tr>
<td>
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr valign="top">
<td class="error_icon top e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error top" width="100%"><b><% {out.write(localizeISText("NewFreightClass_52.TheFreightClassCouldNotBeCreated.error",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</b><br/><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("FreightClassForm:FreightClassID:isMissing"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",34,e);}if (_boolean_result) { %><% {out.write(localizeISText("NewFreightClass_52.TheFreightClassIDIsMandatoryPleaseProvideAFreight.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ErrorIDAlreadyExists"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",35,e);}if (_boolean_result) { %><% {out.write(localizeISText("NewFreightClass_52.TheFreightClassIDAlreadyExistsInDomainPleaseProvide.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("FreightClassForm:FreightClassDisplayName:isMissing"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",36,e);}if (_boolean_result) { %><% {out.write(localizeISText("NewFreightClass_52.TheFreightClassNameIsMandatoryPleaseProvideAFreight.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %></td>
</tr>
</table>
</td>
</tr><% } %><!-- EO errors-->
<tr>
<td class="table_title_description w e"><% {out.write(localizeISText("FieldsWithARedAsterisk.table_title_description",null,null,"star",null,null,null,null,null,null,null,null,null));} %><br/>
<br/><% {out.write(localizeISText("NewFreightClass_52.ClickApplyToSaveTheDetailsClickCancelToStop.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% URLPipelineAction action189 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewFreightClass_52-New",null)))),null));String site189 = null;String serverGroup189 = null;String actionValue189 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewFreightClass_52-New",null)))),null);if (site189 == null){  site189 = action189.getDomain();  if (site189 == null)  {      site189 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup189 == null){  serverGroup189 = action189.getServerGroup();  if (serverGroup189 == null)  {      serverGroup189 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewFreightClass_52-New",null)))),null));out.print("\"");out.print(" name=\"");out.print("freightClassLanguageForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue189, site189, serverGroup189,true)); %><table border="0" cellpadding="4" cellspacing="0" width="100%" class="infobox_locale aldi">
<tr>
<td class="infobox_item" nowrap="nowrap"><% {out.write(localizeISText("NewFreightClass_52.SelectLanguage.infobox_item",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td>
<select name="LocaleId" class="select inputfield_en"><% while (loop("Locales","Locales",null)) { %><option value="<% {String value = null;try{value=context.getFormattedValue(getObject("Locales:LocaleID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {61}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Locales:LocaleID"),null).equals(context.getFormattedValue(getObject("Locale:LocaleID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",61,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {String value = null;try{value=context.getFormattedValue(getObject("Locales:getDisplayName(CurrentSession:Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {61}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</option><% } %></select>
</td>
<td width="100%">
<table border="0" cellspacing="2" cellpadding="0">
<tr>
<td class="button"><input type="submit" name="apply" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("Apply.button",null)),null)%>" class="button"/></td>
</tr>
</table>
</td>
</tr>
</table><% out.print("</form>"); %><% URLPipelineAction action190 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewFreightClass_52-Dispatch",null)))),null));String site190 = null;String serverGroup190 = null;String actionValue190 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewFreightClass_52-Dispatch",null)))),null);if (site190 == null){  site190 = action190.getDomain();  if (site190 == null)  {      site190 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup190 == null){  serverGroup190 = action190.getServerGroup();  if (serverGroup190 == null)  {      serverGroup190 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewFreightClass_52-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("freightClassForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue190, site190, serverGroup190,true)); %><table cellpadding="0" cellspacing="0" border="0" width="100%" class="w e s">
<tr><td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="4" alt="" border="0"/></td></tr>
<tr>
<td class="table_detail">
<table cellpadding="0" cellspacing="0" border="0">
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("FreightClassForm:FreightClassDisplayName:isMissing"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",84,e);}if (_boolean_result) { %><td class="fielditem2_error" nowrap="nowrap"><% {out.write(localizeISText("FreightClassName.fielditem2_error",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></td><% } else { %><td class="fielditem2" nowrap="nowrap"><% {out.write(localizeISText("FreightClassName.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></td><% } %><td class="table_detail"><input type="text" name="FreightClassForm_FreightClassDisplayName" maxlength="256" size=55 value="<% {String value = null;try{value=context.getFormattedValue(getObject("FreightClassForm:FreightClassDisplayName:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {89}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="inputfield_en"/></td>
<td><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("FreightClassForm:FreightClassActive:Value"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",91,e);}if (_boolean_result) { %><input type="checkbox" name="FreightClassForm_FreightClassActive" checked="checked" value="true"/><% } else { %><input type="checkbox" name="FreightClassForm_FreightClassActive" value="true"/><% } %></td>
<td class="fielditem3"><% {out.write(localizeISText("NewFreightClass_52.Active.fielditem3",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("FreightClassForm:FreightClassID:isMissing"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",100,e);}if (_boolean_result) { %><td class="fielditem2_error" nowrap="nowrap"><% {out.write(localizeISText("FreightClassID.fielditem2_error",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></td><% } else { %><td class="fielditem2" nowrap="nowrap"><% {out.write(localizeISText("FreightClassID.fielditem2_error",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></td><% } %><td class="table_detail"><input type="text" name="FreightClassForm_FreightClassID" maxlength="256" size="55" value="<% {String value = null;try{value=context.getFormattedValue(getObject("FreightClassForm:FreightClassID:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {105}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="inputfield_en"/>&nbsp;&nbsp;&nbsp;</td>
<td><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("FreightClassForm:FreightClassDefault:Value"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",107,e);}if (_boolean_result) { %><input type="checkbox" name="FreightClassForm_FreightClassDefault" checked="checked" value="true"/><% } else { %><input type="checkbox" name="FreightClassForm_FreightClassDefault" value="true"/><% } %></td>
<td class="fielditem3"><% {out.write(localizeISText("NewFreightClass_52.Default.fielditem3",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td class="fielditem2" nowrap="nowrap"><% {out.write(localizeISText("NewFreightClass_52.Description.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td class="table_detail" colspan="3">
<textarea rows="10" cols="67" id="FreightClassForm_FreightClassDescription" name="FreightClassForm_FreightClassDescription" class="inputfield_en"><% {String value = null;try{value=context.getFormattedValue(getObject("FreightClassForm:FreightClassDescription:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {118}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></textarea>
</td>
</tr>
<tr>
<td class="table_detail2" nowrap="nowrap" colspan="4"><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("FreightClassForm:FreightClassShipAlone:Value"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",123,e);}if (_boolean_result) { %><input type="checkbox" name="FreightClassForm_FreightClassShipAlone" checked="checked" value="true"/><% } else { %><input type="checkbox" name="FreightClassForm_FreightClassShipAlone" value="true"/><% } %>
&nbsp;<% {out.write(localizeISText("ShipAlone.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td class="table_detail2" nowrap="nowrap" colspan="4"><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("FreightClassForm:FreightClassDigital:Value"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",132,e);}if (_boolean_result) { %><input type="checkbox" name="FreightClassForm_FreightClassDigital" checked="checked" value="true"/><% } else { %><input type="checkbox" name="FreightClassForm_FreightClassDigital" value="true"/><% } %>
&nbsp;<% {out.write(localizeISText("Digital.alt",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td class="table_detail2" nowrap="nowrap" colspan="4"><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("FreightClassForm:FreightClassService:Value"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",141,e);}if (_boolean_result) { %><input type="checkbox" name="FreightClassForm_FreightClassService" checked="checked" value="true"/><% } else { %><input type="checkbox" name="FreightClassForm_FreightClassService" value="true"/><% } %>
&nbsp;<% {out.write(localizeISText("Service.alt",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
</td>
</tr>
<tr><td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="4" alt="" border="0"/></td></tr>
<tr>
<td class="n" align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><input type="hidden" name="LocaleId" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Locale:LocaleID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {156}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><input type="submit" name="create" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("Apply.button",null)),null)%>" class="button"/></td>
<td class="button"><input type="hidden" name="FreightClassID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("FreightClassID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {157}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><input type="submit" name="cancelNew" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("Cancel.button",null)),null)%>" class="button"/></td>
</tr>
</table>
</td>
</tr>
</table><% out.print("</form>"); %><!-- EO Main Content -->
<!-- EO Working Area --><% printFooter(out); %>