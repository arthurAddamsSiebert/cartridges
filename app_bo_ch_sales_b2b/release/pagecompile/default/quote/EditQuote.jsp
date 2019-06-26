<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% context.setCustomTagTemplateName("loaduserhelper","quote/LoadUserHelper.isml",false,new String[]{"quote","permissions_map","current_channel"},null); %><% processOpenTag(response, pageContext, "loaduserhelper", new TagParameter[] {
new TagParameter("quote",getObject("Quote")),
new TagParameter("permissions_map",getObject("CurrentChannelPermissionMap")),
new TagParameter("current_channel",getObject("CurrentChannel"))}, 13); %><% context.setCustomTagTemplateName("quotestate","quote/QuoteState",false,new String[]{"quote","displaymode"},null); %><% context.setCustomTagTemplateName("quoteevent","inc/QuoteEvent.isml",false,new String[]{"eventname","label"},null); %><!-- Calendar Script -->
<script language="javascript" type="text/javascript">
<!--
var imgDir = "<%=context.getFormattedValue(context.webRoot(),null)%>/images/";
-->
</script>
<!-- EO Calendar Script --><% {Object temp_obj = (((((Boolean) ((((context.getFormattedValue(getObject("Quote:State"),null).equals(context.getFormattedValue("3",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("Quote:State"),null).equals(context.getFormattedValue("5",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE)); getPipelineDictionary().put("EditMode", temp_obj);} %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("EditMode"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",38,e);}if (_boolean_result) { %><% {Object temp_obj = ("true"); getPipelineDictionary().put("ChangeDate", temp_obj);} %><% } else { %><% {Object temp_obj = ("false"); getPipelineDictionary().put("ChangeDate", temp_obj);} %><% } %><!-- Page Navigator --><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewQuote-Edit",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("StateGroup",null),context.getFormattedValue(getObject("StateGroup"),null))).addURLParameter(context.getFormattedValue("QuoteUUID",null),context.getFormattedValue(getObject("Quote:UUID"),null)))),
new TagParameter("id",getObject("Quote:UUID")),
new TagParameter("text",getObject("Quote:DocumentNo"))}, 45); %><!-- EO Page Navigator -->
<!-- Tabs --><% {Object temp_obj = ("General"); getPipelineDictionary().put("SelectedTab", temp_obj);} %><!-- EO Tabs --><% URLPipelineAction action1 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewQuote-Dispatch",null)))),null));String site1 = null;String serverGroup1 = null;String actionValue1 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewQuote-Dispatch",null)))),null);if (site1 == null){  site1 = action1.getDomain();  if (site1 == null)  {      site1 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup1 == null){  serverGroup1 = action1.getServerGroup();  if (serverGroup1 == null)  {      serverGroup1 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewQuote-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("QuoteForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue1, site1, serverGroup1,true)); %><table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td>
<input type="hidden" name="QuoteUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Quote:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {57}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="StateGroup" value="<% {String value = null;try{value=context.getFormattedValue(getObject("StateGroup"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {58}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="DateFormatString" value="<% {String value = null;try{value=context.getFormattedValue(getObject("CurrentSession:Locale:DefaultRegionalSettings:inputDatePattern"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {59}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="TimeFormatString" value="<% {String value = null;try{value=context.getFormattedValue(getObject("CurrentSession:Locale:DefaultRegionalSettings:inputTimePattern"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {60}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<!-- Titel and Description -->
<table border="0" cellpadding="0" cellspacing="0" width="100%" class="aldi">
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("Quote:DisplayName"))))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("Quote:DisplayName"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",64,e);}if (_boolean_result) { %><td width="100%" class="table_title"><% {String value = null;try{value=context.getFormattedValue(getObject("Quote:DocumentNo"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {65}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> - <% {String value = null;try{value=context.getFormattedValue(getObject("Quote:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {65}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td><% } else { %><td width="100%" class="table_title"><% {String value = null;try{value=context.getFormattedValue(context.getFormattedValue(getObject("Quote:Domain:DomainName"),null) + context.getFormattedValue("_",null) + context.getFormattedValue(getObject("Quote:DocumentNo"),null),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {67}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td><% } %></tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ErrorUpdate"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",71,e);}if (_boolean_result) { %><tr>
<td><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("QuantityErrorMap")))).booleanValue() && ((Boolean) (hasLoopElements("QuantityErrorKeys") ? Boolean.TRUE : Boolean.FALSE)).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("PriceErrorMap")))).booleanValue() && ((Boolean) (hasLoopElements("PriceErrorKeys") ? Boolean.TRUE : Boolean.FALSE)).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",74,e);}if (_boolean_result) { %><table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr valign="top">
<td class="error_icon top e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error top" width="100%"><% {out.write(localizeISText("quote.EditQuote.error.the.data.format.is.i",null,null,null,null,null,null,null,null,null,null,null,null));} %><% while (loop("PriceErrorMap:KeySet:Iterator","ErrorID",null)) { %><br/><% {String value = null;try{value=context.getFormattedValue(getObject("LookupHelper:get(ErrorID):ProductIdentifierMap(CurrentSelectedChannel:Domain):SellerID:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {81}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %></td>
</tr>
</table><% } %><!-- check date pattern --><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ValidFrom_ErrorCode")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("ValidTo_ErrorCode")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("StartTime_ErrorCode")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("EndTime_ErrorCode")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",89,e);}if (_boolean_result) { %><table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr>
<td class="error_icon middle e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error" width="100%"><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ValidFrom_ErrorCode")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("StartTime_ErrorCode")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",94,e);}if (_boolean_result) { %><% {out.write(localizeISText("quote.EditQuote.error.please.specify.a.cor",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ValidTo_ErrorCode")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("EndTime_ErrorCode")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",97,e);}if (_boolean_result) { %><% {out.write(localizeISText("quote.EditQuote.error.please.specify.a.cor1",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %></td>
</tr>
</table><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("ErrorCode"))))).booleanValue() && ((Boolean) (((((Boolean) ((((context.getFormattedValue(getObject("ErrorCode"),null).equals(context.getFormattedValue("ValidFrom_gt_ValidTo",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("ErrorCode"),null).equals(context.getFormattedValue("InvalidPeriod",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("ErrorCode"),null).equals(context.getFormattedValue("ExistsInRequisition",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("ErrorCode"),null).equals(context.getFormattedValue("ValidTo_gt_CurrentDate",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",105,e);}if (_boolean_result) { %><table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr> 
<td class="error_icon middle e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error top" width="100%"><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ErrorCode"),null).equals(context.getFormattedValue("ValidFrom_gt_ValidTo",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",110,e);}if (_boolean_result) { %><% {out.write(localizeISText("quote.EditQuote.error.invalid.date.range.t",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ErrorCode"),null).equals(context.getFormattedValue("ValidTo_gt_CurrentDate",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",112,e);}if (_boolean_result) { %><% {out.write(localizeISText("quote.EditQuote.error.invalid.valid.to.the",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ErrorCode"),null).equals(context.getFormattedValue("ExistsInRequisition",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",114,e);}if (_boolean_result) { %><% {out.write(localizeISText("quote.EditQuote.error.this.quote.has.alrea",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ErrorCode"),null).equals(context.getFormattedValue("ExpiredQuote",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",116,e);}if (_boolean_result) { %><% {out.write(localizeISText("quote.EditQuote.error.this.quote.is.expire",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ErrorCode"),null).equals(context.getFormattedValue("ProductNotAvailable",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",118,e);}if (_boolean_result) { %><% {out.write(localizeISText("quote.EditQuote.error.the.product.0.is.not",null,null,context.getFormattedValue(getObject("ErrorValue"),null),null,null,null,null,null,null,null,null,null));} %><% }}}}} %></td>
</tr>
</table> 
<% } %></td>
</tr><% } else { %> 
<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("confirmCancelQuote"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",128,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("cancelbtnname","cancel"),
new TagParameter("okbtnname","cancelQuote"),
new TagParameter("type","mdc"),
new TagParameter("message",localizeText(context.getFormattedValue("quote.EditQuote.message.you.are.about.to.can",null)))}, 129); %> 
<% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("confirmSubmit"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",131,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("cancelbtnname","cancel"),
new TagParameter("okbtnname","submit"),
new TagParameter("type","mdc"),
new TagParameter("message",localizeText(context.getFormattedValue("quote.EditQuote.message.you.are.about.to.sub",null)))}, 132); %> 
<% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("confirmAccept"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",134,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("cancelbtnname","cancel"),
new TagParameter("okbtnname","accept"),
new TagParameter("type","mdc"),
new TagParameter("message",localizeText(context.getFormattedValue("quote.EditQuote.message.you.are.about.to.acc",null)))}, 135); %> 
<% } %><% } %></table>
<!-- EO Titel and Description -->
<!-- Main Content -->
<table class="infobox_quoteDetail w e s" border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td nowrap="nowrap" class="table_title2 s" width="50%"><% {out.write(localizeISText("quote.EditQuote.table_title2.quote.information",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td nowrap="nowrap" class="table_title2 w s" width="50%"><% {out.write(localizeISText("quote.EditQuote.table_title2.customer.information",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td valign="top">
<table border="0" cellpadding="4" cellspacing="0" width="100%" class="">
<tr>
<td nowrap="nowrap" class="fielditem2" width="1%"><% {out.write(localizeISText("quote.EditQuote.fielditem2.date.received",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="infobox_description"><% {String value = null;try{value=context.getFormattedValue(getObject("Quote:ProductListEventByType(\"SubmittedToSeller\"):EventDate"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {153}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
</tr>
<tr>
<td nowrap="nowrap" class="fielditem2"><% {out.write(localizeISText("quote.EditQuote.fielditem2.last.modified",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="infobox_description"><% {String value = null;try{value=context.getFormattedValue(getObject("Quote:LastModified"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {159}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
</tr>
<tr>
<td nowrap="nowrap" class="fielditem2"><% {out.write(localizeISText("quote.EditQuote.fielditem2.status",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="infobox_description"><% processOpenTag(response, pageContext, "quotestate", new TagParameter[] {
new TagParameter("quote",getObject("Quote")),
new TagParameter("displaymode",getObject("seller"))}, 165); %></td>
</tr>
<tr>
<td nowrap="nowrap" class="fielditem2"><% {out.write(localizeISText("quote.EditQuote.fielditem2.type",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td colspan="2" class="infobox_description"><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Quote:Fixed"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",171,e);}if (_boolean_result) { %><% {out.write(localizeISText("quote.EditQuote.infobox_description.fixed",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else { %><% {out.write(localizeISText("quote.EditQuote.infobox_description.item.based",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %></td>
</tr>
<tr>
<td nowrap="nowrap" class="fielditem2"><% {out.write(localizeISText("quote.EditQuote.fielditem2.quote.from",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td colspan="2" class="infobox_description"><% {String value = null;try{value=context.getFormattedValue(getObject("Quote:Domain:DomainName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {176}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
</tr>
<tr> 
<td nowrap="nowrap" class="fielditem2"><% {out.write(localizeISText("quote.EditQuote.fielditem2.valid.from",null,null,null,null,null,null,null,null,null,null,null,null));} %></td> 
<td class="infobox_description"><% {String value = null;try{value=context.getFormattedValue(context.getFormattedValue(getObject("Quote:ValidFrom"),new Integer(DATE_INPUT)),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {180}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;<% {String value = null;try{value=context.getFormattedValue(context.getFormattedValue(getObject("Quote:ValidFrom"),new Integer(DATE_TIME)),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {180}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
</tr>
<tr>
<td nowrap="nowrap" class="fielditem2"><% {out.write(localizeISText("quote.EditQuote.fielditem2.valid.to",null,null,null,null,null,null,null,null,null,null,null,null));} %></td> 
<td class="infobox_description"><% {String value = null;try{value=context.getFormattedValue(context.getFormattedValue(getObject("Quote:ValidTo"),new Integer(DATE_INPUT)),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {184}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;<% {String value = null;try{value=context.getFormattedValue(context.getFormattedValue(getObject("Quote:ValidTo"),new Integer(DATE_TIME)),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {184}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
</tr>
<tr>
<td nowrap="nowrap" class="fielditem2"><% {out.write(localizeISText("quote.EditQuote.fielditem2.summary.information",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td width="100%" class="infobox_description"><% {out.write(localizeISText("quote.EditQuote.infobox_description.the.current.quote.co",null,null,context.getFormattedValue(getObject("Quote:IndependentItemsCount"),null),context.getFormattedValue(getObject("Quote:Total"),null),null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td nowrap="nowrap" class="fielditem2"><% {out.write(localizeISText("quote.EditQuote.fielditem2.name",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td width="100%" class="infobox_description"><% {String value = null;try{value=context.getFormattedValue(getObject("Quote:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {192}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
</tr> 
<tr>
<td nowrap="nowrap" class="fielditem2"><% {out.write(localizeISText("quote.EditQuote.fielditem2.comment",null,null,null,null,null,null,null,null,null,null,null,null));} %></td><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) ((((context.getFormattedValue(getObject("Quote:State"),null).equals(context.getFormattedValue("0",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",196,e);}if (_boolean_result) { %><td width="100%" class="infobox_description"><% {String value = null;try{value=context.getFormattedValue(getObject("Quote:Description"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {197}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td><% } else { %><td class="infobox_description table_detail"> 
<textarea name="QuoteForm_Description" rows="5" cols="70" class="inputfield_en"><% {String value = null;try{value=context.getFormattedValue(getObject("Quote:Description"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {201}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></textarea> 
</td><% } %> 
</tr> 
</table>
</td>
<td class="w" valign="top">
<table border="0" cellpadding="4" cellspacing="0" width="100%">
<tr> 
<td nowrap="nowrap" class="fielditem2" width="1%"><% {out.write(localizeISText("quote.EditQuote.fielditem2.customer",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="infobox_description"><% {String value = null;try{value=context.getFormattedValue(getObject("User:Profile:FirstName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {214}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;<% {String value = null;try{value=context.getFormattedValue(getObject("User:Profile:LastName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {214}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><br /> 
<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("customer_name"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",215,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("current_channel")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("permissions_map:SLD_VIEW_CONSUMERS")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",216,e);}if (_boolean_result) { %> 
<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue(context.getFormattedValue("ViewCustomer_",null) + context.getFormattedValue(getObject("current_channel:TypeCode"),null) + context.getFormattedValue("-Show",null),null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("CustomerID",null),context.getFormattedValue(getObject("Customer:CustomerNo"),null)))),null)%>" class="table_detail_link"><% {String value = null;try{value=context.getFormattedValue(getObject("customer_name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {219}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></a> 
<% } else { %><% {String value = null;try{value=context.getFormattedValue(getObject("customer_name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {223}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %> 
<% } %></td>
</tr>
<tr> 
<td nowrap="nowrap" class="fielditem2"><% {out.write(localizeISText("quote.EditQuote.fielditem2.email",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="infobox_description"><% {String value = null;try{value=context.getFormattedValue(getObject("User:Profile:BasicCredentials:Login"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {233}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
</tr>
<tr> 
<td nowrap="nowrap" class="fielditem2"><% {out.write(localizeISText("quote.EditQuote.fielditem2.phone.mobile",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="infobox_description"><% {String value = null;try{value=context.getFormattedValue(getObject("User:Profile:DataSheet:PhoneMobile"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {237}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
</tr>
<tr> 
<td nowrap="nowrap" class="fielditem2"><% {out.write(localizeISText("quote.EditQuote.fielditem2.phone.business",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="infobox_description"><% {String value = null;try{value=context.getFormattedValue(getObject("User:Profile:DataSheet:PhoneBusiness"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {241}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
</tr>
<tr> 
<td nowrap="nowrap" class="fielditem2"><% {out.write(localizeISText("quote.EditQuote.fielditem2.phone.home",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="infobox_description"><% {String value = null;try{value=context.getFormattedValue(getObject("User:Profile:DataSheet:PhoneHome"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {245}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
</tr>
<tr> 
<td nowrap="nowrap" class="fielditem2"><% {out.write(localizeISText("quote.EditQuote.fielditem2.fax",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="infobox_description"><% {String value = null;try{value=context.getFormattedValue(getObject("User:Profile:DataSheet:Fax"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {249}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
</tr>
</table>
</td>
</tr>
</table><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"quote/QuoteItemList", null, "257");} %><table class="w e s">
<tr>
<td width="100%"></td>
<td>&nbsp;</td>
<td></td>
<td></td>
</td>
<tr> 
<td colspan="2">&nbsp;</td> 
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ChangeDate"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",269,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "datetimeinput", new TagParameter[] {
new TagParameter("DateInputFieldLabelClass","fielditem2"),
new TagParameter("TimeString",getObject("QuoteForm_StartTime")),
new TagParameter("DateInputFieldName","QuoteForm_StartDate"),
new TagParameter("DateString",getObject("QuoteForm_StartDate")),
new TagParameter("TimeInputFieldName","QuoteForm_StartTime"),
new TagParameter("TimeInputFieldLabel",localizeText(context.getFormattedValue("quote.EditQuote.DateTimeInput.time",null))),
new TagParameter("DateInputFieldLabel",localizeText(context.getFormattedValue("quote.EditQuote.DateTimeInput.valid.from",null))),
new TagParameter("DateInputFieldEditClass",""),
new TagParameter("EnablePast","false"),
new TagParameter("DateObject",getObject("Quote:ValidFrom")),
new TagParameter("Invalid",((((Boolean) ((disableErrorMessages().isDefined(getObject("ValidFrom_ErrorCode"))))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("StartTime_ErrorCode")))).booleanValue() || ((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("ErrorCode")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ErrorCode"),null).equals(context.getFormattedValue("ValidFrom_gt_ValidTo",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))}, 271); %><% } else { %> 
<td nowrap="nowrap" class="fielditem2"><% {out.write(localizeISText("quote.EditQuote.fielditem2.valid.from",null,null,null,null,null,null,null,null,null,null,null,null));} %></td> 
<td class="infobox_description"><% {String value = null;try{value=context.getFormattedValue(context.getFormattedValue(getObject("Quote:ValidFrom"),new Integer(DATE_INPUT)),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {286}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;<% {String value = null;try{value=context.getFormattedValue(context.getFormattedValue(getObject("Quote:ValidFrom"),new Integer(DATE_TIME)),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {286}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td><% } %></tr>
<tr>
<td colspan="2">&nbsp;</td><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ChangeDate"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",292,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "datetimeinput", new TagParameter[] {
new TagParameter("DateInputFieldLabelClass","fielditem2"),
new TagParameter("TimeString",getObject("QuoteForm_EndTime")),
new TagParameter("DateInputFieldName","QuoteForm_EndDate"),
new TagParameter("DateString",getObject("QuoteForm_EndDate")),
new TagParameter("TimeInputFieldName","QuoteForm_EndTime"),
new TagParameter("TimeInputFieldLabel",localizeText(context.getFormattedValue("quote.EditQuote.DateTimeInput.time",null))),
new TagParameter("DateInputFieldLabel",localizeText(context.getFormattedValue("quote.EditQuote.DateTimeInput.valid.to",null))),
new TagParameter("DateInputFieldEditClass",""),
new TagParameter("EnablePast","false"),
new TagParameter("DateObject",getObject("Quote:ValidTo")),
new TagParameter("Invalid",((((Boolean) ((disableErrorMessages().isDefined(getObject("ValidTo_ErrorCode"))))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("EndTime_ErrorCode")))).booleanValue() || ((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("ErrorCode")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ErrorCode"),null).equals(context.getFormattedValue("ValidFrom_gt_ValidTo",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))}, 294); %><% } else { %><td nowrap="nowrap" class="fielditem2"><% {out.write(localizeISText("quote.EditQuote.fielditem2.valid.to",null,null,null,null,null,null,null,null,null,null,null,null));} %></td> 
<td class="infobox_description"><% {String value = null;try{value=context.getFormattedValue(context.getFormattedValue(getObject("Quote:ValidTo"),new Integer(DATE_INPUT)),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {309}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;<% {String value = null;try{value=context.getFormattedValue(context.getFormattedValue(getObject("Quote:ValidTo"),new Integer(DATE_TIME)),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {309}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td><% } %> 
</tr>
<tr>
<td>&nbsp;</td>
<td class="label_textarea"><label for="SellerComment" class="label"><% {out.write(localizeISText("quote.EditQuote.label.comment",null,null,null,null,null,null,null,null,null,null,null,null));} %></label></td>
<td colspan="2"><textarea <% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("EditMode"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",315,e);}if (_boolean_result) { %>disabled="disabled"<% } %> rows="5" style="width: 96%" name="SellerComment" id="SellerComment" class="inputfield_en" placeholder="Enter a comment for your quote..."><% {String value = null;try{value=context.getFormattedValue(getObject("Quote:SellerComment"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {315}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></textarea></td>
</tr>
</table><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("EditMode"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",320,e);}if (_boolean_result) { %> 
<table class="w e s" width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><input type="submit" name="update" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("quote.EditQuote.button.save.quote",null)),null)%>" class="button"/></td> 
<td class="button"><input type="submit" name="submit" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("quote.EditQuote.button.submit.quote",null)),null)%>" class="button"/></td> 
</tr>
</table>
</td>
</tr>
</table><% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((Boolean) getObject("Quote:Fixed")).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() && ((Boolean) (((((Boolean) ((((context.getFormattedValue(getObject("Quote:State"),null).equals(context.getFormattedValue("3",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) (((((context.getFormattedValue(getObject("Quote:State"),null).equals(context.getFormattedValue("5",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",333,e);}if (_boolean_result) { %><table class="w e s" width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><input type="submit" name="edit" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("quote.EditQuote.button.edit.quote",null)),null)%>" class="button"/></td><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (getObject("Quote:Modified"))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",340,e);}if (_boolean_result) { %><td class="button"><input type="submit" name="accept" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("quote.EditQuote.button.submit.quote",null)),null)%>" class="button"/></td><% } %> 
</tr>
</table>
</td>
</tr>
</table> 
<% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (getObject("Quote:Fixed"))).booleanValue() && ((Boolean) (((((Boolean) ((((context.getFormattedValue(getObject("Quote:State"),null).equals(context.getFormattedValue("3",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) (((((context.getFormattedValue(getObject("Quote:State"),null).equals(context.getFormattedValue("5",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",348,e);}if (_boolean_result) { %> 
<table class="w e s" width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><input type="submit" name="reject" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("quote.EditQuote.button.calculate.fixed.quot",null)),null)%>" class="button"></td>
<td class="button"><input type="submit" name="confirmCancelQuote" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("quote.EditQuote.button.cancel",null)),null)%>" class="button"></td>
</tr>
</table>
</td>
</tr>
</table> 
<% }}} %></td>
</tr>
</table><% out.print("</form>"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/BackToList", null, "366");} %><% printFooter(out); %>