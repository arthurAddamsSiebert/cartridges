<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- Working Area --><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannel-New",null))))),
new TagParameter("id","newChannel"),
new TagParameter("text",localizeText(context.getFormattedValue("NewChannel.NewChannel.text",null)))}, 4); %><% {Object temp_obj = ("New"); getPipelineDictionary().put("SelectedTab", temp_obj);} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"channel/ChannelTabs", null, "7");} %><table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" class="table_title w e s"><% {out.write(localizeISText("NewChannel.NewChannel.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<!-- start error handling --><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ChannelForm:isSubmitted"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",14,e);}if (_boolean_result) { %><tr>
<td>
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr valign="top">
<td class="error_icon e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error" width="100%"><% {out.write(localizeISText("NewChannel.ChannelCreationFailed.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ErrorCode")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ErrorCode"),null).equals(context.getFormattedValue("SiteNameNotUnique",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",22,e);}if (_boolean_result) { %><% {out.write(localizeISText("NewChannel.PleaseProvideAUniqueChannelID.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("ChannelForm:DisplayName:isMissing")).booleanValue() || ((Boolean) getObject("ChannelForm:DisplayName:isInvalid")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",25,e);}if (_boolean_result) { %><% {out.write(localizeISText("NewChannel.PleaseProvideAValidNameForTheChannel.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("ChannelForm:RepositoryID:isMissing")).booleanValue() || ((Boolean) getObject("ChannelForm:RepositoryID:isInvalid")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",28,e);}if (_boolean_result) { %><% {out.write(localizeISText("NewChannel.PleaseProvideAValidIdForTheChannelOnlyAlphanumeric.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("ChannelForm:RepositoryTypeCode:isMissing")).booleanValue() || ((Boolean) getObject("ChannelForm:RepositoryTypeCode:isInvalid")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",31,e);}if (_boolean_result) { %><% {out.write(localizeISText("NewChannel.PleaseSelectATypeForTheChannel.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %></td>
</tr>
</table>
</td>
</tr><% } %><!-- end error handling -->
<tr>
<td class="table_title_description w e" nowrap="nowrap"><% {out.write(localizeISText("NewChannel.FieldsWithARedAsterisk.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% URLPipelineAction action1 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannel-New",null)))),null));String site1 = null;String serverGroup1 = null;String actionValue1 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannel-New",null)))),null);if (site1 == null){  site1 = action1.getDomain();  if (site1 == null)  {      site1 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup1 == null){  serverGroup1 = action1.getServerGroup();  if (serverGroup1 == null)  {      serverGroup1 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannel-New",null)))),null));out.print("\"");out.print(" name=\"");out.print("localeForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue1, site1, serverGroup1,true)); %><table border="0" cellpadding="4" cellspacing="0" width="100%" class="infobox_locale aldi">
<tr>
<td nowrap="nowrap" class="label_select"><label class="label label_select label_light" for="LocaleId"><% {out.write(localizeISText("NewChannel.SelectLanguage.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td>
<select name="LocaleId" id="LocaleId" class="select inputfield_en"><% while (loop("Locales","Locales",null)) { %><option value="<% {String value = null;try{value=context.getFormattedValue(getObject("Locales:LocaleID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {54}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Locales:LocaleID"),null).equals(context.getFormattedValue(getObject("Locale:LocaleID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",54,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {String value = null;try{value=context.getFormattedValue(getObject("Locales:getDisplayName(CurrentSession:Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {54}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</option><% } %></select>
</td>
<td width="100%">
<table border="0" cellspacing="2" cellpadding="0">
<tr>
<td class="button"><input type="submit" name="apply" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("NewChannel.Apply.button",null)),null)%>" class="button"/></td>
</tr>
</table>
</td>
</tr>
</table><% out.print("</form>"); %><% URLPipelineAction action2 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannel-Dispatch",null)))),null));String site2 = null;String serverGroup2 = null;String actionValue2 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannel-Dispatch",null)))),null);if (site2 == null){  site2 = action2.getDomain();  if (site2 == null)  {      site2 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup2 == null){  serverGroup2 = action2.getServerGroup();  if (serverGroup2 == null)  {      serverGroup2 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannel-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("createCH");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue2, site2, serverGroup2,true)); %><input name="webform-id" type="hidden" value="ChannelForm"/>
<table cellspacing="0" cellpadding="0" border="0" width="100%" class="w e s">
<tr><td colspan="4"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="4" alt="" border="0"/></td></tr>
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("ChannelForm:DisplayName:isMissing")).booleanValue() || ((Boolean) getObject("ChannelForm:DisplayName:isInvalid")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",73,e);}if (_boolean_result) { %><td nowrap="nowrap" class="label"><label class="label label_error" for="ChannelForm_DisplayName"><% {out.write(localizeISText("NewChannel.Name.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></label></td><% } else { %><td nowrap="nowrap" class="label"><label class="label" for="ChannelForm_DisplayName"><% {out.write(localizeISText("NewChannel.Name.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></label></td><% } %><td class="table_detail"><input type="text" name="ChannelForm_DisplayName" id="ChannelForm_DisplayName" class="inputfield_en" size="37" maxlength="150" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ChannelForm:DisplayName:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {78}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/></td><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("ChannelForm:RepositoryID:isMissing")).booleanValue() || ((Boolean) getObject("ChannelForm:RepositoryID:isInvalid")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",79,e);}if (_boolean_result) { %><td nowrap="nowrap" class="label"><label class="label label_error" for="ChannelForm_RepositoryID"><% {out.write(localizeISText("NewChannel.ID.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></label></td><% } else { %><td nowrap="nowrap" class="label"><label class="label" for="ChannelForm_RepositoryID"><% {out.write(localizeISText("NewChannel.ID.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></label></td><% } %><td class="table_detail" width="100%"><input type="text" name="ChannelForm_RepositoryID" id="ChannelForm_RepositoryID" class="inputfield_en" size="37" maxlength="60" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ChannelForm:RepositoryID:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {84}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/></td>
</tr>
<tr><td colspan="4"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="1" alt="" border="0"/></td></tr>
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("ChannelForm:RepositoryTypeCode:isMissing")).booleanValue() || ((Boolean) getObject("ChannelForm:RepositoryTypeCode:isInvalid")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",88,e);}if (_boolean_result) { %><td class="label label_top" nowrap="nowrap"><label class="label label_radio label_error" for=""><% {out.write(localizeISText("NewChannel.Type.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></label></td><% } else { %><td class="label label_top" nowrap="nowrap"><label class="label label_radio" for=""><% {out.write(localizeISText("NewChannel.Type.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></label></td><% } %><td class="fielditem2" colspan="4"><% while (loop("ChannelTypes",null,null)) { %><table cellpadding="0" cellspacing="0" border="0">
<tr>
<td class="input_radio">
<input type="radio" name="ChannelForm_RepositoryTypeCode" id="<%=context.getFormattedValue(encodeString(context.getFormattedValue(getObject("ChannelTypes:DisplayName"),null)),null)%>" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ChannelTypes:ChannelTypeCode"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {98}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" 
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ChannelForm:RepositoryTypeCode:Value"),null).equals(context.getFormattedValue(getObject("NULL"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",99,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("DefaultRepositoryTypeCode"),null).equals(context.getFormattedValue(getObject("ChannelTypes:ChannelTypeCode"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",100,e);}if (_boolean_result) { %>checked="checked"<% } %> 
<% } else { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ChannelForm:RepositoryTypeCode:Value"),null).equals(context.getFormattedValue(getObject("ChannelTypes:ChannelTypeCode"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",102,e);}if (_boolean_result) { %>checked="checked"<% } %><% } %>
/>
</td>
<td class="label_radio_text">
<label class="label label_radio_text label_light" for="<% {String value = null;try{value=context.getFormattedValue(getObject("ChannelTypes:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {108}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("ChannelTypes:DisplayName"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",109,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("ChannelTypes:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {110}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %><% {String value = null;try{value=context.getFormattedValue(getObject("ChannelTypes:ChannelTypeCode"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {112}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %></label>
</td><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("DefaultRepositoryTypeCode"),null).equals(context.getFormattedValue(getObject("ChannelTypes:ChannelTypeCode"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",116,e);}if (_boolean_result) { %><td class="label_select">
<label class="label label_radio_text label_light" for="ChannelForm_AppTypeID"><% {out.write(localizeISText("NewChannel.WithApplicationType.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label>
</td>
<td class="table_detail">
<select name="ChannelForm_AppTypeID" id="ChannelForm_AppTypeID" class="select inputfield_en"><% while (loop("AppTypes","AppType",null)) { %><option value="<% {String value = null;try{value=context.getFormattedValue(getObject("AppType:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {123}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" ><% {String value = null;try{value=context.getFormattedValue(getObject("AppType:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {123}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</option><% } %></select>
</td><% } %></tr>
</table><% } %></td>
</tr>
<tr><td colspan="4"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="4" alt="" border="0"/></td></tr>
<tr>
<td nowrap="nowrap" class="label_textarea"><label class="label label_textarea" for="ChannelForm_ShortDescription"><% {out.write(localizeISText("NewChannel.Description.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td class="table_detail" colspan="3">
<textarea name="ChannelForm_ShortDescription" id="ChannelForm_ShortDescription" rows="5" cols="69" class="inputfield_en"><% {String value = null;try{value=context.getFormattedValue(getObject("ChannelForm:ShortDescription:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {137}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></textarea>
</td>
</tr>
<tr><td colspan="4"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></td></tr>
</table>
<table class="w e s" width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button">
<input class="button" type="submit" name="create" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("NewChannel.Apply.button",null)),null)%>"/>
<input type="hidden" name="LocaleId" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Locale:LocaleID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {149}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="SourceDataDeclaration" value="name"/>
<input type="hidden" name="name_FunctionClassName" value="com.intershop.component.mvc.capi.mapping.ProductAttributeMappingRule"/>
<input type="hidden" name="name_TypeCode" value="2"/>
<input type="hidden" name="name_MappingRuleDisplayName" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.Copy11.input",null)),null)%>"/>
<input type="hidden" name="name_attributeName" value="name"/>
<input type="hidden" name="name_attributeType" value="2"/>
<input type="hidden" name="name_DisplayName" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ProductRetailSetDetail.Name.table_header",null)),null)%>"/>
<input type="hidden" name="name_localeID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("CurrentSession:Locale:LocaleID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {157}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="name_ShortDescription" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ProductAttributeMapping.NameOfTheProduct.input",null)),null)%>"/>
<input type="hidden" name="SourceDataDeclaration" value="shortDescription"/>
<input type="hidden" name="shortDescription_FunctionClassName" value="com.intershop.component.mvc.capi.mapping.ProductAttributeMappingRule"/>
<input type="hidden" name="shortDescription_TypeCode" value="2"/>
<input type="hidden" name="shortDescription_MappingRuleDisplayName" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.Copy11.input",null)),null)%>"/>
<input type="hidden" name="shortDescription_attributeName" value="shortDescription"/>
<input type="hidden" name="shortDescription_attributeType" value="2"/>
<input type="hidden" name="shortDescription_DisplayName" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.ShortDescription.table_detail2",null)),null)%>"/>
<input type="hidden" name="shortDescription_localeID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("CurrentSession:Locale:LocaleID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {167}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="shortDescription_ShortDescription" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ProductAttributeMapping.ShortDescriptionForTheProduct.input",null)),null)%>"/><% while (loop("ActiveCurrencies","ActiveCurrency",null)) { %><input type="hidden" name="ActiveCurrency" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ActiveCurrency:Mnemonic"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {171}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="<% {String value = null;try{value=context.getFormattedValue(getObject("ActiveCurrency:Mnemonic"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {172}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>_FunctionClassName" value="com.intershop.component.mvc.capi.mapping.ProductPriceMappingRule"/>
<input type="hidden" name="<% {String value = null;try{value=context.getFormattedValue(getObject("ActiveCurrency:Mnemonic"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {173}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>_TypeCode" value="4"/>
<input type="hidden" name="<% {String value = null;try{value=context.getFormattedValue(getObject("ActiveCurrency:Mnemonic"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {174}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>_MappingRuleDisplayName" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.CopyPriceListPriceIsCopiedTargetCurrencySourceCurr.input",null)),null)%>"/>
<input type="hidden" name="<% {String value = null;try{value=context.getFormattedValue(getObject("ActiveCurrency:Mnemonic"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {175}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>_currency" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ActiveCurrency:Mnemonic"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {175}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="<% {String value = null;try{value=context.getFormattedValue(getObject("ActiveCurrency:Mnemonic"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {176}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>_DisplayName" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ActiveCurrency:CurrencyName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {176}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><% } %></td>
<td class="button"><input class="button" type="submit" name="cancelCreate" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("NewChannel.Cancel.button",null)),null)%>"/></td>
</tr>
</table>
</td>
</tr>
</table><% out.print("</form>"); %><!-- EO Working Area --><% printFooter(out); %>