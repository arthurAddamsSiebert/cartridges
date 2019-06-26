<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- search mask -->
<table border="0" cellpadding="5" cellspacing="0" width="100%" class="infobox w e s">
<tr>
<td class="infobox_title" nowrap="nowrap"><% {out.write(localizeISText("PromotionCodeSimpleSearchMask.SearchPanel.infobox_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td align="right">&nbsp; <%-- switch to advanced search --%></td>
</tr>
<tr>
<td colspan="4"><% URLPipelineAction action19 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue(context.getFormattedValue(getObject("ViewPipeline"),null) + context.getFormattedValue("-Dispatch",null),null)))),null));String site19 = null;String serverGroup19 = null;String actionValue19 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue(context.getFormattedValue(getObject("ViewPipeline"),null) + context.getFormattedValue("-Dispatch",null),null)))),null);if (site19 == null){  site19 = action19.getDomain();  if (site19 == null)  {      site19 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup19 == null){  serverGroup19 = action19.getServerGroup();  if (serverGroup19 == null)  {      serverGroup19 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue(context.getFormattedValue(getObject("ViewPipeline"),null) + context.getFormattedValue("-Dispatch",null),null)))),null));out.print("\"");out.print(" name=\"");out.print(context.getFormattedValue(getObject("PromotionCodeSimpleSearchForm:ID"),null));out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue19, site19, serverGroup19,true)); %><table>
<tr>
<td colspan="2">
<table border="0" cellpadding="0" cellspacing="0">
<tr>
<td class="label" nowrap="nowrap"><label class="label <% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("PromotionCodeSimpleSearchForm:Code:isInvalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",18,e);}if (_boolean_result) { %>label_error<% } %>" for="findSimple"><% {out.write(localizeISText("PromotionCodeSimpleSearchMask.PromotionCodes.code_infobox_item",null,null,null,null,null,null,null,null,null,null,null,null));} %><span class="star">*</span>:</label></td>
<td>
<input type="hidden" name="DefaultButton" value="findSimple"/>
<input type="text" id="PromotionCodeInput" name="<% {String value = null;try{value=context.getFormattedValue(getObject("PromotionCodeSimpleSearchForm:Code:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {21}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" value="<% {String value = null;try{value=context.getFormattedValue(getObject("PromotionCodeSimpleSearchForm:Code:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {21}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" maxlength="255" size="35" class="inputfield_en" autofocus/>
</td> 
<td>&nbsp;</td>
<td class="label nowrap" width="1%">
<label class="label<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ERROR_NoCustomerWithGivenID"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",25,e);}if (_boolean_result) { %> label_error<% } %>"
for="EmailLogonOrCustomerID"><% {out.write(localizeISText("PromotionCodeSimpleSearchMask.PromotionCodes.customer_infobox_item","",null,null,null,null,null,null,null,null,null,null,null));} %>:</label>
</td>
<td class="table_detail"><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ERROR_NoCustomerWithGivenID")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("CustomerSearch_NameOrID")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",29,e);}if (_boolean_result) { %><input class="inputfield_en" name="CustomerSearch_NameOrID" id="EmailLogonOrCustomerID" value="<%=context.getFormattedValue(getObject("CustomerSearch_NameOrID"),null)%>" size="30" maxlength="50" type="text"><% } else { %><input class="inputfield_en" name="CustomerSearch_NameOrID" id="EmailLogonOrCustomerID" size="30" maxlength="50" type="text"
<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("SelectedUserBO"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",33,e);}if (_boolean_result) { %>
value = "<% {String value = null;try{value=context.getFormattedValue(getObject("SelectedUserBO:BusinessPartnerNumber"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {34}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
<% } else { %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CustomerSearch_NameOrID"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",36,e);}if (_boolean_result) { %>
value="<% {String value = null;try{value=context.getFormattedValue(getObject("CustomerSearch_NameOrID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {37}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
<% } else { %>
value = ""
<% } %><% } %>
><% } %></td>
<td class="button">
<button type="button" class="button" value="..." name="selectCustomer" onclick="customerSearchSubmit();" style="width: 30px;" >...</button>
<img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" alt="" width="12" height="1" border="0">
</td>
<td>&nbsp;</td>
<td>
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button">
<input type="submit" id="findSimple" name="findSimple" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PromotionCodeSimpleSearchMask.Find.button",null)),null)%>" class="button"/>
</td>
</tr>
</table>
</td> 
</tr>
</table>
</td>
</tr>
</table>
</td>
</tr>
</table><% out.print("</form>"); %><script>
$(function(){
<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentStartNodeName")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("CurrentStartNodeName"),null).equals(context.getFormattedValue("ShowSearch",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",71,e);}if (_boolean_result) { %>
$("#PromotionCodeInput").focus();
<% } else { %>
$("#EmailLogonOrCustomerID").focus();
<% } %>
});
function customerSearchSubmit () {
$('form[name="<%=context.getFormattedValue(getObject("PromotionCodeSimpleSearchForm:ID"),null)%>"]').append($('<input type="hidden" name="selectCustomer" value="..." />')).submit();
}
</script><% printFooter(out); %>