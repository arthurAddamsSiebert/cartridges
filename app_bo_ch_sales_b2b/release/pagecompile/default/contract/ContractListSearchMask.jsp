<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><tr>
<td colspan="4">
<table border="0" cellpadding="5" cellspacing="0" class="infobox w100 w e">
<tr>
<td class="infobox_title" nowrap="nowrap" colspan="4"><% {out.write(localizeISText("contracts.ContractsListSearch.infobox_title.find.contracts",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
</td>
</tr>
<tr>
<td colspan="4">
<table border="0" cellpadding="5" cellspacing="0" width="100%" class="infobox w e">
<tr>
<td class="infobox_item" nowrap="nowrap"><label class="label label_light" for="WFContractSearch_CustomerNameOrID"><% {out.write(localizeISText("contracts.ContractsListSearch.infobox_item.customer",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td class="left"><input type="text" name="WFContractSearch_CustomerNameOrID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("WFContractSearch_CustomerNameOrID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {16}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" maxlength="55" size="55" class="inputfield_en"/></td>
<td>&nbsp;</td>
<td class="infobox_item" nowrap="nowrap"><label class="label label_light" for="WFContractSearch_ContractNameOrID"><% {out.write(localizeISText("contracts.ContractsListSearch.infobox_item.contract.name",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td><input type="text" name="WFContractSearch_ContractNameOrID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("WFContractSearch_ContractNameOrID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {19}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" maxlength="55" size="55" class="inputfield_en"/></td>
<td class="left" width="100%"></td> 
</tr>
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ERROR_EndDateFrom")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("ERROR_EndDateTo")))).booleanValue() || ((Boolean) getObject("WFContractSearch:EndDateFrom:isInvalid")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",23,e);}if (_boolean_result) { %><td nowrap="nowrap" class="label_date_outside"><label class="label label_date_outside label_error" for="WFContractSearch_EndDateFrom"><% {out.write(localizeISText("contracts.ContractsListSearch.infobox_item.contract.enddate.from",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td><% } else { %><td nowrap="nowrap" class="label_date_outside"><label class="label label_date_outside" for="WFContractSearch_EndDateFrom"><% {out.write(localizeISText("contracts.ContractsListSearch.infobox_item.contract.enddate.from",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td><% } %><td colspan="3" class="">
<table border="0" cellspacing="0" cellpadding="0">
<tr><% processOpenTag(response, pageContext, "dateinput", new TagParameter[] {
new TagParameter("InputFieldName","WFContractSearch_EndDateFrom"),
new TagParameter("DateString",""),
new TagParameter("DateObject",getObject("WFContractSearch_EndDateFrom")),
new TagParameter("Invalid","")}, 31); %><td>&nbsp;</td><% processOpenTag(response, pageContext, "dateinput", new TagParameter[] {
new TagParameter("InputFieldName","WFContractSearch_EndDateTo"),
new TagParameter("InputFieldLabel",localizeText(context.getFormattedValue("contracts.ContractsListSearch.infobox_item.contract.enddate.to",null))),
new TagParameter("DateString",""),
new TagParameter("Inputfieldlabelclass"," label label_light"),
new TagParameter("DateObject",getObject("WFContractSearch_EndDateTo")),
new TagParameter("Invalid","")}, 37); %></tr></table>
</td>
<td>&nbsp;</td>
</tr>
</table>
</td>
</tr> 
<tr>
<td colspan="4">
<table border="0" cellpadding="5" cellspacing="0" width="100%" class="infobox w e s">
<tr>
<td align="right" valign="bottom" colspan="3">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"> 
<input type="submit" name="find" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("quote.QuoteListSearch.button.find",null)),null)%>" class="button"/>
</td>
</tr>
</table>
</td>
</table>
</td>
</tr> <% printFooter(out); %>