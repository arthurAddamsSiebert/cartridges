<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- Working Area --><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductVariations_52-ProcessAssignmentMethod",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("AssignmentMethodForm_Method",null),context.getFormattedValue(getObject("AssignmentMethodForm_Method"),null))).addURLParameter(context.getFormattedValue("ProductID",null),context.getFormattedValue(getObject("Product:UUID"),null)))),
new TagParameter("wizard","true"),
new TagParameter("text",localizeText(context.getFormattedValue("ProductVariationSelectVariationType_52.VariationProductAssignmentStep2SelectVariationTypes.text",null)))}, 3); %><% URLPipelineAction action60 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductVariations_52-Dispatch",null)))),null));String site60 = null;String serverGroup60 = null;String actionValue60 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductVariations_52-Dispatch",null)))),null);if (site60 == null){  site60 = action60.getDomain();  if (site60 == null)  {      site60 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup60 == null){  serverGroup60 = action60.getServerGroup();  if (serverGroup60 == null)  {      serverGroup60 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductVariations_52-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("VariationTypesForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue60, site60, serverGroup60,true)); %><table cellpadding="0" cellspacing="0" border="0" width="100%">
<tr>
<td class="table_title aldi" nowrap="nowrap"><% {out.write(localizeISText("ProductVariationSelectVariationType_52.VariationProductAssignmentSelectVariationTypes.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ERROR_Variation"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",11,e);}if (_boolean_result) { %><tr>
<td>
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr valign="top">
<td class="error_icon top e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error top" width="100%"><b><% {out.write(localizeISText("ProductVariationSelectVariationType_52.TheVariationTypeCouldNotBeAppliedToTheProduct.error",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</b><br/><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ERROR_Variation"),null).equals(context.getFormattedValue("VariationTypeWithoutValues",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",18,e);}if (_boolean_result) { %><% {out.write(localizeISText("ProductVariationSelectVariationType_52.TheVariationTypeHasNoValuesItCannotBeUsed.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ERROR_Variation"),null).equals(context.getFormattedValue("DefaultVariationIsMissing",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",19,e);}if (_boolean_result) { %><% {out.write(localizeISText("ProductVariationSelectVariationType_52.TheProductHasNoDefaultVariation.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/><% } %></td>
</tr>
</table>
</td>
</tr><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ERROR_AddVariationTypes"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",26,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (hasLoopElements("Clipboard:ObjectUUIDs") ? Boolean.TRUE : Boolean.FALSE)).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",27,e);}if (_boolean_result) { %><tr>
<td>
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr valign="top">
<td class="error_icon top e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error top" width="100%"><% {out.write(localizeISText("ProductVariationSelectVariationType_52.YouHaveNotSelectedAnyVariationTypes.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
</td>
</tr><% } %><% } %></table>
<!-- Working Area -->
<table border="0" cellpadding="0" cellspacing="0" width="100%" class="w e">
<tr>
<td class="table_title_description"><% {out.write(localizeISText("ProductVariationSelectVariationType_52.Step2Of2SelectVariationTypes.table_title_description",null,null,url(true,(new URLPipelineAction(context.getFormattedValue("ViewProcessList_52-ListAll",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null))).addURLParameter(context.getFormattedValue("JobNamePrefix",null),context.getFormattedValue("Catalog",null))),"selection_link",null,null,null,null,null,null,null,null));} %><% {out.write(localizeISText("ProductVariationSelectVariationType_52.OnceAllVariationsAreCreatedTheyCanBeSeen.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0"><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (hasLoopElements("VariationTypes") ? Boolean.TRUE : Boolean.FALSE)).booleanValue() ? Boolean.FALSE : Boolean.TRUE) ))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",58,e);}if (_boolean_result) { %><tr>
<td>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="table_detail aldi"><% {out.write(localizeISText("ProductVariationSelectVariationType_52.CurrentlyThisChannelHasNoVariationTypes.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td align="right" class="w e s">
<table cellpadding="0" cellspacing="4" border="0">
<tr>
<input type="hidden" name="ChannelID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("CurrentChannel:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {71}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="ProductID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Product:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {72}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="UserID" value="<% {String value = null;try{value=context.getFormattedValue(context.getFormattedValue(getObject("CurrentUser:Profile:Credentials:Login"),null) + context.getFormattedValue(" (",null) + context.getFormattedValue(getObject("CurrentUser:Profile:DataSheet:FirstName"),null) + context.getFormattedValue(" ",null) + context.getFormattedValue(getObject("CurrentUser:Profile:DataSheet:LastName"),null) + context.getFormattedValue(")",null),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {73}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<td class="button"><input type="submit" name="cancelVariationType" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ProductVariationSelectVariationType_52.Cancel.button",null)),null)%>" class="button"/></td>
</tr>
</table>
</td>
</tr>
</table>
</td>
</tr><% } else { %><tr>
<td>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="table_header aldi" nowrap="nowrap" width="80">
<div id="A">
<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
<tr>
<td nowrap="nowrap"><a href="javascript:selectAll('VariationTypesForm','SelectedObjectUUID','A','B');" class="tableheader"><% {out.write(localizeISText("ProductVariationSelectVariationType_52.SelectAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a></td>
</tr>
</table>
</div>
<div id="B" style="display:none">
<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
<tr>
<td nowrap="nowrap"><a href="javascript:selectAll('VariationTypesForm','SelectedObjectUUID','A','B');" class="tableheader"><% {out.write(localizeISText("ProductVariationSelectVariationType_52.ClearAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a></td>
</tr>
</table>
</div>
</td>
<td class="table_header n e s" nowrap="nowrap"><% {out.write(localizeISText("ProductVariationSelectVariationType_52.Name.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header n e s" nowrap="nowrap"><% {out.write(localizeISText("ProductVariationSelectVariationType_52.AttributeName.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header n e s" nowrap="nowrap"><% {out.write(localizeISText("ProductVariationSelectVariationType_52.DisplayName.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header n e s" nowrap="nowrap"><% {out.write(localizeISText("ProductVariationSelectVariationType_52.ValueType.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header n e s" nowrap="nowrap"><% {out.write(localizeISText("ProductVariationSelectVariationType_52.Localized.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header n e s" nowrap="nowrap"><% {out.write(localizeISText("ProductVariationSelectVariationType_52.Values.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% while (loop("VariationTypes","VariationType",null)) { %><tr>
<td class="table_detail w e s top center"><% {Object temp_obj = (new Double(0)); getPipelineDictionary().put("ValuesCount", temp_obj);} %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("VariationType:isLocalized"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",114,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("VariationType:getValuesCount(LeadLocale)")).doubleValue() >((Number)(getObject("ValuesCount"))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",115,e);}if (_boolean_result) { %><% {Object temp_obj = (getObject("VariationType:getValuesCount(LeadLocale)")); getPipelineDictionary().put("ValuesCount", temp_obj);} %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("VariationType:getValuesCount(CurrentSession:Locale)")).doubleValue() >((Number)(getObject("ValuesCount"))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",118,e);}if (_boolean_result) { %><% {Object temp_obj = (getObject("VariationType:getValuesCount(CurrentSession:Locale)")); getPipelineDictionary().put("ValuesCount", temp_obj);} %><% } %><% } else { %><% {Object temp_obj = (getObject("VariationType:ValuesCount")); getPipelineDictionary().put("ValuesCount", temp_obj);} %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("ValuesCount")).doubleValue() >((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",124,e);}if (_boolean_result) { %><input type="hidden" name="ObjectUUID" value="<%=context.getFormattedValue(getObject("VariationType:UUID"),null)%>"/>
<input type="checkbox" name="SelectedObjectUUID" value="<%=context.getFormattedValue(getObject("VariationType:UUID"),null)%>" <% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Clipboard:contains(VariationType:UUID)"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",126,e);}if (_boolean_result) { %> checked="checked"<% } %> />
<input type="hidden" name="variationtype" value="<%=context.getFormattedValue(getObject("VariationType:UUID"),null)%>"/><% } else { %><% {out.write(localizeISText("ProductVariationSelectVariationType_52.NoValues.input",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %></td>
<td class="table_detail top e s" nowrap="nowrap"><% {String value = null;try{value=context.getFormattedValue(getObject("VariationType:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {132}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
<td class="table_detail top e s" nowrap="nowrap"><% {String value = null;try{value=context.getFormattedValue(getObject("VariationType:AttributeName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {133}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
<td class="table_detail top e s" nowrap="nowrap"><% {String value = null;try{value=context.getFormattedValue(getObject("VariationType:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {134}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
<td class="table_detail top e s left" nowrap="nowrap"><% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("VariationType:ValueType")).doubleValue() ==((Number)(new Double(3))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",136,e);}if (_boolean_result) { %><% {out.write(localizeISText("ProductVariationSelectVariationType_52.String.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("VariationType:ValueType")).doubleValue() ==((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",137,e);}if (_boolean_result) { %><% {out.write(localizeISText("ProductVariationSelectVariationType_52.Integer.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("VariationType:ValueType")).doubleValue() ==((Number)(new Double(2))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",138,e);}if (_boolean_result) { %><% {out.write(localizeISText("ProductVariationSelectVariationType_52.Double.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else { %><% {String value = null;try{value=context.getFormattedValue(getObject("VariationType:ValueType"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {139}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;
<% }}} %></td>
<td class="table_detail top e s left" nowrap="nowrap"><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("VariationType:isLocalized"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",143,e);}if (_boolean_result) { %><% {out.write(localizeISText("ProductVariationSelectVariationType_52.Yes.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else { %><% {out.write(localizeISText("ProductVariationSelectVariationType_52.No.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %></td>
<td class="table_detail top e s" nowrap="nowrap"><% {String value = null;try{value=context.getFormattedValue(getObject("ValuesCount"),new Integer(INTEGER),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {147}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
</tr><% } %></table>
<table class="w e s" width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td>
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button">
<input type="submit" name="backToAssignmentMethod" value="&lt;&lt;&nbsp;<%=context.getFormattedValue(localizeText(context.getFormattedValue("ProductVariationSelectVariationType_52.Previous.button",null)),null)%>" class="button"/>
</td>
</tr>
</table>
</td>
<td align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button">
<input type="hidden" name="ChannelID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("CurrentChannel:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {166}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="ProductID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Product:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {167}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="UserID" value="<% {String value = null;try{value=context.getFormattedValue(context.getFormattedValue(getObject("CurrentUser:Profile:Credentials:Login"),null) + context.getFormattedValue(" (",null) + context.getFormattedValue(getObject("CurrentUser:Profile:DataSheet:FirstName"),null) + context.getFormattedValue(" ",null) + context.getFormattedValue(getObject("CurrentUser:Profile:DataSheet:LastName"),null) + context.getFormattedValue(")",null),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {168}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="OrganizationUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Organization:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {169}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="ProcessDescription" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ProductVariationSelectVariationType_52.CreatesVariationsFromProducts.input",null)),null)%>"/>
<input type="submit" name="addVariationType" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ProductVariationSelectVariationType_52.Finish.button",null)),null)%>" class="button"/>
</td>
<td class="button"><input type="submit" name="cancelVariationType" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ProductVariationSelectVariationType_52.Cancel.button",null)),null)%>" class="button"/></td>
</tr>
</table>
</td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></td>
</tr>
</table>
<!-- Start Page Cursor -->
<table class="pagecursor" width="100%">
<tr>
<td><% processOpenTag(response, pageContext, "pagenavigationbar", new TagParameter[] {
new TagParameter("pipeline","ViewProductVariations_52-VariationTypePaging"),
new TagParameter("parametervalue",getObject("AssignmentMethodForm_Method")),
new TagParameter("parametername1","ProductID"),
new TagParameter("parametervalue1",getObject("Product:UUID")),
new TagParameter("formname","VariationTypesForm"),
new TagParameter("pageable","VariationTypes"),
new TagParameter("parametername","AssignmentMethodForm_Method")}, 187); %></td>
</tr>
</table>
<!-- End Page Cursor -->
</td>
</tr><% } %></table><% out.print("</form>"); %><!-- EO Main Content -->
<!-- EO Working Area --><% printFooter(out); %>