<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><link rel="STYLESHEET" type="text/css" href="<%=context.getFormattedValue(context.webRoot(),null)%>/css/promotioncodesearch.css"/>
<!-- Working Area -->
<!-- Main Content -->
<!-- Page Navigator --><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("hide","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewOnlineMarketing-Overview",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null))))),
new TagParameter("start","true"),
new TagParameter("text",localizeText(context.getFormattedValue("marketing.title",null)))}, 7); %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("hide","true"),
new TagParameter("text1",context.getFormattedValue(" - ",null) + context.getFormattedValue(localizeText(context.getFormattedValue("marketing.promotioncodes.search",null)),null)),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotionCodes_52-ShowSearch",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null))))),
new TagParameter("text",localizeText(context.getFormattedValue("marketing.promotioncodes.title",null)))}, 8); %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("listview","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotionCodes_52-Details",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null))).addURLParameter(context.getFormattedValue("PromotionCode",null),context.getFormattedValue(getObject("PromotionCodeStatus:Code"),null)).addURLParameter(context.getFormattedValue("CustomerSearch_NameOrID",null),context.getFormattedValue(getObject("CustomerSearch_NameOrID"),null)))),
new TagParameter("text",localizeText(context.getFormattedValue("marketing.promotioncodes.details",null)))}, 9); %><!-- EO Page Navigator -->
<!-- start input forms -->
<h1 class="headline headline-top"><% {String value = null;try{value=context.getFormattedValue(getObject("PromotionCodeStatus:Code"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {15}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("PromotionCodeStatus:TotalStatus"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",16,e);}if (_boolean_result) { %><img border="0" title="<% {out.write(localizeISText("PromotionCodeDetails_52.PromotionCode.overallstatus.title.valid",null,null,null,null,null,null,null,null,null,null,null,null));} %>" alt="<% {out.write(localizeISText("PromotionCodeDetails_52.PromotionCode.overallstatus.alt.valid",null,null,null,null,null,null,null,null,null,null,null,null));} %>" src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/online.png" class="promotionCodeSearchHeaderValidState"/><% } else { %><img border="0" title="<% {out.write(localizeISText("PromotionCodeDetails_52.PromotionCode.overallstatus.title.invalid",null,null,null,null,null,null,null,null,null,null,null,null));} %>" alt="<% {out.write(localizeISText("PromotionCodeDetails_52.PromotionCode.overallstatus.alt.invalid",null,null,null,null,null,null,null,null,null,null,null,null));} %>" src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/offline.png" class="promotionCodeSearchHeaderValidState"/><% } %></h1>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="50%" valign="top">
<table class="promotionCodeSearchBoxesWrapper" border="0" width="100%">
<tr>
<td width="100%" class="promotionCodeSearchBox table_detail w n s" colspan="2">
<table class="label-value">
<tr>
<td colspan="2"><strong><% {out.write(localizeISText("PromotionCodeDetails_52.PromotionCode.Title",null,null,null,null,null,null,null,null,null,null,null,null));} %></strong></td>
</tr>
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("PromotionCodeStatus:SingleCode"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",38,e);}if (_boolean_result) { %><td><% {out.write(localizeISText("PromotionCodeDetails_52.PromotionCode.SingleCode","",null,null,null,null,null,null,null,null,null,null,null));} %></td><% } else { %><td valign="top">
<label><% {out.write(localizeISText("PromotionCodeDetails_52.Status",null,null,null,null,null,null,null,null,null,null,null,null));} %></label>
</td>
<td><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PromotionCodeStatus:Enabled"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",47,e);}if (_boolean_result) { %><% {out.write(localizeISText("PromotionCodeDetails_52.Enabled",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else { %><% {out.write(localizeISText("PromotionCodeDetails_52.Disabled",null,null,null,null,null,null,null,null,null,null,null,null));} %>
&nbsp;<span class="warnsign"><img border="0" title="<% {out.write(localizeISText("PromotionCodeDetails_52.warning.title",null,null,null,null,null,null,null,null,null,null,null,null));} %>" alt="<% {out.write(localizeISText("PromotionCodeDetails_52.warning.alt",null,null,null,null,null,null,null,null,null,null,null,null));} %>" src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/status_warning.gif"/></span><% } %></td><% } %></tr>
<tr>
<td valign="top">
<label><% {out.write(localizeISText("PromotionCodeDetails_52.PromotionCode.RedemptionStatus",null,null,null,null,null,null,null,null,null,null,null,null));} %></label>
</td>
<td> 
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PromotionCodeStatus:RedemptionStatus"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",61,e);}if (_boolean_result) { %><% {out.write(localizeISText("PromotionCodeDetails_52.PromotionCode.NotRedeemed",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else { %><% {out.write(localizeISText("PromotionCodeDetails_52.PromotionCode.Redeemed",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %> 
(<% {String value = null;try{value=context.getFormattedValue(getObject("PromotionCodeStatus:NumberOfRedemptions"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {66}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>/<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("PromotionCodeStatus:NumberOfReusesUnlimited"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",66,e);}if (_boolean_result) { %><% {out.write(localizeISText("PromotionCodes_52.Redemption.Unlimited.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else { %><% {String value = null;try{value=context.getFormattedValue(getObject("PromotionCodeStatus:NumberOfReuses"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {66}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %>)
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PromotionCodeStatus:RedemptionStatus"),null).equals(context.getFormattedValue("false",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",67,e);}if (_boolean_result) { %>
&nbsp;<span class="warnsign"><img border="0" title="<% {out.write(localizeISText("PromotionCodeDetails_52.warning.title",null,null,null,null,null,null,null,null,null,null,null,null));} %>" alt="<% {out.write(localizeISText("PromotionCodeDetails_52.warning.alt",null,null,null,null,null,null,null,null,null,null,null,null));} %>" src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/status_warning.gif"/></span><% } %></td>
</tr>
</table>
</td>
<td class="promotionCodeSearchBox table_detail e n s" valign="top"><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PromotionCodeStatus:Status"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",75,e);}if (_boolean_result) { %><img border="0" title="<% {out.write(localizeISText("PromotionCodeDetails_52.PromotionCode.status.title.valid",null,null,null,null,null,null,null,null,null,null,null,null));} %>" alt="<% {out.write(localizeISText("PromotionCodeDetails_52.PromotionCode.status.alt.valid",null,null,null,null,null,null,null,null,null,null,null,null));} %>" src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/online.png" /><% } else { %><img border="0" title="<% {out.write(localizeISText("PromotionCodeDetails_52.PromotionCode.status.title.invalid",null,null,null,null,null,null,null,null,null,null,null,null));} %>" alt="<% {out.write(localizeISText("PromotionCodeDetails_52.PromotionCode.status.alt.invalid",null,null,null,null,null,null,null,null,null,null,null,null));} %>" src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/offline.png" /><% } %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PromotionCodeStatus:PromotionCodeGroupStatus"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",86,e);}if (_boolean_result) { %><% {Object temp_obj = (getObject("PromotionCodeStatus:PromotionCodeGroupStatus")); getPipelineDictionary().put("PromotionCodeGroupStatus", temp_obj);} %><tr>
<td width="100%" class="promotionCodeSearchBox table_detail w n s" colspan="2">
<table class="label-value">
<tr>
<td colspan="2">
<strong><% {out.write(localizeISText("PromotionCodeDetails_52.PromotionCodeGroup.Title",null,null,null,null,null,null,null,null,null,null,null,null));} %></strong>
</td>
</tr>
<tr>
<td colspan="2">
<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotionCodeGroup-Edit",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null))).addURLParameter(context.getFormattedValue("PromotionCodeGroupID",null),context.getFormattedValue(getObject("PromotionCodeGroupStatus:PromotionCodeGroupID"),null))),null)%>"><% {String value = null;try{value=context.getFormattedValue(getObject("PromotionCodeGroupStatus:PromotionCodeGroupName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {98}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></a>
</td>
</tr>
<tr>
<td valign="top">
<label><% {out.write(localizeISText("PromotionCodeDetails_52.Status",null,null,null,null,null,null,null,null,null,null,null,null));} %></label>
</td>
<td><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PromotionCodeGroupStatus:Enabled"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",106,e);}if (_boolean_result) { %><% {out.write(localizeISText("PromotionCodeDetails_52.Enabled",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else { %><% {out.write(localizeISText("PromotionCodeDetails_52.Disabled",null,null,null,null,null,null,null,null,null,null,null,null));} %>
&nbsp;<span class="warnsign"><img border="0" title="<% {out.write(localizeISText("PromotionCodeDetails_52.warning.title",null,null,null,null,null,null,null,null,null,null,null,null));} %>" alt="<% {out.write(localizeISText("PromotionCodeDetails_52.warning.alt",null,null,null,null,null,null,null,null,null,null,null,null));} %>" src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/status_warning.gif"/></span><% } %></td>
</tr> 
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PromotionCodeGroupStatus:PromotionTime"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",114,e);}if (_boolean_result) { %><tr> 
<td valign="top">
<label><% {out.write(localizeISText("PromotionCodeDetails_52.StartEndDate",null,null,null,null,null,null,null,null,null,null,null,null));} %></label>
</td>
<td><% {out.write(localizeISText("PromotionCodeDetails_52.PromotionTime",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% } else { %><tr> 
<td valign="top">
<label><% {out.write(localizeISText("PromotionCodeDetails_52.StartDate",null,null,null,null,null,null,null,null,null,null,null,null));} %></label>
</td>
<td><% {String value = null;try{value=context.getFormattedValue(getObject("PromotionCodeGroupStatus:StartDate"),new Integer(DATE_INPUT),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {129}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;<% {String value = null;try{value=context.getFormattedValue(getObject("PromotionCodeGroupStatus:StartDate"),new Integer(TIME_INPUT),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {129}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("PromotionCodeGroupStatus:StartDateError"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",130,e);}if (_boolean_result) { %>
&nbsp;<span class="warnsign"><img border="0" title="<% {out.write(localizeISText("PromotionCodeDetails_52.warning.title",null,null,null,null,null,null,null,null,null,null,null,null));} %>" alt="<% {out.write(localizeISText("PromotionCodeDetails_52.warning.alt",null,null,null,null,null,null,null,null,null,null,null,null));} %>" src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/status_warning.gif"/></span><% } %></td>
</tr>
<tr> 
<td valign="top">
<label><% {out.write(localizeISText("PromotionCodeDetails_52.EndDate",null,null,null,null,null,null,null,null,null,null,null,null));} %></label>
</td>
<td><% {String value = null;try{value=context.getFormattedValue(getObject("PromotionCodeGroupStatus:EndDate"),new Integer(DATE_INPUT),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {140}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;<% {String value = null;try{value=context.getFormattedValue(getObject("PromotionCodeGroupStatus:EndDate"),new Integer(TIME_INPUT),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {140}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("PromotionCodeGroupStatus:EndDateError"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",141,e);}if (_boolean_result) { %>
&nbsp;<span class="warnsign"><img border="0" title="<% {out.write(localizeISText("PromotionCodeDetails_52.warning.title",null,null,null,null,null,null,null,null,null,null,null,null));} %>" alt="<% {out.write(localizeISText("PromotionCodeDetails_52.warning.alt",null,null,null,null,null,null,null,null,null,null,null,null));} %>" src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/status_warning.gif"/></span><% } %></td>
</tr> 
<% } %> 
<tr> 
<td valign="top"> 
<label><% {out.write(localizeISText("PromotionCodeDetails_52.PromotionCodeGroup.Applications",null,null,null,null,null,null,null,null,null,null,null,null));} %></label>
</td>
<td><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PromotionCodeGroupStatus:isPromotionApplications"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",152,e);}if (_boolean_result) { %><% {out.write(localizeISText("PromotionCodeDetails_52.PromotionCodeGroup.PromotionApplications",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else { %><% {Object temp_obj = (getObject("PromotionCodeGroupStatus:Applications")); getPipelineDictionary().put("Applications", temp_obj);} %><% while (loop("Applications","Application","counter")) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(((( ((Number) getObject("counter")).doubleValue() >((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",156,e);}if (_boolean_result) { %><br/><% } %><% {String value = null;try{value=context.getFormattedValue(getObject("Application"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {156}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %><% } %> 
</td>
</tr>
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PromotionCodeGroupStatus:TargetGroup"),null).equals(context.getFormattedValue("false",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",161,e);}if (_boolean_result) { %><td valign="top">
<label><% {out.write(localizeISText("PromotionCodeDetails_52.TargetGroup",null,null,null,null,null,null,null,null,null,null,null,null));} %></label>
</td>
<td><% {out.write(localizeISText("PromotionCodeDetails_52.TargetGroupsNotConfigured",null,null,null,null,null,null,null,null,null,null,null,null));} %>
&nbsp;<span class="warnsign"><img border="0" title="<% {out.write(localizeISText("PromotionCodeDetails_52.warning.title",null,null,null,null,null,null,null,null,null,null,null,null));} %>" alt="<% {out.write(localizeISText("PromotionCodeDetails_52.warning.alt",null,null,null,null,null,null,null,null,null,null,null,null));} %>" src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/status_warning.gif"/></span>
</td><% } else { %> 
<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PromotionCodeStatus:PromotionCodeUserInformation"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",170,e);}if (_boolean_result) { %><td valign="top">
<label><% {out.write(localizeISText("PromotionCodeDetails_52.TargetGroup",null,null,null,null,null,null,null,null,null,null,null,null));} %></label>
</td>
<td><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PromotionCodeGroupStatus:PromotionTargetGroupsUsed"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",175,e);}if (_boolean_result) { %><% {out.write(localizeISText("PromotionCodeDetails_52.PromotionTargetGroupsUsed",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PromotionCodeGroupStatus:AssignedToUser"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",178,e);}if (_boolean_result) { %><% {out.write(localizeISText("PromotionCodeDetails_52.AssignedToUser",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else { %><% {out.write(localizeISText("PromotionCodeDetails_52.NotAssignedToUser",null,null,null,null,null,null,null,null,null,null,null,null));} %>
&nbsp;<span class="warnsign"><img border="0" title="<% {out.write(localizeISText("PromotionCodeDetails_52.warning.title",null,null,null,null,null,null,null,null,null,null,null,null));} %>" alt="<% {out.write(localizeISText("PromotionCodeDetails_52.warning.alt",null,null,null,null,null,null,null,null,null,null,null,null));} %>" src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/status_warning.gif"/></span><% } %><% } %><% } %></td><% } %></tr>
</table>
</td>
<td class="promotionCodeSearchBox table_detail e n s" valign="top"><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PromotionCodeGroupStatus:Status"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",192,e);}if (_boolean_result) { %><img border="0" title="<% {out.write(localizeISText("PromotionCodeDetails_52.PromotionCodeGroup.status.title.valid",null,null,null,null,null,null,null,null,null,null,null,null));} %>" alt="<% {out.write(localizeISText("PromotionCodeDetails_52.PromotionCodeGroup.status.alt.valid",null,null,null,null,null,null,null,null,null,null,null,null));} %>" src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/online.png" /><% } else { %><img border="0" title="<% {out.write(localizeISText("PromotionCodeDetails_52.PromotionCodeGroup.status.title.invalid",null,null,null,null,null,null,null,null,null,null,null,null));} %>" alt="<% {out.write(localizeISText("PromotionCodeDetails_52.PromotionCodeGroup.status.alt.invalid",null,null,null,null,null,null,null,null,null,null,null,null));} %>" src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/offline.png" /><% } %></td>
</tr><% } %><% while (loop("PromotionCodeStatus:PromotionStatusList","PromotionStatus",null)) { %><tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PromotionStatus:CampaignStatus"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",206,e);}if (_boolean_result) { %><td width="50%" class="promotionCodeSearchBox table_detail w n s" valign="top"><% } else { %><td width="100%" class="promotionCodeSearchBox table_detail w n s" colspan="2" valign="top"><% } %><table class="label-value">
<tr>
<td colspan="2">
<strong><% {out.write(localizeISText("PromotionCodeDetails_52.Promotion.Title",null,null,null,null,null,null,null,null,null,null,null,null));} %></strong> 
</td>
</tr>
<tr>
<td colspan="2">
<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotion-Edit",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null))).addURLParameter(context.getFormattedValue("PromotionUUID",null),context.getFormattedValue(getObject("PromotionStatus:PromotionUUID"),null))),null)%>"><% {String value = null;try{value=context.getFormattedValue(getObject("PromotionStatus:PromotionName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {219}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></a>
</td>
</tr>
<tr>
<td valign="top">
<label><% {out.write(localizeISText("PromotionCodeDetails_52.Status",null,null,null,null,null,null,null,null,null,null,null,null));} %></label>
</td>
<td><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PromotionStatus:Enabled"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",227,e);}if (_boolean_result) { %><% {out.write(localizeISText("PromotionCodeDetails_52.Enabled",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else { %><% {out.write(localizeISText("PromotionCodeDetails_52.Disabled",null,null,null,null,null,null,null,null,null,null,null,null));} %>
&nbsp;<span class="warnsign"><img border="0" title="<% {out.write(localizeISText("PromotionCodeDetails_52.warning.title",null,null,null,null,null,null,null,null,null,null,null,null));} %>" alt="<% {out.write(localizeISText("PromotionCodeDetails_52.warning.alt",null,null,null,null,null,null,null,null,null,null,null,null));} %>" src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/status_warning.gif"/></span><% } %></td>
</tr> 
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PromotionStatus:CampaignTime"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",235,e);}if (_boolean_result) { %><tr>
<td valign="top">
<label><% {out.write(localizeISText("PromotionCodeDetails_52.StartEndDate",null,null,null,null,null,null,null,null,null,null,null,null));} %></label>
</td>
<td><% {out.write(localizeISText("PromotionCodeDetails_52.CampaignTime",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr> 
<% } else { %><tr>
<td valign="top">
<label><% {out.write(localizeISText("PromotionCodeDetails_52.StartDate",null,null,null,null,null,null,null,null,null,null,null,null));} %></label>
</td>
<td><% {String value = null;try{value=context.getFormattedValue(getObject("PromotionStatus:StartDate"),new Integer(DATE_INPUT),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {250}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;<% {String value = null;try{value=context.getFormattedValue(getObject("PromotionStatus:StartDate"),new Integer(TIME_INPUT),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {250}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("PromotionStatus:StartDateError"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",251,e);}if (_boolean_result) { %>
&nbsp;<span class="warnsign"><img border="0" title="<% {out.write(localizeISText("PromotionCodeDetails_52.warning.title",null,null,null,null,null,null,null,null,null,null,null,null));} %>" alt="<% {out.write(localizeISText("PromotionCodeDetails_52.warning.alt",null,null,null,null,null,null,null,null,null,null,null,null));} %>" src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/status_warning.gif"/></span><% } %></td>
</tr>
<tr>
<td valign="top">
<label><% {out.write(localizeISText("PromotionCodeDetails_52.EndDate",null,null,null,null,null,null,null,null,null,null,null,null));} %></label>
</td>
<td><% {String value = null;try{value=context.getFormattedValue(getObject("PromotionStatus:EndDate"),new Integer(DATE_INPUT),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {261}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;<% {String value = null;try{value=context.getFormattedValue(getObject("PromotionStatus:EndDate"),new Integer(TIME_INPUT),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {261}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("PromotionStatus:EndDateError"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",262,e);}if (_boolean_result) { %>
&nbsp;<span class="warnsign"><img border="0" title="<% {out.write(localizeISText("PromotionCodeDetails_52.warning.title",null,null,null,null,null,null,null,null,null,null,null,null));} %>" alt="<% {out.write(localizeISText("PromotionCodeDetails_52.warning.alt",null,null,null,null,null,null,null,null,null,null,null,null));} %>" src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/status_warning.gif"/></span><% } %></td>
</tr><% } %> 
<tr>
<td valign="top">
<label><% {out.write(localizeISText("PromotionCodeDetails_52.PromotionCodeGroup.Applications",null,null,null,null,null,null,null,null,null,null,null,null));} %></label>
</td>
<td><% {Object temp_obj = (getObject("PromotionStatus:Applications")); getPipelineDictionary().put("Applications", temp_obj);} %><% while (loop("Applications","Application","counter")) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(((( ((Number) getObject("counter")).doubleValue() >((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",274,e);}if (_boolean_result) { %><br/><% } %><% {String value = null;try{value=context.getFormattedValue(getObject("Application"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {274}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %></td>
</tr>
<tr>
<td valign="top">
<label><% {out.write(localizeISText("PromotionCodeDetails_52.Currency",null,null,null,null,null,null,null,null,null,null,null,null));} %></label>
</td>
<td><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PromotionStatus:PromotionCurrency"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",282,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("PromotionStatus:PromotionCurrency:Mnemonic"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {283}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> 
<% } else { %><% {out.write(localizeISText("PromotionCodeDetails_52.Currency.All",null,null,null,null,null,null,null,null,null,null,null,null));} %> 
<% } %></td>
</tr>
<tr> 
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PromotionStatus:TargetGroup"),null).equals(context.getFormattedValue("false",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",290,e);}if (_boolean_result) { %><td valign="top">
<label><% {out.write(localizeISText("PromotionCodeDetails_52.TargetGroup",null,null,null,null,null,null,null,null,null,null,null,null));} %></label>
</td>
<td><% {out.write(localizeISText("PromotionCodeDetails_52.TargetGroupsNotConfigured",null,null,null,null,null,null,null,null,null,null,null,null));} %>
&nbsp;<span class="warnsign"><img border="0" title="<% {out.write(localizeISText("PromotionCodeDetails_52.warning.title",null,null,null,null,null,null,null,null,null,null,null,null));} %>" alt="<% {out.write(localizeISText("PromotionCodeDetails_52.warning.alt",null,null,null,null,null,null,null,null,null,null,null,null));} %>" src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/status_warning.gif"/></span>
</td><% } else { %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PromotionCodeStatus:PromotionCodeUserInformation"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",299,e);}if (_boolean_result) { %><td valign="top">
<label><% {out.write(localizeISText("PromotionCodeDetails_52.TargetGroup",null,null,null,null,null,null,null,null,null,null,null,null));} %></label>
</td>
<td><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PromotionStatus:CampaignTargetGroupsUsed"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",304,e);}if (_boolean_result) { %><% {out.write(localizeISText("PromotionCodeDetails_52.CampaignTargetGroupsUsed",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PromotionStatus:AssignedToUser"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",307,e);}if (_boolean_result) { %><% {out.write(localizeISText("PromotionCodeDetails_52.AssignedToUser",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else { %><% {out.write(localizeISText("PromotionCodeDetails_52.NotAssignedToUser",null,null,null,null,null,null,null,null,null,null,null,null));} %>
&nbsp;<span class="warnsign"><img border="0" title="<% {out.write(localizeISText("PromotionCodeDetails_52.warning.title",null,null,null,null,null,null,null,null,null,null,null,null));} %>" alt="<% {out.write(localizeISText("PromotionCodeDetails_52.warning.alt",null,null,null,null,null,null,null,null,null,null,null,null));} %>" src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/status_warning.gif"/></span><% } %><% } %></td><% } %><% } %></tr>
</table> 
</td><% {Object temp_obj = (getObject("PromotionStatus:CampaignStatus")); getPipelineDictionary().put("CampaignStatus", temp_obj);} %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CampaignStatus"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",324,e);}if (_boolean_result) { %><td width="50%" class="promotionCodeSearchBox table_detail n s" valign="top">
<table class="label-value">
<tr>
<td colspan="2">
<strong><% {out.write(localizeISText("PromotionCodeDetails_52.Campaign.Title",null,null,null,null,null,null,null,null,null,null,null,null));} %></strong> 
</td>
</tr>
<tr>
<td colspan="2">
<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCampaignTargetGroup_52-ShowAll",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null))).addURLParameter(context.getFormattedValue("CampaignUUID",null),context.getFormattedValue(getObject("CampaignStatus:CampaignUUID"),null))),null)%>"><% {String value = null;try{value=context.getFormattedValue(getObject("CampaignStatus:CampaignName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {334}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></a> 
</td>
</tr>
<tr>
<td valign="top">
<label><% {out.write(localizeISText("PromotionCodeDetails_52.Status",null,null,null,null,null,null,null,null,null,null,null,null));} %></label>
</td>
<td> 
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("CampaignStatus:Enabled"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",342,e);}if (_boolean_result) { %><% {out.write(localizeISText("PromotionCodeDetails_52.Enabled",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else { %><% {out.write(localizeISText("PromotionCodeDetails_52.Disabled",null,null,null,null,null,null,null,null,null,null,null,null));} %>
&nbsp;<span class="warnsign"><img border="0" title="<% {out.write(localizeISText("PromotionCodeDetails_52.warning.title",null,null,null,null,null,null,null,null,null,null,null,null));} %>" alt="<% {out.write(localizeISText("PromotionCodeDetails_52.warning.alt",null,null,null,null,null,null,null,null,null,null,null,null));} %>" src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/status_warning.gif"/></span><% } %></td>
</tr>
<tr>
<td valign="top"> 
<label><% {out.write(localizeISText("PromotionCodeDetails_52.StartDate",null,null,null,null,null,null,null,null,null,null,null,null));} %></label>
</td>
<td><% {String value = null;try{value=context.getFormattedValue(getObject("CampaignStatus:StartDate"),new Integer(DATE_INPUT),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {355}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;<% {String value = null;try{value=context.getFormattedValue(getObject("CampaignStatus:StartDate"),new Integer(TIME_INPUT),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {355}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("CampaignStatus:StartDateError"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",356,e);}if (_boolean_result) { %>
&nbsp;<span class="warnsign"><img border="0" title="<% {out.write(localizeISText("PromotionCodeDetails_52.warning.title",null,null,null,null,null,null,null,null,null,null,null,null));} %>" alt="<% {out.write(localizeISText("PromotionCodeDetails_52.warning.alt",null,null,null,null,null,null,null,null,null,null,null,null));} %>" src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/status_warning.gif"/></span><% } %></td>
</tr>
<tr>
<td valign="top">
<label><% {out.write(localizeISText("PromotionCodeDetails_52.EndDate",null,null,null,null,null,null,null,null,null,null,null,null));} %></label>
</td>
<td><% {String value = null;try{value=context.getFormattedValue(getObject("CampaignStatus:EndDate"),new Integer(DATE_INPUT),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {366}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;<% {String value = null;try{value=context.getFormattedValue(getObject("CampaignStatus:EndDate"),new Integer(TIME_INPUT),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {366}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("CampaignStatus:EndDateError"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",367,e);}if (_boolean_result) { %>
&nbsp;<span class="warnsign"><img border="0" title="<% {out.write(localizeISText("PromotionCodeDetails_52.warning.title",null,null,null,null,null,null,null,null,null,null,null,null));} %>" alt="<% {out.write(localizeISText("PromotionCodeDetails_52.warning.alt",null,null,null,null,null,null,null,null,null,null,null,null));} %>" src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/status_warning.gif"/></span><% } %></td>
</tr>
<tr> 
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("CampaignStatus:TargetGroup"),null).equals(context.getFormattedValue("false",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",373,e);}if (_boolean_result) { %><td valign="top">
<label><% {out.write(localizeISText("PromotionCodeDetails_52.TargetGroup",null,null,null,null,null,null,null,null,null,null,null,null));} %></label>
</td>
<td><% {out.write(localizeISText("PromotionCodeDetails_52.TargetGroupsNotConfigured",null,null,null,null,null,null,null,null,null,null,null,null));} %>
&nbsp;<span class="warnsign"><img border="0" title="<% {out.write(localizeISText("PromotionCodeDetails_52.warning.title",null,null,null,null,null,null,null,null,null,null,null,null));} %>" alt="<% {out.write(localizeISText("PromotionCodeDetails_52.warning.alt",null,null,null,null,null,null,null,null,null,null,null,null));} %>" src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/status_warning.gif"/></span>
</td><% } else { %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PromotionCodeStatus:PromotionCodeUserInformation"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",382,e);}if (_boolean_result) { %> 
<td>
<label><% {out.write(localizeISText("PromotionCodeDetails_52.TargetGroup",null,null,null,null,null,null,null,null,null,null,null,null));} %></label>
</td>
<td> 
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("CampaignStatus:AssignedToUser"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",387,e);}if (_boolean_result) { %><% {out.write(localizeISText("PromotionCodeDetails_52.AssignedToUser",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else { %><% {out.write(localizeISText("PromotionCodeDetails_52.NotAssignedToUser",null,null,null,null,null,null,null,null,null,null,null,null));} %>
&nbsp;<span class="warnsign"><img border="0" title="<% {out.write(localizeISText("PromotionCodeDetails_52.warning.title",null,null,null,null,null,null,null,null,null,null,null,null));} %>" alt="<% {out.write(localizeISText("PromotionCodeDetails_52.warning.alt",null,null,null,null,null,null,null,null,null,null,null,null));} %>" src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/status_warning.gif"/></span><% } %></td><% } %><% } %></tr>
</table>
</td><% } %><td class="promotionCodeSearchBox table_detail e n s" valign="top"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CampaignStatus"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",401,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((context.getFormattedValue(getObject("PromotionStatus:Status"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("CampaignStatus:Status"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",404,e);}if (_boolean_result) { %><img border="0" title="<% {out.write(localizeISText("PromotionCodeDetails_52.PromotionCampaign.status.title.valid",null,null,null,null,null,null,null,null,null,null,null,null));} %>" alt="<% {out.write(localizeISText("PromotionCodeDetails_52.PromotionCampaign.status.alt.valid",null,null,null,null,null,null,null,null,null,null,null,null));} %>" src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/online.png" /><% } else { %><img border="0" title="<% {out.write(localizeISText("PromotionCodeDetails_52.PromotionCampaign.status.title.invalid",null,null,null,null,null,null,null,null,null,null,null,null));} %>" alt="<% {out.write(localizeISText("PromotionCodeDetails_52.PromotionCampaign.status.alt.invalid",null,null,null,null,null,null,null,null,null,null,null,null));} %>" src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/offline.png" /><% } %><% } else { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PromotionStatus:Status"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",413,e);}if (_boolean_result) { %><img border="0" title="<% {out.write(localizeISText("PromotionCodeDetails_52.Promotion.status.title.valid",null,null,null,null,null,null,null,null,null,null,null,null));} %>" alt="<% {out.write(localizeISText("PromotionCodeDetails_52.Promotion.status.alt.valid",null,null,null,null,null,null,null,null,null,null,null,null));} %>" src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/online.png" /><% } else { %><img border="0" title="<% {out.write(localizeISText("PromotionCodeDetails_52.Promotion.status.title.invalid",null,null,null,null,null,null,null,null,null,null,null,null));} %>" alt="<% {out.write(localizeISText("PromotionCodeDetails_52.Promotion.status.alt.invalid",null,null,null,null,null,null,null,null,null,null,null,null));} %>" src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/offline.png" /><% } %><% } %></td>
</tr><% } %></table>
</td>
<td valign="top">
<table class="promotionCodeSearchBoxesWrapperMiddle" border="0" width="100%"><tr><td width="100%"></td></tr></table>
</td>
<td width="50%" valign="top">
<table class="promotionCodeSearchBoxesWrapper" border="0" width="100%">
<tr>
<td width="100%" class="promotionCodeSearchBox table_detail aldi" colspan="2">
<table class="label-value">
<tr>
<td colspan="2">
<strong><% {out.write(localizeISText("PromotionCodeDetails_52.User.Title",null,null,null,null,null,null,null,null,null,null,null,null));} %></strong> 
</td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PromotionCodeStatus:PromotionCodeUserInformation"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",462,e);}if (_boolean_result) { %> 
<tr>
<td>
<label><% {out.write(localizeISText("PromotionCodeDetails_52.User.CustomerID",null,null,null,null,null,null,null,null,null,null,null,null));} %></label>
</td>
<td><% {String value = null;try{value=context.getFormattedValue(getObject("PromotionCodeStatus:PromotionCodeUserInformation:CustomerNo"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {468}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
</tr>
<tr>
<td>
<label><% {out.write(localizeISText("PromotionCodeDetails_52.User.Login",null,null,null,null,null,null,null,null,null,null,null,null));} %></label>
</td>
<td><% {String value = null;try{value=context.getFormattedValue(getObject("PromotionCodeStatus:PromotionCodeUserInformation:Login"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {476}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
</tr>
<tr>
<td>
<label><% {out.write(localizeISText("PromotionCodeDetails_52.User.FirstName",null,null,null,null,null,null,null,null,null,null,null,null));} %></label>
</td>
<td><% {String value = null;try{value=context.getFormattedValue(getObject("PromotionCodeStatus:PromotionCodeUserInformation:FirstName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {484}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
</tr>
<tr>
<td>
<label><% {out.write(localizeISText("PromotionCodeDetails_52.User.LastName",null,null,null,null,null,null,null,null,null,null,null,null));} %></label>
</td>
<td><% {String value = null;try{value=context.getFormattedValue(getObject("PromotionCodeStatus:PromotionCodeUserInformation:LastName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {492}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
</tr>
<tr>
<td>
<label><% {out.write(localizeISText("PromotionCodeDetails_52.User.CustomerType",null,null,null,null,null,null,null,null,null,null,null,null));} %></label>
</td>
<td><% {out.write(localizeISText(context.getFormattedValue(getObject("PromotionCodeStatus:PromotionCodeUserInformation:CustomerTypeLocalizationKey"),null),"",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td>
<label><% {out.write(localizeISText("PromotionCodeDetails_52.User.Status",null,null,null,null,null,null,null,null,null,null,null,null));} %></label>
</td>
<td><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("PromotionCodeStatus:PromotionCodeUserInformation:Disabled"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",508,e);}if (_boolean_result) { %><% {out.write(localizeISText("PromotionCodeDetails_52.User.Status.Inactive",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else { %><% {out.write(localizeISText("PromotionCodeDetails_52.User.Status.Active",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %></td>
</tr><% } else { %><tr>
<td colspan="2"><% {out.write(localizeISText("PromotionCodeDetails_52.User.NoCustomer.Text",null,null,url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotionCodes_52-Search",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("PromotionCode",null),context.getFormattedValue(getObject("PromotionCodeStatus:Code"),null)))),"table_detail_link",null,null,null,null,null,null,null,null));} %></td>
</tr><% } %> 
</table> 
</td>
</tr>
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PromotionCodeStatus:PromotionCodeUserInformation"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",529,e);}if (_boolean_result) { %><td width="100%" class="promotionCodeSearchBox table_detail aldi" colspan="2">
<table class="label-value">
<tr>
<td>
<strong><% {out.write(localizeISText("PromotionCodeDetails_52.Orders.Title",null,null,null,null,null,null,null,null,null,null,null,null));} %></strong> 
</td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("PromotionCodeStatus:PromotionCodeOrderInformations:Empty"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",537,e);}if (_boolean_result) { %><tr>
<td><% {out.write(localizeISText("PromotionCodeDetails_52.Orders.Empty",null,null,null,null,null,null,null,null,null,null,null,null));} %> 
</td>
</tr><% } else { %><% while (loop("PromotionCodeStatus:PromotionCodeOrderInformations","PromotionCodeOrderInformation",null)) { %><tr><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PromotionCodeOrderInformation:OrderUUID"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",546,e);}if (_boolean_result) { %><td><% {String value = null;try{value=context.getFormattedValue(getObject("PromotionCodeOrderInformation:OrderDocumentNo"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {548}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td><% } else { %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_MARKETING"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",551,e);}if (_boolean_result) { %><td>
<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewSellerOrder_52-FindByNumber",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID1",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null))).addURLParameter(context.getFormattedValue("OrderID",null),context.getFormattedValue(getObject("PromotionCodeOrderInformation:OrderUUID"),null))),null)%>"><% {String value = null;try{value=context.getFormattedValue(getObject("PromotionCodeOrderInformation:OrderDocumentNo"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {553}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></a>
</td> 
<% } else { %><td> 
<% {String value = null;try{value=context.getFormattedValue(getObject("PromotionCodeOrderInformation:OrderDocumentNo"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {557}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> 
</td><% } %><% } %></tr><% } %><% } %> 
</table>
</td><% } %></tr>
</table>
</td>
</tr>
</table>
<div><% URLPipelineAction action601 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotionCodes_52-Search",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("PromotionCode",null),context.getFormattedValue(getObject("PromotionCodeStatus:Code"),null))).addURLParameter(context.getFormattedValue("CustomerSearch_NameOrID",null),context.getFormattedValue(getObject("CustomerSearch_NameOrID"),null))),null));String site601 = null;String serverGroup601 = null;String actionValue601 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotionCodes_52-Search",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("PromotionCode",null),context.getFormattedValue(getObject("PromotionCodeStatus:Code"),null))).addURLParameter(context.getFormattedValue("CustomerSearch_NameOrID",null),context.getFormattedValue(getObject("CustomerSearch_NameOrID"),null))),null);if (site601 == null){  site601 = action601.getDomain();  if (site601 == null)  {      site601 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup601 == null){  serverGroup601 = action601.getServerGroup();  if (serverGroup601 == null)  {      serverGroup601 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotionCodes_52-Search",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("PromotionCode",null),context.getFormattedValue(getObject("PromotionCodeStatus:Code"),null))).addURLParameter(context.getFormattedValue("CustomerSearch_NameOrID",null),context.getFormattedValue(getObject("CustomerSearch_NameOrID"),null))),null));out.print("\"");out.print(" name=\"");out.print("backForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue601, site601, serverGroup601,true)); %><table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="backbar_left">
<table border="0" cellspacing="0" cellpadding="0">
<tr> 
<td class="button"><input type="submit" name="back" value="&lt;&lt;&nbsp;<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.Back.button",null)),null)%>" class="button"/></td>
</tr>
</table>
</td>
</tr>
</table><% out.print("</form>"); %></div>
<!-- EO Main Content -->
<!-- EO Working Area --><% printFooter(out); %>