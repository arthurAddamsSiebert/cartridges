<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductAttributeGroups_52-New",null))))),
new TagParameter("text",localizeText(context.getFormattedValue("sld_ch_consumer_plugin.NewProductAttributeGroup.text",null))),
new TagParameter("id","newProductAttributeGroup")}, 3); %><!-- Tabs -->
<table border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="w e n table_tabs_en_background" nowrap="nowrap"><% {out.write(localizeISText("sld_ch_consumer_plugin.General.table_tabs_en_background",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="e n s table_tabs_dis_background" nowrap="nowrap"><% {out.write(localizeISText("sld_ch_consumer_plugin.Attributes.table_tabs_dis_background",null,null,null,null,null,null,null,null,null,null,null,null));} %></td><% {out.flush();processExtensionPoint((com.intershop.beehive.core.capi.request.ServletResponse)response,"NewProductAttributeGroup_52", null, "10");} %><td class="s" width="100%"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="1" border="0" alt=""/></td>
</tr>
</table>
<!-- EO Tabs -->
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" class="table_title w e s"><% {out.write(localizeISText("sld_ch_consumer_plugin.NewProductAttributeGroup.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<!-- start error handling --><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ProductAttributeGroupForm:isSubmitted"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",21,e);}if (_boolean_result) { %><tr>
<td> 
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr valign="top">
<td class="error_icon top e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error top" width="100%"><% {out.write(localizeISText("NewProductAttributeGroup_52.ProductAttributeGroupCreationFailed.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Error_ID"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",29,e);}if (_boolean_result) { %><% {out.write(localizeISText("sld_ch_consumer_plugin.SpecifiedIDIsAlreadyInUsePleaseProvideAUniqueID.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %> 
<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("ProductAttributeGroupForm:ProductAttributeGroupID:isMissing")).booleanValue() || ((Boolean) getObject("ProductAttributeGroupForm:ProductAttributeGroupID:isInvalid")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",32,e);}if (_boolean_result) { %><% {out.write(localizeISText("sld_ch_consumer_plugin.PleaseProvideAValidIDForTheProductAttributeGroup.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/><% } %></td>
</tr>
</table>
</td>
</tr><% } %><!-- end error handling -->
<tr>
<td class="table_title_description w e" nowrap="nowrap"><% {out.write(localizeISText("sld_ch_consumer_plugin.FieldsWithARedAsteriskAreMandatory.table_title_description",null,null,"star",null,null,null,null,null,null,null,null,null));} %><br/><br/><% {out.write(localizeISText("NewProductAttributeGroup_52.ClickApplyToSaveTheDetailsClickCancelToStopEveryth.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% URLPipelineAction action140 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductAttributeGroups_52-New",null)))),null));String site140 = null;String serverGroup140 = null;String actionValue140 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductAttributeGroups_52-New",null)))),null);if (site140 == null){  site140 = action140.getDomain();  if (site140 == null)  {      site140 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup140 == null){  serverGroup140 = action140.getServerGroup();  if (serverGroup140 == null)  {      serverGroup140 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductAttributeGroups_52-New",null)))),null));out.print("\"");out.print(" name=\"");out.print("setLocale");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue140, site140, serverGroup140,true)); %><table border="0" cellpadding="4" cellspacing="0" width="100%" class="infobox_locale aldi">
<tr>
<td class="infobox_item" nowrap="nowrap"><% {out.write(localizeISText("sld_ch_consumer_plugin.SelectLanguage.infobox_item",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td class="infobox_item">
<select name="LocaleId" class="select inputfield_en"><% while (loop("Locales","Locales",null)) { %><option value="<% {String value = null;try{value=context.getFormattedValue(getObject("Locales:LocaleID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {57}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Locales:LocaleID"),null).equals(context.getFormattedValue(getObject("Locale:LocaleID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",57,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {String value = null;try{value=context.getFormattedValue(getObject("Locales:getDisplayName(CurrentSession:Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {57}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</option><% } %></select>
</td>
<td width="100%">
<table border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="button">
<input type="submit" name="setLocale" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_ch_consumer_plugin.Apply.button",null)),null)%>" class="button"/>
</td>
</tr>
</table>
</td>
</tr>
</table><% out.print("</form>"); %> 
<% URLPipelineAction action141 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductAttributeGroups_52-Dispatch",null)))),null));String site141 = null;String serverGroup141 = null;String actionValue141 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductAttributeGroups_52-Dispatch",null)))),null);if (site141 == null){  site141 = action141.getDomain();  if (site141 == null)  {      site141 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup141 == null){  serverGroup141 = action141.getServerGroup();  if (serverGroup141 == null)  {      serverGroup141 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductAttributeGroups_52-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("ProductAttributeGroupForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue141, site141, serverGroup141,true)); %><input name="webform-id" type="hidden" value="ProductAttributeGroupForm"/>
<table cellspacing="0" cellpadding="0" border="0" width="100%" class="w e s">
<tr>
<td colspan="4"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="4" alt="" border="0"/></td>
</tr> 
<tr>
<td class="fielditem2" nowrap="nowrap"><% {out.write(localizeISText("sld_ch_consumer_plugin.Name.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td> 
<td>
<table cellspacing="0" cellpadding="0" border="0">
<tr>
<td class="table_detail">
<input type="text" name="ProductAttributeGroupForm_DisplayName" class="inputfield_en" maxlength="2048" size="70" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ProductAttributeGroupForm:DisplayName:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {87}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
</td>
<td class="input_checkbox" align="left"><% _boolean_result=false;try {_boolean_result=((Boolean)(((!((Boolean) (getObject("ProductAttributeGroupForm:isSubmitted"))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("ProductAttributeGroupForm:AvailableViaREST:Value"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",90,e);}if (_boolean_result) { %><input type="checkbox" name="ProductAttributeGroupForm_AvailableViaREST" checked="checked" value="true"/><% } else { %><input type="checkbox" name="ProductAttributeGroupForm_AvailableViaREST" value="true"/><% } %></td>
<td nowrap="nowrap" class="label_checkbox_text"><label class="label label_checkbox_text" for="ProductAttributeGroupForm_AvailableViaREST"><% {out.write(localizeISText("ProductAttributeGroup_52.AvailableViaRest.checkbox",null,null,null,null,null,null,null,null,null,null,null,null));} %></label></td>
</tr>
</table>
</td>
</tr> 
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("ProductAttributeGroupForm:ProductAttributeGroupID:isMissing")).booleanValue() || ((Boolean) getObject("ProductAttributeGroupForm:ProductAttributeGroupID:isInvalid")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",102,e);}if (_boolean_result) { %><td class="fielditem2_error" nowrap="nowrap"><% {out.write(localizeISText("sld_ch_consumer_plugin.ID.fielditem2_error",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></td><% } else { %><td class="fielditem2" nowrap="nowrap"><% {out.write(localizeISText("sld_ch_consumer_plugin.ID.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></td><% } %><td class="table_detail" width="100%">
<input type="text" name="ProductAttributeGroupForm_ProductAttributeGroupID" class="inputfield_en" maxlength="255" size="70" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ProductAttributeGroupForm:ProductAttributeGroupID:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {108}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
</td>
</tr>
<tr>
<td class="fielditem2"><% {out.write(localizeISText("sld_ch_consumer_plugin.Description.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td class="table_detail" colspan="3"> 
<textarea name="ProductAttributeGroupForm_Description" rows="10" cols="70" class="inputfield_en"><% {String value = null;try{value=context.getFormattedValue(getObject("ProductAttributeGroupForm:Description:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {115}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></textarea>
</td>
</tr>
<tr>
<td colspan="4"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></td>
</tr>
</table>
<table class="w e s" width="100%" border="0" cellspacing="0" cellpadding="0"> 
<tr>
<td align="right"> 
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button">
<input type="hidden" name="LocaleId" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Locale:LocaleID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {128}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input class="button" type="submit" name="Create" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_ch_consumer_plugin.Apply.button",null)),null)%>"/>
</td>
<td class="button">
<input class="button" type="submit" name="CancelCreate" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("NewProductAttributeGroup_52.Cancel.button",null)),null)%>"/>
</td>
</tr>
</table> 
</td> 
</tr>
</table><% out.print("</form>"); %><!-- EO Working Area --><% printFooter(out); %>