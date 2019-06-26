<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><%@page import="java.util.Iterator"%>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %>
<% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"objectrendering/Modules", null, "3");} %>

<!-- Working Area  -->
<% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("text1",context.getFormattedValue(" - ",null) + context.getFormattedValue(localizeText(context.getFormattedValue("ChannelSharedProductChanges.ProductChanges.text1",null)),null)),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelSharedProductChanges-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null))).addURLParameter(context.getFormattedValue("ProductID",null),context.getFormattedValue(getObject("Product:UUID"),null)))),
new TagParameter("id","ChannelProductDetails"),
new TagParameter("text",getObject("Product:Name"))}, 6); %>
<!-- Main Content -->
<% {Object temp_obj = ("ProductChanges"); getPipelineDictionary().put("SelectedTab", temp_obj);} %>
<% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,context.getFormattedValue(context.getFormattedValue("inc/ProductTabs_",null) + context.getFormattedValue(getObject("CurrentChannel:TypeCode"),null),null), null, "9");} %>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
	<tr>
		<td width="100%" class="table_title w e s"><% {String value = null;try{value=context.getFormattedValue(getObject("Product:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {12}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
	</tr>
	<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ChangesSuccessfullyDiscarded"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",14,e);}if (_boolean_result) { %>
		<% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan","1"),
new TagParameter("subject",localizeText(context.getFormattedValue("ChannelSharedProductChanges.ChangesDiscarded.subject",null))),
new TagParameter("type","notification"),
new TagParameter("message",localizeText(context.getFormattedValue("ChannelSharedProductChanges.ChangesSuccessfullyDiscarded.message",null)))}, 15); %>
	<% } %>
	<!-- delete confirmation-->
	<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PRODUCTS")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("confirmDelete")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",18,e);}if (_boolean_result) { %>
		<tr>
			<td>
				<% URLPipelineAction action7 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelSharedProductChanges-Dispatch",null)))),null));String site7 = null;String serverGroup7 = null;String actionValue7 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelSharedProductChanges-Dispatch",null)))),null);if (site7 == null){  site7 = action7.getDomain();  if (site7 == null)  {      site7 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup7 == null){  serverGroup7 = action7.getServerGroup();  if (serverGroup7 == null)  {      serverGroup7 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelSharedProductChanges-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("deleteForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue7, site7, serverGroup7,true)); %>
					<table border="0" cellpadding="0" cellspacing="0" width="100%" class="confirm_box">
						<% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan","1"),
new TagParameter("parametername1","ProductID"),
new TagParameter("parametervalue2",getObject("CurrentChannel:UUID")),
new TagParameter("subject",localizeText(context.getFormattedValue("ChannelSharedProductChanges.Product.subject",null))),
new TagParameter("cancelbtnname","cancelDelete"),
new TagParameter("parametervalue1",getObject("Product:UUID")),
new TagParameter("parametername2","ChannelID"),
new TagParameter("okbtnname","delete"),
new TagParameter("type","sdc"),
new TagParameter("message",localizeText(context.getFormattedValue("ChannelSharedProductChanges.AreYouSureThatYouWantToDiscardAllChanges.message",null)))}, 23); %>
					</table>
				<% out.print("</form>"); %>
			</td>
		</tr>
	<% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PRODUCTS")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("confirmDiscardSelected")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",29,e);}if (_boolean_result) { %>
		<tr>
			<td>
				<% URLPipelineAction action8 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelSharedProductChanges-Dispatch",null)))),null));String site8 = null;String serverGroup8 = null;String actionValue8 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelSharedProductChanges-Dispatch",null)))),null);if (site8 == null){  site8 = action8.getDomain();  if (site8 == null)  {      site8 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup8 == null){  serverGroup8 = action8.getServerGroup();  if (serverGroup8 == null)  {      serverGroup8 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelSharedProductChanges-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("deleteForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue8, site8, serverGroup8,true)); %>
					<table border="0" cellpadding="0" cellspacing="0" width="100%" class="confirm_box">
						<% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Clipboard:ObjectUUIDs") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",34,e);}if (_boolean_result) { %>
							<% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan","1"),
new TagParameter("parametername1","ProductID"),
new TagParameter("subject",localizeText(context.getFormattedValue("ChannelSharedProductChanges.Products.subject",null))),
new TagParameter("cancelbtnname","cancelDelete"),
new TagParameter("parametervalue1",getObject("Product:UUID")),
new TagParameter("okbtnname","discardSelected"),
new TagParameter("type","mdc"),
new TagParameter("message",localizeText(context.getFormattedValue("ChannelSharedProductChanges.AreYouSureYouWantToDiscardTheSelectedChanges.message",null)))}, 35); %>
						<% } else { %>
							<% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan","1"),
new TagParameter("subject",localizeText(context.getFormattedValue("ChannelSharedProductChanges.Products.subject",null))),
new TagParameter("type","mde"),
new TagParameter("message",localizeText(context.getFormattedValue("ChannelSharedProductChanges.YouHaveNotSelectedAnyChangesToDiscard.message",null)))}, 37); %>
						<% } %>
					</table>
				<% out.print("</form>"); %>
			</td>
		</tr>
	<% }} %>
	<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PRODUCTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",44,e);}if (_boolean_result) { %>
	<tr>
		<td>
		    <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("CurrentChannel:TypeCode"),null).equals(context.getFormattedValue("52",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",47,e);}if (_boolean_result) { %>
		    	<% URLPipelineAction action9 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProduct_52-Dispatch",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue(getObject("SelectedTab"),null),context.getFormattedValue("Target",null)))),null));String site9 = null;String serverGroup9 = null;String actionValue9 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProduct_52-Dispatch",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue(getObject("SelectedTab"),null),context.getFormattedValue("Target",null)))),null);if (site9 == null){  site9 = action9.getDomain();  if (site9 == null)  {      site9 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup9 == null){  serverGroup9 = action9.getServerGroup();  if (serverGroup9 == null)  {      serverGroup9 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProduct_52-Dispatch",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue(getObject("SelectedTab"),null),context.getFormattedValue("Target",null)))),null));out.print("\"");out.print(" name=\"");out.print("setStatus");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue9, site9, serverGroup9,true)); %>
					<input type="hidden" name="ProductID" value="<%=context.getFormattedValue(getObject("Product:UUID"),null)%>"/>
					<!-- product locking information -->
					<% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,context.getFormattedValue(context.getFormattedValue("inc/ProductLockInformation_",null) + context.getFormattedValue(getObject("CurrentChannel:TypeCode"),null),null), null, "51");} %>
					<!-- end product locking information -->
				<% out.print("</form>"); %>
			<% } else { %>
				<!-- product locking information -->
				<% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,context.getFormattedValue(context.getFormattedValue("inc/ProductLockInformation_",null) + context.getFormattedValue(getObject("CurrentChannel:TypeCode"),null),null), null, "56");} %>
				<!-- end product locking information -->
		    <% } %>
		</td>
	</tr>
	<% } %>		
	<!-- product sharing information -->
	<% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/ProductSharingInformation", null, "63");} %>
	<!-- end product sharing information -->
	<tr>
		<td class="table_title_description w e s"><% {out.write(localizeISText("ChannelSharedProductChanges.TheListShowsCurrentDifferencesBetweenSharedAndBaseProduct.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
	</tr>
</table>

<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ProductBO:Extension(\"Changes\")"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",70,e);}if (_boolean_result) { %>
	<% {Object temp_obj = (getObject("ProductBO:Extension(\"Changes\"):AllChanges")); getPipelineDictionary().put("AllChanges", temp_obj);} %>
	<% {Object temp_obj = ((hasLoopElements("AllChanges") ? Boolean.TRUE : Boolean.FALSE)); getPipelineDictionary().put("ProductChanged", temp_obj);} %>
<% } %>

<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ProductChanged"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",75,e);}if (_boolean_result) { %>
	<% URLPipelineAction action10 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelSharedProductChanges-Dispatch",null)))),null));String site10 = null;String serverGroup10 = null;String actionValue10 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelSharedProductChanges-Dispatch",null)))),null);if (site10 == null){  site10 = action10.getDomain();  if (site10 == null)  {      site10 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup10 == null){  serverGroup10 = action10.getServerGroup();  if (serverGroup10 == null)  {      serverGroup10 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelSharedProductChanges-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("detailForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue10, site10, serverGroup10,true)); %>
		<table border="0" cellpadding="0" cellspacing="0" width="100%">
			<tr>
				<td>
					<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e">
						<tr>
							<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PRODUCTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",82,e);}if (_boolean_result) { %>
								<td class="table_header s e center" nowrap="nowrap" width="75">
									<div id="A">
										<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
											<tr>
												<td nowrap="nowrap">
													<a href="javascript:selectAll('detailForm','SelectedObjectUUID','A','B');" class="tableheader"><% {out.write(localizeISText("ChannelSharedProductChanges.SelectAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
												</td>
											</tr>
										</table>
									</div>
									<div id="B" style="display:none">
										<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
											<tr>
												<td nowrap="nowrap">
													<a href="javascript:selectAll('detailForm','SelectedObjectUUID','A','B');" class="tableheader"><% {out.write(localizeISText("ChannelSharedProductChanges.ClearAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
												</td>
											</tr>
										</table>
									</div>
								</td>
							<% } %>
							<td class="table_header e s left" nowrap="nowrap" ><% {out.write(localizeISText("ChannelSharedProductChanges.AttributeName.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
							<td class="table_header e s left" nowrap="nowrap"><% {out.write(localizeISText("ChannelSharedProductChanges.Value.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
							<td class="table_header s left" nowrap="nowrap"><% {out.write(localizeISText("ChannelSharedProductChanges.OriginalValue.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
						</tr>
						<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ProductChanged"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",108,e);}if (_boolean_result) { %>
							<% while (loop("AllChanges",null,null)) { %>
							<tr>
								<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PRODUCTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",111,e);}if (_boolean_result) { %>
									<td class="e s top center">
										<input type="checkbox" name="SelectedObjectUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("AllChanges:Id"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {113}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" <% _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("AllChanges:Id"),null).equals(context.getFormattedValue(getObject("Clipboard:ObjectUUID(AllChanges:Id)"),null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",113,e);}if (_boolean_result) { %>checked="checked"<% } %>/>
									</td>
								<% } %>
								<td class="table_detail2 e s left">
										<% {String value = null;try{value=context.getFormattedValue(getObject("AllChanges:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {117}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;
								</td>
								<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("AllChanges:Id"),null).equals(context.getFormattedValue("StandardAttribute|FreightClassID",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",119,e);}if (_boolean_result) { %>
									<% {try{executePipeline("ViewChannelSharedProductChanges-GetFreightClass",((java.util.Map)(((new ParameterMap().addParameter(new ParameterEntry("ProductFreightClassID",getObject("AllChanges:NewValue")))).addParameter(new ParameterEntry("BaseProductFreightClassID",getObject("AllChanges:OldValue")))))),"FreightClassesDictionary");}catch(Exception e){Logger.error(this,"ISPIPELINE failed. Line: 120.",e);}} %>
									<td class="table_detail2 e s left">
										<b><% {String value = null;try{value=context.getFormattedValue(getObject("FreightClassesDictionary:FreightClass:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {125}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</b>
									</td>
									<td class="table_detail2 s left">
										<% {String value = null;try{value=context.getFormattedValue(getObject("FreightClassesDictionary:BaseProductFreightClass:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {128}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;
									</td>
								<% } else { %>	
									<td class="table_detail2 e s left">
										<b><% processOpenTag(response, pageContext, "printobject", new TagParameter[] {
new TagParameter("renderingRepository",getObject("DefaultObjectRenderingEntryRepository")),
new TagParameter("object",getObject("AllChanges:NewValue"))}, 132); %>&nbsp;</b>
									</td>
									<td class="table_detail2 s left">
										<% processOpenTag(response, pageContext, "printobject", new TagParameter[] {
new TagParameter("renderingRepository",getObject("DefaultObjectRenderingEntryRepository")),
new TagParameter("object",getObject("AllChanges:OldValue"))}, 135); %>&nbsp;
									</td>
								<% } %>
							</tr>
    						<% } %>
    					<% } %>
					</table>
					<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PRODUCTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",142,e);}if (_boolean_result) { %>
						<table class="w e s" width="100%" border="0" cellspacing="0" cellpadding="0">
							<tr>
								<td align="right">
									<table border="0" cellspacing="4" cellpadding="0">
										<tr>
											<td class="button">
												<input type="hidden" name="ProductID" value="<%=context.getFormattedValue(getObject("Product:UUID"),null)%>"/>
												<input type="submit" name="confirmDiscardSelected" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ChannelSharedProductChanges.Discard.button",null)),null)%>" class="button" <% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("ProductLockedForMe")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",150,e);}if (_boolean_result) { %>disabled="disabled"<% } %>/>
												
											</td>
										</tr>
									</table>
								</td>
							</tr>
						</table>
					<% } %>
				</td>
			</tr>
		</table>
	<% out.print("</form>"); %>
<% } else { %>
	<table border="0" cellpadding="0" cellspacing="0" width="100%">
		<tr>
			<td>
				<table border="0" cellpadding="0" cellspacing="0" width="100%" class="w e s">
					<tr>
						<td class="table_detail"><% {out.write(localizeISText("ChannelSharedProductChanges.TheProductWasNotChangedInTheChannel.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
<% } %>
<% processOpenTag(response, pageContext, "objectdetailspagingbar", new TagParameter[] {
new TagParameter("nameforobjectuuid","ProductID"),
new TagParameter("pipeline","ViewChannelSharedProductChanges-Start"),
new TagParameter("currentobject",getObject("Product")),
new TagParameter("parametername1","ChannelID"),
new TagParameter("parametervalue1",getObject("ChannelID")),
new TagParameter("pagelocatorname","ProductList"),
new TagParameter("pagenumber",getObject("DetailsPageNumber"))}, 176); %>
<!-- EO Main Content -->
<!-- EO Working Area -->

<% printFooter(out); %>