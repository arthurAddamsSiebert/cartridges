<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%response.setHeader(TemplateConstants.PERSONALIZED_HEADER, "1");setEncodingType("text/html"); %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ListNavigationVO"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",3,e);}if (_boolean_result) { %><% {Object temp_obj = (getObject("ListNavigationVO:SearchResult")); getPipelineDictionary().put("SearchResult", temp_obj);} %><% {Object temp_obj = (getObject("ListNavigationVO:FilterEntries")); getPipelineDictionary().put("FilterEntries", temp_obj);} %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("showCount")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("showCount"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",7,e);}if (_boolean_result) { %><% {Object temp_obj = ("true"); getPipelineDictionary().put("cfg_showcount", temp_obj);} %><% } else { %><% {Object temp_obj = ("false"); getPipelineDictionary().put("cfg_showcount", temp_obj);} %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("showSelected")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("showSelected"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",12,e);}if (_boolean_result) { %><% {Object temp_obj = ("true"); getPipelineDictionary().put("cfg_showselected", temp_obj);} %><% } else { %><% {Object temp_obj = ("false"); getPipelineDictionary().put("cfg_showselected", temp_obj);} %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ListNavigationVO:SortingAttribute"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",17,e);}if (_boolean_result) { %><% {Object temp_obj = (getObject("ListNavigationVO:SortingAttribute")); getPipelineDictionary().put("cfg_sortvalue", temp_obj);} %><% } %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"modules/search/index/Modules", null, "21");} %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("FilterEntries")))).booleanValue() && ((Boolean) (hasLoopElements("FilterEntries") ? Boolean.TRUE : Boolean.FALSE)).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",24,e);}if (_boolean_result) { %><div class="" id="filter-accordion">
<div class="">
<div class="col-md-12">
<h3><% {out.write(localizeISText("product.product_filters.heading","",null,null,null,null,null,null,null,null,null,null,null));} %></h3>
</div>
</div>
<div class="collapse in"><% {Object temp_obj = (new Double(1)); getPipelineDictionary().put("filterCount", temp_obj);} %><% {Object temp_obj = (new Double(1)); getPipelineDictionary().put("rowCount", temp_obj);} %><%@page
                import = "com.intershop.component.search.capi.FilterAttribute,
                com.intershop.component.search.capi.FilterAttributeEntry,
                java.util.Iterator,
                java.util.HashMap,
                java.util.ArrayList"
            %><%
                // We initialize first the selected filters list.
                getPipelineDictionary().put("SelectedFilters", new HashMap<String, ArrayList<FilterAttributeEntry>>());

            %><% while (loop("FilterEntries","FilterEntry","cpt")) { %><%
                    HashMap<String, ArrayList<FilterAttributeEntry>> selected
                                                = (HashMap<String, ArrayList<FilterAttributeEntry>>) getObject("SelectedFilters");
          
                    // We need to make this as a String...
                    String hasUnSelectedValues = "false";
                    FilterAttribute filter;
                    if(getObject("FilterEntry") instanceof FilterAttribute)
                	{
                	    filter  = (FilterAttribute) getObject("FilterEntry");
	                    Iterator it                 = filter.createFilterAttributeEntryIterator();
	                    while(it.hasNext()) {
	                        FilterAttributeEntry entry = (FilterAttributeEntry) it.next();
	                        if (entry.isSelected()) {
	                            String key = filter.getConfigurationAttribute().getDisplayName();
									
	                            if (! selected.containsKey(key)) {
	                                selected.put(key, new  ArrayList<FilterAttributeEntry>());
	                            }
	                            selected.get(key).add(entry);
	                        } else {
	                            hasUnSelectedValues = "true";
	                        }
	                    }
                	}

                    getPipelineDictionary().put("HasUnSelectedValues", hasUnSelectedValues);
                %><% {Object temp_obj = (getObject("FilterEntry")); getPipelineDictionary().put("filterAttribute", temp_obj);} %><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("filterAttribute:FilterAttributeEntry") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",76,e);}if (_boolean_result) { %><div class="filter-group col-md-3 col-sm-6 col-xs-12 margin-bottom-zero border-bottom-none"><% processOpenTag(response, pageContext, "masterproductfilter", new TagParameter[] {
new TagParameter("pipeline",context.getFormattedValue(getObject("ListNavigationVO:HandlerPipeline"),null) + context.getFormattedValue("-Browse",null)),
new TagParameter("filter",getObject("filterAttribute")),
new TagParameter("showcount",getObject("cfg_showcount")),
new TagParameter("sortvalue",getObject("cfg_sortvalue")),
new TagParameter("HasUnSelectedValues",getObject("HasUnSelectedValues")),
new TagParameter("query",getObject("SearchResult:Query")),
new TagParameter("showselected",getObject("cfg_showselected")),
new TagParameter("params","ListNavigationVO:GenericHandlerPipelineParams")}, 78); %></div><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((( ((Number) ((new Double( ((Number) getObject("filterCount")).doubleValue() /((Number) new Double(4)).doubleValue())))).doubleValue() ==((Number)(getObject("rowCount"))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) (hasNext("FilterEntries") ? Boolean.TRUE : Boolean.FALSE)).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",89,e);}if (_boolean_result) { %></div>
<div class="row"><% {Object temp_obj = ((new Double( ((Number) getObject("rowCount")).doubleValue() +((Number) new Double(1)).doubleValue()))); getPipelineDictionary().put("rowCount", temp_obj);} %><% } %><% {Object temp_obj = ((new Double( ((Number) getObject("filterCount")).doubleValue() +((Number) new Double(1)).doubleValue()))); getPipelineDictionary().put("filterCount", temp_obj);} %><% } %><% } %></div><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("SelectedFilters:EntrySet") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",99,e);}if (_boolean_result) { %><div class="row">
<div class="col-md-10 col-xs-12"><% processOpenTag(response, pageContext, "masterproductfilterremove", new TagParameter[] {
new TagParameter("pipeline",context.getFormattedValue(getObject("ListNavigationVO:HandlerPipeline"),null) + context.getFormattedValue("-Browse",null)),
new TagParameter("filter",getObject("SelectedFilters")),
new TagParameter("showcount",getObject("cfg_showcount")),
new TagParameter("sortvalue",getObject("cfg_sortvalue")),
new TagParameter("query",getObject("SearchResult:Query")),
new TagParameter("showselected",getObject("cfg_showselected")),
new TagParameter("params","ListNavigationVO:GenericHandlerPipelineParams")}, 102); %></div>
<div class="col-md-2 col-xs-12">
<div class="pull-right">
<a href="<% processOpenTag(response, pageContext, "filterlink", new TagParameter[] {
new TagParameter("pipelinename",context.getFormattedValue(getObject("ListNavigationVO:HandlerPipeline"),null) + context.getFormattedValue("-Browse",null)),
new TagParameter("pagesize",getObject("ListNavigationVO:PageSize")),
new TagParameter("searchparameter",getObject("ListNavigationVO:SearchResult:Query:RemoveAllConditions")),
new TagParameter("params","ListNavigationVO:GenericHandlerPipelineParams")}, 114); %>"
>
<span><% {out.write(localizeISText("product.remove_all_product_filters.text","",null,null,null,null,null,null,null,null,null,null,null));} %></span>
</a>
</div>
</div>
</div><% } %></div><% } %><% printFooter(out); %>