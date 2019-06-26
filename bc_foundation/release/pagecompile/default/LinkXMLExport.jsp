<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%! protected Boolean printTemplateMarker() { return Boolean.FALSE; } %><%%><%@ page contentType="text/xml;charset=utf-8" %><%%><%@ page session="false"%><%setEncodingType("text/xml"); %><%@page import="com.intershop.beehive.core.capi.impex.binding.ConversionUtils, 
                 com.intershop.component.foundation.capi.link.ShortLinkMgr,
                 com.intershop.beehive.core.capi.naming.NamingMgr, 
                 com.intershop.component.foundation.capi.link.ShortLink,
                 com.intershop.component.foundation.internal.link.LinkLinkGroupAssignmentPO,
                 java.util.Iterator
                 " %><%!
	ShortLinkMgr mgr = (ShortLinkMgr)NamingMgr.getInstance().lookupManager(ShortLinkMgr.REGISTRY_NAME);
%><?xml version="1.0" encoding="UTF-8"?>
<enfinity xmlns="http://www.intershop.com/xml/ns/enfinity/6.3/bc_foundation/impex" 
           xmlns:dt="http://www.intershop.com/xml/ns/enfinity/6.5/core/impex-dt" 
           xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" 
           xsi:schemaLocation="http://www.intershop.com/xml/ns/enfinity/6.3/bc_foundation/impex bc_foundation.xsd"
><% context.setCustomTagTemplateName("customattributes","inc/CustomAttributes",false,new String[]{"attributes"},null); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"impex/Modules", null, "18");} %><% while (loop("Objects","sl",null)) { %><link <% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("sl:Enabled"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",20,e);}if (_boolean_result) { %>enabled="true"<% } else { %>enabled="false"<% } %> <% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("sl:Default"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",20,e);}if (_boolean_result) { %>default="true"<% } else { %><% } %> <% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("sl:StatusCode"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",20,e);}if (_boolean_result) { %>status-code="<% {String value = null;try{value=context.getFormattedValue(getObject("sl:StatusCode"),"0",null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {20}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"<% } %> >
	<short-url><% {String value = null;try{value=context.getFormattedValue(stringToXml(context.getFormattedValue(getObject("sl:ShortURL"),null)),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {21}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></short-url>
	<target-url><% {String value = null;try{value=context.getFormattedValue(stringToXml(context.getFormattedValue(getObject("sl:TargetURL"),null)),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {22}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></target-url>
	<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("sl:StartDate"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",23,e);}if (_boolean_result) { %><valid-from><% processOpenTag(response, pageContext, "datetime", new TagParameter[] {
new TagParameter("date",getObject("sl:StartDate"))}, 24); %></valid-from>
	<% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("sl:EndDate"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",25,e);}if (_boolean_result) { %><valid-to><% processOpenTag(response, pageContext, "datetime", new TagParameter[] {
new TagParameter("date",getObject("sl:EndDate"))}, 26); %></valid-to>
	<% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("sl:Description"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",27,e);}if (_boolean_result) { %><description><% {String value = null;try{value=context.getFormattedValue(stringToXml(context.getFormattedValue(getObject("sl:Description"),null)),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {28}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></description>
	<% } %><% 
   getPipelineDictionary().put("linkattributes", new com.intershop.beehive.core.capi.impex.AttributeValueIterator(((com.intershop.beehive.core.capi.domain.ExtensibleObject)getObject("sl")).createAttributeValuesIterator(), (com.intershop.beehive.core.capi.domain.ExtensibleObject) getObject("sl")));

   Iterator it = mgr.getLinkGroupsForShortLink((ShortLink)getObject("sl"));
   if(it.hasNext()) 
   {
    	out.println("<link-groups>");
    	while(it.hasNext())
    	{
    		out.print("		<link-group id=\"");out.print(((LinkLinkGroupAssignmentPO)it.next()).getLinkGroupPO().getID());out.println("\" />");
    	}
    	out.println("	</link-groups>"); 
   }
%><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("linkattributes") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",42,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "customattributes", new TagParameter[] {
new TagParameter("attributes",getObject("linkattributes"))}, 43); %>
<% } %></link><% } %>
</enfinity>
<% printFooter(out); %>