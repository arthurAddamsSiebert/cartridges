<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><tr>
<td>
<table border="0" cellpadding="5" cellspacing="0" width="100%" class="infobox w e s">
<tr>
<td class="infobox_subtitle" colspan="2"><% {out.write(localizeISText("OrderParametricSearchMask_52.GeneralOrderAttributes.infobox_subtitle",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td colspan="2"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></td>
</tr>
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("WFAdvancedSearch:DocumentNo:isInvalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",12,e);}if (_boolean_result) { %><td class="fielditem2_error" width="15%"><% {out.write(localizeISText("OrderParametricSearchMask_52.OrderNumber.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td><% } else { %><td class="infobox_item" nowrap="nowrap"><% {out.write(localizeISText("OrderParametricSearchMask_52.OrderNumber.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td><% } %><td align="left" width="85%"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("WFAdvancedSearch_DocumentNo"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",18,e);}if (_boolean_result) { %><input type="text" name="WFAdvancedSearch_DocumentNo" value="<% {String value = null;try{value=context.getFormattedValue(getObject("WFAdvancedSearch_DocumentNo"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {19}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" maxlength=35 size="35" class="inputfield_en"/><% } else { %><input type="text" name="WFAdvancedSearch_DocumentNo" value="<% {String value = null;try{value=context.getFormattedValue(getObject("WFSimpleSearch_DocumentNo"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {21}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" maxlength=35 size="35" class="inputfield_en"/><% } %></td>
</tr>
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("WFAdvancedSearch:CustomerName:isInvalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",27,e);}if (_boolean_result) { %><td class="fielditem2_error"><% {out.write(localizeISText("OrderParametricSearchMask_52.Customer",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td><% } else { %><td class="infobox_item" nowrap="nowrap"><% {out.write(localizeISText("OrderParametricSearchMask_52.Customer",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td><% } %><td align="left"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("WFAdvancedSearch_DocumentNo"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",33,e);}if (_boolean_result) { %><input type="text" name="WFAdvancedSearch_CustomerName" value="<% {String value = null;try{value=context.getFormattedValue(getObject("WFAdvancedSearch_CustomerName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {34}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" maxlength=35 size="35" class="inputfield_en"/><% } else { %><input type="text" name="WFAdvancedSearch_CustomerName" value="<% {String value = null;try{value=context.getFormattedValue(getObject("WFSimpleSearch_CustomerName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {36}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" maxlength=35 size="35" class="inputfield_en"/><% } %></td>
</tr>
<tr>
<td colspan="2"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></td>
</tr>
<tr>
<td>
<table border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="infobox_item" nowrap="nowrap"><% {out.write(localizeISText("OrderParametricSearchMask_52.CreationDateFrom.infobox_item",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
</tr>
<tr>
<td class="infobox_item"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="16" alt="" border="0"/></td>
</tr>
</table>
</td>
<td align="left">
<table border="0" cellpadding="0" cellspacing="0">
<tr><% processOpenTag(response, pageContext, "dateinput", new TagParameter[] {
new TagParameter("InputFieldName","WFAdvancedSearch_CreationDateFrom_Date"),
new TagParameter("DateString",getObject("WFAdvancedSearch_CreationDateFrom_Date")),
new TagParameter("InputFieldLabelClass","infobox_item"),
new TagParameter("Invalid",((disableErrorMessages().isDefined(getObject("CreationDateFromError")))))}, 57); %><% processOpenTag(response, pageContext, "timeinput", new TagParameter[] {
new TagParameter("InputFieldName","WFAdvancedSearch_CreationDateFrom_Time"),
new TagParameter("TimeString",getObject("WFAdvancedSearch_CreationDateFrom_Time")),
new TagParameter("InputFieldLabelClass","infobox_item"),
new TagParameter("Invalid",((disableErrorMessages().isDefined(getObject("CreationDateFromError")))))}, 63); %></tr>
</table>
</td>
</tr>
<tr>
<td>
<table border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="infobox_item" nowrap="nowrap">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<% {out.write(localizeISText("OrderParametricSearchMask_52.To",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
</tr>
<tr>
<td class="infobox_item"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="16" alt="" border="0"/></td>
</tr>
</table>
</td>
<td align="left">
<table border="0" cellpadding="0" cellspacing="0">
<tr><% processOpenTag(response, pageContext, "dateinput", new TagParameter[] {
new TagParameter("InputFieldName","WFAdvancedSearch_CreationDateTo_Date"),
new TagParameter("DateString",getObject("WFAdvancedSearch_CreationDateTo_Date")),
new TagParameter("InputFieldLabelClass","infobox_item"),
new TagParameter("Invalid",((disableErrorMessages().isDefined(getObject("CreationDateToError")))))}, 87); %><% processOpenTag(response, pageContext, "timeinput", new TagParameter[] {
new TagParameter("InputFieldName","WFAdvancedSearch_CreationDateTo_Time"),
new TagParameter("TimeString",getObject("WFAdvancedSearch_CreationDateTo_Time")),
new TagParameter("InputFieldLabelClass","infobox_item"),
new TagParameter("Invalid",((disableErrorMessages().isDefined(getObject("CreationDateToError")))))}, 93); %></tr>
</table>
</td>
</tr>
<tr>
<td colspan="2"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></td>
</tr>
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("TotalFromError")))).booleanValue() || ((Boolean) getObject("WFAdvancedSearch:TotalFrom:isInvalid")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",107,e);}if (_boolean_result) { %><td class="fielditem2_error"><% {out.write(localizeISText("OrderParametricSearchMask_52.TotalAmountFrom",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td><% } else { %><td class="infobox_item" nowrap="nowrap"><% {out.write(localizeISText("OrderParametricSearchMask_52.TotalAmountFrom",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td><% } %><td align="left">
<table border="0" cellpadding="0" cellspacing="0">
<tr>
<td>
<input type="text" name="WFAdvancedSearch_TotalFrom" maxlength="10" value="<% {String value = null;try{value=context.getFormattedValue(getObject("WFAdvancedSearch_TotalFrom"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {116}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="inputfield_en"/>&nbsp;
</td><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("TotalToError")))).booleanValue() || ((Boolean) getObject("WFAdvancedSearch:TotalTo:isInvalid")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",118,e);}if (_boolean_result) { %><td class="fielditem2_error"><% {out.write(localizeISText("OrderParametricSearchMask_52.To",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td><% } else { %><td class="infobox_item"><% {out.write(localizeISText("OrderParametricSearchMask_52.To",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td><% } %><td>
<input type="text" name="WFAdvancedSearch_TotalTo" maxlength="10" value="<% {String value = null;try{value=context.getFormattedValue(getObject("WFAdvancedSearch_TotalTo"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {124}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="inputfield_en"/>&nbsp;
</td>
</tr>
</table>
</td>
</tr>
<tr>
<td colspan="2"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></td>
</tr>
<tr>
<td class="infobox_title" colspan="2"><% {out.write(localizeISText("OrderParametricSearchMask_52.OrderDetails.infobox_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("WFAdvancedSearch:ProductSKU:isInvalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",137,e);}if (_boolean_result) { %><td class="fielditem2_error"><% {out.write(localizeISText("OrderParametricSearchMask_52.OrderedProduct",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td><% } else { %><td class="infobox_item" nowrap="nowrap"><% {out.write(localizeISText("OrderParametricSearchMask_52.OrderedProduct",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td><% } %><td class="infobox_item">
<input type="text" name="WFAdvancedSearch_ProductSKU" value="<% {String value = null;try{value=context.getFormattedValue(getObject("WFAdvancedSearch_ProductSKU"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {143}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" maxlength=35 size="35" class="inputfield_en"/>&nbsp;(<% {out.write(localizeISText("OrderParametricSearchMask_52.NameOrID.inputfield_en",null,null,null,null,null,null,null,null,null,null,null,null));} %>)
</td>
</tr>
<tr>
<td class="infobox_item"><% {out.write(localizeISText("OrderParametricSearchMask_52.ProductAvailability.infobox_item",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td align="left">
<table border="0" cellpadding="0" cellspacing="0">
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (((!(context.getFormattedValue(getObject("WFAdvancedSearch_Available"),null).equals(context.getFormattedValue("1",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("WFAdvancedSearch_Available"),null).equals(context.getFormattedValue("0",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",151,e);}if (_boolean_result) { %><td>
<input type="radio" name="WFAdvancedSearch_Available" value="" checked="checked"/>
</td>
<td class="infobox_item"><% {out.write(localizeISText("OrderParametricSearchMask_52.All.infobox_item",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td>
&nbsp;<input type="radio" name="WFAdvancedSearch_Available" value="1"/>
</td>
<td class="infobox_item"><% {out.write(localizeISText("OrderParametricSearchMask_52.InStock.infobox_item",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td>
&nbsp;<input type="radio" name="WFAdvancedSearch_Available" value="0"/>
</td>
<td class="infobox_item"><% {out.write(localizeISText("OrderParametricSearchMask_52.OutOfStock.infobox_item",null,null,null,null,null,null,null,null,null,null,null,null));} %></td><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("WFAdvancedSearch_Available"),null).equals(context.getFormattedValue("1",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",164,e);}if (_boolean_result) { %><td>
<input type="radio" name="WFAdvancedSearch_Available" value=""/>
</td>
<td class="infobox_item"><% {out.write(localizeISText("OrderParametricSearchMask_52.All.infobox_item",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td>
&nbsp;<input type="radio" name="WFAdvancedSearch_Available" value="1" checked="checked"/>
</td>
<td class="infobox_item"><% {out.write(localizeISText("OrderParametricSearchMask_52.InStock.infobox_item",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td>
&nbsp;<input type="radio" name="WFAdvancedSearch_Available" value="0"/>
</td>
<td class="infobox_item"><% {out.write(localizeISText("OrderParametricSearchMask_52.OutOfStock.infobox_item",null,null,null,null,null,null,null,null,null,null,null,null));} %></td><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("WFAdvancedSearch_Available"),null).equals(context.getFormattedValue("0",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",177,e);}if (_boolean_result) { %><td>
<input type="radio" name="WFAdvancedSearch_Available" value=""/>
</td>
<td class="infobox_item"><% {out.write(localizeISText("OrderParametricSearchMask_52.All.infobox_item",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td>
&nbsp;<input type="radio" name="WFAdvancedSearch_Available" value="1"/>
</td>
<td class="infobox_item"><% {out.write(localizeISText("OrderParametricSearchMask_52.InStock.infobox_item",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td>
&nbsp;<input type="radio" name="WFAdvancedSearch_Available" value="0" checked="checked"/>
</td>
<td class="infobox_item"><% {out.write(localizeISText("OrderParametricSearchMask_52.OutOfStock.infobox_item",null,null,null,null,null,null,null,null,null,null,null,null));} %></td><% }}} %></tr>
</table>
</td>
</tr>
<tr>
<td align="right" colspan="2">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button">
<input type="hidden" name="SearchType" value="parametric"/>
<input type="hidden" name="DefaultButton" value="find"/>
<input type="submit" name="find" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("OrderParametricSearchMask_52.Find.button",null)),null)%>" class="button"/>
</td>
</tr>
</table>
</td>
</tr>
</table>
</td>
</tr><% printFooter(out); %>