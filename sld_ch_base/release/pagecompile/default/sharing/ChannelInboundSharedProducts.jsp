<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %>

<!-- Working Area  -->
<% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("hide","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue(context.getFormattedValue("ViewChannelCatalogOverview_",null) + context.getFormattedValue(getObject("CurrentChannel:TypeCode"),null) + context.getFormattedValue("-Show",null),null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null))))),
new TagParameter("start","true"),
new TagParameter("text",localizeText(context.getFormattedValue("ChannelInboundSharedProducts.ChannelCatalogs.text",null)))}, 4); %>
<% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("listview","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelInboundSharing-BackToStart",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null))))),
new TagParameter("text",localizeText(context.getFormattedValue("ChannelInboundSharedProducts.InboundProductSharing.text",null)))}, 5); %>
<!-- Main Content -->
<table border="0" cellpadding="0" cellspacing="0" width="100%">
		<tr>
			<td>
				<table border="0" cellpadding="0" cellspacing="0" width="100%">
					<tr>
						<td width="100%" class="table_title n w e s"><% {out.write(localizeISText("ChannelInboundSharedProducts.InboundProductSharing.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
					</tr>
					<tr>
						<td class="table_title_description w e s">
						 	<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_SYNDICATE_CATALOGS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",16,e);}if (_boolean_result) { %>
								<% {out.write(localizeISText("ChannelInboundSharedProducts.ActivateProductsSharedToYourChannelHere.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %>
							<% } else { %>
								<% {out.write(localizeISText("ChannelInboundSharedProducts.ViewActivationOfProductsSharedToYourChannelHere.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %>
							<% } %>
						</td>
					</tr>
				</table>
				
				<% URLPipelineAction action91 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelInboundSharing-Dispatch",null)))),null));String site91 = null;String serverGroup91 = null;String actionValue91 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelInboundSharing-Dispatch",null)))),null);if (site91 == null){  site91 = action91.getDomain();  if (site91 == null)  {      site91 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup91 == null){  serverGroup91 = action91.getServerGroup();  if (serverGroup91 == null)  {      serverGroup91 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelInboundSharing-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("assignmentTypeForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue91, site91, serverGroup91,true)); %>
					<table class="w e s" border="0" cellpadding="0" cellspacing="0" width="100%">
						<tr>
							<td width="1">
								<input name="ProductAssignmentType" value="all" type="radio" <% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("InboundProductSet")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",29,e);}if (_boolean_result) { %>checked="checked"<% } %>
									<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_SYNDICATE_CATALOGS")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",30,e);}if (_boolean_result) { %>disabled="disabled"<% } %>
								/>
							</td>
							<td class="fielditem">
								<% {out.write(localizeISText("ChannelInboundSharedProducts.ActivateAllSharedProducts.fielditem",null,null,null,null,null,null,null,null,null,null,null,null));} %>
							</td>
						</tr>
						<tr>
							<td width="1">
								<input name="ProductAssignmentType" value="selection" type="radio" <% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("InboundProductSet"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",39,e);}if (_boolean_result) { %>checked="checked"<% } %>
									<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_SYNDICATE_CATALOGS")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",40,e);}if (_boolean_result) { %>disabled="disabled"<% } %>
								/>
							</td>
							<td class="fielditem">
								<% {out.write(localizeISText("ChannelInboundSharedProducts.ActivateSelectedSharedProducts.fielditem",null,null,null,null,null,null,null,null,null,null,null,null));} %>
							</td>
						</tr>
					</table>
					<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_SYNDICATE_CATALOGS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",48,e);}if (_boolean_result) { %>
						<table class="w e s" width="100%" border="0" cellspacing="0" cellpadding="0">
							<tr>
								<td align="right">
									<table border="0" cellspacing="4" cellpadding="0">
										<tr>
											<td class="button"><input class="button" type="submit" name="applyAssignmentType" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ChannelInboundSharedProducts.Apply.button",null)),null)%>"/></td>
											<td class="button"><input class="button" type="reset" name="resetAssignmentType" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ChannelInboundSharedProducts.Reset.button",null)),null)%>"/></td>
										</tr>
									</table>
								</td>
							</tr>
						</table>
					<% } %>
				<% out.print("</form>"); %>
				<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("InboundProductSet"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",63,e);}if (_boolean_result) { %>
					
					<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_SYNDICATE_CATALOGS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",65,e);}if (_boolean_result) { %>
						<table width="100%" border="0" cellspacing="0" cellpadding="0">
							<tr>
								<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="12" alt="" border="0"/></td>
							</tr>
						</table>
						<table border="0" cellpadding="0" cellspacing="0" width="100%">
							<tr>
								<td class="table_title2 left s e n w">
									<% {out.write(localizeISText("ChannelInboundSharedProducts.InactiveProducts.table_title2",null,null,null,null,null,null,null,null,null,null,null,null));} %>
								</td>
							</tr>
							<tr>
								<td class="table_title_description w e s">
									<% {out.write(localizeISText("ChannelInboundSharedProducts.TheListShowsAllProductsSharedToYourChannnelNotActiveClickActivate.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %> 
								</td>
							</tr>
						</table>
						
						<% URLPipelineAction action92 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelInboundSharing-DispatchInactiveProducts",null)))),null));String site92 = null;String serverGroup92 = null;String actionValue92 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelInboundSharing-DispatchInactiveProducts",null)))),null);if (site92 == null){  site92 = action92.getDomain();  if (site92 == null)  {      site92 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup92 == null){  serverGroup92 = action92.getServerGroup();  if (serverGroup92 == null)  {      serverGroup92 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelInboundSharing-DispatchInactiveProducts",null)))),null));out.print("\"");out.print(" name=\"");out.print("inactiveProductsForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue92, site92, serverGroup92,true)); %>
						<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("searchActive"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",85,e);}if (_boolean_result) { %>
							<% {Object temp_obj = (""); getPipelineDictionary().put("WFSimpleSearch_NameOrID", temp_obj);} %>
						<% } else { %>
							<% {Object temp_obj = (getObject("WFSimpleSearch:NameOrID:Value")); getPipelineDictionary().put("WFSimpleSearch_NameOrID", temp_obj);} %>
						<% } %>
						<% processOpenTag(response, pageContext, "productsearchmask", new TagParameter[] {
new TagParameter("pipeline","ViewChannelInboundSharing-DispatchInactiveProducts"),
new TagParameter("pagingpipeline","ViewChannelInboundSharing-DispatchInactiveProducts"),
new TagParameter("embeddedinform","true"),
new TagParameter("parametername1","ChannelID"),
new TagParameter("parametervalue1",getObject("CurrentChannel:UUID")),
new TagParameter("searchtype",getObject("InactiveSearchType"))}, 90); %>
						<input type="hidden" name="searchInactive" value="true"/>
							<% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("InactiveProducts") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",92,e);}if (_boolean_result) { %>
								<!-- confirmation if nothing is selected for activate-->
								<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("NoInactiveProductSelected"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",94,e);}if (_boolean_result) { %>
								<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
										<tr>
											<td class="error_icon e">
												<img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/>
											</td>
											<td class="error" width="100%">
												<% {out.write(localizeISText("ChannelInboundSharedProducts.YouHaveNotSelectedAnyProductsActivate.error",null,null,null,null,null,null,null,null,null,null,null,null));} %>
											</td>
										</tr>
								</table>
								<% } %>
								<table width="100%" border="0" cellspacing="0" cellpadding="0">
									<tr>
										<td class="w s" width="80">
											<div id="A">
												<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
													<tr>
														<td nowrap="nowrap"><a href="javascript:selectAll('inactiveProductsForm','SelectedObjectUUID','A','B');" class="tableheader"><% {out.write(localizeISText("ChannelInboundSharedProducts.SelectAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a></td>
													</tr>
												</table>
											</div>
											<div id="B" style="display:none">
												<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
													<tr>
														<td nowrap="nowrap"><a href="javascript:selectAll('inactiveProductsForm','SelectedObjectUUID','A','B');" class="tableheader"><% {out.write(localizeISText("ChannelInboundSharedProducts.ClearAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a></td>
													</tr>
												</table>
											</div>
										</td>
										<td class="table_header w e s"><% {out.write(localizeISText("ChannelInboundSharedProducts.Name.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
										<td class="table_header e s" nowrap="nowrap"><% {out.write(localizeISText("ChannelInboundSharedProducts.ID.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
										<td class="table_header e s" nowrap="nowrap"><% {out.write(localizeISText("ChannelInboundSharedProducts.SharedFrom.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
										<td class="table_header e s" nowrap="nowrap"><% {out.write(localizeISText("ChannelInboundSharedProducts.Supplier.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
										<td class="table_header e s right" nowrap="nowrap"><% {out.write(localizeISText("ChannelInboundSharedProducts.ListPrice.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %> (<% {String value = null;try{value=context.getFormattedValue(getObject("CurrentSession:Currency:CurrencyName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {128}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>)</td>
										<td class="table_header e s" nowrap="nowrap"><b><% {out.write(localizeISText("ChannelInboundSharedProducts.Type.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></b></td>
									</tr>
									<% while (loop("InactiveProducts","Product",null)) { %>
										<tr>
											<td class="w s top center">
												<input type="checkbox" name="SelectedObjectUUID" value="<%=context.getFormattedValue(getObject("Product:UUID"),null)%>" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Product:UUID"),null).equals(context.getFormattedValue(getObject("Clipboard:ObjectUUID(Product:UUID)"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",134,e);}if (_boolean_result) { %>checked="checked"<% } %>/><input type="hidden" name="ObjectUUID" value="<%=context.getFormattedValue(getObject("Product:UUID"),null)%>"/>
											</td>
											<td class="table_detail top w e s"><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelInboundSharing-ProductDetails",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ProductID",null),context.getFormattedValue(getObject("Product:UUID"),null))).addURLParameter(context.getFormattedValue("SelectedMenuItem",null),context.getFormattedValue("Sharing",null))),null)%>" class="table_detail_link"><% {String value = null;try{value=context.getFormattedValue(getObject("Product:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {136}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></a>&nbsp;</td>
											<td class="table_detail top e s" nowrap="nowrap"><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelInboundSharing-ProductDetails",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ProductID",null),context.getFormattedValue(getObject("Product:UUID"),null))).addURLParameter(context.getFormattedValue("SelectedMenuItem",null),context.getFormattedValue("Sharing",null))),null)%>" class="table_detail_link"><% {String value = null;try{value=context.getFormattedValue(getObject("Product:SKU"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {137}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></a>&nbsp;</td>
											<td class="table_detail top e s" nowrap="nowrap"><% {String value = null;try{value=context.getFormattedValue(getObject("Product:BaseProduct:Domain:DomainName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {138}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
											<td class="table_detail top e s" nowrap="nowrap"><% {String value = null;try{value=context.getFormattedValue(getObject("Product:SupplierName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {139}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
											<td class="table_detail top e s right" nowrap="nowrap"><% processOpenTag(response, pageContext, "productprice", new TagParameter[] {
new TagParameter("Currency",getObject("CurrentRequest:CurrencyCode")),
new TagParameter("Product",getObject("Product:BaseProduct"))}, 140); %></td>
											<td class="table_detail top e s left" nowrap="nowrap"><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/ProductTypeCode", null, "141");} %>&nbsp;</td>
										</tr>
									<% } %>
								</table>
							<% } else { %>
								<table class="w e s" width="100%" border="0" cellspacing="0" cellpadding="0">
									<% processOpenTag(response, pageContext, "productsearchnoresult", new TagParameter[] {
new TagParameter("EmptySearchResultDesc",localizeText(context.getFormattedValue("ChannelInboundSharedProducts.NoProductsFound.table_detail",null))),
new TagParameter("EmptyRepositoryDesc",localizeText(context.getFormattedValue("ChannelInboundSharedProducts.ThereAreNoInactiveProducts.table_detail",null)))}, 147); %>
								</table>
							<% } %>
							<input type="hidden" name="ChannelID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("CurrentChannel:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {150}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
							<table class="w e s" width="100%" border="0" cellspacing="0" cellpadding="0">
								<tr>
									<td align="right">
										<table border="0" cellspacing="4" cellpadding="0">
											<tr>
												<input type="hidden" name="ActiveProductPagableID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ActiveProductsPageLocator:PageableID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {156}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
												<input type="hidden" name="InActiveProductPagableID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("PageLocator:PageableID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {157}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
												<% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("InactiveProducts") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",158,e);}if (_boolean_result) { %>
													<td class="button"><input type="submit" name="activateAll" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ChannelInboundSharedProducts.ActivateAll.button",null)),null)%>" class="button"/></td>
													<td class="button"><input type="submit" name="activateSelected" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ChannelInboundSharedProducts.ActivateSelected.button",null)),null)%>" class="button"/></td>
												<% } else { %>
													<td class="button"><input type="submit" name="activateAll" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ChannelInboundSharedProducts.ActivateAll.button",null)),null)%>" class="button" disabled="disabled"/></td>
													<td class="button"><input type="submit" name="activateSelected" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ChannelInboundSharedProducts.ActivateSelected.button",null)),null)%>" class="button" disabled="disabled"/></td>
												<% } %>
											</tr>
										</table>
									</td>
								</tr>
							</table>
							<!-- Start Page Cursor -->
							<% processOpenTag(response, pageContext, "flexpagingbar", new TagParameter[] {
new TagParameter("pageable","InactiveProducts"),
new TagParameter("variablepagesize","true")}, 171); %>
							<!-- End Page Cursor -->
						<% out.print("</form>"); %>
					<% } %>

					<table width="100%" border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="12" alt="" border="0"/></td>
						</tr>
					</table>
					<table border="0" cellpadding="0" cellspacing="0" width="100%">
						<tr>
							<td class="table_title2 left s e n w">
								<% {out.write(localizeISText("ChannelInboundSharedProducts.ActiveProducts.table_title2",null,null,null,null,null,null,null,null,null,null,null,null));} %>
							</td>
						</tr>
						<tr>
							<td class="table_title_description w e s">
								<% {out.write(localizeISText("ChannelInboundSharedProducts.TheListShowsAllProductsSharedToYourChannelNotActive.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/>
								<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_SYNDICATE_CATALOGS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",190,e);}if (_boolean_result) { %>
									<% {out.write(localizeISText("ChannelInboundSharedProducts.ClickDeactivateAllToDeactivateAllListedProducts.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %>
								<% } %> 
							</td>
						</tr>
					</table>

					<% URLPipelineAction action93 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelInboundSharing-DispatchActiveProducts",null)))),null));String site93 = null;String serverGroup93 = null;String actionValue93 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelInboundSharing-DispatchActiveProducts",null)))),null);if (site93 == null){  site93 = action93.getDomain();  if (site93 == null)  {      site93 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup93 == null){  serverGroup93 = action93.getServerGroup();  if (serverGroup93 == null)  {      serverGroup93 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelInboundSharing-DispatchActiveProducts",null)))),null));out.print("\"");out.print(" name=\"");out.print("activeProductsForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue93, site93, serverGroup93,true)); %>
					<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("searchInactive"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",198,e);}if (_boolean_result) { %>
						<% {Object temp_obj = (""); getPipelineDictionary().put("WFSimpleSearch_NameOrID", temp_obj);} %>
					<% } else { %>
						<% {Object temp_obj = (getObject("WFSimpleSearch:NameOrID:Value")); getPipelineDictionary().put("WFSimpleSearch_NameOrID", temp_obj);} %>
					<% } %>
					<% processOpenTag(response, pageContext, "productsearchmask", new TagParameter[] {
new TagParameter("pipeline","ViewChannelInboundSharing-DispatchActiveProducts"),
new TagParameter("pagingpipeline","ViewChannelInboundSharing-DispatchActiveProducts"),
new TagParameter("embeddedinform","true"),
new TagParameter("parametername1","ChannelID"),
new TagParameter("parametervalue1",getObject("CurrentChannel:UUID")),
new TagParameter("searchtype",getObject("ActiveSearchType"))}, 203); %>
					<input type="hidden" name="searchActive" value="true"/>
						<% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("ActiveProducts") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",205,e);}if (_boolean_result) { %>
							<!-- confirmation if nothing is selected for activate-->
							<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("NoActiveProductSelected"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",207,e);}if (_boolean_result) { %>
							<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
									<tr>
										<td class="error_icon e">
											<img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/>
										</td>
										<td class="error" width="100%">
											<% {out.write(localizeISText("ChannelInboundSharedProducts.YouHaveNotSelectedAnyProductsDeactivate.error",null,null,null,null,null,null,null,null,null,null,null,null));} %>
										</td>
									</tr>
							</table>
							<% } %>
							<table width="100%" border="0" cellspacing="0" cellpadding="0">
								<tr>
									<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_SYNDICATE_CATALOGS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",221,e);}if (_boolean_result) { %>
										<td class="w s" width="80">
											<div id="C">
												<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
													<tr>
														<td nowrap="nowrap"><a href="javascript:selectAll('activeProductsForm','SelectedObjectUUID','C','D');" class="tableheader"><% {out.write(localizeISText("ChannelInboundSharedProducts.SelectAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a></td>
													</tr>
												</table>
											</div>
											<div id="D" style="display:none">
												<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
													<tr>
														<td nowrap="nowrap"><a href="javascript:selectAll('activeProductsForm','SelectedObjectUUID','C','D');" class="tableheader"><% {out.write(localizeISText("ChannelInboundSharedProducts.ClearAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a></td>
													</tr>
												</table>
											</div>
										</td>
									<% } %>
									<td class="table_header w e s"><% {out.write(localizeISText("ChannelInboundSharedProducts.Name.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
									<td class="table_header e s" nowrap="nowrap"><% {out.write(localizeISText("ChannelInboundSharedProducts.ID.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
									<td class="table_header e s" nowrap="nowrap"><% {out.write(localizeISText("ChannelInboundSharedProducts.SharedFrom.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
									<td class="table_header e s" nowrap="nowrap"><% {out.write(localizeISText("ChannelInboundSharedProducts.Supplier.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
									<td class="table_header e s right" nowrap="nowrap"><% {out.write(localizeISText("ChannelInboundSharedProducts.ListPrice.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %> (<% {String value = null;try{value=context.getFormattedValue(getObject("CurrentSession:Currency:CurrencyName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {243}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>)</td>
									<td class="table_header e s" nowrap="nowrap"><b><% {out.write(localizeISText("ChannelInboundSharedProducts.Type.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></b></td>
								</tr>
								<% while (loop("ActiveProducts","Product",null)) { %>
									<tr>
										<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_SYNDICATE_CATALOGS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",248,e);}if (_boolean_result) { %>
											<td class="w s top center">
												<input type="checkbox" name="SelectedObjectUUID" value="<%=context.getFormattedValue(getObject("Product:UUID"),null)%>" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Product:UUID"),null).equals(context.getFormattedValue(getObject("Clipboard:ObjectUUID(Product:UUID)"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",250,e);}if (_boolean_result) { %>checked="checked"<% } %>/><input type="hidden" name="ObjectUUID" value="<%=context.getFormattedValue(getObject("Product:UUID"),null)%>"/>
											</td>
										<% } %>
										<td class="table_detail top w e s"><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductDetails-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ProductID",null),context.getFormattedValue(getObject("Product:UUID"),null))).addURLParameter(context.getFormattedValue("SelectedMenuItem",null),context.getFormattedValue("Sharing",null))),null)%>" class="table_detail_link"><% {String value = null;try{value=context.getFormattedValue(getObject("Product:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {253}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></a>&nbsp;</td>
										<td class="table_detail top e s" nowrap="nowrap"><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductDetails-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ProductID",null),context.getFormattedValue(getObject("Product:UUID"),null))).addURLParameter(context.getFormattedValue("SelectedMenuItem",null),context.getFormattedValue("Sharing",null))),null)%>" class="table_detail_link"><% {String value = null;try{value=context.getFormattedValue(getObject("Product:SKU"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {254}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></a>&nbsp;</td>
										<td class="table_detail top e s" nowrap="nowrap"><% {String value = null;try{value=context.getFormattedValue(getObject("Product:BaseProduct:Domain:DomainName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {255}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
										<td class="table_detail top e s" nowrap="nowrap"><% {String value = null;try{value=context.getFormattedValue(getObject("Product:SupplierName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {256}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
										<td class="table_detail top e s right" nowrap="nowrap"><% processOpenTag(response, pageContext, "productprice", new TagParameter[] {
new TagParameter("Currency",getObject("CurrentRequest:CurrencyCode")),
new TagParameter("Product",getObject("Product"))}, 257); %></td>
										<td class="table_detail top e s left" nowrap="nowrap"><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/ProductTypeCode", null, "258");} %>&nbsp;</td>
									</tr>
								<% } %>
							</table>
						<% } else { %>
							<table class="w e s" width="100%" border="0" cellspacing="0" cellpadding="0">
								<% processOpenTag(response, pageContext, "productsearchnoresult", new TagParameter[] {
new TagParameter("EmptySearchResultDesc",localizeText(context.getFormattedValue("ChannelInboundSharedProducts.NoProductsFound.table_detail",null))),
new TagParameter("EmptyRepositoryDesc",localizeText(context.getFormattedValue("ChannelInboundSharedProducts.ThereAreNoActiveProducts.table_detail",null)))}, 264); %>
							</table>
						<% } %>
						<input type="hidden" name="ChannelID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("CurrentChannel:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {267}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
						<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_SYNDICATE_CATALOGS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",268,e);}if (_boolean_result) { %>
							<table class="w e s" width="100%" border="0" cellspacing="0" cellpadding="0">
								<tr>
									<td align="right">
										<table border="0" cellspacing="4" cellpadding="0">
											<tr>
												<input type="hidden" name="ActiveProductPagableID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ActiveProductsPageLocator:PageableID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {274}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
												<input type="hidden" name="InActiveProductPagableID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("PageLocator:PageableID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {275}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
												
												<% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("ActiveProducts") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",277,e);}if (_boolean_result) { %>
													<td class="button"><input type="submit" name="inactivateAll" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ChannelInboundSharedProducts.DeactivateAll.button",null)),null)%>" class="button"/></td>
													<td class="button"><input type="submit" name="inactivateSelected" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ChannelInboundSharedProducts.DeactivateSelected.button",null)),null)%>" class="button"/></td>
												<% } else { %>
													<td class="button"><input type="submit" name="inactivateAll" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ChannelInboundSharedProducts.DeactivateAll.button",null)),null)%>" class="button" disabled="disabled"/></td>
													<td class="button"><input type="submit" name="inactivateSelected" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ChannelInboundSharedProducts.DeactivateSelected.button",null)),null)%>" class="button" disabled="disabled"/></td>
												<% } %>
											</tr>
										</table>
									</td>
								</tr>
							</table>
						<% } %>
						<table width="100%" border="0" cellspacing="0" cellpadding="0">
							<tr>
								<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></td>
							</tr>
						</table>
						<!-- Start Page Cursor -->
						<% processOpenTag(response, pageContext, "flexpagingbar", new TagParameter[] {
new TagParameter("pageable","ActiveProducts"),
new TagParameter("variablepagesize","true")}, 296); %>
						<!-- End Page Cursor -->
					<% out.print("</form>"); %>
				<% } %>
			</td>
		</tr>
</table>		
<!-- EO Main Content -->
<!-- EO Working Area -->

<% printFooter(out); %>