<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% out.print(context.prepareWAPlacement("JSWebLibraries")); %>jquery.js<% out.print("</waplacement>"); %><% out.print(context.prepareWAPlacement("JSWebLibraries")); %>jquery-migrate-1.2.1.js<% out.print("</waplacement>"); %><% out.print(context.prepareWAPlacement("JSWebLibraries")); %>jquery/grid/jquery.grid.js<% out.print("</waplacement>"); %><% out.print(context.prepareWAPlacement("JSWebLibraries")); %>jquery/popupmenu/jquery.popupmenu.js<% out.print("</waplacement>"); %><% out.print(context.prepareWAPlacement("JSWebLibraries")); %>jquery/grid/jquery.grid.columns.text.js<% out.print("</waplacement>"); %><% out.print(context.prepareWAPlacement("JSWebLibraries")); %>jquery/grid/jquery.grid.columns.integer.js<% out.print("</waplacement>"); %><% out.print(context.prepareWAPlacement("JSWebLibraries")); %>jquery/grid/jquery.grid.columns.float.js<% out.print("</waplacement>"); %><% out.print(context.prepareWAPlacement("JSWebLibraries")); %>jquery/grid/jquery.grid.columns.percentage.js<% out.print("</waplacement>"); %><% out.print(context.prepareWAPlacement("JSWebLibraries")); %>jquery/grid/jquery.grid.columns.image.js<% out.print("</waplacement>"); %><% out.print(context.prepareWAPlacement("JSWebLibraries")); %>jquery/grid/jquery.grid.columns.link.js<% out.print("</waplacement>"); %><% out.print(context.prepareWAPlacement("JSWebLibraries")); %>jquery/grid/jquery.grid.columns.money.js<% out.print("</waplacement>"); %><% out.print(context.prepareWAPlacement("JSWebLibraries")); %>jquery/grid/jquery.grid.columns.status.js<% out.print("</waplacement>"); %><% out.print(context.prepareWAPlacement("JSWebLibraries")); %>jquery/grid/jquery.grid.columns.progress.js<% out.print("</waplacement>"); %><% out.print(context.prepareWAPlacement("JSWebLibraries")); %>jquery/grid/jquery.grid.columns.select.js<% out.print("</waplacement>"); %><% out.print(context.prepareWAPlacement("JSWebLibraries")); %>jquery/grid/jquery.grid.columns.action.js<% out.print("</waplacement>"); %><% out.print(context.prepareWAPlacement("JSWebLibraries")); %>jquery/grid/jquery.grid.columns.sorting.js<% out.print("</waplacement>"); %><% out.print(context.prepareWAPlacement("CSSWebLibraries")); %>jquery/grid/jquery.grid.css<% out.print("</waplacement>"); %><% out.print(context.prepareWAPlacement("CSSWebLibraries")); %>jquery/popupmenu/jquery.popupmenu.css<% out.print("</waplacement>"); %><div id="<% {String value = null;try{value=context.getFormattedValue(getObject("id"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {26}",e);}if (value==null) value="";out.write(value);} %>" class="isgrid-container"></div><%@page import = "com.intershop.beehive.core.capi.paging.PageableIterator"%><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("pagenumberprefix")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",30,e);}if (_boolean_result) { %><% getPipelineDictionary().put("pagenumberprefix", "PageNumber_");%><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("pagesizeprefix")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",33,e);}if (_boolean_result) { %><% getPipelineDictionary().put("pagesizeprefix", "PageSize_");%><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("pageable"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",36,e);}if (_boolean_result) { %><input type="hidden" name="PageNumberPrefix" value="<% {String value = null;try{value=context.getFormattedValue(getObject("pagenumberprefix"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {37}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="PageSizePrefix" value="<% {String value = null;try{value=context.getFormattedValue(getObject("pagesizeprefix"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {38}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="PageableID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("pageable:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {39}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="PageableName" value="<% {String value = null;try{value=context.getFormattedValue(getObject("pageablename"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {40}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><% _boolean_result=false;try {_boolean_result=((Boolean)(((!((Boolean) (disableErrorMessages().isDefined(getObject("showfooter")))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("showfooter"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",41,e);}if (_boolean_result) { %><input type="hidden" name="CurrentPageNumber" value="<% {String value = null;try{value=context.getFormattedValue(getObject("pageable:Page"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {42}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="CurrentPageSize" value="<% {String value = null;try{value=context.getFormattedValue(getObject("pageable:PageSize"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {43}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><% } %><% } %><% {Object temp_obj = (context.getFormattedValue("#",null) + context.getFormattedValue(getObject("id"),null)); getPipelineDictionary().put("selector", temp_obj);} %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("configuration")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("currentapplication")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",51,e);}if (_boolean_result) { %><% {Object temp_obj = (context.getFormattedValue("intershop.template.isgrid.",null) + context.getFormattedValue(getObject("configuration"),null)); getPipelineDictionary().put("config", temp_obj);} %><% {Object temp_obj = ("intershop.template.isgrid.default"); getPipelineDictionary().put("configDefault", temp_obj);} %><% {Object temp_obj = (context.getFormattedValue(getObject("config"),null) + context.getFormattedValue(".rowsperpage",null)); getPipelineDictionary().put("configRowsPerPage", temp_obj);} %><% {Object temp_obj = (replace(context.getFormattedValue(getObject("currentapplication:Configuration:String(configRowsPerPage)"),null),(String)(" "),(String)(", "))); getPipelineDictionary().put("rowsperpage", temp_obj);} %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("rowsperpage"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",59,e);}if (_boolean_result) { %><% {Object temp_obj = (context.getFormattedValue(getObject("configDefault"),null) + context.getFormattedValue(".rowsperpage",null)); getPipelineDictionary().put("configRowsPerPage", temp_obj);} %><% {Object temp_obj = (replace(context.getFormattedValue(getObject("currentapplication:Configuration:String(configRowsPerPage)"),null),(String)(" "),(String)(", "))); getPipelineDictionary().put("rowsperpage", temp_obj);} %><% } %><% {Object temp_obj = (context.getFormattedValue(getObject("config"),null) + context.getFormattedValue(".showalllimit",null)); getPipelineDictionary().put("configShowAllLimit", temp_obj);} %><% {Object temp_obj = (getObject("currentapplication:Configuration:Integer(configShowAllLimit)")); getPipelineDictionary().put("showalllimit", temp_obj);} %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("showalllimit"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",68,e);}if (_boolean_result) { %><% {Object temp_obj = (context.getFormattedValue(getObject("configDefault"),null) + context.getFormattedValue(".showalllimit",null)); getPipelineDictionary().put("configShowAllLimit", temp_obj);} %><% {Object temp_obj = (getObject("currentapplication:Configuration:Integer(configShowAllLimit)")); getPipelineDictionary().put("showalllimit", temp_obj);} %><% } %><% {Object temp_obj = (context.getFormattedValue(getObject("config"),null) + context.getFormattedValue(".firstlastlimit",null)); getPipelineDictionary().put("configFirstLastLimit", temp_obj);} %><% {Object temp_obj = (getObject("currentapplication:Configuration:Integer(configFirstLastLimit)")); getPipelineDictionary().put("firstlastlimit", temp_obj);} %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("firstlastlimit"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",77,e);}if (_boolean_result) { %><% {Object temp_obj = (context.getFormattedValue(getObject("configDefault"),null) + context.getFormattedValue(".firstlastlimit",null)); getPipelineDictionary().put("configFirstLastLimit", temp_obj);} %><% {Object temp_obj = (getObject("currentapplication:Configuration:Integer(configFirstLastLimit)")); getPipelineDictionary().put("firstlastlimit", temp_obj);} %><% } %><% {Object temp_obj = (context.getFormattedValue(getObject("config"),null) + context.getFormattedValue(".showfooter",null)); getPipelineDictionary().put("configShowFooter", temp_obj);} %><% {Object temp_obj = (getObject("currentapplication:Configuration:String(configShowFooter)")); getPipelineDictionary().put("showfooter", temp_obj);} %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("showfooter"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",86,e);}if (_boolean_result) { %><% {Object temp_obj = (context.getFormattedValue(getObject("configDefault"),null) + context.getFormattedValue(".showfooter",null)); getPipelineDictionary().put("configShowFooter", temp_obj);} %><% {Object temp_obj = (getObject("currentapplication:Configuration:String(configShowFooter)")); getPipelineDictionary().put("showfooter", temp_obj);} %><% } %><% } %><script><% {Object temp_obj = (context.getFormattedValue("window.getData",null) + context.getFormattedValue(getObject("id"),null)); getPipelineDictionary().put("getDataFn", temp_obj);} %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("datatemplate"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",96,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("getDataFn"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {97}",e);}if (value==null) value="";out.write(value);} %> = <% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,context.getFormattedValue(getObject("datatemplate"),null), null, "97");} %>;
<% } else { %><% {String value = null;try{value=context.getFormattedValue(getObject("getDataFn"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {99}",e);}if (value==null) value="";out.write(value);} %> = function() {};
<% } %><% {Object temp_obj = (context.getFormattedValue("window.columns",null) + context.getFormattedValue(getObject("id"),null)); getPipelineDictionary().put("columnsObj", temp_obj);} %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("columnstemplate"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",104,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("columnsObj"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {105}",e);}if (value==null) value="";out.write(value);} %> = <% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,context.getFormattedValue(getObject("columnstemplate"),null), null, "105");} %>;
<% } else { %><% {String value = null;try{value=context.getFormattedValue(getObject("columnsObj"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {107}",e);}if (value==null) value="";out.write(value);} %> = [];
<% } %><% {Object temp_obj = (context.getFormattedValue("window.rowCss",null) + context.getFormattedValue(getObject("id"),null)); getPipelineDictionary().put("rowCssFn", temp_obj);} %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("rowcsstemplate"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",112,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("rowCssFn"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {113}",e);}if (value==null) value="";out.write(value);} %> = <% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,context.getFormattedValue(getObject("rowcsstemplate"),null), null, "113");} %>;
<% } else { %><% {String value = null;try{value=context.getFormattedValue(getObject("rowCssFn"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {115}",e);}if (value==null) value="";out.write(value);} %> = function() {};
<% } %>
var el = $("<% {String value = null;try{value=context.getFormattedValue(getObject("selector"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {118}",e);}if (value==null) value="";out.write(value);} %>");
el.on('afterInit', function makeSticky() {
<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("sticky")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("sticky"),null).equals(context.getFormattedValue("false",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",120,e);}if (_boolean_result) { %>
el.children('table').addClass('stickyHeader');
<% processOpenTag(response, pageContext, "sticky", new TagParameter[] {
new TagParameter("selector",getObject("selector")),
new TagParameter("onready","false")}, 122); %><% } %>
});
</script><% out.print(context.prepareWAPlacement("JSWebControls")); %>
;(function() {
var el = $("<% {String value = null;try{value=context.getFormattedValue(getObject("selector"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {130}",e);}if (value==null) value="";out.write(value);} %>");
/*
el.on('afterInit', function removeSorting(ev, data) {
el.off('.grid', 'th.sortable > a');
});
*/
el.grid({
<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("loadoninit"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",138,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("loadoninit"),null).equals(context.getFormattedValue("false",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",139,e);}if (_boolean_result) { %>
loadOnInit: false,
<% } else { %>
loadOnInit: true,
<% } %><% } %>
/** Make sure the page size displayed matches the pagesize delivered from server */
rowsPerPage: function rowsPerPage() {
var pageSizes = [<% {String value = null;try{value=context.getFormattedValue(getObject("rowsperpage"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {149}",e);}if (value==null) value="";out.write(value);} %>],
filteredPageSizes = [],
currentPageSize;
<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("pageable"))))).booleanValue() && ((Boolean) ((disableErrorMessages().isDefined(getObject("pageable:PageSize"))))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",152,e);}if (_boolean_result) { %>
currentPageSize = <% {String value = null;try{value=context.getFormattedValue(getObject("pageable:PageSize"),"0",null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {153}",e);}if (value==null) value="";out.write(value);} %>;
<% } else { %>
if(pageSizes.length > 0) {
currentPageSize = pageSizes[0];
} else {
// get pagesize from number of returned items
this.options.getData({
callback: function callback(data) {
currentPageSize = data.items.length;
}
});
}
<% } %>
// remove currentPageSize
for (var i = 0, l = pageSizes.length; i < l; i++) {
if(pageSizes[i] !== currentPageSize) {
filteredPageSizes.push(pageSizes[i]);
}
}
pageSizes = filteredPageSizes;
// add currentPageSize at first position
pageSizes.splice(0, 0, currentPageSize);
return pageSizes;
},
<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("showalllimit"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",181,e);}if (_boolean_result) { %>
showAllLimit: <% {String value = null;try{value=context.getFormattedValue(getObject("showalllimit"),"0",null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {182}",e);}if (value==null) value="";out.write(value);} %>,
<% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("firstlastlimit"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",186,e);}if (_boolean_result) { %>
paginationLimit: <% {String value = null;try{value=context.getFormattedValue(getObject("firstlastlimit"),"0",null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {187}",e);}if (value==null) value="";out.write(value);} %>,
<% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("showfooter"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",191,e);}if (_boolean_result) { %>
showFooter: <% {String value = null;try{value=context.getFormattedValue(getObject("showfooter"),"0",null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {192}",e);}if (value==null) value="";out.write(value);} %>,
<% } %>
columns: <% {String value = null;try{value=context.getFormattedValue(getObject("columnsObj"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {196}",e);}if (value==null) value="";out.write(value);} %>,
beforeDataRequest: (function beforeDataRequestWrapper() {
var first = true;
return function beforeDataRequest(request) {
var doSorting = false;
var $form = this.element.closest('form'),
$sortBy = $form.children('input[name="SortBy"]'),
$sortDirection = $form.children('input[name="SortDirection"]');
// find the grid, containing this grid
if ($form.length === 0) {
throw 'Couldn\'t find the form containing this grid';
}
// SORTING
if (!first) {
// create hidden fields if they don't exist
if ($sortBy.length === 0) {
$sortBy = $($.parseHTML('<input type="hidden" name="SortBy" />')).prependTo($form);
}
if ($sortDirection.length === 0) {
$sortDirection = $($.parseHTML('<input type="hidden" name="SortDirection" />')).prependTo($form);
}
var sortBy = this.pagination.orderColumnId,
sortDirection = this.pagination.order + "ending";
if ((request.orderColumnId && request.orderColumnId !== this.pagination.orderColumnId) || (request.order && request.order !== this.pagination.order)) {
sortBy = request.orderColumnId;
sortDirection = request.order + "ending";
doSorting = true;
}
$sortBy.val(sortBy);
$sortDirection.val(sortDirection);
}
// PAGING
// delete old hidden fields because names change
$form.children('input[name^="<% {String value = null;try{value=context.getFormattedValue(getObject("pagenumberprefix"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {234}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"]').remove();
$form.children('input[name^="<% {String value = null;try{value=context.getFormattedValue(getObject("pagesizeprefix"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {235}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"]').remove();
<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("showfooter")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("showfooter"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",237,e);}if (_boolean_result) { %>
// create hidden fields if they don't exist
var page = Math.ceil((request.offset + 1) / request.pageSize),
doPaging = false;
if (!first) {
if (page !== this.pagination.currentPage() && page > -1) {
doPaging = true;
}
if (request.pageSize !== this.pagination.pageSize) {
doPaging = true;
}
if (doPaging) {
$($.parseHTML('<input type="hidden" name="<% {String value = null;try{value=context.getFormattedValue(getObject("pagenumberprefix"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {250}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>' + (page - 1) + '">')).val(page).prependTo($form);
$($.parseHTML('<input type="hidden" name="<% {String value = null;try{value=context.getFormattedValue(getObject("pagesizeprefix"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {251}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>' + request.pageSize + '">')).val(request.pageSize).prependTo($form);
}
} else {
// get current page from pageable iterator
page = Math.ceil((<% {String value = null;try{value=context.getFormattedValue((new Double( ((Number) getObject("pageable:PageStart")).doubleValue() -((Number) new Double(1)).doubleValue())),"0",null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {255}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> + 1) / request.pageSize);
}
// set false after the first execution
first = false;
// change url
if (doPaging) {
// paging or pagesize
$form.submit();
return false;
}
<% } %>
if (doSorting) {
// sorting or sortorder
$form.prepend('<input type="hidden" name="sort" value="sort">');
$form.submit();
return false;
}
return true;
};
}()),
getData: <% {String value = null;try{value=context.getFormattedValue(getObject("getDataFn"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {280}",e);}if (value==null) value="";out.write(value);} %>,
rowCss: <% {String value = null;try{value=context.getFormattedValue(getObject("rowCssFn"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {283}",e);}if (value==null) value="";out.write(value);} %>,
text: {
status: '<% {String value = null;try{value=context.getFormattedValue(localizeText(context.getFormattedValue("webcontrols.Grid.Status",null)),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {287}",e);}if (value==null) value="";value = encodeString(value,"javascript");out.write(value);} %>',
items: '<% {String value = null;try{value=context.getFormattedValue(localizeText(context.getFormattedValue("webcontrols.Grid.Items",null)),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {288}",e);}if (value==null) value="";value = encodeString(value,"javascript");out.write(value);} %>',
of: '<% {String value = null;try{value=context.getFormattedValue(localizeText(context.getFormattedValue("webcontrols.Grid.Of",null)),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {289}",e);}if (value==null) value="";value = encodeString(value,"javascript");out.write(value);} %>',
showAll: '<% {String value = null;try{value=context.getFormattedValue(localizeText(context.getFormattedValue("webcontrols.Grid.ShowAll",null)),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {290}",e);}if (value==null) value="";value = encodeString(value,"javascript");out.write(value);} %>',
titleSingleSelection: '',
tooltipSelectAll: '<% {String value = null;try{value=context.getFormattedValue(localizeText(context.getFormattedValue("webcontrols.Grid.TooltipSelectAll",null)),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {292}",e);}if (value==null) value="";value = encodeString(value,"javascript");out.write(value);} %>',
selectAllMenuAll: '<% {String value = null;try{value=context.getFormattedValue(localizeText(context.getFormattedValue("webcontrols.Grid.SelectAllMenuAll",null)),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {293}",e);}if (value==null) value="";value = encodeString(value,"javascript");out.write(value);} %>',
selectAllMenuNone: '<% {String value = null;try{value=context.getFormattedValue(localizeText(context.getFormattedValue("webcontrols.Grid.SelectAllMenuNone",null)),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {294}",e);}if (value==null) value="";value = encodeString(value,"javascript");out.write(value);} %>'
},
_placeholder: undefined
});
})();
<% out.print("</waplacement>"); %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("scripttemplate"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",304,e);}if (_boolean_result) { %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,context.getFormattedValue(getObject("scripttemplate"),null), null, "305");} %><% } %><% printFooter(out); %>