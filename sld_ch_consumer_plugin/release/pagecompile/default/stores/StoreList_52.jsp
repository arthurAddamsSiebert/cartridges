<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %>
<% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/Modules", null, "3");} %>

<% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("hide","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewStores_52-Overview",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ApplicationState:ChannelID"),null))))),
new TagParameter("start","true"),
new TagParameter("text",localizeText(context.getFormattedValue("StoreList_52.StoreOverview.text",null)))}, 5); %>
<% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("listview","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewStores_52-Back",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null))))),
new TagParameter("id",getObject("Store:Addressname")),
new TagParameter("text",localizeText(context.getFormattedValue("StoreList_52.StoreList.text",null)))}, 6); %>
<% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/LocalizedCountryNamesHelper", null, "7");} %>
<!-- Title and error messages -->
<% URLPipelineAction action30 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewStores_52-Dispatch",null)))),null));String site30 = null;String serverGroup30 = null;String actionValue30 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewStores_52-Dispatch",null)))),null);if (site30 == null){  site30 = action30.getDomain();  if (site30 == null)  {      site30 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup30 == null){  serverGroup30 = action30.getServerGroup();  if (serverGroup30 == null)  {      serverGroup30 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("GET");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewStores_52-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("confirmForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue30, site30, serverGroup30,false)); %>
	<table border="0" cellpadding="0" cellspacing="0" width="100%">
		<tr>
			<td width="100%" class="table_title aldi"><% {out.write(localizeISText("StoreList_52.Stores.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
		</tr>
		<!-- Delete Confirmation Message -->
		<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("confirmDelete"))))).booleanValue() && ((Boolean) ((hasLoopElements("UUIDIterator") ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",15,e);}if (_boolean_result) { %>
			<% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("subject",localizeText(context.getFormattedValue("StoreList_52.Store.subject",null))),
new TagParameter("okbtnname","delete"),
new TagParameter("type","mdc")}, 16); %>
		<% } %>
		<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("confirmDelete"))))).booleanValue() && ((Boolean) ((((Boolean) ((hasLoopElements("UUIDIterator") ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",18,e);}if (_boolean_result) { %>
			<% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("subject",localizeText(context.getFormattedValue("StoreList_52.Store.subject",null))),
new TagParameter("type","mde")}, 19); %>
		<% } %>
	</table>
<% out.print("</form>"); %>
<!-- EO Title -->

<!-- Start Description -->
<table border="0" cellpadding="0" cellspacing="0" width="100%">
	<tr>
		<td class="table_title_description w e s">
			<% {out.write(localizeISText("StoreList_52.TheListShowsAllStoresAvailable.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %>
			<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_STORES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",30,e);}if (_boolean_result) { %>
				<br/><br/>
				<% {out.write(localizeISText("StoreList_52.ClickNewToCreateNewStore.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %>
			<% } %>
		</td>
	</tr>
</table>
<!-- EO Description -->

<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("SearchType"))))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SearchType"),null).equals(context.getFormattedValue("findParametric",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",39,e);}if (_boolean_result) { %>
	<!-- Start Advanced Search -->
	<div id="D" style="display:block">
		<% URLPipelineAction action31 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewStores_52-Dispatch",null)))),null));String site31 = null;String serverGroup31 = null;String actionValue31 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewStores_52-Dispatch",null)))),null);if (site31 == null){  site31 = action31.getDomain();  if (site31 == null)  {      site31 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup31 == null){  serverGroup31 = action31.getServerGroup();  if (serverGroup31 == null)  {      serverGroup31 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewStores_52-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("ParametricSearch");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue31, site31, serverGroup31,true)); %>
			<table border="0" cellpadding="2" cellspacing="2" width="100%" class="infobox w e s">
				<colgroup>
					<col width="5%"/>
					<col width="30%"/>
					<col width="5%"/>
					<col width="5%"/>
					<col width="25%"/>
					<col width="20%"/>
				</colgroup>
				<tr>
					<td class="infobox_title" colspan="4"><% {out.write(localizeISText("StoreList_52.AdvancedStoreSearch.infobox_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
					<td class="right" nowrap="nowrap" colspan="2"><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewStores_52-Search",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("Search_StoreName",null),context.getFormattedValue(getObject("Search_StoreName"),null)))),null)%>" class="switch_link"><% {out.write(localizeISText("StoreList_52.SwitchToSimpleSearch.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a></td>
				</tr>
				<tr>
					<td class="infobox_item" nowrap="nowrap"><% {out.write(localizeISText("StoreList_52.StoreName.infobox_item",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
					<td><input type="text" name="Search_StoreName" maxlength="255" style="width:100%" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Search_StoreName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {58}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="inputfield_en"/></td>
					<td >&#160;</td>
					<td class="infobox_item"><% {out.write(localizeISText("StoreList_52.Type.infobox_item",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
					<td colspan="2">
						<table border="0" cellpadding="0" cellspacing="0">
							<tr>
								<td class="input_radio"><input type="radio" name="Search_Active" value="" checked="checked"/></td>
								<td class="label_radio_text"><label class="label label_radio_text"><% {out.write(localizeISText("StoreList_52.All.infobox_item",null,null,null,null,null,null,null,null,null,null,null,null));} %>&nbsp;</label></td>
								<td class="input_radio"><input type="radio" name="Search_Active" value="true" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Search_Active"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",66,e);}if (_boolean_result) { %>checked="checked"<% } %> /></td>
								<td class="label_radio_text"><label class="label label_radio_text"><% {out.write(localizeISText("StoreList_52.Active.infobox_item",null,null,null,null,null,null,null,null,null,null,null,null));} %>&nbsp;</label></td>
								<td class="input_radio"><input type="radio" name="Search_Active" value="false" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Search_Active"),null).equals(context.getFormattedValue("false",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",68,e);}if (_boolean_result) { %>checked="checked"<% } %> /></td>
								<td class="label_radio_text"><label class="label label_radio_text"><% {out.write(localizeISText("StoreList_52.Inactive.infobox_item",null,null,null,null,null,null,null,null,null,null,null,null));} %></label></td>
							</tr>
						</table>
					</td>
				</tr>
				<tr><td colspan="6"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="1" alt="" border="0"/></td></tr>
				<tr>
					<td class="infobox_item" nowrap="nowrap"><% {out.write(localizeISText("StoreList_52.Country.infobox_item",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
					<td><% processOpenTag(response, pageContext, "countryselectbox", new TagParameter[] {
new TagParameter("formparameter","Search_CountryCode"),
new TagParameter("cssClass","inputfield_en select w100"),
new TagParameter("reloadonchangename","reloadSearchStates"),
new TagParameter("selectedcountrycode",getObject("Search_CountryCode")),
new TagParameter("reloadonchange","true")}, 77); %></td>
					<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("StatesProvinces")))).booleanValue() && ((Boolean) (hasLoopElements("StatesProvinces") ? Boolean.TRUE : Boolean.FALSE)).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",78,e);}if (_boolean_result) { %>
						<td>&nbsp;</td>
						<td class="infobox_item"  nowrap="nowrap"><% {out.write(localizeISText("StoreList_52.State.infobox_item",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
						<td><% processOpenTag(response, pageContext, "stateselectbox", new TagParameter[] {
new TagParameter("SelectedStateID",getObject("Search_State")),
new TagParameter("StatesProvinces",getObject("StatesProvinces")),
new TagParameter("FormParameter","Search_State")}, 81); %></td>
						<td>&nbsp;</td>
					<% } else { %>
						<td colspan="4">&nbsp;</td>
					<% } %>
				</tr>
				<tr>
					<td class="infobox_item" nowrap="nowrap"><% {out.write(localizeISText("StoreList_52.Zip_PostCode.infobox_item",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
					<td><input type="text" name="Search_ZIP" maxlength="255" style="width:100%" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Search_ZIP"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {89}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="inputfield_en"/></td>
					<td>&nbsp;</td>
					<td class="infobox_item" nowrap="nowrap"><% {out.write(localizeISText("StoreList_52.City.infobox_item",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
					<td><input type="text" name="Search_City" maxlength="255" style="width:100%" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Search_City"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {92}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="inputfield_en"/></td>
					<td>&nbsp;</td>
				<tr>
					<td class="infobox_item" nowrap="nowrap"><% {out.write(localizeISText("StoreList_52.Street.infobox_item",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
					<td><input type="text" name="Search_Street" maxlength="255" style="width:100%" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Search_Street"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {96}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="inputfield_en"/></td>
					<td colspan="4">&#160;</td>
				</tr>
				<tr><td colspan="6"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="1" alt="" border="0"/></td></tr>
				<tr>
					<td width="100%" colspan="6">
						<table border="0" cellspacing="2" cellpadding="0" width="100%">
							<tr>
								<td class="w100"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></td>
								<td class="button" align="right">
									<input type="submit" name="find" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("StoreList_52.Find.button",null)),null)%>" class="button"/>
									<input type="hidden" name="SearchType" value="findParametric" class="button"/>
								</td>
							</tr>
						</table>
					</td>
				</tr>
			</table>
		<% out.print("</form>"); %>
	</div>
	<!-- EO Advanced Search -->
<% } else { %>
	<!-- Start Simple Search -->
	<div id="C" style="display:block">
		<% URLPipelineAction action32 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewStores_52-Dispatch",null)))),null));String site32 = null;String serverGroup32 = null;String actionValue32 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewStores_52-Dispatch",null)))),null);if (site32 == null){  site32 = action32.getDomain();  if (site32 == null)  {      site32 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup32 == null){  serverGroup32 = action32.getServerGroup();  if (serverGroup32 == null)  {      serverGroup32 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewStores_52-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("SimSearch");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue32, site32, serverGroup32,true)); %>
			<table border="0" cellpadding="5" cellspacing="0" width="100%" class="infobox w e s">
				<tr>
					<td class="infobox_title" nowrap="nowrap"><% {out.write(localizeISText("StoreList_52.FindStores.infobox_title",null,null,null,null,null,null,null,null,null,null,null,null));} %> ...</td>
					<td class="right"><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewStores_52-Search",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SearchType",null),context.getFormattedValue("findParametric",null))).addURLParameter(context.getFormattedValue("Search_StoreName",null),context.getFormattedValue(getObject("Search_StoreName"),null))),null)%>" class="switch_link"><% {out.write(localizeISText("StoreList_52.SwitchToAdvancedSearch.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a></td>
				</tr>
				<tr>
					<td colspan="2">
						<table border="0" cellpadding="0" cellspacing="0">
							<tr>
								<td class="infobox_item" nowrap="nowrap"><% {out.write(localizeISText("StoreList_52.Name.infobox_item",null,null,null,null,null,null,null,null,null,null,null,null));} %>:&nbsp;</td>
								<td><input type="text" name="Search_StoreName" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Search_StoreName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {131}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" maxlength="255" size="35" class="inputfield_en"/></td>
								<td>&nbsp;</td>
								<td>
									<table border="0" cellspacing="4" cellpadding="0">
										<tr>
											<td class="button"><input type="submit" name="findSimple" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("StoreList_52.Find.button",null)),null)%>" class="button"/></td>
										</tr>
									</table>
								</td>
							</tr>
						</table>
					</td>
				</tr>
			</table>
		<% out.print("</form>"); %>
	</div>
<% } %>

<!-- Start Content -->
<% URLPipelineAction action33 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewStores_52-Dispatch",null)))),null));String site33 = null;String serverGroup33 = null;String actionValue33 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewStores_52-Dispatch",null)))),null);if (site33 == null){  site33 = action33.getDomain();  if (site33 == null)  {      site33 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup33 == null){  serverGroup33 = action33.getServerGroup();  if (serverGroup33 == null)  {      serverGroup33 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewStores_52-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("formMask");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue33, site33, serverGroup33,true)); %>
	<table cellpadding="0" cellspacing="0" border="0" width="100%">
		<!-- Start Action Buttons right-->
		<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_STORES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",153,e);}if (_boolean_result) { %>
			<tr>
				<td class="w e s">
					<table border="0" cellspacing="4" cellpadding="0">
						<tr>
							<td class="button"><input type="submit" name="new" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("StoreList_52.New.button",null)),null)%>" class="button"/></td>
							<td class="button"><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Stores") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",159,e);}if (_boolean_result) { %><input type="submit" name="confirmDelete" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("StoreList_52.Delete.button",null)),null)%>" class="button"/><% } %></td>
						</tr>
					</table>
				</td>
			</tr>
		<% } %>
		<tr>
			<td class="">
			
				<% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Stores") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",168,e);}if (_boolean_result) { %>
					
					<% processOpenTag(response, pageContext, "createmap", new TagParameter[] {
new TagParameter("key1","UserPermissionForEdit"),
new TagParameter("value6",getObject("SortBy")),
new TagParameter("key2","Clipboard"),
new TagParameter("value5","ObjectUUID"),
new TagParameter("value8",getObject("LocalizedCountryNamesHelper")),
new TagParameter("value7",getObject("SortDirection")),
new TagParameter("value2",getObject("Clipboard")),
new TagParameter("key5","AvailableItemsName"),
new TagParameter("value1",getObject("CurrentChannelPermissionMap:SLD_MANAGE_STORES")),
new TagParameter("key6","SortBy"),
new TagParameter("key3","CurrentChannel"),
new TagParameter("value4","SelectedObjectUUID"),
new TagParameter("value3",getObject("CurrentChannel")),
new TagParameter("key4","SelectedItemsName"),
new TagParameter("key7","SortDirection"),
new TagParameter("key8","LocalizedCountryNamesHelper"),
new TagParameter("mapname","params")}, 170); %>
	
					<% processOpenTag(response, pageContext, "grid", new TagParameter[] {
new TagParameter("currentapplication",getObject("CurrentApplication")),
new TagParameter("columnstemplate","grid/StoreColumns.isml"),
new TagParameter("configuration","storelist"),
new TagParameter("datatemplate","grid/StoreData.isml"),
new TagParameter("pageable",getObject("Stores")),
new TagParameter("id","StoreList"),
new TagParameter("pageablename","Stores"),
new TagParameter("params",getObject("params"))}, 181); %>
				
				
				<% } else { %>
					<table width="100%" border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td class="table_detail w e s">
								<% {out.write(localizeISText("StoreList_52.NoStoresFound.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %>
							</td>
						</tr>
					</table>
				<% } %>
			</td>
		</tr>
	</table>
	<!-- EO Action Buttons right-->
	
<% out.print("</form>"); %>
<!-- End Content --><% printFooter(out); %>