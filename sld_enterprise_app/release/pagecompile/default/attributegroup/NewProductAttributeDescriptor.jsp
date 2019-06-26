<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductAttributeDescriptors-New",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("AttributeGroupUUID",null),context.getFormattedValue(getObject("AttributeGroup:UUID"),null))))),
new TagParameter("text",localizeText(context.getFormattedValue("NewProductAttributeDescriptor.NewProductAttributeDescriptor.text",null))),
new TagParameter("id","newProductAttributeDescriptor")}, 3); %><table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" class="table_title aldi"><% {out.write(localizeISText("NewProductAttributeDescriptor.NewProductAttributeDescriptor.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ProductAttributeDescriptorForm:isSubmitted"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",9,e);}if (_boolean_result) { %><tr>
<td> 
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr valign="top"> 
<td class="error_icon top e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error top" width="100%"><% {out.write(localizeISText("NewProductAttributeDescriptor.ProductAttributeDescriptorCreationFailed.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Error_ID"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",17,e);}if (_boolean_result) { %><% {out.write(localizeISText("NewProductAttributeDescriptor.SpecifiedIDIsAlreadyInUsePleaseProvideAUniqueID.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %> 
<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("ProductAttributeDescriptorForm:ProductAttributeDescriptorID:isMissing")).booleanValue() || ((Boolean) getObject("ProductAttributeDescriptorForm:ProductAttributeDescriptorID:isInvalid")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",20,e);}if (_boolean_result) { %><% {out.write(localizeISText("NewProductAttributeDescriptor.PleaseProvideAValidIDForThisProductAttributeDescri.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/><% } %></td>
</tr>
</table> 
</td>
</tr><% } %><tr>
<td class="table_title_description w e s" nowrap="nowrap"><% {out.write(localizeISText("NewProductAttributeDescriptor.FieldsWithARedAsterisk.table_title_description",null,null,"star",null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% URLPipelineAction action183 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductAttributeDescriptors-New",null)))),null));String site183 = null;String serverGroup183 = null;String actionValue183 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductAttributeDescriptors-New",null)))),null);if (site183 == null){  site183 = action183.getDomain();  if (site183 == null)  {      site183 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup183 == null){  serverGroup183 = action183.getServerGroup();  if (serverGroup183 == null)  {      serverGroup183 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductAttributeDescriptors-New",null)))),null));out.print("\"");out.print(" name=\"");out.print("localeForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue183, site183, serverGroup183,true)); %><table border="0" cellpadding="4" cellspacing="0" width="100%" class="infobox_locale aldi">
<tr>
<td nowrap="nowrap" class="label_select"><label class="label label_select label_light" for="LocaleId"><% {out.write(localizeISText("NewProductAttributeDescriptor.SelectLanguage.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td>
<select name="LocaleId" id="LocaleId" class="select inputfield_en"><% while (loop("Locales","Locales",null)) { %><option value="<% {String value = null;try{value=context.getFormattedValue(getObject("Locales:LocaleID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {44}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Locales:LocaleID"),null).equals(context.getFormattedValue(getObject("Locale:LocaleID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",44,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {String value = null;try{value=context.getFormattedValue(getObject("Locales:getDisplayName(CurrentSession:Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {44}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</option><% } %></select>
</td>
<td width="100%">
<table border="0" cellspacing="2" cellpadding="0">
<tr>
<td class="button">
<input type="hidden" name="AttributeGroupUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("AttributeGroupUUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {52}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/> 
<input type="submit" name="apply" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("NewProductAttributeDescriptor.Apply.button",null)),null)%>" class="button"/>
</td>
</tr>
</table>
</td>
</tr>
</table><% out.print("</form>"); %> 
<% URLPipelineAction action184 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductAttributeDescriptors-Dispatch",null)))),null));String site184 = null;String serverGroup184 = null;String actionValue184 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductAttributeDescriptors-Dispatch",null)))),null);if (site184 == null){  site184 = action184.getDomain();  if (site184 == null)  {      site184 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup184 == null){  serverGroup184 = action184.getServerGroup();  if (serverGroup184 == null)  {      serverGroup184 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductAttributeDescriptors-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("ProductAttributeDescriptorForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue184, site184, serverGroup184,true)); %><input name="webform-id" type="hidden" value="ProductAttributeDescriptorForm"/>
<input name="AttributeGroupUUID" type="hidden" value="<%=context.getFormattedValue(getObject("AttributeGroup:UUID"),null)%>"/>
<table cellspacing="0" cellpadding="0" border="0" width="100%" class="w e s">
<tr>
<td colspan="4"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="4" alt="" border="0"/></td>
</tr>
<tr>
<td nowrap="nowrap" class="label"><label class="label" for="ProductAttributeDescriptorForm_DisplayName"><% {out.write(localizeISText("NewProductAttributeDescriptor.Name.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td class="table_detail">
<input type="text" name="ProductAttributeDescriptorForm_DisplayName" id="ProductAttributeDescriptorForm_DisplayName" class="inputfield_en" maxlength="2048" size="70" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ProductAttributeDescriptorForm:DisplayName:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {72}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
</td>
</tr>
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("ProductAttributeDescriptorForm:ProductAttributeDescriptorID:isMissing")).booleanValue() || ((Boolean) getObject("ProductAttributeDescriptorForm:ProductAttributeDescriptorID:isInvalid")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",76,e);}if (_boolean_result) { %><td nowrap="nowrap" class="label"><label class="label label_error" for="ProductAttributeDescriptorForm_ProductAttributeDescriptorID"><% {out.write(localizeISText("NewProductAttributeDescriptor.ID.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></label></td><% } else { %><td nowrap="nowrap" class="label"><label class="label" for="ProductAttributeDescriptorForm_ProductAttributeDescriptorID"><% {out.write(localizeISText("NewProductAttributeDescriptor.ID.label1",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></label></td><% } %><td class="table_detail" width="100%">
<input type="text" name="ProductAttributeDescriptorForm_ProductAttributeDescriptorID" id="ProductAttributeDescriptorForm_ProductAttributeDescriptorID" class="inputfield_en" maxlength="255" size="70" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ProductAttributeDescriptorForm:ProductAttributeDescriptorID:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {82}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
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
<input type="hidden" name="LocaleId" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Locale:LocaleID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {95}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input class="button" type="submit" name="Create" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("NewProductAttributeDescriptor.Apply.button",null)),null)%>"/>
</td>
<td class="button">
<input class="button" type="submit" name="CancelCreate" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("NewProductAttributeDescriptor.Cancel.button",null)),null)%>"/>
</td>
</tr>
</table> 
</td> 
</tr>
</table><% out.print("</form>"); %><!-- EO Working Area --><% printFooter(out); %>