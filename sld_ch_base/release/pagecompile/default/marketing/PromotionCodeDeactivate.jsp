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
new TagParameter("text1",context.getFormattedValue(" - ",null) + context.getFormattedValue(localizeText(context.getFormattedValue("marketing.promotioncodedeactivate.title",null)),null)),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotionCodeImpex-Status",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null))))),
new TagParameter("text",localizeText(context.getFormattedValue("marketing.promotioncodes.title",null)))}, 7); %><!-- EO Page Navigator -->
<!-- start input form -->
<h1 class="headline headline-top"><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","marketing.promotioncodedeactivate.title")}, 11); %></h1>
<!-- Tabs --><% processOpenTag(response, pageContext, "put", new TagParameter[] {
new TagParameter("name","SelectedTab"),
new TagParameter("value","Deactivate")}, 14); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"marketing/PromotionCodesTabs_52", null, "15");} %><!-- EO Tabs --><% URLPipelineAction action264 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotionCode-Dispatch",null)))),null));String site264 = null;String serverGroup264 = null;String actionValue264 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotionCode-Dispatch",null)))),null);if (site264 == null){  site264 = action264.getDomain();  if (site264 == null)  {      site264 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup264 == null){  serverGroup264 = action264.getServerGroup();  if (serverGroup264 == null)  {      serverGroup264 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotionCode-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print(context.getFormattedValue(getObject("PromotionCodeDeactivateForm:ID"),null));out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue264, site264, serverGroup264,true)); %> 
<table border="0" cellpadding="0" cellspacing="0" width="100%"> 
<!-- deactivate confirmation if one is selected--><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("confirmDeactivateCodes")))).booleanValue() && !((Boolean) getObject("PromotionCodeDeactivateForm:isInvalid")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",21,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan","1"),
new TagParameter("subject","promotionCode"),
new TagParameter("cancelbtnname","cancel"),
new TagParameter("okbtnname","deactivateCodes"),
new TagParameter("type","mdc"),
new TagParameter("message",localizeText(context.getFormattedValue("PromotionCodeDeactivate.AreYouSureYouWantToDeactivate.message",null)))}, 22); %><% } %><!-- errors --><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("SUCCESS_PromotionCodeDeactivate"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",25,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("ERROR_PromotionCodeDeactivate")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",26,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan","1"),
new TagParameter("subject","promotionCodeDeactivation"),
new TagParameter("type","info"),
new TagParameter("message",localizeText(context.getFormattedValue("PromotionCodeDeactivate.AllEnteredPromotionCodesHaveBeenDeactivated.message",null)))}, 27); %><% } else { %><tr>
<td>
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr valign="top">
<td class="error_icon top e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error top" width="100%"><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","marketing.promotioncodedeactivate.wrongselection.message")}, 35); %></td>
</tr>
</table>
</td>
</tr><% } %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)(getObject("PromotionCodeDeactivateForm:isInvalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",42,e);}if (_boolean_result) { %><tr>
<td>
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr valign="top">
<td class="error_icon top e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error top" width="100%"><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","marketing.promotioncodedeactivate.notselected.message")}, 49); %></td>
</tr>
</table>
</td>
</tr><% }} %><!-- EO errors-->
</table>
<table cellpadding="0" cellspacing="0" border="0" width="100%" class="w e s">
<tr>
<td>
<table cellpadding="0" cellspacing="0" border="0">
<tr>
<td colspan="2"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></td>
</tr>
<tr>
<td class="<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("PromotionCodeDeactivateForm:isInvalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",68,e);}if (_boolean_result) { %>fielditem2_error<% } else { %>fielditem2<% } %>" nowrap="nowrap"><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","marketing.promotioncodedeactivate.promotioncodes")}, 68); %><span class="star">*</span></td>
<td class="table_detail">
<textarea rows="20" cols="80" name="<% {String value = null;try{value=context.getFormattedValue(getObject("PromotionCodeDeactivateForm:Codes:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {70}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="inputfield_en" <% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) ((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_MARKETING"))))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",70,e);}if (_boolean_result) { %>disabled="disabled"<% } %>><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ERROR_PromotionCodeDeactivate"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",71,e);}if (_boolean_result) { %><% while (loop("ErrorPromotionCodes","ErrorPromotionCode",null)) { %><% {String value = null;try{value=context.getFormattedValue(context.getFormattedValue(getObject("ErrorPromotionCode"),null) + context.getFormattedValue("\n",null),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {73}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("SUCCESS_PromotionCodeDeactivate")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",75,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("PromotionCodeDeactivateForm:Codes:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {76}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% }} %></textarea>
</td>
</tr>
</table> 
</td>
</tr>
<!-- Buttons -->
<tr><td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></td></tr>
<tr>
<td align="right" class="n">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button">
<input type="hidden" name="ChannelID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("CurrentChannel:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {91}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="submit" name="confirmDeactivateCodes" value="<% {out.write(localizeISText("marketing.promotioncodedeactivate.button","",null,null,null,null,null,null,null,null,null,null,null));} %>" class="button" <% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) ((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_MARKETING"))))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",92,e);}if (_boolean_result) { %>disabled="disabled"<% } %>/>
</td>
</tr>
</table>
</td>
</tr>
</table><% out.print("</form>"); %><!-- EO Main Content -->
<!-- EO Working Area --><% printFooter(out); %>