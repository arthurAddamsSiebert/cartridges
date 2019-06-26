<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><!-- TEMPLATENAME: PageletSearch.isml -->
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><%@page import="java.util.Map"%><%@page import="java.util.HashMap"%><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/Modules", null, "7");} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"content/Modules", null, "8");} %><!-- Working Area -->
<!-- Main Content --><% _boolean_result=false;try {_boolean_result=((Boolean)(((!((Boolean) ((((context.getFormattedValue(getObject("template"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("filtermode")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("filtermode"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",12,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("page"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",13,e);}if (_boolean_result) { %><% {Object temp_obj = (url(true,(new URLPipelineAction(context.getFormattedValue("ViewPageletSearchPageFilter-Dispatch",null))))); getPipelineDictionary().put("FormAction", temp_obj);} %><% } else { %><% {Object temp_obj = (url(true,(new URLPipelineAction(context.getFormattedValue("ViewPageletSearchComponentFilter-Dispatch",null))))); getPipelineDictionary().put("FormAction", temp_obj);} %><% } %><% } else { %><% {Object temp_obj = (url(true,(new URLPipelineAction(context.getFormattedValue("ViewPageletSearch-Dispatch",null))))); getPipelineDictionary().put("FormAction", temp_obj);} %><% } %><% URLPipelineAction action439 = new URLPipelineAction(context.getFormattedValue(getObject("FormAction"),null));String site439 = null;String serverGroup439 = null;String actionValue439 = context.getFormattedValue(getObject("FormAction"),null);if (site439 == null){  site439 = action439.getDomain();  if (site439 == null)  {      site439 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup439 == null){  serverGroup439 = action439.getServerGroup();  if (serverGroup439 == null)  {      serverGroup439 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(getObject("FormAction"),null));out.print("\"");out.print(" name=\"");out.print("PageletSearch");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue439, site439, serverGroup439,true)); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"content/search/inc/AppendSearchIDParamToBreadcrumb", null, "22");} %><%
		Map searchParams = new HashMap<String, Object>();
		getPipelineDictionary().put("SearchParams", searchParams);
		
		Object uniqueIdParam = (String)getPipelineDictionary().get("UniquePageletSearchID");
		if ((uniqueIdParam != null) && !"".equals(uniqueIdParam)) {
			searchParams.put("UniquePageletSearchID", uniqueIdParam);
		} else {
			Object uniqueIdAttr = (String)getPipelineDictionary().get("uniqueid");
			if (uniqueIdAttr != null) {
				searchParams.put("UniquePageletSearchID", uniqueIdAttr);
				getPipelineDictionary().put("UniquePageletSearchID", uniqueIdAttr);
			}
		}
		Object pageFlag = (String)getPipelineDictionary().get("page");
		if (pageFlag != null) searchParams.put("PageFlag", pageFlag);
		Object templateFlag = (String)getPipelineDictionary().get("template");
		if (templateFlag != null) searchParams.put("TemplateFlag", templateFlag);
        Object allowedtemplates = getPipelineDictionary().get("allowedtemplates");
        if (allowedtemplates != null) searchParams.put("AllowedTemplates", allowedtemplates);
		Object performPageletSearchFlag = (String)getPipelineDictionary().get("PerformPageletSearch");
		if (performPageletSearchFlag != null) searchParams.put("PerformPageletSearch", performPageletSearchFlag);
		Object currentRequest = getPipelineDictionary().get("currentrequest");
		if (currentRequest != null) getPipelineDictionary().put("CurrentRequest", currentRequest);
		
		String performSearch = (String)getPipelineDictionary().get("performsearch");
		if (performSearch != null) {
			searchParams.put("PerformPageletSearch", performSearch);
			getPipelineDictionary().put("PerformPageletSearch", performSearch);
		}
		
		String searchType = (String)getPipelineDictionary().get("searchtype");
		if (searchType != null) {
			searchParams.put("SearchType", searchType);
			getPipelineDictionary().put("SearchType", searchType);
		}
		String sortBy = (String)getPipelineDictionary().get("sortby");
		if (sortBy != null) {
			searchParams.put("SortBy", sortBy);
			getPipelineDictionary().put("SortBy", sortBy);
		}
		String sortDirection = (String)getPipelineDictionary().get("sortdirection");
		if (sortDirection != null) {
			searchParams.put("SortDirection", sortDirection);
			getPipelineDictionary().put("SortDirection", sortDirection);
		}
	 %><% processOpenTag(response, pageContext, "createmap", new TagParameter[] {
new TagParameter("key1","PageFlag"),
new TagParameter("value6",getObject("targetpageletviewpipelineparams")),
new TagParameter("key2","SearchType"),
new TagParameter("value5",getObject("targetpageletviewpipeline")),
new TagParameter("value8",getObject("excludedpagelets")),
new TagParameter("key0","UniquePageletSearchID"),
new TagParameter("value7",getObject("alloweddefinitions")),
new TagParameter("value2",getObject("searchtype")),
new TagParameter("key5","TargetPageletViewPipeline"),
new TagParameter("value1",getObject("page")),
new TagParameter("key6","TargetPageletViewPipelineParams"),
new TagParameter("key3","CurrentChannel"),
new TagParameter("value4",getObject("start")),
new TagParameter("value3",getObject("channel")),
new TagParameter("key4","StartFlag"),
new TagParameter("key9","FilterMode"),
new TagParameter("key7","AllowedPageletDefinitions"),
new TagParameter("key8","ExcludedPageletUUIDs"),
new TagParameter("mapname","PrepareSearchMaskParams"),
new TagParameter("value9",getObject("filtermode")),
new TagParameter("value0",getObject("UniquePageletSearchID"))}, 71); %><% {try{executePipeline("ProcessPageletSearch-PrepareSearchMaskValues",((java.util.Map)(getObject("PrepareSearchMaskParams"))),"SearchMaskValues");}catch(Exception e){Logger.error(this,"ISPIPELINE failed. Line: 83.",e);}} %><%
		Map searchMaskValues = (Map)getPipelineDictionary().get("SearchMaskValues");
		getPipelineDictionary().put("CurrentSession", searchMaskValues.get("CurrentSession"));		
		getPipelineDictionary().put("CurrentUser", searchMaskValues.get("CurrentUser"));
		getPipelineDictionary().put("ContentRepository", searchMaskValues.get("ContentRepository"));
		getPipelineDictionary().put("LeadLocale", searchMaskValues.get("LeadLocale"));
		getPipelineDictionary().put("WorkingContextTime", searchMaskValues.get("WorkingContextTime"));
		getPipelineDictionary().put("CurrentApplication", searchMaskValues.get("CurrentApplication"));
        getPipelineDictionary().put("PageletModelRepository", searchMaskValues.get("PageletModelRepository"));
		
		searchParams.put("ContentRepository", searchMaskValues.get("ContentRepository"));
		searchParams.put("PageletDefinitions", searchMaskValues.get("PageletDefinitions"));
		searchParams.put("SortedNames", searchMaskValues.get("SortedNames"));
	 %><% processOpenTag(response, pageContext, "contentpermissionmap", new TagParameter[] {
new TagParameter("ContentRepository",getObject("ContentRepository")),
new TagParameter("PermissionMap","PermissionMap")}, 100); %><% {try{executePipeline("ProcessPageletSearch-GetPageable",((java.util.Map)(getObject("SearchParams"))),"PageletSearchResultDict");}catch(Exception e){Logger.error(this,"ISPIPELINE failed. Line: 101.",e);}} %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("extendedheadingtemplate")))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("extendedheadingtemplate"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",104,e);}if (_boolean_result) { %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,context.getFormattedValue(getObject("extendedheadingtemplate"),null), null, "105");} %><% } else { %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"content/search/inc/PageletSearchTitleAndErrors", null, "107");} %><% } %><% processOpenTag(response, pageContext, "pageletmodelutils", new TagParameter[] {
new TagParameter("PageletModelUtils","PageletModelUtils")}, 110); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"content/search/inc/PageletSearchMask", null, "111");} %><input type="hidden" name = "PageFlag" value = "<% {String value = null;try{value=context.getFormattedValue(getObject("page"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {113}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" />
<input type="hidden" name="TemplateFlag" value="<% {String value = null;try{value=context.getFormattedValue(getObject("template"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {114}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" />
<input type="hidden" name = "UniquePageletSearchID" value = "<% {String value = null;try{value=context.getFormattedValue(getObject("UniquePageletSearchID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {115}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" /><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("searchtype"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",117,e);}if (_boolean_result) { %><input type="hidden" name="SearchType" value="<% {String value = null;try{value=context.getFormattedValue(getObject("searchtype"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {118}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" /><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("PageletSearchResultDict:Pagelets")))).booleanValue() && ((Boolean) (hasLoopElements("PageletSearchResultDict:Pagelets") ? Boolean.TRUE : Boolean.FALSE)).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",121,e);}if (_boolean_result) { %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"content/search/inc/PageletsList", null, "122");} %><!-- Start Page Cursor --><% {Object temp_obj = ("PageletSearchResultDict:ShowAllLimit"); getPipelineDictionary().put("ShowAllLimit", temp_obj);} %><% {Object temp_obj = ("PageletSearchResultDict:FirstLastLimit"); getPipelineDictionary().put("FirstLastLimit", temp_obj);} %><% processOpenTag(response, pageContext, "flexpagingbar", new TagParameter[] {
new TagParameter("rowsperpage",getObject("PageletSearchResultDict:RowsPerPage")),
new TagParameter("pageable","PageletSearchResultDict:Pagelets"),
new TagParameter("variablepagesize","true")}, 127); %><!-- End Page Cursor --><% } else { %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("notfoundtemplate")))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("notfoundtemplate"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",130,e);}if (_boolean_result) { %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,context.getFormattedValue(getObject("notfoundtemplate"),null), null, "131");} %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("submitbuttonstemplate")))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("submitbuttonstemplate"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",133,e);}if (_boolean_result) { %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,context.getFormattedValue(getObject("submitbuttonstemplate"),null), null, "134");} %><% } %><% } %><% out.print("</form>"); %><!-- EO Main Content -->
<!-- EO Working Area -->
<!-- END: PageletSearch.isml --><% printFooter(out); %>