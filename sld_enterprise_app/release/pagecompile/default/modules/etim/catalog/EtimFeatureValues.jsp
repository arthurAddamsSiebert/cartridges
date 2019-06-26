<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<%@page import="com.intershop.component.mvc.capi.etim.EtimFeatureValueHelper"%>
<%@page import="com.intershop.beehive.core.capi.pipeline.PipelineDictionary"%>

<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><%
	PipelineDictionary dictionary = getPipelineDictionary();
	java.util.Iterator<String> inFeatureValues = dictionary.get("InFeatureValues");
	if(inFeatureValues != null && inFeatureValues.hasNext())
	{
		String theFeatureValuesWrapperName = dictionary.get("WrapperName");
		String theFeatureValuesIteratorName = dictionary.get("IteratorName");
	    if(!EtimFeatureValueHelper.isNullOrEmpty(theFeatureValuesWrapperName)
		    || !EtimFeatureValueHelper.isNullOrEmpty(theFeatureValuesIteratorName))
	    {
	        EtimFeatureValueHelper wrapper = new EtimFeatureValueHelper(inFeatureValues);
		    if(wrapper.isValid())
		    {
		        if(theFeatureValuesWrapperName != null)
		        {
					getPipelineDictionary().put(theFeatureValuesWrapperName, wrapper);
		        }
		        if(theFeatureValuesIteratorName != null)
		        {
			        getPipelineDictionary().put(theFeatureValuesIteratorName, wrapper.createFeatureValuesIterator());
		        }
		    }
	    }
	}
%><% printFooter(out); %>