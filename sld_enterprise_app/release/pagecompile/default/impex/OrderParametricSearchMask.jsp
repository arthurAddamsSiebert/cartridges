<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><tr>
<td>
<table border="0" cellpadding="5" cellspacing="0" width="100%" class="infobox w e s">
<tr>
<td class="infobox_subtitle" colspan="3"><% {out.write(localizeISText("OrderParametricSearchMask.GeneralOrderAttributes.infobox_subtitle",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td colspan="3"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></td>
</tr>
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("WFAdvancedSearch:DocumentNo:isInvalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",12,e);}if (_boolean_result) { %><td class="fielditem2_error"><% {out.write(localizeISText("OrderParametricSearchMask.OrderNumber.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td><% } else { %><td class="infobox_item" nowrap="nowrap"><% {out.write(localizeISText("OrderParametricSearchMask.OrderNumber.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td><% } %><td align="left" colspan="2"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("WFAdvancedSearch_DocumentNo"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",18,e);}if (_boolean_result) { %><input type="text" name="WFAdvancedSearch_DocumentNo" value="<% {String value = null;try{value=context.getFormattedValue(getObject("WFAdvancedSearch_DocumentNo"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {19}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" maxlength=35 size="35" class="inputfield_en"/><% } else { %><input type="text" name="WFAdvancedSearch_DocumentNo" value="<% {String value = null;try{value=context.getFormattedValue(getObject("WFSimpleSearch_DocumentNo"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {21}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" maxlength=35 size="35" class="inputfield_en"/><% } %></td>
</tr>
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("WFAdvancedSearch:CustomerName:isInvalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",27,e);}if (_boolean_result) { %><td class="fielditem2_error"><% {out.write(localizeISText("OrderParametricSearchMask.Customer.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td><% } else { %><td class="infobox_item" nowrap="nowrap"><% {out.write(localizeISText("OrderParametricSearchMask.Customer.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td><% } %><td align="left" colspan="2"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("WFAdvancedSearch_DocumentNo"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",33,e);}if (_boolean_result) { %><input type="text" name="WFAdvancedSearch_CustomerName" value="<% {String value = null;try{value=context.getFormattedValue(getObject("WFAdvancedSearch_CustomerName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {34}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" maxlength=35 size="35" class="inputfield_en"/><% } else { %><input type="text" name="WFAdvancedSearch_CustomerName" value="<% {String value = null;try{value=context.getFormattedValue(getObject("WFSimpleSearch_CustomerName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {36}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" maxlength=35 size="35" class="inputfield_en"/><% } %></td>
</tr>
<tr><td colspan="3"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></td></tr>
<tr>
<td>
<table border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="infobox_item" nowrap="nowrap"><% {out.write(localizeISText("OrderParametricSearchMask.CreationDateFrom.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
</tr>
<tr>
<td class="infobox_item"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="16" alt="" border="0"/></td>
</tr>
</table>
</td>
<td align="left" colspan="2">
<table border="0" cellpadding="0" cellspacing="0">
<tr><% processOpenTag(response, pageContext, "dateinput", new TagParameter[] {
new TagParameter("InputFieldName","WFAdvancedSearch_CreationDateFrom_Date"),
new TagParameter("DateString",getObject("WFAdvancedSearch_CreationDateFrom_Date")),
new TagParameter("InputFieldLabelClass","infobox_item"),
new TagParameter("Invalid",((disableErrorMessages().isDefined(getObject("CreationDateFromError")))))}, 55); %><% processOpenTag(response, pageContext, "timeinput", new TagParameter[] {
new TagParameter("InputFieldName","WFAdvancedSearch_CreationDateFrom_Time"),
new TagParameter("TimeString",getObject("WFAdvancedSearch_CreationDateFrom_Time")),
new TagParameter("InputFieldLabelClass","infobox_item"),
new TagParameter("Invalid",((disableErrorMessages().isDefined(getObject("CreationDateFromError")))))}, 61); %></tr>
</table>
</td>
</tr>
<tr>
<td>
<table border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="infobox_item" nowrap="nowrap">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<% {out.write(localizeISText("OrderExportConditions.To.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
</tr>
<tr>
<td class="infobox_item"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="16" alt="" border="0"/></td>
</tr>
</table>
</td>
<td align="left" colspan="2">
<table border="0" cellpadding="0" cellspacing="0">
<tr><% processOpenTag(response, pageContext, "dateinput", new TagParameter[] {
new TagParameter("InputFieldName","WFAdvancedSearch_CreationDateTo_Date"),
new TagParameter("DateString",getObject("WFAdvancedSearch_CreationDateTo_Date")),
new TagParameter("InputFieldLabelClass","infobox_item"),
new TagParameter("Invalid",((disableErrorMessages().isDefined(getObject("CreationDateToError")))))}, 85); %><% processOpenTag(response, pageContext, "timeinput", new TagParameter[] {
new TagParameter("InputFieldName","WFAdvancedSearch_CreationDateTo_Time"),
new TagParameter("TimeString",getObject("WFAdvancedSearch_CreationDateTo_Time")),
new TagParameter("InputFieldLabelClass","infobox_item"),
new TagParameter("Invalid",((disableErrorMessages().isDefined(getObject("CreationDateToError")))))}, 91); %></tr>
</table>
</td>
</tr>
<tr>
<td class="infobox_item" nowrap="nowrap"><% {out.write(localizeISText("OrderSimpleSearchMask.Channel.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td align="left" colspan="2">
<select name="ChannelUUID" style="1" class="inputfield_en" >
<option value="" selected="selected"><% {out.write(localizeISText("OrderExportConditions.AllChannels.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option><% while (loop("Repositories","Channel",null)) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ChannelUUID"),null).equals(context.getFormattedValue(getObject("Channel:UUID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",107,e);}if (_boolean_result) { %><option value="<%=context.getFormattedValue(getObject("Channel:UUID"),null)%>" selected="selected"><% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("Channel:DisplayName"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",108,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("Channel:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {108}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %><% {String value = null;try{value=context.getFormattedValue(getObject("Channel:Id"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {108}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %></option><% } else { %><option value="<%=context.getFormattedValue(getObject("Channel:UUID"),null)%>"><% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("Channel:DisplayName"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",110,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("Channel:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {110}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %><% {String value = null;try{value=context.getFormattedValue(getObject("Channel:Id"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {110}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %></option><% } %><% } %></select>
</td>
</tr>
<tr>
<td colspan="3"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></td>
</tr>
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("TotalFromError")))).booleanValue() || ((Boolean) getObject("WFAdvancedSearch:TotalFrom:isInvalid")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",120,e);}if (_boolean_result) { %><td class="fielditem2_error"><% {out.write(localizeISText("OrderParametricSearchMask.TotalAmountFrom.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td><% } else { %><td class="infobox_item" nowrap="nowrap"><% {out.write(localizeISText("OrderParametricSearchMask.TotalAmountFrom.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td><% } %><td align="left" colspan="2">
<table border="0" cellpadding="0" cellspacing="0">
<tr>
<td>
<input type="text" name="WFAdvancedSearch_TotalFrom" maxlength="10" value="<% {String value = null;try{value=context.getFormattedValue(getObject("WFAdvancedSearch_TotalFrom"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {131}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="inputfield_en"/>&nbsp;
</td><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("TotalToError")))).booleanValue() || ((Boolean) getObject("WFAdvancedSearch:TotalTo:isInvalid")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",133,e);}if (_boolean_result) { %><td class="fielditem2_error"><% {out.write(localizeISText("OrderExportConditions.To.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td><% } else { %><td class="infobox_item"><% {out.write(localizeISText("OrderExportConditions.To.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td><% } %><td>
<input type="text" name="WFAdvancedSearch_TotalTo" maxlength="10" value="<% {String value = null;try{value=context.getFormattedValue(getObject("WFAdvancedSearch_TotalTo"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {139}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="inputfield_en"/>&nbsp;
</td>
</tr>
</table>
</td>
</tr>
<tr>
<td colspan="3"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></td>
</tr>
<tr>
<td class="infobox_subtitle" colspan="3"><% {out.write(localizeISText("OrderParametricSearchMask.OrderDetails.infobox_subtitle",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td colspan="3"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></td>
</tr>
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("WFAdvancedSearch:ProductSKU:isInvalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",155,e);}if (_boolean_result) { %><td class="fielditem2_error"><% {out.write(localizeISText("OrderParametricSearchMask.OrderedProduct.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td><% } else { %><td class="infobox_item" nowrap="nowrap"><% {out.write(localizeISText("OrderParametricSearchMask.OrderedProduct.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td><% } %><td class="infobox_item" colspan="2"><input type="text" name="WFAdvancedSearch_ProductSKU" value="<% {String value = null;try{value=context.getFormattedValue(getObject("WFAdvancedSearch_ProductSKU"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {160}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" maxlength=35 size="35" class="inputfield_en"/>&nbsp;<% {out.write(localizeISText("OrderParametricSearchMask.NameOrID.infobox_item",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td class="infobox_item"><% {out.write(localizeISText("OrderParametricSearchMask.ProductAvailability.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td align="left" colspan="2">
<table border="0" cellpadding="0" cellspacing="0">
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (((!(context.getFormattedValue(getObject("WFAdvancedSearch_Available"),null).equals(context.getFormattedValue("1",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("WFAdvancedSearch_Available"),null).equals(context.getFormattedValue("0",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",167,e);}if (_boolean_result) { %><td><input type="radio" name="WFAdvancedSearch_Available" value="" checked="checked"/></td>
<td class="infobox_item"><% {out.write(localizeISText("ViewContextSearch.All.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td>&nbsp;<input type="radio" name="WFAdvancedSearch_Available" value="1"/></td>
<td class="infobox_item"><% {out.write(localizeISText("PageletAssignmentsProductsSelection.InStock.alt",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td>&nbsp;<input type="radio" name="WFAdvancedSearch_Available" value="0"/></td>
<td class="infobox_item"><% {out.write(localizeISText("OrderParametricSearchMask.OutOfStock.label",null,null,null,null,null,null,null,null,null,null,null,null));} %></td><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("WFAdvancedSearch_Available"),null).equals(context.getFormattedValue("1",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",174,e);}if (_boolean_result) { %><td><input type="radio" name="WFAdvancedSearch_Available" value=""/></td>
<td class="infobox_item"><% {out.write(localizeISText("ViewContextSearch.All.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td>&nbsp;<input type="radio" name="WFAdvancedSearch_Available" value="1" checked="checked"/></td>
<td class="infobox_item"><% {out.write(localizeISText("PageletAssignmentsProductsSelection.InStock.alt",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td>&nbsp;<input type="radio" name="WFAdvancedSearch_Available" value="0"/></td>
<td class="infobox_item"><% {out.write(localizeISText("OrderParametricSearchMask.OutOfStock.label",null,null,null,null,null,null,null,null,null,null,null,null));} %></td><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("WFAdvancedSearch_Available"),null).equals(context.getFormattedValue("0",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",181,e);}if (_boolean_result) { %><td><input type="radio" name="WFAdvancedSearch_Available" value=""/></td>
<td class="infobox_item"><% {out.write(localizeISText("ViewContextSearch.All.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td>&nbsp;<input type="radio" name="WFAdvancedSearch_Available" value="1"/></td>
<td class="infobox_item"><% {out.write(localizeISText("PageletAssignmentsProductsSelection.InStock.alt",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td>&nbsp;<input type="radio" name="WFAdvancedSearch_Available" value="0" checked="checked"/></td>
<td class="infobox_item"><% {out.write(localizeISText("OrderParametricSearchMask.OutOfStock.label",null,null,null,null,null,null,null,null,null,null,null,null));} %></td><% }}} %></tr>
</table>
</td>
</tr>
<tr>
<td align="right" colspan="3">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button">
<input type="hidden" name="SearchType" value="parametric"/>
<input type="submit" name="find" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PageletEntryPointSearchMask.Find.button",null)),null)%>" class="button"/>
</td>
</tr>
</table>
</td>
</tr>
</table>
</td>
</tr><% printFooter(out); %>