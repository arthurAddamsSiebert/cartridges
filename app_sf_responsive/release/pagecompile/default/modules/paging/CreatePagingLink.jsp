<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%! protected Boolean printTemplateMarker() { return Boolean.FALSE; } %><%%><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><%
	URLParameterSet parameterSet = new URLParameterSet();
	
	String pageNumber = context.getFormattedValue(getObject("pagenumber"),null);
	if (pageNumber != null) {
	    parameterSet.addURLParameter("PageNumber", pageNumber);
	}
	
	String pageSize = context.getFormattedValue(getObject("pagesize"),null);
	if (pageSize != null) {
		parameterSet.addURLParameter("PageSize", pageSize);
	}
	
	String sortingAttribute = context.getFormattedValue(getObject("sortvalue"),null);
	if ((sortingAttribute != null) && (!sortingAttribute.isEmpty())) {
	    parameterSet.addURLParameter("SortingAttribute", sortingAttribute);
	}
	
	String viewType = context.getFormattedValue(getObject("viewtype"),null);
	if (viewType != null) {
		parameterSet.addURLParameter("ViewType", viewType);
	}
	
	// add params
	%><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("params"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",28,e);}if (_boolean_result) { %><% while (loop("params:EntrySet","map",null)) { %><%
        String key = (String)getObject("map:Key");
		String value = context.getFormattedValue(getObject("map:Value"), null);
		if (key == null || value == null) {
			// skip
		} else {
			parameterSet.addURLParameter(key, value);
		}
	%><% } %><% } %><%
	String url = this.url(true, new URLPipelineAction(context.getFormattedValue(getObject("pipelinename"),null)), parameterSet);
	// place created link in dictionary
	getPipelineDictionary().put("result", url);
%><% printFooter(out); %>