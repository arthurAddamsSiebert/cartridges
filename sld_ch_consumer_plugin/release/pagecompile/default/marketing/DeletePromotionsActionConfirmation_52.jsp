<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %>
<!-- Page Navigator -->
<% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("text",localizeText(context.getFormattedValue("DeletePromotionsActionConfirmation_52.Step2Confirmation.text",null)))}, 4); %>
<!-- EO Page Navigator -->

<table border="0" cellspacing="0" cellpadding="0" width="100%">
	<tr>
		<td class="table_title aldi"><% {out.write(localizeISText("DeletePromotionsActionConfirmation_52.Step2DeletePromotionsConfirmation.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
	</tr>
</table>	
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="w e s confirm_box">
	<tr>
		<td class="error_icon e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/confirmation.gif" width="16" height="15" alt="" border="0"/></td>
		<td class="confirm" width="100%">
			<% {out.write(localizeISText("DeletePromotionsActionConfirmation_52.ThisPromotionProcessingActionWillDeleteAllPromotion.confirm",null,null,null,null,null,null,null,null,null,null,null,null));} %>
		</td>
	</tr>
</table>

<% URLPipelineAction action554 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotionProcessingWizard_52-Dispatch",null)))),null));String site554 = null;String serverGroup554 = null;String actionValue554 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotionProcessingWizard_52-Dispatch",null)))),null);if (site554 == null){  site554 = action554.getDomain();  if (site554 == null)  {      site554 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup554 == null){  serverGroup554 = action554.getServerGroup();  if (serverGroup554 == null)  {      serverGroup554 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotionProcessingWizard_52-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("DeletePromotionsConfirmation");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue554, site554, serverGroup554,true)); %>
	<table class="w e s" width="100%" border="0" cellspacing="0" cellpadding="0">
		<tr>
			<td>
				<table border="0" cellspacing="4" cellpadding="0">
					<tr>
						<td class="button">
							<input type="hidden" name="ChannelID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ChannelID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {28}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
							<input type="hidden" name="SelectedMenuItem" value="OnlineMarketing"/>
							<input type="hidden" name="ActionID" value="DeletePromotions"/>
							<input type="hidden" name="PageableID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("PageableID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {31}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
							<input type="hidden" name="PageableName" value="Objects"/>
							<input type="hidden" name="deletePromotions" value="true"/>
							<input type="hidden" name="ProcessDescription" value="Deleting Promotions"/>
							<input type="submit" name="actionList" value="&lt;&lt;&nbsp;<%=context.getFormattedValue(localizeText(context.getFormattedValue("DeletePromotionsActionConfirmation_52.Previous.button",null)),null)%>" class="button"/>
						</td>
					</tr>
				</table>
			</td>
			<td align="right">
				<table border="0" cellspacing="4" cellpadding="0">
					<tr>
						<td class="button"><input type="submit" name="finish" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("DeletePromotionsActionConfirmation_52.Finish.button",null)),null)%>" class="button"/></td>
						<td class="button"><input type="submit" name="cancel" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("DeletePromotionsActionConfirmation_52.Cancel.button",null)),null)%>" class="button"/></td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
<% out.print("</form>"); %>
<!-- EO Main Content -->
<!-- EO Working Area --><% printFooter(out); %>