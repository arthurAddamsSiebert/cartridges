<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ChannelID"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",4,e);}if (_boolean_result) { %><% {Object temp_obj = (context.getFormattedValue("_",null) + context.getFormattedValue(getObject("CurrentChannel:TypeCode"),null)); getPipelineDictionary().put("ChannelTypeCode", temp_obj);} %><% } else { %><% {Object temp_obj = (""); getPipelineDictionary().put("ChannelTypeCode", temp_obj);} %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ChannelID"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",10,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue(context.getFormattedValue("ViewBulkOperationUnassignWizard",null) + context.getFormattedValue(getObject("ChannelTypeCode"),null) + context.getFormattedValue("-Dispatch",null),null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("selectAction",null),context.getFormattedValue("selectAction",null))).addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null)).addURLParameter(context.getFormattedValue("ActionID",null),context.getFormattedValue("UnassignProductLinks",null)).addURLParameter(context.getFormattedValue("PageableID",null),context.getFormattedValue(getObject("PageableID"),null)).addURLParameter(context.getFormattedValue("jumpToStep",null),context.getFormattedValue("2",null)).addURLParameter(context.getFormattedValue("IsSearchFired",null),context.getFormattedValue(getObject("IsSearchFired"),null)))),
new TagParameter("wizard","true"),
new TagParameter("text",localizeText(context.getFormattedValue("UnassignProductLinksSelectLinkType.Step2UnassignProductCategoryLinks.text",null)))}, 11); %><% } else { %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewBulkOperationUnassignWizard-Dispatch",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("selectAction",null),context.getFormattedValue("selectAction",null))).addURLParameter(context.getFormattedValue("ActionID",null),context.getFormattedValue("UnassignProductLinks",null)).addURLParameter(context.getFormattedValue("PageableID",null),context.getFormattedValue(getObject("PageableID"),null)).addURLParameter(context.getFormattedValue("jumpToStep",null),context.getFormattedValue("2",null)).addURLParameter(context.getFormattedValue("IsSearchFired",null),context.getFormattedValue(getObject("IsSearchFired"),null)))),
new TagParameter("wizard","true"),
new TagParameter("text",localizeText(context.getFormattedValue("UnassignProductLinksSelectLinkType.Step2UnassignProductCategoryLinks.text",null)))}, 20); %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("link_target")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",29,e);}if (_boolean_result) { %><% {Object temp_obj = ("product"); getPipelineDictionary().put("link_target", temp_obj);} %><% } %><% URLPipelineAction action191 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue(context.getFormattedValue("ViewBulkOperationUnassignWizard",null) + context.getFormattedValue(getObject("ChannelTypeCode"),null) + context.getFormattedValue("-Dispatch",null),null)))),null));String site191 = null;String serverGroup191 = null;String actionValue191 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue(context.getFormattedValue("ViewBulkOperationUnassignWizard",null) + context.getFormattedValue(getObject("ChannelTypeCode"),null) + context.getFormattedValue("-Dispatch",null),null)))),null);if (site191 == null){  site191 = action191.getDomain();  if (site191 == null)  {      site191 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup191 == null){  serverGroup191 = action191.getServerGroup();  if (serverGroup191 == null)  {      serverGroup191 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue(context.getFormattedValue("ViewBulkOperationUnassignWizard",null) + context.getFormattedValue(getObject("ChannelTypeCode"),null) + context.getFormattedValue("-Dispatch",null),null)))),null));out.print("\"");out.print(" name=\"");out.print("SelectLinkTypeForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue191, site191, serverGroup191,true)); %><table border="0" cellspacing="0" cellpadding="0" width="100%">
<tr>
<td class="table_title aldi" colspan="5"><% {out.write(localizeISText("UnassignProductLinksSelectLinkType.Step2UnassignProductCategoryLinks.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ErrorCode")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ErrorCode"),null).equals(context.getFormattedValue("NoLinkTypeSelected",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",40,e);}if (_boolean_result) { %><tr>
<td>
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr>
<td class="error_icon e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error top" width="100%"><% {out.write(localizeISText("UnassignProductLinksSelectLinkType.YouHaveNotSelectedALinkType.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
</td>
</tr><% } %><tr>
<td class="w e s table_title_description" colspan="5"><% {out.write(localizeISText("UnassignProductLinksSelectLinkType.Step2Of4NextStep.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></BR></BR><% {out.write(localizeISText("UnassignProductLinksSelectLinkType.FieldsWithARedAsterisk.table_title_description",null,null,"star",null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<table class="w e s" width="100%" cellspacing="0" cellpadding="0" border="0">
<tr>
<td colspan="2"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="10" alt="" border="0"/></td>
</tr>
<tr>
<td class="fielditem2" nowrap="nowrap" width="1%"><% {out.write(localizeISText("UnassignProductLinksSelectLinkType.Target.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span>
</td>
<td>
<table cellpadding="0" cellspacing="0" border="0">
<tr>
<td>
<input class="inputfield_en" type="radio" name="link_target" value="product" 
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("UnassignmentMap:get(\"link_target\")"),null).equals(context.getFormattedValue("product",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",75,e);}if (_boolean_result) { %>
checked="checked"
<% } %>
onclick="
document.getElementById('category_checkboxes').style.display='none'; document.getElementById('product_checkboxes').style.display='inline';
document.getElementById('select_unselect_buttons_category').style.display='none'; document.getElementById('select_unselect_buttons_product').style.display='inline';" 
/>
</td>
<td class="fielditem" colspan="1"><% {out.write(localizeISText("BrowseClassificationCatalog.Product.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td>
<input class="inputfield_en" type="radio" name="link_target" value="category" 
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("UnassignmentMap:get(\"link_target\")"),null).equals(context.getFormattedValue("category",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",90,e);}if (_boolean_result) { %>
checked="checked"
<% } %>
onclick="
document.getElementById('product_checkboxes').style.display='none'; document.getElementById('category_checkboxes').style.display='inline';
document.getElementById('select_unselect_buttons_product').style.display='none'; document.getElementById('select_unselect_buttons_category').style.display='inline';" 
/>
</td>
<td class="fielditem" colspan="1"><% {out.write(localizeISText("sld_enterprise_app.Category",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
</td>
</tr>
<tr>
<td colspan="2"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="8" alt="" border="0"/></td>
</tr>
<tr>
<td class="fielditem2<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ErrorCode")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ErrorCode"),null).equals(context.getFormattedValue("NoLinkTypeSelected",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",109,e);}if (_boolean_result) { %>_error<% } %>" nowrap="nowrap"><% {out.write(localizeISText("UnassignProductLinksSelectLinkType.LinkTypeTheSelectedProducts.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>...: <span class="star">*</span>
</td>
<td class="fielditem2" >
<div id="select_unselect_buttons_product" <% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("link_target"),null).equals(context.getFormattedValue("product",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",113,e);}if (_boolean_result) { %>style="display:none"<% } %>>
<a href="<%=context.getFormattedValue("#",null)%>" class="tableheader" onclick="$('<%=context.getFormattedValue("#",null)%>product_checkboxes input[type=checkbox]:not(:disabled)').prop('checked',true).trigger('change'); return false;"><strong><% {out.write(localizeISText("UnassignProductLinksSelectLinkType.SelectAll",null,null,null,null,null,null,null,null,null,null,null,null));} %></strong></a>&nbsp;&nbsp;|&nbsp;&nbsp;
<a href="<%=context.getFormattedValue("#",null)%>" class="tableheader" onclick="$('<%=context.getFormattedValue("#",null)%>product_checkboxes input[type=checkbox]:not(:disabled)').prop('checked',false).trigger('change'); return false;"><strong><% {out.write(localizeISText("AssignProductLinksActionSelectTargetProducts.ClearAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></strong></a>
</div>
<div id="select_unselect_buttons_category" <% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("link_target"),null).equals(context.getFormattedValue("category",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",117,e);}if (_boolean_result) { %>style="display:none"<% } %>>
<a href="<%=context.getFormattedValue("#",null)%>" class="tableheader" onclick="$('<%=context.getFormattedValue("#",null)%>category_checkboxes input[type=checkbox]:not(:disabled)').prop('checked',true).trigger('change'); return false;"><strong><% {out.write(localizeISText("AssignProductLinksActionSelectTargetProducts.SelectAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></strong></a>&nbsp;&nbsp;|&nbsp;&nbsp;
<a href="<%=context.getFormattedValue("#",null)%>" class="tableheader" onclick="$('<%=context.getFormattedValue("#",null)%>category_checkboxes input[type=checkbox]:not(:disabled)').prop('checked',false).trigger('change'); return false;"><strong><% {out.write(localizeISText("AssignProductLinksActionSelectTargetProducts.ClearAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></strong></a> 
</div>
</td>
</tr>
<tr>
<td>&nbsp;</td>
<td>
<div id="product_checkboxes" <% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("link_target"),null).equals(context.getFormattedValue("product",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",126,e);}if (_boolean_result) { %>style="display:none"<% } %>>
<table cellpadding="0" cellspacing="0" border="0" width="100%">
<tr>
<td>
<table cellpadding="0" cellspacing="0" border="0"><% while (loop("ProductLinkTypeSummaryIter","ProductLinkTypeSummary","ProductLinkCount")) { %><tr>
<td class="input_checkbox" nowrap="nowrap">
<input type="checkbox" 
name="product_outgoing_<% {String value = null;try{value=context.getFormattedValue(getObject("ProductLinkTypeSummary:TypeCodeDefinition:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {135}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" 
id="product_<% {String value = null;try{value=context.getFormattedValue(getObject("ProductLinkTypeSummary:TypeCodeDefinition:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {136}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>_outgoing_product_links"
<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (((((Boolean) getObject("ProductLinkTypeSummary:ProductLinkAllowed")).booleanValue() && ((Boolean) getObject("ProductLinkTypeSummary:ProductLinkAvailable")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",137,e);}if (_boolean_result) { %>
disabled="disabled"
<% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("UnassignmentMap:get(\"product_outgoing_ProductLinkTypeSummaryMap\"):get(ProductLinkTypeSummary:TypeCodeDefinition:Name)"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",140,e);}if (_boolean_result) { %>
checked="checked"
<% } %>
/>
</td>
<td class="label_checkbox_text">
<label class="label label_checkbox_text label_light"><% {out.write(localizeISText("UnassignProductLinksSelectLinkType.Have.label",null,null,null,null,null,null,null,null,null,null,null,null));} %> <% {out.write(localizeISText(context.getFormattedValue(context.getFormattedValue("typeCodeDefinition.",null) + context.getFormattedValue(getObject("ProductLinkTypeSummary:TypeCodeDefinition:Group"),null) + context.getFormattedValue(".",null) + context.getFormattedValue(getObject("ProductLinkTypeSummary:TypeCodeDefinition:Name"),null) + context.getFormattedValue(".displayName",null),null),"",null,null,null,null,null,null,null,null,null,null,null));} %></label>
</td>
</tr><% } %></table>
</td>
<td><% while (loop("ProductLinkTypeSummaryIter","ProductLinkTypeSummary","ProductLinkCount")) { %><table cellpadding="0" cellspacing="0" border="0" >
<tr>
<td class="input_checkbox" nowrap="nowrap">
<input type="checkbox" 
name="product_incoming_<% {String value = null;try{value=context.getFormattedValue(getObject("ProductLinkTypeSummary:TypeCodeDefinition:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {160}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" 
id="product_<% {String value = null;try{value=context.getFormattedValue(getObject("ProductLinkTypeSummary:TypeCodeDefinition:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {161}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>_incoming_product_links"
<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (((((Boolean) getObject("ProductLinkTypeSummary:ProductLinkAllowed")).booleanValue() && ((Boolean) getObject("ProductLinkTypeSummary:ProductLinkAvailable")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",162,e);}if (_boolean_result) { %>
disabled="disabled"
<% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("UnassignmentMap:get(\"product_incoming_ProductLinkTypeSummaryMap\"):get(ProductLinkTypeSummary:TypeCodeDefinition:Name)"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",165,e);}if (_boolean_result) { %>
checked="checked"
<% } %>
/>
</td>
<td class="label_checkbox_text">
<label class="label label_checkbox_text label_light"><% {out.write(localizeISText("UnassignProductLinksSelectLinkType.Are.label",null,null,null,null,null,null,null,null,null,null,null,null));} %> <% {out.write(localizeISText(context.getFormattedValue(context.getFormattedValue("typeCodeDefinition.",null) + context.getFormattedValue(getObject("ProductLinkTypeSummary:TypeCodeDefinition:Group"),null) + context.getFormattedValue(".",null) + context.getFormattedValue(getObject("ProductLinkTypeSummary:TypeCodeDefinition:Name"),null) + context.getFormattedValue(".displayName",null),null),"",null,null,null,null,null,null,null,null,null,null,null));} %></label>
</td>
</tr>
</table><% } %></td>
<td width="100%">&nbsp;</td>
</tr>
</table>
</div>
<div id="category_checkboxes" <% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("link_target"),null).equals(context.getFormattedValue("category",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",183,e);}if (_boolean_result) { %>style="display:none"<% } %>>
<table cellpadding="0" cellspacing="0" border="0">
<tr>
<td>
<table cellpadding="0" cellspacing="0" border="0"><% while (loop("ProductLinkTypeSummaryIter","ProductLinkTypeSummary","ProductLinkCount")) { %><tr>
<td class="input_checkbox" nowrap="nowrap">
<input type="checkbox" 
name="category_<% {String value = null;try{value=context.getFormattedValue(getObject("ProductLinkTypeSummary:TypeCodeDefinition:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {192}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" 
id="category_<% {String value = null;try{value=context.getFormattedValue(getObject("ProductLinkTypeSummary:TypeCodeDefinition:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {193}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (((((Boolean) getObject("ProductLinkTypeSummary:CategoryLinkAllowed")).booleanValue() && ((Boolean) getObject("ProductLinkTypeSummary:CategoryLinkAvailable")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",194,e);}if (_boolean_result) { %>
disabled="disabled"
<% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("UnassignmentMap:get(\"category_ProductLinkTypeSummaryMap\"):get(ProductLinkTypeSummary:TypeCodeDefinition:Name)"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",197,e);}if (_boolean_result) { %>
checked="checked"
<% } %>
/>
</td>
<td class="label_checkbox_text">
<label class="label label_checkbox_text label_light"><% {out.write(localizeISText("UnassignProductLinksSelectLinkType.Have.label",null,null,null,null,null,null,null,null,null,null,null,null));} %> <% {out.write(localizeISText(context.getFormattedValue(context.getFormattedValue("typeCodeDefinition.",null) + context.getFormattedValue(getObject("ProductLinkTypeSummary:TypeCodeDefinition:Group"),null) + context.getFormattedValue(".",null) + context.getFormattedValue(getObject("ProductLinkTypeSummary:TypeCodeDefinition:Name"),null) + context.getFormattedValue(".displayName",null),null),"",null,null,null,null,null,null,null,null,null,null,null));} %></label>
</td>
</tr><% } %></table>
</td>
<td>
<table cellpadding="0" cellspacing="0" border="0"><% while (loop("ProductLinkTypeSummaryIter","ProductLinkTypeSummary","ProductLinkCount")) { %><% {Object temp_obj = (context.getFormattedValue(getObject("ProductLinkTypeSummary:TypeCodeDefinition:Name"),null) + context.getFormattedValue("_C",null)); getPipelineDictionary().put("ProductLinkTypeSummaryTypeCodeDefName", temp_obj);} %><tr>
<td class="input_checkbox" nowrap="nowrap">
<input type="checkbox" 
name="category_<% {String value = null;try{value=context.getFormattedValue(context.getFormattedValue(getObject("ProductLinkTypeSummary:TypeCodeDefinition:Name"),null) + context.getFormattedValue("_C",null),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {218}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" 
id="category_<% {String value = null;try{value=context.getFormattedValue(context.getFormattedValue(getObject("ProductLinkTypeSummary:TypeCodeDefinition:Name"),null) + context.getFormattedValue("_C",null),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {219}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (((((Boolean) getObject("ProductLinkTypeSummary:CategoryLinkAllowed")).booleanValue() && ((Boolean) getObject("ProductLinkTypeSummary:CategoryLinkAvailable")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",220,e);}if (_boolean_result) { %>
disabled="disabled"
<% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("UnassignmentMap:get(\"category_ProductLinkTypeSummaryMap\"):get(ProductLinkTypeSummaryTypeCodeDefName)"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",223,e);}if (_boolean_result) { %>
checked="checked"
<% } %>
/>
</td>
<td class="label_checkbox_text">
<label class="label label_checkbox_text label_light"><% {out.write(localizeISText("UnassignProductLinksSelectLinkType.Are.label",null,null,null,null,null,null,null,null,null,null,null,null));} %> <% {out.write(localizeISText(context.getFormattedValue(context.getFormattedValue("typeCodeDefinition.",null) + context.getFormattedValue(getObject("ProductLinkTypeSummary:TypeCodeDefinition:Group"),null) + context.getFormattedValue(".",null) + context.getFormattedValue(getObject("ProductLinkTypeSummary:TypeCodeDefinition:Name"),null) + context.getFormattedValue(".displayName",null),null),"",null,null,null,null,null,null,null,null,null,null,null));} %></label>
</td>
</tr><% } %></table>
</td>
<td width="100%">&nbsp;</td></tr><tr><td>&nbsp;</td>
</tr>
</table>
</div>
</td>
</tr>
<tr>
<td colspan="2"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="10" alt="" border="0"/></td>
</tr>
</table>
<table class="w e s" width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td align="left">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button">
<input type="submit" name="actionList" value="&lt;&lt;&nbsp;<%=context.getFormattedValue(localizeText(context.getFormattedValue("PageletSelectComponentSlot.Previous.button",null)),null)%>" class="button"/>
<input type="hidden" name="PageableID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("PageableID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {255}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="ActionID" value="UnassignProductLinks"/>
<input type="hidden" name="currentStep" value="2"/>
<input type="hidden" name="IsSearchFired" value="<% {String value = null;try{value=context.getFormattedValue(getObject("IsSearchFired"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {258}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" />
</td>
</tr>
</table>
</td>
<td align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button">
<input type="submit" name="nextStep" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ComponentSelectPageletAssignmentButtons.Next.button",null)),null)%>&nbsp;&gt;&gt;" class="button"/>
</td>
<td class="button">
<input type="submit" name="cancel" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PageletEntryPointSetParent.Cancel.button",null)),null)%>" class="button"/>
</td>
</tr>
</table>
</td>
</tr>
</table><% out.print("</form>"); %><% printFooter(out); %>