<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- Working Area -->
<!-- Main Content -->
<!-- Page Navigator --><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("hide","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewOnlineMarketing-Overview",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null))))),
new TagParameter("start","true"),
new TagParameter("text",localizeText(context.getFormattedValue("marketing.title",null)))}, 6); %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("text1",context.getFormattedValue(" - ",null) + context.getFormattedValue(localizeText(context.getFormattedValue("marketing.promotioncodes.search",null)),null)),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotionCodes_52-ShowSearch",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null))))),
new TagParameter("text",localizeText(context.getFormattedValue("marketing.promotioncodes.title",null)))}, 7); %><!-- EO Page Navigator -->
<!-- start input forms -->
<h1 class="headline headline-top"><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","marketing.promotioncodes.title")}, 11); %></h1>
<!-- Tabs --><% processOpenTag(response, pageContext, "put", new TagParameter[] {
new TagParameter("name","SelectedTab"),
new TagParameter("value","Search")}, 14); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"marketing/PromotionCodesTabs_52", null, "15");} %><!-- EO Tabs -->
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" class="table_title w e s"><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","marketing.promotioncodes.title")}, 23); %></td>
</tr> 
<tr>
<td class="table_title_description w e s"><% {out.write(localizeISText("PromotionCodes_52.Title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<!-- info --> 
<!-- EO info --><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("InitializingSearch")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("InitializingSearch"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",33,e);}if (_boolean_result) { %><tr>
<td> 
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="information w e s">
<tr>
<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/information.gif" width="16" height="15" alt="" border="0"/></td>
<td width="100%"><% {out.write(localizeISText("PromotionCodes_52.NoSearchExecuted",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
</td>
</tr><% } %><!-- errors --><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("PromotionCodeSimpleSearchForm:Code:isError(\"error.maxlength\")"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",46,e);}if (_boolean_result) { %><tr>
<td class="w e s">
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box">
<tr>
<td class="error_icon e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error" width="100%"><% {out.write(localizeISText("PromotionCodes_52.PromotionCodesFieldSearchNotStarted.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><br><% {out.write(localizeISText("PromotionCodes_52.PromotionCodesFieldMaxlength.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><br>
</td>
</tr>
</table>
</td>
</tr><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("PromotionCodeSimpleSearchForm:Code:isError(\"error.required\")"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",61,e);}if (_boolean_result) { %><tr>
<td class="w e s">
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box">
<tr>
<td class="error_icon e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error" width="100%"><% {out.write(localizeISText("PromotionCodes_52.PromotionCodesFieldSearchNotStarted.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><br><% {out.write(localizeISText("PromotionCodes_52.PromotionCodesFieldRequired.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><br>
</td>
</tr>
</table>
</td>
</tr><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ERROR_NoCustomerWithGivenID"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",76,e);}if (_boolean_result) { %><tr>
<td class="w e s">
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box">
<tr>
<td class="error_icon e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error" width="100%"><% {out.write(localizeISText("PromotionCodes_52.PromotionCodesFieldSearchNotStarted.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><br><% {out.write(localizeISText("PromotionCodes_52.error.message.NoCustomerWithGivenID",null,null,null,null,null,null,null,null,null,null,null,null));} %><br>
</td>
</tr>
</table>
</td>
</tr><% } %><tr><% {Object temp_obj = ("ViewPromotionCodes_52"); getPipelineDictionary().put("ViewPipeline", temp_obj);} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/PromotionCodeSimpleSearchMask", null, "93");} %></tr>
<tr> 
<td>
<table border="0" cellpadding="0" cellspacing="0" width="100%"><% _boolean_result=false;try {_boolean_result=((Boolean)(((!((Boolean) (disableErrorMessages().isDefined(getObject("ERROR_NoCustomerWithGivenID")))).booleanValue() && !((Boolean) (disableErrorMessages().isDefined(getObject("PromotionCodeStatus")))).booleanValue() && !((Boolean) (disableErrorMessages().isDefined(getObject("PromotionCode")))).booleanValue() && !((Boolean) (disableErrorMessages().isDefined(getObject("InitializingSearch")))).booleanValue() && !((Boolean) getObject("PromotionCodeSimpleSearchForm:Code:isError(\"error.required\")")).booleanValue() && !((Boolean) getObject("PromotionCodeSimpleSearchForm:Code:isError(\"error.maxlength\")")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",98,e);}if (_boolean_result) { %> 
<tr>
<td class="table_detail w e s"><% {out.write(localizeISText("PromotionCodes_52.NoResultsFoundForYourSearch.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/><br/>
</tr><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PromotionCodeStatus"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",103,e);}if (_boolean_result) { %><thead>
<tr>
<td class="table_detail w e s" nowrap="nowrap"><% {out.write(localizeISText("PromotionCodes_52.PromotionCode.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_detail e s" nowrap="nowrap"><% {out.write(localizeISText("PromotionCodes_52.RedemptionStatus.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_detail e s" nowrap="nowrap"><% {out.write(localizeISText("PromotionCodes_52.ValidityStatus.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</thead>
<tbody>
<tr>
<td class="table_detail w e s">
<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotionCodes_52-Details",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null))).addURLParameter(context.getFormattedValue("PromotionCode",null),context.getFormattedValue(getObject("PromotionCodeStatus:Code"),null)).addURLParameter(context.getFormattedValue("CustomerSearch_NameOrID",null),context.getFormattedValue(getObject("CustomerSearch_NameOrID"),null))),null)%>" class="table_detail_link"><% {String value = null;try{value=context.getFormattedValue(getObject("PromotionCodeStatus:Code"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {114}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></a>
</td>
<td class="table_detail e s"> 
<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("PromotionCodeStatus:RedemptionStatus"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",117,e);}if (_boolean_result) { %><% {out.write(localizeISText("PromotionCodes_52.Status.NotRedeemed.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else { %><% {out.write(localizeISText("PromotionCodes_52.Status.Redeemed.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %>
(<% {String value = null;try{value=context.getFormattedValue(getObject("PromotionCodeStatus:NumberOfRedemptions"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {122}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>/<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("PromotionCodeStatus:NumberOfReusesUnlimited"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",122,e);}if (_boolean_result) { %><% {out.write(localizeISText("PromotionCodes_52.Redemption.Unlimited.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else { %><% {String value = null;try{value=context.getFormattedValue(getObject("PromotionCodeStatus:NumberOfReuses"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {122}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %>)
</td>
<td class="table_detail e s"><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("PromotionCodeStatus:TotalStatus"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",125,e);}if (_boolean_result) { %><img border="0" title="<% {out.write(localizeISText("PromotionCodeDetails_52.PromotionCode.overallstatus.title.valid",null,null,null,null,null,null,null,null,null,null,null,null));} %>" alt="<% {out.write(localizeISText("PromotionCodeDetails_52.PromotionCode.overallstatus.alt.valid",null,null,null,null,null,null,null,null,null,null,null,null));} %>" src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/online.png"/><% } else { %><img border="0" title="<% {out.write(localizeISText("PromotionCodeDetails_52.PromotionCode.overallstatus.title.invalid",null,null,null,null,null,null,null,null,null,null,null,null));} %>" alt="<% {out.write(localizeISText("PromotionCodeDetails_52.PromotionCode.overallstatus.alt.invalid",null,null,null,null,null,null,null,null,null,null,null,null));} %>" src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/offline.png"/><% } %></td>
</tr>
</tbody><% } %> 
</table> 
</td> 
</tr>
</table>
<!-- EO Main Content -->
<!-- EO Working Area --><% printFooter(out); %>