<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %>

<% processOpenTag(response, pageContext, "sticky", new TagParameter[] {
}, 3); %>
<% out.print(context.prepareWAPlacement("JSWebLibraries")); %>TableSelectAll.js<% out.print("</waplacement>"); %>

<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((context.getFormattedValue(getObject("filtermode"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("isfilter"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",6,e);}if (_boolean_result) { %>
	
	<% {Object temp_obj = ("true"); getPipelineDictionary().put("DisplayAsFilter", temp_obj);} %>
<% } %>

<% processOpenTag(response, pageContext, "createmap", new TagParameter[] {
new TagParameter("key1","PreferenceDomain"),
new TagParameter("key0","ContentDomain"),
new TagParameter("value1",getObject("ContentRepository:RepositoryDomain")),
new TagParameter("value0",getObject("ContentRepository:RepositoryDomain")),
new TagParameter("mapname","GlobalPageletLockParams")}, 11); %>
<% {try{executePipeline("ProcessPageletLock-LookupParentNamedResource",((java.util.Map)(getObject("GlobalPageletLockParams"))),"GlobalPageletLockInfoDictionary");}catch(Exception e){Logger.error(this,"ISPIPELINE failed. Line: 14.",e);}} %>
<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("GlobalPageletLockInfoDictionary:AllPageletsLocked"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",15,e);}if (_boolean_result) { %>
	<table border="0" cellpadding="0" cellspacing="0" width="100%">
		<tr>
			<td>
				<table border="0" cellpadding="3" cellspacing="0" width="100%" class="confirm_box w e s">
					<tr>
						<td class="confirm e">
							<img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/lockedForOther.gif" align="middle" alt="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PageletsList.LockedByOther.alt",null)),null)%>" title="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PageletsList.LockedByOther.title",null)),null)%>" border="0"/>
						</td>		
						<td class="confirm" width="100%">
							<% {out.write(localizeISText("PageletsList.All.confirm",null,null,null,null,null,null,null,null,null,null,null,null));} %> 
							<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("page"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",26,e);}if (_boolean_result) { %>
								<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("template"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",27,e);}if (_boolean_result) { %>
									<% {out.write(localizeISText("PageletsList.PageTemplates.confirm",null,null,null,null,null,null,null,null,null,null,null,null));} %>
								<% } else { %>
									<% {out.write(localizeISText("PageletsList.PageVariants.confirm",null,null,null,null,null,null,null,null,null,null,null,null));} %>
								<% } %>
							<% } else { %>
								<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("template"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",33,e);}if (_boolean_result) { %>
									<% {out.write(localizeISText("PageletsList.ComponentTemplates.confirm",null,null,null,null,null,null,null,null,null,null,null,null));} %>
								<% } else { %>
									<% {out.write(localizeISText("PageletsList.Components.confirm",null,null,null,null,null,null,null,null,null,null,null,null));} %>
								<% } %>
							<% } %>
							<% {out.write(localizeISText("PageletsList.AreCurrentlyLockedByA.confirm",null,null,null,null,null,null,null,null,null,null,null,null));} %> <span style="text-decoration: underline"><% {out.write(localizeISText("PageletsList.SystemProcess.confirm",null,null,null,null,null,null,null,null,null,null,null,null));} %></span>.
							<% processOpenTag(response, pageContext, "lockownertooltip", new TagParameter[] {
new TagParameter("CurrentUser",getObject("CurrentUser")),
new TagParameter("Resource",getObject("GlobalPageletLockInfoDictionary:Resource"))}, 40); %>
						</td>
					</tr>
				</table>
			</td>
		</tr>
	</table>	
<% } %>

<table width="100%" border="0" cellspacing="0" cellpadding="0" class="stickyHeader">
	<thead>
		<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("submitbuttonstemplate")))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("submitbuttonstemplate"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("submitbuttonincludetype"),null).equals(context.getFormattedValue("objectlist",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",51,e);}if (_boolean_result) { %>
			<% _boolean_result=false;try {_boolean_result=((Boolean)(((!((Boolean) ((disableErrorMessages().isDefined(getObject("GlobalPageletLockInfoDictionary:AllPageletsLocked"))))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("GlobalPageletLockInfoDictionary:AllPageletsLocked"),null).equals(context.getFormattedValue("false",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",52,e);}if (_boolean_result) { %>
				<% {Object temp_obj = (""); getPipelineDictionary().put("DisableButtonAttribute", temp_obj);} %>
			<% } else { %>
				<% {Object temp_obj = ("disabled=\"disabled\""); getPipelineDictionary().put("DisableButtonAttribute", temp_obj);} %>
			<% } %>
			<tr>
				<td colspan="10">
					<% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,context.getFormattedValue(getObject("submitbuttonstemplate"),null), null, "59");} %>
				</td>
			</tr>
		<% } %>
		<tr>
			<% _boolean_result=false;try {_boolean_result=((Boolean)(((!((Boolean) (disableErrorMessages().isDefined(getObject("DisplayAsFilter")))).booleanValue() && ((Boolean) (((((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("selectionlisting")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("selectionlisting"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("PermissionMap:SLD_MANAGE_CONTENT")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("PermissionMap:SLD_MANAGE_MARKETING")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("PermissionMap:SLD_ASSIGN_MARKETING_AND_CONTENT")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",64,e);}if (_boolean_result) { %>
				<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (((((Boolean) (((!(context.getFormattedValue(getObject("template"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("PermissionMap:SLD_MANAGE_CONTENT")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("PermissionMap:SLD_MANAGE_TEMPLATES")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",65,e);}if (_boolean_result) { %>
					<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("radiobuttons"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",66,e);}if (_boolean_result) { %>
						<th class="table_header w s" style="text-align: center;" width="70"><% {out.write(localizeISText("PageletsList.Select.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></th>
					<% } else { %>
						<th class="table_header w s" nowrap="nowrap" width="80">
							<div id="A">
								<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
									<tr>
										<td nowrap="nowrap">
											<a href="javascript:selectAll('PageletSearch','SelectedPageletUUID','A','B');" class="tableheader"><% {out.write(localizeISText("PageletsList.SelectAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a></td>
									</tr>
								</table>
							</div>
							<div id="B" style="display:none">
								<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
									<tr>
										<td nowrap="nowrap">
											<a href="javascript:selectAll('PageletSearch','SelectedPageletUUID','A','B');" class="tableheader"><% {out.write(localizeISText("PageletsList.ClearAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a></td>
									</tr>
								</table>
							</div>
						</th>
					<% } %>
				<% } %>
			<% } %>
	
			<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SortDirection"),null).equals(context.getFormattedValue("descending",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",91,e);}if (_boolean_result) { %>
				<% {Object temp_obj = ("ascending"); getPipelineDictionary().put("NewSortDirection", temp_obj);} %>
			<% } else { %>
				<% {Object temp_obj = ("descending"); getPipelineDictionary().put("NewSortDirection", temp_obj);} %>
			<% } %>
			<th class="table_header w e s">
				<a class="tableheader" href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPageletSearch-Sort",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SearchType",null),context.getFormattedValue(getObject("SearchType"),null))).addURLParameter(context.getFormattedValue("SortBy",null),context.getFormattedValue("pageletType",null)).addURLParameter(context.getFormattedValue("SortDirection",null),context.getFormattedValue(getObject("NewSortDirection"),null)).addURLParameter(context.getFormattedValue("UniquePageletSearchID",null),context.getFormattedValue(getObject("UniquePageletSearchID"),null)).addURLParameter(context.getFormattedValue("PageFlag",null),context.getFormattedValue(getObject("page"),null))),null)%>">
					<% {out.write(localizeISText("PageletsList.Type.link",null,null,null,null,null,null,null,null,null,null,null,null));} %>
				</a>
			</th>
			<th class="table_header e s">
				<a class="tableheader" href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPageletSearch-Sort",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SearchType",null),context.getFormattedValue(getObject("SearchType"),null))).addURLParameter(context.getFormattedValue("SortBy",null),context.getFormattedValue("name",null)).addURLParameter(context.getFormattedValue("SortDirection",null),context.getFormattedValue(getObject("NewSortDirection"),null)).addURLParameter(context.getFormattedValue("UniquePageletSearchID",null),context.getFormattedValue(getObject("UniquePageletSearchID"),null)).addURLParameter(context.getFormattedValue("PageFlag",null),context.getFormattedValue(getObject("page"),null))),null)%>">
				<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("page"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",103,e);}if (_boolean_result) { %>
					<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("template"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",104,e);}if (_boolean_result) { %>
						<% {out.write(localizeISText("PageletsList.PageTemplateName.link",null,null,null,null,null,null,null,null,null,null,null,null));} %>
					<% } else { %>
						<% {out.write(localizeISText("PageletsList.PageVariantName.link",null,null,null,null,null,null,null,null,null,null,null,null));} %>
					<% } %>
				<% } else { %>
					<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("template"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",110,e);}if (_boolean_result) { %>
						<% {out.write(localizeISText("PageletsList.ComponentTemplateName.link",null,null,null,null,null,null,null,null,null,null,null,null));} %>
					<% } else { %>
						<% {out.write(localizeISText("PageletsList.ComponentName.link",null,null,null,null,null,null,null,null,null,null,null,null));} %>
					<% } %>
				<% } %>
				</a>
			</th>
			
			<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("template"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",119,e);}if (_boolean_result) { %> 
				<th class="table_header e s">
					<a class="tableheader" href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPageletSearch-Sort",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SearchType",null),context.getFormattedValue(getObject("SearchType"),null))).addURLParameter(context.getFormattedValue("SortBy",null),context.getFormattedValue("ID",null)).addURLParameter(context.getFormattedValue("SortDirection",null),context.getFormattedValue(getObject("NewSortDirection"),null)).addURLParameter(context.getFormattedValue("UniquePageletSearchID",null),context.getFormattedValue(getObject("UniquePageletSearchID"),null)).addURLParameter(context.getFormattedValue("PageFlag",null),context.getFormattedValue(getObject("page"),null))),null)%>">
						<% {out.write(localizeISText("PageletsList.ID.link",null,null,null,null,null,null,null,null,null,null,null,null));} %>
					</a>
				</th>
			<% } %>

			<th class="table_header e s">
				<a class="tableheader" href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPageletSearch-Sort",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SearchType",null),context.getFormattedValue(getObject("SearchType"),null))).addURLParameter(context.getFormattedValue("SortBy",null),context.getFormattedValue("pageletTypeGroup",null)).addURLParameter(context.getFormattedValue("SortDirection",null),context.getFormattedValue(getObject("NewSortDirection"),null)).addURLParameter(context.getFormattedValue("UniquePageletSearchID",null),context.getFormattedValue(getObject("UniquePageletSearchID"),null)).addURLParameter(context.getFormattedValue("PageFlag",null),context.getFormattedValue(getObject("page"),null))),null)%>">
				  <% {out.write(localizeISText("PageletsList.Group.link",null,null,null,null,null,null,null,null,null,null,null,null));} %>
				</a>
			</th>
			
		
			
			<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("template"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",135,e);}if (_boolean_result) { %>
				<th class="table_header e s">
					<% {out.write(localizeISText("PageletsList.Description.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %>
				</th>
			<% } %>
			
			<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) ((((context.getFormattedValue(getObject("template"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",141,e);}if (_boolean_result) { %>
				<th class="table_header e s" nowrap="nowrap">
					<a class="tableheader" href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPageletSearch-Sort",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SearchType",null),context.getFormattedValue(getObject("SearchType"),null))).addURLParameter(context.getFormattedValue("SortBy",null),context.getFormattedValue("publishedfrom",null)).addURLParameter(context.getFormattedValue("SortDirection",null),context.getFormattedValue(getObject("NewSortDirection"),null)).addURLParameter(context.getFormattedValue("UniquePageletSearchID",null),context.getFormattedValue(getObject("UniquePageletSearchID"),null))),null)%>">
						<% {out.write(localizeISText("PageletsList.PublishedFrom.link",null,null,null,null,null,null,null,null,null,null,null,null));} %>
					</a>
				</th>
				<th class="table_header e s" nowrap="nowrap">
					<a class="tableheader" href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPageletSearch-Sort",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SearchType",null),context.getFormattedValue(getObject("SearchType"),null))).addURLParameter(context.getFormattedValue("SortBy",null),context.getFormattedValue("publishedto",null)).addURLParameter(context.getFormattedValue("SortDirection",null),context.getFormattedValue(getObject("NewSortDirection"),null)).addURLParameter(context.getFormattedValue("UniquePageletSearchID",null),context.getFormattedValue(getObject("UniquePageletSearchID"),null))),null)%>">
						<% {out.write(localizeISText("PageletsList.PublishedUntil.link",null,null,null,null,null,null,null,null,null,null,null,null));} %>
					</a>
				</th>
				<th class="table_header e s" nowrap="nowrap">
					<a class="tableheader" href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPageletSearch-Sort",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SearchType",null),context.getFormattedValue(getObject("SearchType"),null))).addURLParameter(context.getFormattedValue("SortBy",null),context.getFormattedValue("lastModified",null)).addURLParameter(context.getFormattedValue("SortDirection",null),context.getFormattedValue(getObject("NewSortDirection"),null)).addURLParameter(context.getFormattedValue("UniquePageletSearchID",null),context.getFormattedValue(getObject("UniquePageletSearchID"),null))),null)%>">
						<% {out.write(localizeISText("PageletsList.LastModified.link",null,null,null,null,null,null,null,null,null,null,null,null));} %>
					</a>
				</th>
				<th class="table_header e s" nowrap="nowrap">
					<a class="tableheader" href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPageletSearch-Sort",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SearchType",null),context.getFormattedValue(getObject("SearchType"),null))).addURLParameter(context.getFormattedValue("SortBy",null),context.getFormattedValue("author",null)).addURLParameter(context.getFormattedValue("SortDirection",null),context.getFormattedValue(getObject("NewSortDirection"),null)).addURLParameter(context.getFormattedValue("UniquePageletSearchID",null),context.getFormattedValue(getObject("UniquePageletSearchID"),null))),null)%>">
						<% {out.write(localizeISText("PageletsList.Author.link",null,null,null,null,null,null,null,null,null,null,null,null));} %>
					</a>
				</th>
			<% } %>
		<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("PermissionMap:SLD_MANAGE_CONTENT"))))).booleanValue() || ((Boolean) ((disableErrorMessages().isDefined(getObject("PermissionMap:SLD_VIEW_STOREFRONT"))))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",163,e);}if (_boolean_result) { %>
			<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("DisplayAsFilter")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",164,e);}if (_boolean_result) { %>
					<th class="table_header e s sfe-dialog-hidden" nowrap="nowrap" width="1%"><% {out.write(localizeISText("PageletsList.Actions.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></th>
			<% } %>
		<% } %>	
		</tr>
	</thead>
	<tbody>
		<% while (loop("PageletSearchResultDict:Pagelets","Pagelet",null)) { %>
			<tr>
				<% processOpenTag(response, pageContext, "createmap", new TagParameter[] {
new TagParameter("key1","PreferenceDomain"),
new TagParameter("key2","User"),
new TagParameter("key0","Pagelet"),
new TagParameter("value2",getObject("CurrentUser")),
new TagParameter("value1",getObject("ContentRepository:RepositoryDomain")),
new TagParameter("key3","LockingDomain"),
new TagParameter("value3",getObject("ContentRepository:RepositoryDomain")),
new TagParameter("value0",getObject("Pagelet")),
new TagParameter("mapname","ProcessPageletLockParams")}, 173); %>
				<% {try{executePipeline("ProcessPageletLock-Lookup",((java.util.Map)(getObject("ProcessPageletLockParams"))),"PageletLockInfoDictionary");}catch(Exception e){Logger.error(this,"ISPIPELINE failed. Line: 178.",e);}} %>
				<% {try{executePipeline("ViewPageletSearch-GetPageletView",((java.util.Map)(getObject("ProcessPageletLockParams"))),"PageletViewDictionary");}catch(Exception e){Logger.error(this,"ISPIPELINE failed. Line: 179.",e);}} %>
				<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("DisplayAsFilter")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",180,e);}if (_boolean_result) { %>
					<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PageletLockInfoDictionary:PageletLockedForOther"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",181,e);}if (_boolean_result) { %>
						<% {Object temp_obj = ("disabled=\"disabled\""); getPipelineDictionary().put("DisablePageletAttribute", temp_obj);} %>
					<% } else { %>
						<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((Boolean) (disableErrorMessages().isDefined(getObject("disablesharedpagelets")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() || ((Boolean) ((((Boolean) ((((context.getFormattedValue(getObject("disablesharedpagelets"),null).equals(context.getFormattedValue("false",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",184,e);}if (_boolean_result) { %>
							<% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("Pagelet:DomainID"),null).equals(context.getFormattedValue(getObject("ContentRepository:RepositoryDomain:UUID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",185,e);}if (_boolean_result) { %>
								<% {Object temp_obj = ("disabled=\"disabled\""); getPipelineDictionary().put("DisablePageletAttribute", temp_obj);} %>
							<% } else { %>
								<% {Object temp_obj = (""); getPipelineDictionary().put("DisablePageletAttribute", temp_obj);} %>
							<% } %>
						<% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("disableinusetemplates")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("disableinusetemplates"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",190,e);}if (_boolean_result) { %>
							<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Pagelet:InUse"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",191,e);}if (_boolean_result) { %>
								<% {Object temp_obj = ("disabled=\"disabled\""); getPipelineDictionary().put("DisablePageletAttribute", temp_obj);} %>
							<% } else { %>
								<% {Object temp_obj = (""); getPipelineDictionary().put("DisablePageletAttribute", temp_obj);} %>
							<% } %>
						<% } else { %>
							<% {Object temp_obj = (""); getPipelineDictionary().put("DisablePageletAttribute", temp_obj);} %>
						<% }} %>
					<% } %>
					<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("selectionlisting")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("selectionlisting"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("PermissionMap:SLD_MANAGE_CONTENT")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("PermissionMap:SLD_MANAGE_MARKETING")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("PermissionMap:SLD_ASSIGN_MARKETING_AND_CONTENT")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",200,e);}if (_boolean_result) { %>
						<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (((((Boolean) (((!(context.getFormattedValue(getObject("template"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("PermissionMap:SLD_MANAGE_CONTENT")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("PermissionMap:SLD_MANAGE_TEMPLATES")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",201,e);}if (_boolean_result) { %>
							<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("radiobuttons"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",202,e);}if (_boolean_result) { %>
								<td class="w s center">
									<input type="radio" name="SelectedPageletUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Pagelet:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {204}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Pagelet:UUID"),null).equals(context.getFormattedValue(getObject("selectedpageletuuid"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",204,e);}if (_boolean_result) { %>checked="checked"<% } %> 
										<% {String value = null;try{value=context.getFormattedValue(getObject("DisablePageletAttribute"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {205}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> />
								</td>
							<% } else { %>
								<td class="w s center">
									<input type="checkbox" name="SelectedPageletUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Pagelet:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {209}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Pagelet:UUID"),null).equals(context.getFormattedValue(getObject("pageletclipboard:ObjectUUID(Pagelet:UUID)"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",209,e);}if (_boolean_result) { %>checked="checked"<% } %> 
										<% {String value = null;try{value=context.getFormattedValue(getObject("DisablePageletAttribute"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {210}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> />
									<input type="hidden" name="AllPageletUUIDs" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Pagelet:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {211}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>&#160;
								</td>
							<% } %>
						<% } %>
					<% } %>
				<% } %>
				<td nowrap="nowrap" class="table_detail w e s pagelet_preview_image">
					<% processOpenTag(response, pageContext, "pageletpreviewimage", new TagParameter[] {
new TagParameter("Locale",getObject("locale")),
new TagParameter("Pagelet",getObject("Pagelet"))}, 218); %>
				</td>
				<td class="table_detail e s">
					<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("DisplayAsFilter"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",221,e);}if (_boolean_result) { %>
						<% processOpenTag(response, pageContext, "pageletdisplayname", new TagParameter[] {
new TagParameter("Locale",getObject("locale")),
new TagParameter("Pagelet",getObject("Pagelet"))}, 222); %>
					<% } else { %>
						<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPagelet-View",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("PageletUUID",null),context.getFormattedValue(getObject("Pagelet:UUID"),null))).addURLParameter(context.getFormattedValue("ContentRepositoryUUID",null),context.getFormattedValue(getObject("ContentRepository:UUID"),null)).addURLParameter(context.getFormattedValue("PageLocatorName",null),context.getFormattedValue(getObject("PageletSearchResultDict:PageLocatorName"),null)).addURLParameter(context.getFormattedValue("SelectedMenuItem",null),context.getFormattedValue(getObject("selectedmenuitem"),null))),null)%>" class="table_detail_link">
							<% processOpenTag(response, pageContext, "pageletdisplayname", new TagParameter[] {
new TagParameter("Locale",getObject("locale")),
new TagParameter("Pagelet",getObject("Pagelet"))}, 225); %></a>&nbsp;
						<% processOpenTag(response, pageContext, "contentelementtooltip", new TagParameter[] {
new TagParameter("ContentElement",getObject("Pagelet"))}, 226); %> 
					<% } %>
					<% processOpenTag(response, pageContext, "pageletstatus", new TagParameter[] {
new TagParameter("ContentRepository",getObject("ContentRepository")),
new TagParameter("Pagelet",getObject("PageletViewDictionary:PageletView"))}, 228); %>
				</td>
	
				<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("template"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",231,e);}if (_boolean_result) { %>
					<td class="table_detail e s" nowrap="nowrap">
						<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPagelet-View",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("PageletUUID",null),context.getFormattedValue(getObject("Pagelet:UUID"),null))).addURLParameter(context.getFormattedValue("ContentRepositoryUUID",null),context.getFormattedValue(getObject("ContentRepository:UUID"),null)).addURLParameter(context.getFormattedValue("PageLocatorName",null),context.getFormattedValue(getObject("PageletSearchResultDict:PageLocatorName"),null)).addURLParameter(context.getFormattedValue("SelectedMenuItem",null),context.getFormattedValue(getObject("selectedmenuitem"),null))),null)%>" class="table_detail_link">
							<% {String value = null;try{value=context.getFormattedValue(getObject("Pagelet:Id"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {234}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>
						</a>
					</td>
				<% } %>
				
				<td class="table_detail e s" nowrap="nowrap"><% {String value = null;try{value=context.getFormattedValue(getObject("PageletModelUtils:DisplayGroup(Pagelet:PageletDefinition,locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {239}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
				
				<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("template"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",241,e);}if (_boolean_result) { %>
					<td class="table_detail e s"><% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("Pagelet:Description(locale)"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",242,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "cropstring", new TagParameter[] {
new TagParameter("CropString","..."),
new TagParameter("String",getObject("Pagelet:Description(locale)")),
new TagParameter("MaxLength",new Double(50))}, 242); %><% } else { %>&nbsp;<% } %></td>
				<% } %>
				
				<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) ((((context.getFormattedValue(getObject("template"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",245,e);}if (_boolean_result) { %>
					<td class="table_detail e s" nowrap="nowrap">
						<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("DisplayAsFilter"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",247,e);}if (_boolean_result) { %>
							<% processOpenTag(response, pageContext, "pageletpublishedfrom", new TagParameter[] {
new TagParameter("Pagelet",getObject("PageletViewDictionary:PageletView"))}, 248); %>
						<% } else { %>
							<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPagelet-View",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("PageletUUID",null),context.getFormattedValue(getObject("Pagelet:UUID"),null))).addURLParameter(context.getFormattedValue("ContentRepositoryUUID",null),context.getFormattedValue(getObject("ContentRepository:UUID"),null)).addURLParameter(context.getFormattedValue("SelectedTab",null),context.getFormattedValue("Properties",null)).addURLParameter(context.getFormattedValue("PageLocatorName",null),context.getFormattedValue(getObject("PageletSearchResultDict:PageLocatorName"),null))),null)%>" class="table_detail_link"><% processOpenTag(response, pageContext, "pageletpublishedfrom", new TagParameter[] {
new TagParameter("Pagelet",getObject("PageletViewDictionary:PageletView"))}, 250); %></a>
						<% } %>
						<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (getObject("PageletViewDictionary:PageletView:View"))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("PageletViewDictionary:PageletView:ValidFrom"),null).equals(context.getFormattedValue(getObject("PageletViewDictionary:PageletView:Base:ValidFrom"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",252,e);}if (_boolean_result) { %>
							<% processOpenTag(response, pageContext, "pageletvisibletext", new TagParameter[] {
new TagParameter("date",getObject("PageletViewDictionary:PageletView:ValidFrom")),
new TagParameter("start","true"),
new TagParameter("online",getObject("PageletViewDictionary:PageletView:Active")),
new TagParameter("text","VisibilityText")}, 253); %>
							<img class="cpo-state-icon" src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/ic_overload.gif" alt="<%=context.getFormattedValue(localizeTextEx(context.getFormattedValue("PageletVisible.OverwrittenValue.alt",null),new ParameterList().addParameter(encodeString(context.getFormattedValue(getObject("VisibilityText"),null)))),null)%>" title="<%=context.getFormattedValue(localizeTextEx(context.getFormattedValue("PageletVisible.OverwrittenValue.title",null),new ParameterList().addParameter(encodeString(context.getFormattedValue(getObject("VisibilityText"),null)))),null)%>" />
						<% } %>
					</td>
					<td class="table_detail e s" nowrap="nowrap">
						<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("DisplayAsFilter"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",258,e);}if (_boolean_result) { %>
							<% processOpenTag(response, pageContext, "pageletpublishedfrom", new TagParameter[] {
new TagParameter("Pagelet",getObject("PageletViewDictionary:PageletView"))}, 259); %>
						<% } else { %>
							<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPagelet-View",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("PageletUUID",null),context.getFormattedValue(getObject("Pagelet:UUID"),null))).addURLParameter(context.getFormattedValue("ContentRepositoryUUID",null),context.getFormattedValue(getObject("ContentRepository:UUID"),null)).addURLParameter(context.getFormattedValue("SelectedTab",null),context.getFormattedValue("Properties",null)).addURLParameter(context.getFormattedValue("PageLocatorName",null),context.getFormattedValue(getObject("PageletSearchResultDict:PageLocatorName"),null))),null)%>" class="table_detail_link"><% processOpenTag(response, pageContext, "pageletpublishedto", new TagParameter[] {
new TagParameter("Pagelet",getObject("PageletViewDictionary:PageletView"))}, 261); %></a>
						<% } %>
						<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (getObject("PageletViewDictionary:PageletView:View"))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("PageletViewDictionary:PageletView:ValidTo"),null).equals(context.getFormattedValue(getObject("PageletViewDictionary:PageletView:Base:ValidTo"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",263,e);}if (_boolean_result) { %>
							<% processOpenTag(response, pageContext, "pageletvisibletext", new TagParameter[] {
new TagParameter("date",getObject("PageletViewDictionary:PageletView:ValidTo")),
new TagParameter("start","false"),
new TagParameter("online",getObject("PageletViewDictionary:PageletView:Active")),
new TagParameter("text","VisibilityText")}, 264); %>
							<img class="cpo-state-icon" src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/ic_overload.gif" alt="<%=context.getFormattedValue(localizeTextEx(context.getFormattedValue("PageletVisible.OverwrittenValue.alt",null),new ParameterList().addParameter(encodeString(context.getFormattedValue(getObject("VisibilityText"),null)))),null)%>" title="<%=context.getFormattedValue(localizeTextEx(context.getFormattedValue("PageletVisible.OverwrittenValue.title",null),new ParameterList().addParameter(encodeString(context.getFormattedValue(getObject("VisibilityText"),null)))),null)%>" />
						<% } %>
					</td>
					<td class="table_detail e s" nowrap="nowrap">
						<% {String value = null;try{value=context.getFormattedValue(getObject("Pagelet:LastModified"),new Integer(DATE_INPUT),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {269}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;
						<% {String value = null;try{value=context.getFormattedValue(getObject("Pagelet:LastModified"),new Integer(TIME_INPUT),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {270}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>
					</td>
					<td class="table_detail e s" nowrap="nowrap">
						<% {String value = null;try{value=context.getFormattedValue(getObject("Pagelet:Author:Profile:FirstName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {273}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;
						<% {String value = null;try{value=context.getFormattedValue(getObject("Pagelet:Author:Profile:LastName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {274}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>
					</td>
				<% } %>
				<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("PermissionMap:SLD_MANAGE_CONTENT"))))).booleanValue() || ((Boolean) ((disableErrorMessages().isDefined(getObject("PermissionMap:SLD_VIEW_STOREFRONT"))))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",277,e);}if (_boolean_result) { %>
					<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("DisplayAsFilter")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",278,e);}if (_boolean_result) { %>
						<td class="table_detail center e s sfe-dialog-hidden" nowrap="nowrap">
							<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (((((Boolean) (((!(context.getFormattedValue(getObject("template"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("PermissionMap:SLD_MANAGE_CONTENT")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("PermissionMap:SLD_MANAGE_TEMPLATES")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",280,e);}if (_boolean_result) { %>
								<% processOpenTag(response, pageContext, "pageletlocking", new TagParameter[] {
new TagParameter("User",getObject("CurrentUser")),
new TagParameter("LockInfoDictionary",getObject("PageletLockInfoDictionary")),
new TagParameter("ContentRepository",getObject("ContentRepository")),
new TagParameter("Pagelet",getObject("Pagelet"))}, 281); %>
								<% _boolean_result=false;try {_boolean_result=((Boolean)(((!((Boolean) ((disableErrorMessages().isDefined(getObject("PageletLockInfoDictionary:AllPageletsLocked"))))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("PageletLockInfoDictionary:AllPageletsLocked"),null).equals(context.getFormattedValue("false",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",282,e);}if (_boolean_result) { %>
									<% processOpenTag(response, pageContext, "copypagelet", new TagParameter[] {
new TagParameter("ContentRepository",getObject("ContentRepository")),
new TagParameter("CopyOfPrefix","Copy of "),
new TagParameter("Pagelet",getObject("Pagelet"))}, 283); %>
								<% } %>
							<% } %>
							<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PermissionMap:SLD_VIEW_STOREFRONT"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",286,e);}if (_boolean_result) { %>
								<% processOpenTag(response, pageContext, "previewpagelet", new TagParameter[] {
new TagParameter("contextParameter2","SelectedPageletTemplateUUID"),
new TagParameter("contextParameter3","PageFlag"),
new TagParameter("contextParameter4","UniquePageletSearchID"),
new TagParameter("contextValue0",getObject("ContentRepository:UUID")),
new TagParameter("contextValue1","true"),
new TagParameter("contextParameter0","ContentRepositoryUUID"),
new TagParameter("contextParameter1","continuedSession"),
new TagParameter("PageFlag",getObject("page")),
new TagParameter("contextPipeline","ViewPageletSearch-Dispatch"),
new TagParameter("ContentRepository",getObject("ContentRepository")),
new TagParameter("contextValue2",getObject("Pagelet:UUID")),
new TagParameter("contextValue3",getObject("page")),
new TagParameter("contextValue4",getObject("UniquePageletSearchID")),
new TagParameter("TemplateFlag",getObject("template")),
new TagParameter("Pagelet",getObject("Pagelet"))}, 287); %>
							<% } %>
						</td>
					<% } %>
				<% } %>
			</tr>
		<% } %>
	</tbody>
</table>
<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("submitbuttonstemplate")))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("submitbuttonstemplate"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("submitbuttonincludetype"),null).equals(context.getFormattedValue("objectlist",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",306,e);}if (_boolean_result) { %>
	<% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,context.getFormattedValue(getObject("submitbuttonstemplate"),null), null, "307");} %>
<% } %>

<!-- END: PageletsList.isml -->
<% printFooter(out); %>