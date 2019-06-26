<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><!-- TEMPLATENAME: marketing/inc/DynamicMessaging.isml -->
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %>

<% context.setCustomTagTemplateName("htmleditor","inc/HtmlEditor.isml",false,new String[]{"RepositoryId","LocaleId","CategoryLinkPipeline","CategoryLinkSite","ProductLinkPipeline","ProductLinkSite","Name","Configuration","Enabled","NoRepositoryLinks"},null); %>
<% context.setCustomTagTemplateName("messagebox","inc/MessageBox.isml",false,new String[]{"subject","type","message","okbtnname","cancelbtnname","colspan","class","prefixiterator","prefix","iterator","hiddenname","parametername1","parametervalue1","parametername2","parametervalue2","parametername3","parametervalue3","parametername4","parametervalue4","parametername5","parametervalue5","parametername6","parametervalue6"},null); %>

<!-- Dynamic Message -->

<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("previewDynamicMessageInViewMode")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("RebateUUID"),null).equals(context.getFormattedValue(getObject("Rebate:UUID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((disableErrorMessages().isDefined(getObject("previewDynamicMessageInEditMode"))))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",48,e);}if (_boolean_result) { %>
	<div id="DynamicMessagePreviewDialog" class="js-dialog" data-title="<% {out.write(localizeISText("dynamicMessaging.message.dialog.title","",null,null,null,null,null,null,null,null,null,null,null));} %>" data-autoopen="true" width="647" height="384">
		<div class="dialog-content">
			<% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"marketing/inc/DynamicMessagePreview.isml", null, "51");} %>
		</div>
		<div class="dialog-buttons">
			<button class="button" data-action="dialog-close" ><% {out.write(localizeISText("dynamicMessaging.message.dialog.button.close","",null,null,null,null,null,null,null,null,null,null,null));} %></button>
		</div>
	</div>
<% } %>

<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("Rebate:Promotion:Currency")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("Rebate:Condition")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",59,e);}if (_boolean_result) { %>
	<% URLPipelineAction action246 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotionDiscountDynamicMessage-Dispatch",null)))),null));String site246 = null;String serverGroup246 = null;String actionValue246 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotionDiscountDynamicMessage-Dispatch",null)))),null);if (site246 == null){  site246 = action246.getDomain();  if (site246 == null)  {      site246 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup246 == null){  serverGroup246 = action246.getServerGroup();  if (serverGroup246 == null)  {      serverGroup246 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotionDiscountDynamicMessage-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("PromotionDynamicMessage");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue246, site246, serverGroup246,true)); %>
		<input type="hidden" name="ChannelID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("CurrentChannel:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {61}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
		<input type="hidden" name="PromotionUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Rebate:Promotion:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {62}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
		<input type="hidden" name="RebateUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Rebate:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {63}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
		<input type="hidden" name="LocaleID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("SelectedLocale:LocaleID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {64}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>

		<table cellpadding="0" cellspacing="0" border="0" width="100%" class="s">
			<tr><td class="w e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="20" height="6" alt="" border="0"/></td></tr>
			<tr>
				<td class="table_title3 aldi"><% {out.write(localizeISText("DynamicMessaging.Message.table_title3",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
			</tr>
			
			
			<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((context.getFormattedValue(getObject("RebateUUID"),null).equals(context.getFormattedValue(getObject("Rebate:UUID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("confirmDeleteDynamicMessageInEditMode")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",73,e);}if (_boolean_result) { %>	
				<% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan","2"),
new TagParameter("subject",localizeText(context.getFormattedValue("sld_ch_base.Message.subject",null))),
new TagParameter("cancelbtnname","cancelDeleteDynamicMessageInEditMode"),
new TagParameter("okbtnname","deleteDynamicMessageInEditMode"),
new TagParameter("type","sdc")}, 74); %>
			<% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((context.getFormattedValue(getObject("RebateUUID"),null).equals(context.getFormattedValue(getObject("Rebate:UUID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("confirmDeleteDynamicMessageInViewMode")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",75,e);}if (_boolean_result) { %> 
				<% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan","2"),
new TagParameter("subject",localizeText(context.getFormattedValue("sld_ch_base.Message.subject",null))),
new TagParameter("cancelbtnname","cancelDeleteDynamicMessageInViewMode"),
new TagParameter("okbtnname","deleteDynamicMessageInViewMode"),
new TagParameter("type","sdc")}, 76); %>
			<% }} %>
			
			
			<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((context.getFormattedValue(getObject("DynamicMessageEditMode"),null).equals(context.getFormattedValue(getObject("Rebate:UUID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) getObject("DynamicMessageForm:isInvalid")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",80,e);}if (_boolean_result) { %>
				<tr>
					<td>
						<table border="0" cellpadding="4" cellspacing="0" width="100%" class="error_box s e w">
							<tr>
								<td class="error_icon e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
								<td class="error top" width="100%">
									<% _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("DynamicMessageForm:Money:Invalid"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",87,e);}if (_boolean_result) { %>
										<% while (loop("DynamicMessageForm:Money:Errors","Error",null)) { %>
											<% {out.write(localizeISText(context.getFormattedValue(getObject("Error"),null),"",null,"Minimum Order Value",null,null,null,null,null,null,null,null,null));} %><br/>
										<% } %>
									<% } %>
									<% _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("DynamicMessageForm:Items:Invalid"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",92,e);}if (_boolean_result) { %>
										<% while (loop("DynamicMessageForm:Items:Errors","Error",null)) { %>
											<% {out.write(localizeISText(context.getFormattedValue(getObject("Error"),null),"",null,"Minimum Number of Items",null,null,null,null,null,null,null,null,null));} %><br/>
										<% } %>
									<% } %>
									<% _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("DynamicMessageForm:DynamicMessage:Invalid"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",97,e);}if (_boolean_result) { %>
										<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("DynamicMessageForm:DynamicMessage:Value"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",98,e);}if (_boolean_result) { %><% {out.write(localizeISText("error.dependson","",null,"Message",null,null,null,null,null,null,null,null,null));} %><br/><% } %>
										<% while (loop("DynamicMessageForm:DynamicMessage:Errors","Error",null)) { %>
											<% {out.write(localizeISText(context.getFormattedValue(getObject("Error"),null),"",null,"${","}",null,null,null,null,null,null,null,null));} %>
											<% _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("Error"),null).equals(context.getFormattedValue("error.unknownPlaceholders",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",101,e);}if (_boolean_result) { %>
												<% while (loop("UnknownPlaceholders","Unknown",null)) { %>
													<br/>- <% {String value = null;try{value=context.getFormattedValue(getObject("Unknown"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {103}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>
												<% } %>
											<% } %>
										<% } %>
									<% } %>
									<% _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("DynamicMessageForm:OrderCondition:Invalid"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",108,e);}if (_boolean_result) { %>
										<% while (loop("DynamicMessageForm:OrderCondition:Errors","Error",null)) { %>
											<% {out.write(localizeISText(context.getFormattedValue(getObject("Error"),null),"",null,"Minimum Order Value","Minimum Number of Items",null,null,null,null,null,null,null,null));} %><br/>
										<% } %>
									<% } %>
								</td>
							</tr>
						</table>
					</td>
				</tr>
			<% } %>
			

			<tr>
				<td class="table_title_description e w">
					<% {out.write(localizeISText("DynamicMessaging.HereYouCanDefineAMessageWhichMayBeShownOnShoppingCartPage.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %>
				</td>
			</tr>
		</table>
			
	
		<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("Rebate:AttributeValue(\"DynamicMessage\",SelectedLocale):TextValue")))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("DynamicMessageEditMode"),null).equals(context.getFormattedValue(getObject("Rebate:UUID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",129,e);}if (_boolean_result) { %>
			<table border="0" cellpadding="0" cellspacing="4" width="100%" class="w s e">
				<tr>
					<td class="table_detail">
						<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_MARKETING"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",133,e);}if (_boolean_result) { %>
							<% {out.write(localizeISText("DynamicMessaging.CurrentlyThereIsNoMessageDefinedClickNew.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %>
						<% } else { %>
							<% {out.write(localizeISText("DynamicMessaging.CurrentlyThereIsNoMessageDefined.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %>
						<% } %>
					</td>
				</tr>
			</table>
			<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_MARKETING"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",141,e);}if (_boolean_result) { %>
				<table width="100%" cellspacing="0" cellpadding="0" border="0" class="w s e">
					<tr>
						<td width="100%" align="right">
							<table cellspacing="4" cellpadding="0" border="0">
								<tr>
									<td class="button">
										<input type="submit" class="button" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("DynamicMessaging.New.button",null)),null)%>" name="newDynamicMessage"/>
										<input type="hidden" name="DynamicMessageEditMode" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Rebate:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {149}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
									</td>
								</tr>
							</table>
						</td>
					</tr>
				</table>
			<% } %>
				
		<% } else { %>
	
			<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) ((((context.getFormattedValue(getObject("DynamicMessageEditMode"),null).equals(context.getFormattedValue(getObject("Rebate:UUID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",160,e);}if (_boolean_result) { %> 
				<table border="0" cellpadding="0" cellspacing="4" width="100%" class="w s e">
					<tr>
						<td width="100%" class="table_detail">
							<table width="100%" cellspacing="0" cellpadding="0" border="0" class="aldi">
								<tr>
									<td colspan="3"><img width="1" height="4" border="0" alt="" src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" /></td>
								</tr>
								<tr>
									<td>
										<table cellspacing="0" cellpadding="0" border="0">
											<tr>
												<td nowrap="nowrap" class="fielditem2 label_text">
													<label class="label">
														<% {out.write(localizeISText("DynamicMessaging.Trigger.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:
													</label>
												</td>
												<td class="table_detail">
													<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_MARKETING"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",178,e);}if (_boolean_result) { %>
														<a class="table_detail_link"
															href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotionDiscountDynamicMessage-Show",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null))).addURLParameter(context.getFormattedValue("LocaleID",null),context.getFormattedValue(getObject("SelectedLocale:LocaleID"),null)).addURLParameter(context.getFormattedValue("RebateUUID",null),context.getFormattedValue(getObject("Rebate:UUID"),null)).addURLParameter(context.getFormattedValue("DynamicMessageEditMode",null),context.getFormattedValue(getObject("Rebate:UUID"),null))),null)%>">
															<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue("OrderMinValueCondition",null).equals(context.getFormattedValue(getObject("Rebate:AttributeValue(\"OrderCondition\"):StringValue"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",186,e);}if (_boolean_result) { %>
																<% {out.write(localizeISText("DynamicMessaging.MinimumOrderValue.link",null,null,null,null,null,null,null,null,null,null,null,null));} %>
															<% } else { %>
																<% {out.write(localizeISText("DynamicMessaging.MinimumNumberOfItems.link",null,null,null,null,null,null,null,null,null,null,null,null));} %>
															<% } %>
														</a>
													<% } %>
												</td>
											</tr>
											<tr>
												<td nowrap="nowrap" class="fielditem2 label_text">
													<label class="label">
														<% {out.write(localizeISText("DynamicMessaging.Value.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:
													</label>
												</td>													
												<td class="table_detail">
													<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue("OrderMinValueCondition",null).equals(context.getFormattedValue(getObject("Rebate:AttributeValue(\"OrderCondition\"):StringValue"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",203,e);}if (_boolean_result) { %>
														<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Rebate:Promotion:Currency:Mnemonic"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",205,e);}if (_boolean_result) { %>
															<% {String value = null;try{value=context.getFormattedValue(getObject("Rebate:AttributeValue(\"Money\"):MoneyValue"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {207}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;
														<% } %>
														<% } else { %>
														<% {out.write(localizeISText("DynamicMessaging.NumberOfItems.table_detail",null,null,context.getFormattedValue(getObject("Rebate:AttributeValue(\"Items\"):IntValue"),null),null,null,null,null,null,null,null,null,null));} %>
													<% } %>
												</td>
											</tr>
										</table>
									</td>
									<td align="right">
										<table cellspacing="4" cellpadding="0" border="0">
											<tr>
												<td>
													<input type="submit" name="previewDynamicMessageInViewMode" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("DynamicMessaging.PreviewMessage.button",null)),null)%>" class="button" />
												</td>
											</tr>
										</table>
									</td>
								</tr>
								<tr>
									<td colspan="3"><img width="1" height="4" border="0" alt="" src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" /></td>
								</tr>
							</table>
						</td>
						<td class="right top">
							<input type="checkbox" style="visibility:hidden;" />
						</td>
					</tr>
				</table>
				
				<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_MARKETING"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",237,e);}if (_boolean_result) { %>
					<table width="100%" cellspacing="0" cellpadding="0" border="0" class="w s e">
						<tr>
							<td width="100%" align="right">
								<input type="hidden" name="DynamicMessageEditMode" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Rebate:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {241}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
								<table cellspacing="4" cellpadding="0" border="0">
									<tr>
										<td class="button">
											<input type="submit" class="button" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("DynamicMessaging.Edit.button",null)),null)%>" name="editDynamicMessage"/>
										</td>
										<td class="button">
											<input type="submit" name="confirmDeleteDynamicMessageInViewMode" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("DynamicMessaging.Delete.button",null)),null)%>" class="button"/>
										</td>
									</tr>
								</table>
							</td>
						</tr>
					</table>
			 	<% } %>
				
			<% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("RebateUUID"),null).equals(context.getFormattedValue(getObject("Rebate:UUID"),null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",257,e);}if (_boolean_result) { %>

				<table border="0" cellpadding="0" cellspacing="4" width="100%" class="w s e">
					<tr>		
						<td width="50%" class="table_detail">
						
							<table border="0" cellpadding="0" cellspacing="4" width="100%" class="aldi editbox">
								<tr>
									<td colspan="2"><img width="1" height="4" border="0" alt="" src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" /></td>
								</tr>
								<tr>
									<td nowrap="nowrap" <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (getObject("DynamicMessageForm:Items:isInvalid"))).booleanValue() || ((Boolean) (getObject("DynamicMessageForm:Money:isInvalid"))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",268,e);}if (_boolean_result) { %>class="fielditem2_error"<% } else { %>class="fielditem2"<% } %>><% {out.write(localizeISText("DynamicMessaging.Trigger",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></td>
									<td>
										<table border="0" cellpadding="0" cellspacing="0" width="1%">
											<tr> 
												<td class="table_detail" width="1%">
													<input type="radio" value="OrderMinValueCondition" 
														checked="checked"
														id="<% {String value = null;try{value=context.getFormattedValue(getObject("DynamicMessageForm:OrderCondition:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {275}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" 
														name="<% {String value = null;try{value=context.getFormattedValue(getObject("DynamicMessageForm:OrderCondition:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {276}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" 
													/>
												</td>
												<td class="table_detail" nowrap="nowrap" width="1%">
													<% {out.write(localizeISText("DynamicMessaging.MinimumOrderValue.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %>
												</td>
												<td class="fielditem" nowrap="nowrap" width="1%">
													<input class="inputfield_en" type="text" maxlength="10" size="10" 
														id="<% {String value = null;try{value=context.getFormattedValue(getObject("DynamicMessageForm:Money:Amount:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {284}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" 
														name="<% {String value = null;try{value=context.getFormattedValue(getObject("DynamicMessageForm:Money:Amount:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {285}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" 
														value="<% {String value = null;try{value=context.getFormattedValue(getObject("DynamicMessageForm:Money:Value"),new Integer(MONEY_SHORT),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {286}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
												</td>
												<td nowrap="nowrap" class="table_detail" width="1%">
													<% {String value = null;try{value=context.getFormattedValue(getObject("Rebate:Promotion:Currency:Mnemonic"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {289}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>
												</td>
											</tr>
											<tr>
												<td class="table_detail" width="1%">
													<input type="radio" value="OrderMinNumberOfProductsCondition"  
														id="<% {String value = null;try{value=context.getFormattedValue(getObject("DynamicMessageForm:OrderCondition:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {295}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" 
														name="<% {String value = null;try{value=context.getFormattedValue(getObject("DynamicMessageForm:OrderCondition:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {296}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" 
														<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue("OrderMinNumberOfProductsCondition",null).equals(context.getFormattedValue(getObject("DynamicMessageForm:OrderCondition:Value"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",297,e);}if (_boolean_result) { %>checked="checked"<% } %>
													/>
												</td>
												<td class="table_detail" nowrap="nowrap" width="1%">
													<% {out.write(localizeISText("DynamicMessaging.MinimumNumberOfItems.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %>
												</td>
												<td class="fielditem">
													<input class="inputfield_en" type="text" maxlength="10" size="10"
														id="<% {String value = null;try{value=context.getFormattedValue(getObject("DynamicMessageForm:Items:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {305}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" 
														name="<% {String value = null;try{value=context.getFormattedValue(getObject("DynamicMessageForm:Items:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {306}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" 
														value="<% {String value = null;try{value=context.getFormattedValue(getObject("DynamicMessageForm:Items:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {307}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
												</td>
												<td class="table_detail" nowrap="nowrap" width="1%">
													<% {out.write(localizeISText("DynamicMessaging.Items.table_detail1",null,null,null,null,null,null,null,null,null,null,null,null));} %>
												</td>
											</tr>
										</table>
									</td>
								</tr>
								<tr>
									<td nowrap="nowrap" <% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("DynamicMessageForm:DynamicMessage:isInvalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",317,e);}if (_boolean_result) { %>class="fielditem2_error"<% } else { %>class="fielditem2"<% } %>><% {out.write(localizeISText("DynamicMessaging.Message",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></td>
									<td class="fielditem" colspan="4">
										<textarea rows="5" cols="69" class="inputfield_en" name="<% {String value = null;try{value=context.getFormattedValue(getObject("DynamicMessageForm:DynamicMessage:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {319}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% {String value = null;try{value=context.getFormattedValue(getObject("DynamicMessageForm:DynamicMessage:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {319}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></textarea>
										
										<div>
											<input type="submit" class="button" name="previewDynamicMessageInEditMode" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("DynamicMessaging.PreviewMessage.button",null)),null)%>" />
										</div>
									</td>
									
									<% processOpenTag(response, pageContext, "htmleditor", new TagParameter[] {
new TagParameter("ProductLinkSite",getObject("CurrentChannel:RepositoryDomain:Site:DomainName")),
new TagParameter("LocaleId",getObject("SelectedLocale:LocaleID")),
new TagParameter("Configuration","Basic"),
new TagParameter("CategoryLinkPipeline","ViewStandardCatalog-Browse"),
new TagParameter("CategoryLinkSite",getObject("CurrentChannel:RepositoryDomain:Site:DomainName")),
new TagParameter("ProductLinkPipeline","ViewProduct-Start"),
new TagParameter("Enabled","true"),
new TagParameter("RepositoryId",getObject("CurrentChannel:RepositoryDomain:UUID")),
new TagParameter("Name",getObject("DynamicMessageForm:DynamicMessage:QualifiedName"))}, 326); %>
								</tr>
							</table>
						</td>
						
						<td width="50%" class="top">
							<table cellpadding="4" cellspacing="0" border="0" width="100%">
								<tr>
									<td>
										<% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("PlaceholdersIterator") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",343,e);}if (_boolean_result) { %>
										<table cellpadding="0" cellspacing="0" border="0" width="100%">
										 	<tr>
												<td class="table_header aldi" width="30%"><% {out.write(localizeISText("DynamicMessaging.Placeholders.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
												<td class="table_header e s n" width="20%"><% {out.write(localizeISText("DynamicMessaging.Value.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
												<td class="table_header e s n" width="50%"><% {out.write(localizeISText("DynamicMessaging.ValueDisplayedInStorefront.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
											</tr>
												<% while (loop("PlaceholdersIterator","Placeholder",null)) { %>
													<tr>
														<td class="table_detail w e s">
															<% {String value = null;try{value=context.getFormattedValue(getObject("Placeholder"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {353}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>
														</td>
														<td class="table_detail e s" nowrap="nowrap">
															<% {String value = null;try{value=context.getFormattedValue(getObject("PlaceholdersMap:get(Placeholder)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {356}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>
														</td>
														<td class="table_detail e s">
															<% {String value = null;try{value=context.getFormattedValue(getObject("PlaceholdersMap:get(Placeholder)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {359}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> - <% {out.write(localizeISText("DynamicMessaging.CurrentCartSum.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %>
														</td>
													</tr>
												<% } %>
										</table>
										<% } %>
									</td>
								</tr> 
							</table>
						</td>
					</tr>
				</table>
				
				<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_MARKETING"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",372,e);}if (_boolean_result) { %>
					<table width="100%" cellspacing="0" cellpadding="0" border="0" class="w s e">
						<tr>
							<td width="100%" align="right">
								<input type="hidden" name="DynamicMessageEditMode" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Rebate:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {376}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
								<table cellspacing="4" cellpadding="0" border="0">
									<tr>
										<td class="button">
											<input type="hidden" name="<% {String value = null;try{value=context.getFormattedValue(getObject("DynamicMessageForm:Money:Currency:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {380}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Rebate:Promotion:Currency:Mnemonic"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {380}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
											<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue("OrderMinNumberOfProductsCondition",null).equals(context.getFormattedValue(getObject("DynamicMessageForm:OrderCondition:Value"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",381,e);}if (_boolean_result) { %>
												<input type="hidden" name="PromotionDynamicMessage_Money_Value" value="0"/>
											<% } %>
											<input type="submit" class="button" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("DynamicMessaging.Apply.button",null)),null)%>" name="saveDynamicMessage"/>
										</td>
										<td class="button">
											<input type="reset" name="reset" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("DynamicMessaging.Reset.button",null)),null)%>" class="button"/>
										</td>
										<td class="button">
											<input type="submit" class="button" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("DynamicMessaging.Cancel.button",null)),null)%>" name="cancelDynamicMessage"/>
										</td>
										<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Rebate:AttributeValue(\"DynamicMessage\",SelectedLocale):TextValue"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",392,e);}if (_boolean_result) { %>
											<td class="button">
												<input type="submit" name="confirmDeleteDynamicMessageInEditMode" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("DynamicMessaging.Delete.button",null)),null)%>" class="button"/>
											</td>
										<% } %>
									</tr>
								</table>
							</td>
						</tr>
					</table>
				<% } %>
			<% }} %>
		<% } %>
	<% out.print("</form>"); %>
<% } %>

<% printFooter(out); %>