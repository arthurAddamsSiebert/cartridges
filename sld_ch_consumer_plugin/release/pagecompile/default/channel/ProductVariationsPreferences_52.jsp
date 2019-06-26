<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- Page Navigator --><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("hide","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewDomainPreference_52-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null))))),
new TagParameter("start","true"),
new TagParameter("text",localizeText(context.getFormattedValue("sld_ch_consumer_plugin.ChannelPreferences.text",null)))}, 4); %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductVariationsPreferences_52-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null))))),
new TagParameter("text",localizeText(context.getFormattedValue("sld_ch_consumer_plugin.ProductVariations.text",null)))}, 5); %><!-- EO Page Navigator -->
<!-- Working Area --><% URLPipelineAction action13 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductVariationsPreferences_52-Update",null)))),null));String site13 = null;String serverGroup13 = null;String actionValue13 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductVariationsPreferences_52-Update",null)))),null);if (site13 == null){  site13 = action13.getDomain();  if (site13 == null)  {      site13 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup13 == null){  serverGroup13 = action13.getServerGroup();  if (serverGroup13 == null)  {      serverGroup13 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductVariationsPreferences_52-Update",null)))),null));out.print("\"");out.print(" name=\"");out.print("ProductVariationsForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue13, site13, serverGroup13,true)); %><input name="webform-id" type="hidden" value="ProductVariationsForm"/>
<table cellpadding="0" cellspacing="0" border="0" width="100%">
<tr>
<td class="table_title w e s n"><% {out.write(localizeISText("sld_ch_consumer_plugin.ProductVariations.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ProductVariationsUnknownError"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",15,e);}if (_boolean_result) { %><tr>
<td>
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr>
<td class="error_icon e">
<img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/>
</td>
<td class="error" width="100%"><% {out.write(localizeISText("ProductVariationsPreferences_52.UnknownError.message",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
</td>
</tr><% } %><tr>
<td class="table_title_description w e s"><% {out.write(localizeISText("ProductVariationsPreferences_52.DefineHowProductsVariationsAreDisplayedInTheStorefront.table_title_description",null,null,context.getFormattedValue(context.webRoot(),null) + context.getFormattedValue(encodeString(context.getFormattedValue("/help/con_cat.html#con_cat_vari",null)),null),"tree_icon_link",null,null,null,null,null,null,null,null));} %><br/>
</td>
</tr>
<tr>
<td class="w e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" border="0" alt=""/></td>
</tr>
<tr>
<td>
<table border="0" cellspacing="0" cellpadding="0" width="100%" class="w e s">
<tr>
<td class="fielditem" nowrap="nowrap"><% {out.write(localizeISText("ProductVariationsPreferences_52.ListView.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td class="table_detail"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PRODUCTS_PREFERENCES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",47,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ProductVariationsForm:isSubmitted"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",48,e);}if (_boolean_result) { %><input type="checkbox" name="ProductVariationsForm_EnableAdvancedVariationHandling" value="true" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ProductVariationsForm:EnableAdvancedVariationHandling:Value"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",49,e);}if (_boolean_result) { %>checked="checked"<% } %>/><% } else { %><input type="checkbox" name="ProductVariationsForm_EnableAdvancedVariationHandling" value="true" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("EnableAdvancedVariationHandling"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",51,e);}if (_boolean_result) { %>checked="checked"<% } %>/><% } %><% } else { %><input type="checkbox" name="ProductVariationsForm_EnableAdvancedVariationHandling" value="true" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("EnableAdvancedVariationHandling"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",54,e);}if (_boolean_result) { %>checked="checked"<% } %> disabled="disabled"/><% } %></td>
<td class="table_detail" width="100%"><% {out.write(localizeISText("ProductVariationsFormPreferences_52.Enable.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td colspan="3"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></td>
</tr>
</table>
</td>
</tr>
</table><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PRODUCTS_PREFERENCES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",68,e);}if (_boolean_result) { %> 
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td align="right">
<table cellpadding="0" cellspacing="4" border="0">
<tr>
<td class="button"><input type="submit" name="update" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_ch_consumer_plugin.Apply.button",null)),null)%>" class="button"/></td>
</tr>
</table>
</td>
</tr>
</table><% } %><% out.print("</form>"); %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("SwatchImageUsingImageFW")))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("SwatchImageUsingImageFW"),null).equals(context.getFormattedValue("NotAvailable",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",82,e);}if (_boolean_result) { %><div><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" alt="" width="1" height="10" border="0"></div><% URLPipelineAction action14 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductVariationsPreferences_52-UpdateSwatch",null)))),null));String site14 = null;String serverGroup14 = null;String actionValue14 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductVariationsPreferences_52-UpdateSwatch",null)))),null);if (site14 == null){  site14 = action14.getDomain();  if (site14 == null)  {      site14 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup14 == null){  serverGroup14 = action14.getServerGroup();  if (serverGroup14 == null)  {      serverGroup14 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductVariationsPreferences_52-UpdateSwatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("ProductVariationsSwatchImageForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue14, site14, serverGroup14,true)); %><input name="webform-id" type="hidden" value="ProductVariationsSwatchImageForm"/>
<table cellpadding="0" cellspacing="0" border="0" width="100%">
<tr>
<td class="table_title w e s n"><% {out.write(localizeISText("sld_ch_consumer_plugin.ProductVariations.SwatchImage.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ProductVariationsSwatchImageUnknownError"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",91,e);}if (_boolean_result) { %><tr>
<td>
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr>
<td class="error_icon e">
<img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/>
</td>
<td class="error" width="100%"><% {out.write(localizeISText("ProductVariationsPreferences_52.UnknownError.message",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
</td>
</tr><% } %><tr>
<td class="table_title_description w e s"><% {out.write(localizeISText("ProductVariationsPreferences_52.DefineHowSwatchImagesGetTheirImageSource.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/>
</td>
</tr>
<tr>
<td class="w e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" border="0" alt=""/></td>
</tr>
<tr>
<td>
<table border="0" cellspacing="0" cellpadding="0" width="100%" class="w e s">
<tr>
<td class="fielditem" nowrap="nowrap" rowspan="2"><% {out.write(localizeISText("ProductVariationsPreferences_52.SwatchImage.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td><% {Object temp_obj = ("false"); getPipelineDictionary().put("SwatchImageRadioDisabled", temp_obj);} %><% {Object temp_obj = (getObject("SwatchImageUsingImageFW")); getPipelineDictionary().put("SwatchImageRadioChecked", temp_obj);} %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PRODUCTS_PREFERENCES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",122,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ProductVariationsSwatchImageForm:isSubmitted"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",123,e);}if (_boolean_result) { %><% {Object temp_obj = (getObject("ProductVariationsSwatchImageForm:SwatchImageUsingImageFW:Value")); getPipelineDictionary().put("SwatchImageRadioChecked", temp_obj);} %><% } %><% } else { %><% {Object temp_obj = ("true"); getPipelineDictionary().put("SwatchImageRadioDisabled", temp_obj);} %><% } %><td class="table_detail">
<input type="radio" name="ProductVariationsSwatchImageForm_SwatchImageUsingImageFW" value="true" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SwatchImageRadioChecked"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",130,e);}if (_boolean_result) { %>checked="checked"<% } %> <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SwatchImageRadioDisabled"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",130,e);}if (_boolean_result) { %>disabled="disabled"<% } %>/>
</td>
<td class="table_detail" width="100%"><% {out.write(localizeISText("ProductVariationsPreferences_52.SwatchImage.radio1",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td class="table_detail">
<input type="radio" name="ProductVariationsSwatchImageForm_SwatchImageUsingImageFW" value="false" <% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("SwatchImageRadioChecked"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",138,e);}if (_boolean_result) { %>checked="checked"<% } %> <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SwatchImageRadioDisabled"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",138,e);}if (_boolean_result) { %>disabled="disabled"<% } %>/>
</td>
<td class="table_detail" width="100%"><% {out.write(localizeISText("ProductVariationsPreferences_52.SwatchImage.radio2",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td colspan="3"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></td>
</tr>
</table>
</td>
</tr>
</table><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PRODUCTS_PREFERENCES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",151,e);}if (_boolean_result) { %> 
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td align="right">
<table cellpadding="0" cellspacing="4" border="0">
<tr>
<td class="button"><input type="submit" name="update" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_ch_consumer_plugin.Apply.button",null)),null)%>" class="button"/></td>
</tr>
</table>
</td>
</tr>
</table><% } %><% out.print("</form>"); %><% } else { %><!-- preference for the Product Variations Swatch Image using ImageFW is not available, run dbmigrate --><% } %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/Back", null, "168");} %><% printFooter(out); %>