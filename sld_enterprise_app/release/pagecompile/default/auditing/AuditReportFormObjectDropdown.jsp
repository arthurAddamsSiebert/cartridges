<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><%@page import="java.text.Collator"%><%@page import="java.util.Collection"%><%@page import="java.util.TreeMap"%><%
	TreeMap<String, String> sortedTypes = new TreeMap<String,String>(Collator.getInstance(getRequest().getLocale().getJavaLocale()));
	Collection<String> typeIDs = (Collection<String>)getObject("params:AuditReportObjectTypes");
	for(String t: typeIDs)
	{
	    String key = "auditing.report.objecttype." + t + ".displayname";
	    String v = localizeText(key);
	    if  (v == null)
	    {
	        Logger.warn(this, "Localization key not found for key:'{}', locale:'{}'.", key, getRequest().getLocale().getLocaleID());	       
	        sortedTypes.put(t, t);
	    }
	    else
	    {
	        sortedTypes.put(v, t);
	    }
	}
	getPipelineDictionary().put("objectTypes", sortedTypes);
%><select class="select" multiple="multiple" id="auditreport-multiselect-objects" name="<% {String value = null;try{value=context.getFormattedValue(getObject("params:AuditReportForm:ObjectType:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {24}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% while (loop("objectTypes:KeySet","objectType",null)) { %><option value="<% {String value = null;try{value=context.getFormattedValue(getObject("objectTypes:get(objectType)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {26}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" 
<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("params:AuditReportForm:ObjectType:Value:Contains(objectTypes:get(objectType))"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",27,e);}if (_boolean_result) { %>
selected="selected"
<% } %>
><% {String value = null;try{value=context.getFormattedValue(getObject("objectType"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {30}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></option><% } %><option value="others" <% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("params:AuditReportForm:ObjectType:Value:Contains(\"others\")"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",32,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("AuditReportFormObjectDropdown.Other.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
</select><% printFooter(out); %>