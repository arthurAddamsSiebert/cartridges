<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><%
    String paramsName = (String)getObject("params");
    Object params = getObject(paramsName);
    if(params != null)
    {
        getPipelineDictionary().put("TmpParams", params);
    }
%><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("showcount")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",13,e);}if (_boolean_result) { %><% {Object temp_obj = ("true"); getPipelineDictionary().put("showcount", temp_obj);} %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("filter:ConfigurationAttribute:FilterOptions:DisplayType"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",16,e);}if (_boolean_result) { %><% {Object temp_obj = (getObject("filter:ConfigurationAttribute:FilterOptions:DisplayType")); getPipelineDictionary().put("displayType", temp_obj);} %><% } else { %><% {Object temp_obj = ("text"); getPipelineDictionary().put("displayType", temp_obj);} %><% } %><% {Object temp_obj = ("filter-list"); getPipelineDictionary().put("displayClass", temp_obj);} %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("filter:ConfigurationAttribute:FilterOptions:SelectionType"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",23,e);}if (_boolean_result) { %><% {Object temp_obj = (getObject("filter:ConfigurationAttribute:FilterOptions:SelectionType")); getPipelineDictionary().put("selectionType", temp_obj);} %><% } else { %><% {Object temp_obj = ("single"); getPipelineDictionary().put("selectionType", temp_obj);} %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) ((disableErrorMessages().isDefined(getObject("showselected"))))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",28,e);}if (_boolean_result) { %><% {Object temp_obj = ("true"); getPipelineDictionary().put("showselected", temp_obj);} %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("sortvalue"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",32,e);}if (_boolean_result) { %><% {Object temp_obj = (getObject("sortvalue")); getPipelineDictionary().put("tmp_sortvalue", temp_obj);} %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("filter")))).booleanValue() && ((Boolean) (hasLoopElements("filter:EntrySet") ? Boolean.TRUE : Boolean.FALSE)).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",37,e);}if (_boolean_result) { %><% while (loop("filter:EntrySet","appliedFiltersMap",null)) { %><% {Object temp_obj = (getObject("appliedFiltersMap:Value")); getPipelineDictionary().put("appliedFilters", temp_obj);} %><% while (loop("appliedFilters","entry",null)) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((context.getFormattedValue(getObject("showselected"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("entry:Value"),null).equals(context.getFormattedValue("SHOWLESS",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",44,e);}if (_boolean_result) { %><% {Object temp_obj = (getObject("query:RemovedValueCondition(entry:Name,entry:Value)")); getPipelineDictionary().put("tmp_remove_query", temp_obj);} %><span class="product-filter-applied" >
<span class="icon-selected"></span>
<span class="product-filter-desc"><% {String value = null;try{value=context.getFormattedValue(getObject("appliedFiltersMap:Key"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {51}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>: <span class="product-filter-value"><% {String value = null;try{value=context.getFormattedValue(getObject("entry:DisplayValue"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {51}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></span>
</span>
<a class="filter-clear"
href="<% processOpenTag(response, pageContext, "filterlink", new TagParameter[] {
new TagParameter("pipelinename",getObject("pipeline")),
new TagParameter("sortvalue",getObject("tmp_sortvalue")),
new TagParameter("pagesize",getObject("query:PageSize")),
new TagParameter("searchparameter",getObject("tmp_remove_query")),
new TagParameter("params","TmpParams")}, 54); %>"
>
<span class="glyphicon glyphicon-remove"></span>
</a>
</span>
&nbsp;&nbsp;
<% } %><% } %><% } %><% } %><% printFooter(out); %>