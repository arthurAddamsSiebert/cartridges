<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %>

<% {Object temp_obj = (context.getFormattedValue("cat_prod_link_form_",null) + context.getFormattedValue(getObject("linktype:ID"),null) + context.getFormattedValue("_",null) + context.getFormattedValue(getObject("direction"),null)); getPipelineDictionary().put("ProductLinkForm_ID", temp_obj);} %>
<% {Object temp_obj = (getObject("LegacyLinkHelper:LegacyTypeCodeName(linktype,linktypegroup)")); getPipelineDictionary().put("LegacyTypeCodeName", temp_obj);} %>

<% URLPipelineAction action276 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCategoryProductLinks-Dispatch",null)))),null));String site276 = null;String serverGroup276 = null;String actionValue276 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCategoryProductLinks-Dispatch",null)))),null);if (site276 == null){  site276 = action276.getDomain();  if (site276 == null)  {      site276 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup276 == null){  serverGroup276 = action276.getServerGroup();  if (serverGroup276 == null)  {      serverGroup276 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCategoryProductLinks-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print(context.getFormattedValue(getObject("ProductLinkForm_ID"),null));out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue276, site276, serverGroup276,true)); %>
	<input type="hidden" name="ChannelID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ChannelID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {7}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
	<input type="hidden" name="CatalogCategoryID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("CatalogCategoryBO:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {8}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
	<input type="hidden" name="CatalogUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Catalog:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {9}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>

	
	
	<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("StrippedSelectedLinkType")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("StrippedSelectedLinkType"),null).equals(context.getFormattedValue(getObject("linktype:ID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("direction")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("direction"),null).equals(context.getFormattedValue(getObject("SelectedLinkDirection"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",13,e);}if (_boolean_result) { %>

		<table border="0" cellpadding="0" cellspacing="0" width="100%">

			<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("confirmProductLinksDelete"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",18,e);}if (_boolean_result) { %>
				<% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("UUIDIterator") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",19,e);}if (_boolean_result) { %>
					<!-- selected links -->

					<% {Object temp_obj = ("Are you sure that you want to remove these links? <br> Shared links will not be removed!"); getPipelineDictionary().put("ProductLinksMessage", temp_obj);} %>
						<% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("subject",localizeText(context.getFormattedValue("OrderExportTabs.Conditions.link",null))),
new TagParameter("okbtnname","deleteProductLinkBOs"),
new TagParameter("type","mda"),
new TagParameter("message",getObject("ProductLinksMessage"))}, 25); %>
					<% } else { %>
						<!-- delete confirmation if nothing is selected-->
						<% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("subject",localizeText(context.getFormattedValue("sld_enterprise_app.CategoryLink.subject",null))),
new TagParameter("type","mdea")}, 31); %>
					<% } %>
			<% } %>

			<!-- move links if nothing is selected-->
			<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ERROR_SELECTION_MOVE_PRODUCT_LINKS"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",38,e);}if (_boolean_result) { %>
				<% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("subject",localizeText(context.getFormattedValue("sld_enterprise_app.ProductLink.subject",null))),
new TagParameter("type","nse")}, 39); %>
			<% } %>

		</table>
	<% } %>

	<table border="0" cellpadding="0" cellspacing="0" width="100%" class="w e s" >
		<% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("links") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",48,e);}if (_boolean_result) { %>

			<% {Object temp_obj = (((((Boolean) ((( ((Number) getObject("links:Size")).doubleValue() >((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) (getObject("direction:Outgoing"))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE)); getPipelineDictionary().put("ShowSortMenu", temp_obj);} %>
			<% {Object temp_obj = (new Double(7)); getPipelineDictionary().put("ColSpan", temp_obj);} %>
			
			<tr>
				<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PermissionMap:SLD_MANAGE_CATALOGS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",54,e);}if (_boolean_result) { %>
					<td class="table_header e center select_all" width="5%" nowrap="nowrap">
						<div id="CPA<% {String value = null;try{value=context.getFormattedValue(getObject("ProductLinkForm_ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {56}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>">
							<table border="0" cellspacing="0" cellpadding="0" class="center w100">
								<tr>
									<td nowrap="nowrap">
										<a href="javascript:selectAll('<% {String value = null;try{value=context.getFormattedValue(getObject("ProductLinkForm_ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {60}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>','SelectedObjectUUID','CPA<% {String value = null;try{value=context.getFormattedValue(getObject("ProductLinkForm_ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {60}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>','CPB<% {String value = null;try{value=context.getFormattedValue(getObject("ProductLinkForm_ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {60}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>');" class="tableheader">
											<% {out.write(localizeISText("CategoryLinkProductList.SelectAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %>
										</a>
									</td>
								</tr>
							</table>
						</div>
						<div id="CPB<% {String value = null;try{value=context.getFormattedValue(getObject("ProductLinkForm_ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {67}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" style="display:none">
							<table border="0" cellspacing="0" cellpadding="0" class="center w100">
								<tr>
									<td nowrap="nowrap">
										<a href="javascript:selectAll('<% {String value = null;try{value=context.getFormattedValue(getObject("ProductLinkForm_ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {71}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>','SelectedObjectUUID','CPA<% {String value = null;try{value=context.getFormattedValue(getObject("ProductLinkForm_ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {71}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>','CPB<% {String value = null;try{value=context.getFormattedValue(getObject("ProductLinkForm_ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {71}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>');" class="tableheader">
											<% {out.write(localizeISText("CategoryLinkProductList.ClearAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %>
										</a>
									</td>
								</tr>
							</table>
						</div>
					</td>
				<% } else { %>
					<% {Object temp_obj = ((new Double( ((Number) getObject("ColSpan")).doubleValue() -((Number) new Double(1)).doubleValue()))); getPipelineDictionary().put("ColSpan", temp_obj);} %>	
				<% } %>
				<td class="table_header e"><% {out.write(localizeISText("CategoryLinkProductList.Name.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
				<td class="table_header e" width="40%"><% {out.write(localizeISText("CategoryLinkProductList.ProductID.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
				<td class="table_header e right" width="5%" nowrap="nowrap"><% {out.write(localizeISText("CategoryLinkProductList.Price.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %>&nbsp;</td>
				<td class="table_header e" width="5%" nowrap="nowrap"><% {out.write(localizeISText("CategoryLinkProductList.Type.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %>&nbsp;</td>
				<td class="table_header <% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ShowSortMenu"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",86,e);}if (_boolean_result) { %>e<% } %> left" width="5%"><% {out.write(localizeISText("CategoryLinkProductList.Status.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
				<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ShowSortMenu"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",87,e);}if (_boolean_result) { %>
					<td class="table_header left" width="5%" nowrap="nowrap"><% {out.write(localizeISText("CategoryLinkProductList.Sorting.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
				<% } else { %>
					<% {Object temp_obj = ((new Double( ((Number) getObject("ColSpan")).doubleValue() -((Number) new Double(1)).doubleValue()))); getPipelineDictionary().put("ColSpan", temp_obj);} %>	
				<% } %>
			</tr>

			<% while (loop("links","LinkBO","cnt")) { %>
				
				<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("direction:Outgoing"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",96,e);}if (_boolean_result) { %>
					<% {Object temp_obj = (getObject("LinkBO:Target")); getPipelineDictionary().put("ProductBO", temp_obj);} %>
				<% } else { %>
					<% {Object temp_obj = (getObject("LinkBO:Source")); getPipelineDictionary().put("ProductBO", temp_obj);} %>
				<% } %>
				
				<tr>
					
					<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PermissionMap:SLD_MANAGE_CATALOGS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",104,e);}if (_boolean_result) { %>
						<td class="table_detail e n center">
							<input type="hidden" name="ObjectUUID" value="<%=context.getFormattedValue(getObject("LinkBO:ID"),null)%>"/>
							<input type="checkbox" name="SelectedObjectUUID" value="<%=context.getFormattedValue(getObject("LinkBO:ID"),null)%>"	<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("Clipboard")))).booleanValue() && ((Boolean) (getObject("Clipboard:contains(LinkBO:ID)"))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",107,e);}if (_boolean_result) { %>checked="checked"<% } %>/>
						</td>
					<% } %>
					

										
					<td class="table_detail e n">
						<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductDetails-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ProductID",null),context.getFormattedValue(getObject("ProductBO:ID"),null))).addURLParameter(context.getFormattedValue("SelectedMenuItem",null),context.getFormattedValue(getObject("SelectedMenuItem"),null))),null)%>" class="table_detail_link"><% {String value = null;try{value=context.getFormattedValue(getObject("ProductBO:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {114}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></a>
					</td>
					
					
					
					<td class="table_detail e n" nowrap="nowrap">
						<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductDetails-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ProductID",null),context.getFormattedValue(getObject("ProductBO:ID"),null))).addURLParameter(context.getFormattedValue("SelectedMenuItem",null),context.getFormattedValue(getObject("SelectedMenuItem"),null))),null)%>" class="table_detail_link"><% {String value = null;try{value=context.getFormattedValue(getObject("ProductBO:SKU"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {120}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></a>
					</td>
					
					
					
					<td class="table_detail e n right" nowrap="nowrap">
						<% processOpenTag(response, pageContext, "productprice", new TagParameter[] {
new TagParameter("Product",getObject("ProductBO:Extension(\"PersistentObjectBOExtension\"):PersistentObject"))}, 126); %>&nbsp;
					</td>
					
					
					
					<td class="table_detail3 top e n" nowrap="nowrap">
						<% _boolean_result=false;try {_boolean_result=((Boolean)((((((Boolean) getObject("LinkBO:Local")).booleanValue() && ((Boolean) getObject("LinkBO:Shared")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",132,e);}if (_boolean_result) { %>
							<% {out.write(localizeISText("CategoryLinkProductList.LocalLinkSharedLink.table_detail3","",null,null,null,null,null,null,null,null,null,null,null));} %>
						<% } else {_boolean_result=false;try {_boolean_result=((Boolean)(getObject("LinkBO:Shared"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",134,e);}if (_boolean_result) { %>
							<% {out.write(localizeISText("CategoryLinkProductList.SharedLink.table_detail3","",null,null,null,null,null,null,null,null,null,null,null));} %>
						<% } else {_boolean_result=false;try {_boolean_result=((Boolean)(getObject("LinkBO:Local"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",136,e);}if (_boolean_result) { %>
							<% {out.write(localizeISText("CategoryLinkProductList.LocalLink.table_detail3","",null,null,null,null,null,null,null,null,null,null,null));} %>
						<% }}} %>
					</td>
					
					
					
					<td class="table_detail <% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ShowSortMenu"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",143,e);}if (_boolean_result) { %>e<% } %> n left">
						<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ProductBO:Online"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",144,e);}if (_boolean_result) { %><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/status_online.gif" alt="<%=context.getFormattedValue(localizeText(context.getFormattedValue("CategoryLinkProductList.Online.alt",null)),null)%>" border="0"/><% } %>
						<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ProductBO:Available"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",145,e);}if (_boolean_result) { %><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/status_instock.gif" alt="<%=context.getFormattedValue(localizeText(context.getFormattedValue("CategoryLinkProductList.InStock.alt",null)),null)%>" border="0"/><% } %>&nbsp;
					</td>
					
					
					
					<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (getObject("ShowSortMenu"))).booleanValue() && ((Boolean) ((( ((Number) getObject("cnt")).doubleValue() ==((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",150,e);}if (_boolean_result) { %>	
						<td align="center" class="table_detail top n sort" nowrap="nowrap" rowspan="<% {String value = null;try{value=context.getFormattedValue(getObject("links:Size"),new Integer(INTEGER),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {151}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>">
							<input type="hidden" name="VarSortAttribute" value="position" />
							<table border="0" cellpadding="0" cellspacing="0" align="center">
								<tr>
									<td><input type="image" name="moveUpLinkBOs" src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/sort_up.gif" alt=""/></td>
								</tr>
								<tr>
									<td>
										<img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="7" alt="" border="0"/>
									</td>
								</tr>
								<tr>
									<td><input type="image" name="moveDownLinkBOs" src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/sort_down.gif"  alt=""/></td>
								</tr>
							</table>
						</td>
					<% } %>
					
				</tr>
			<% } %>
		<% } else { %>
			<tr>
				<td <% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ColSpan"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",173,e);}if (_boolean_result) { %>colspan="<% {String value = null;try{value=context.getFormattedValue(getObject("ColSpan"),new Integer(INTEGER),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {173}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"<% } %> class="table_detail">
						<% {out.write(localizeISText("CategoryLinkProductList.ThisCategoryDoesNotContainAnyProductLinks.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/>
						<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PermissionMap:SLD_MANAGE_CATALOGS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",175,e);}if (_boolean_result) { %>				
							<% {out.write(localizeISText("CategoryLinkProductList.ClickAssignToCreateANewProductLink.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %>
						<% } %>
				</td>
			</tr>
		<% } %>
		<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PermissionMap:SLD_MANAGE_CATALOGS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",181,e);}if (_boolean_result) { %>
			<tr>
				<td <% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ColSpan"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",183,e);}if (_boolean_result) { %>colspan="<% {String value = null;try{value=context.getFormattedValue(getObject("ColSpan"),new Integer(INTEGER),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {183}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"<% } %> class="n" align="right">
					<table border="0" cellspacing="4" cellpadding="0">
						<tr>
							<td class="button">
								
								<input type="hidden" name="SelectedLinkType" value="<% {String value = null;try{value=context.getFormattedValue(getObject("LegacyTypeCodeName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {188}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" />
								<input type="hidden" name="StrippedSelectedLinkType" value="<% {String value = null;try{value=context.getFormattedValue(getObject("linktype:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {189}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" />
								<input type="hidden" name="SelectedLinkDirection" value="<% {String value = null;try{value=context.getFormattedValue(getObject("direction"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {190}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" />
								<input type="submit" name="linkTypeSelected" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("CategoryLinkProductList.Assign.button",null)),null)%>" class="button"/>
							</td>
							<% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("links") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",193,e);}if (_boolean_result) { %>
								<td class="button">
									<input type="submit" name="confirmProductLinksDelete" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("CategoryLinkProductList.Unassign.button",null)),null)%>" class="button"/>
								</td>
							<% } %>
						</tr>
					</table>
				</td>
			</tr>	
		<% } %>
	</table>
<% out.print("</form>"); %><% printFooter(out); %>