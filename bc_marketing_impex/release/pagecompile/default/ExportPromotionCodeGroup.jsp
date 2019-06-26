<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%! protected Boolean printTemplateMarker() { return Boolean.FALSE; } %><%%><%@ page contentType="text/xml;charset=utf-8" %><%%><%@ page session="false"%><%setEncodingType("text/xml"); %>
<%@page import="com.intershop.beehive.core.capi.paging.PageableIterator"%>
<%@page import="com.intershop.component.marketingimpex.internal.promotion.codegroup.PromotionCodeGroupExportService"%>
<%@page import="com.intershop.component.marketing.capi.code.PromotionCodeGroup"%>
<%@page import="java.util.HashSet"%>
<%@page import="java.util.Collections"%>
<%@page import="java.util.Iterator"%>

<% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Objects") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",9,e);}if (_boolean_result) { %>
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<enfinity 
	xsi:schemaLocation="http://www.intershop.com/xml/ns/enfinity/6.6/bc_marketing/impex bc_marketing.xsd
		http://www.intershop.com/xml/ns/enfinity/6.5/core/impex-dt dt.xsd"
	xmlns="http://www.intershop.com/xml/ns/enfinity/6.6/bc_marketing/impex"	
	xmlns:ns2="http://www.intershop.com/xml/ns/enfinity/6.5/core/impex-dt"
	xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
	xmlns:xml="http://www.w3.org/XML/1998/namespace"
	xmlns:dt="http://www.intershop.com/xml/ns/enfinity/6.5/core/impex-dt"
	major="6" minor="6" family="enfinity" branch="enterprise" build="<% {String value = null;try{value=context.getFormattedValue(getObject("BuildNumber"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {19}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>">
	
	
	<%
		// retrieve all objects iterator
		Iterator<PromotionCodeGroup> promotionCodeGroups = ((PageableIterator<PromotionCodeGroup>) getObject("Objects")).toSequence();
		
		// create instance of export service
		PromotionCodeGroupExportService exportService = new PromotionCodeGroupExportService(out);
		
		PromotionCodeGroup pcg;
		
		// write XML into out stream
		while (promotionCodeGroups.hasNext()) 
		{
		    pcg = promotionCodeGroups.next();
			exportService.writeXML(pcg);
			out.write("\n");
		}
	%>
</enfinity>	
<% } %><% printFooter(out); %>