<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"modules/Modules", null, "3");} %><div class="filters-row row">
<div class="col-md-7 col-sm-9 col-xs-12 switch-layout"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ListNavigationVO"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",6,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "mappagination", new TagParameter[] {
new TagParameter("pipeline",context.getFormattedValue(getObject("ListNavigationVO:HandlerPipeline"),null) + context.getFormattedValue("-ProductPaging",null)),
new TagParameter("pagecount",getObject("ListNavigationVO:PageCount")),
new TagParameter("sortvalue",getObject("ListNavigationVO:SortingAttribute")),
new TagParameter("itemcount",getObject("ListNavigationVO:ElementCount")),
new TagParameter("currentpage",getObject("ListNavigationVO:CurrentPage")),
new TagParameter("params",getObject("ListNavigationVO:GenericHandlerPipelineParams"))}, 7); %><% } %></div>
<div class="col-md-2 col-sm-3 col-xs-4 switch-layout">
<div class="pull-right sort-by"><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("showViewType")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("showViewType"),null).equals(context.getFormattedValue("false",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",21,e);}if (_boolean_result) { %><a data-testing-id="list-view-link" href="<% processOpenTag(response, pageContext, "paginglink", new TagParameter[] {
new TagParameter("pipelinename",context.getFormattedValue(getObject("ListNavigationVO:HandlerPipeline"),null) + context.getFormattedValue("-ProductPaging",null)),
new TagParameter("sortvalue",getObject("ListNavigationVO:SortingAttribute")),
new TagParameter("pagesize",getObject("ListNavigationVO:PageSize")),
new TagParameter("viewtype","2"),
new TagParameter("params",getObject("ListNavigationVO:GenericHandlerPipelineParams")),
new TagParameter("pagenumber",getObject("ListNavigationVO:CurrentPage"))}, 22); %>"
class="list-view-link<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ViewType")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ViewType"),null).equals(context.getFormattedValue("2",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((((Boolean) ((disableErrorMessages().isDefined(getObject("ViewType"))))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",29,e);}if (_boolean_result) { %> list-active<% } %>">
<span class="glyphicon glyphicon-list"></span>
</a>
<a data-testing-id="grid-view-link" href="<% processOpenTag(response, pageContext, "paginglink", new TagParameter[] {
new TagParameter("pipelinename",context.getFormattedValue(getObject("ListNavigationVO:HandlerPipeline"),null) + context.getFormattedValue("-ProductPaging",null)),
new TagParameter("sortvalue",getObject("ListNavigationVO:SortingAttribute")),
new TagParameter("pagesize",getObject("ListNavigationVO:PageSize")),
new TagParameter("viewtype","1"),
new TagParameter("params",getObject("ListNavigationVO:GenericHandlerPipelineParams")),
new TagParameter("pagenumber",getObject("ListNavigationVO:CurrentPage"))}, 32); %>"
class="grid-view-link<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ViewType")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ViewType"),null).equals(context.getFormattedValue("1",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",39,e);}if (_boolean_result) { %> grid-active<% } %>">
<span class="glyphicon glyphicon-th"></span>
</a><% } %></div>
</div>
<div class="col-md-3 col-sm-12 col-xs-8 pull-right sort-by"> 
<% processOpenTag(response, pageContext, "sortby", new TagParameter[] {
new TagParameter("sortings",getObject("sortings")),
new TagParameter("ListNavigationVO",getObject("ListNavigationVO"))}, 48); %></div> 
</div><% printFooter(out); %>