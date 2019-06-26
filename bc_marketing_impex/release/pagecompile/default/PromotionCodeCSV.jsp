<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><%@page import="com.intershop.beehive.core.internal.template.TemplateConstants,
com.intershop.beehive.core.capi.pipeline.PipelineDictionary,
com.intershop.beehive.core.capi.paging.PageableIterator,
com.intershop.component.marketing.capi.code.PromotionCode"%><% %><%! protected Boolean printTemplateMarker() { return Boolean.FALSE; } %><%%><%@ page contentType="text/xml;charset=utf-8" %><%%><%@ page session="false"%><%setEncodingType("text/xml"); %>
promotion-code
<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Objects"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",6,e);}if (_boolean_result) { %>
	<% while (loop("Objects","PromotionCodeGroup",null)) { %>
		<% {try{executePipeline("ViewPromotionCodeList-CreatePageablePromotionCodes",((java.util.Map)(((new ParameterMap().addParameter(new ParameterEntry("PromotionCodeGroup",getObject("PromotionCodeGroup"))))))),"Result");}catch(Exception e){Logger.error(this,"ISPIPELINE failed. Line: 8.",e);}} %>
	
		<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("Result:PromotionCodes")))).booleanValue() && ((Boolean) ((( ((Number) getObject("Result:PromotionCodes:ElementCount")).doubleValue() >((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",10,e);}if (_boolean_result) { %>

<%
	PipelineDictionary dict = getPipelineDictionary();
	if (dict.get("Result:PromotionCodes") != null)
	{
		PageableIterator<PromotionCode> promotionCodes = (PageableIterator<PromotionCode>)dict.get("Result:PromotionCodes");
		boolean lastPage = false;
		do {
%>
			<% while (loop("Result:PromotionCodes","PromotionCode",null)) { %>
				<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("RedemptionStatus"),null).equals(context.getFormattedValue("1",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",21,e);}if (_boolean_result) { %>
					<% {String value = null;try{value=context.getFormattedValue(getObject("PromotionCode:Code"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {22}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>
				<% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("RedemptionStatus"),null).equals(context.getFormattedValue("2",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",23,e);}if (_boolean_result) { %>
					<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PromotionCode:Status"),null).equals(context.getFormattedValue("1",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",24,e);}if (_boolean_result) { %>
						<% {String value = null;try{value=context.getFormattedValue(getObject("PromotionCode:Code"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {25}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>
					<% } %>
				<% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("RedemptionStatus"),null).equals(context.getFormattedValue("4",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",27,e);}if (_boolean_result) { %>
					<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PromotionCode:Status"),null).equals(context.getFormattedValue("2",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",28,e);}if (_boolean_result) { %>
						<% {String value = null;try{value=context.getFormattedValue(getObject("PromotionCode:Code"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {29}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>
					<% } %>
				<% } else { %>
					<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PromotionCode:Status"),null).equals(context.getFormattedValue("0",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",32,e);}if (_boolean_result) { %>
						<% {String value = null;try{value=context.getFormattedValue(getObject("PromotionCode:Code"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {33}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>
					<% } %>
				<% }}} %>
			<% } %>

<%
			if (promotionCodes.isLastPage())
			{
				lastPage = true;
			}	
			else 
			{
				promotionCodes.setPage(promotionCodes.getNextPage());
			}
			dict.put("Result:PromotionCodes", promotionCodes);
		} while (!lastPage);
	}	
%>		
		<% } %>
	<% } %>
<% } %><% printFooter(out); %>