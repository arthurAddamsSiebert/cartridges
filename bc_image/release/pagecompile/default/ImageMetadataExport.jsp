<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<%@page import="com.intershop.beehive.core.capi.pipeline.PipelineDictionary"%>
<%@page import="com.intershop.component.image.internal.orm.ImageType"%>
<%@page import="com.intershop.beehive.core.capi.impex.util.LanguageImpexUtil"%>
<%@page import="java.util.Locale"%>
<%@page import="com.intershop.component.image.pipelet.GetImageViewByID"%>
<%@page import="com.intershop.beehive.core.capi.localization.LocaleInformation"%>
<%@page import="java.util.Collection"%>
<%@page import="com.intershop.beehive.core.capi.localization.LocaleMgr"%>
<%@page import="com.intershop.component.image.internal.orm.ImageView"%>
<%@page import="com.intershop.beehive.orm.internal.query.GetObjectsByAttributeQuery"%>
<% %><%! protected Boolean printTemplateMarker() { return Boolean.FALSE; } %><%%><%@ page contentType="text/xml;charset=utf-8" %><%%><%@ page session="false"%><%setEncodingType("text/xml"); %>
<% context.setCustomTagTemplateName("customattributes","inc/CustomAttributes",false,new String[]{"attributes"},null); %>
<?xml version="1.0" encoding="UTF-8"?>
<enfinity
	xsi:schemaLocation="http://www.intershop.com/xml/ns/enfinity/6.7/bc_image/impex bc_image.xsd
		http://www.intershop.com/xml/ns/enfinity/6.5/core/impex-dt dt.xsd"
	xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
	xmlns="http://www.intershop.com/xml/ns/enfinity/6.7/bc_image/impex"
	xmlns:xml="http://www.w3.org/XML/1998/namespace"
	xmlns:dt="http://www.intershop.com/xml/ns/enfinity/6.5/core/impex-dt"
	major="6" minor="1" family="enfinity" branch="enterprise" build="<% {String value = null;try{value=context.getFormattedValue(getObject("BuildNumber"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {22}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
>
<%
	PipelineDictionary dict = getPipelineDictionary(); 
	LocaleMgr localeMgr = (LocaleMgr) NamingMgr.getInstance().lookupManager(LocaleMgr.REGISTRY_NAME);
	Collection locales = localeMgr.getLocales();
	dict.put("locales", locales);
 %>
<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ImageViews"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",30,e);}if (_boolean_result) { %>
	<% while (loop("ImageViews","ImageView",null)) { %>
	    <image-view id="<%=context.getFormattedValue(stringToXml(context.getFormattedValue(getObject("ImageView:ID"),null)),null)%>"<% _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("ImageView:ID"),null).equals(context.getFormattedValue(getObject("PrimaryViewID"),null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",32,e);}if (_boolean_result) { %> primary-view="true"<% } else { %> primary-view="false"<% } %>>
	    	<% while (loop("locales","locale",null)) { %>
	    		<% {Object temp_obj = (stringToXml(context.getFormattedValue(getObject("ImageView:Name(locale)"),null))); getPipelineDictionary().put("ImageViewNameLocalized", temp_obj);} %>

	    		
	    		<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (getObject("ImageViewNameLocalized:Empty"))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",37,e);}if (_boolean_result) { %>
	    		<% {Object temp_obj = (getObject("locale")); getPipelineDictionary().put("localeVar", temp_obj);} %>
	    		<name xml:lang="<%
	    			LocaleInformation localeInformation = (LocaleInformation)dict.get("localeVar");
	    			out.print(LanguageImpexUtil.encodeLanguage(localeInformation.getLocaleID(), ""));
		    		 %>"><%=context.getFormattedValue(encodeString(context.getFormattedValue(getObject("ImageViewNameLocalized"),null)),null)%></name>
	    		<% } %>
	    	<% } %>
	    	<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("ImageView:AssignedImageTypeBOs"))))).booleanValue() && ((Boolean) ((((Boolean) (getObject("ImageView:AssignedImageTypeBOs:Empty"))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",45,e);}if (_boolean_result) { %>
	        	<image-type-assignments>
		        	<% while (loop("ImageView:AssignedImageTypeBOs","AssignedImageType",null)) { %>
		        		<image-type-assignment image-type="<%=context.getFormattedValue(stringToXml(context.getFormattedValue(getObject("AssignedImageType:ID"),null)),null)%>"/>
		        	<% } %>
	        	</image-type-assignments>
	        <% } %>
		</image-view>
	<% } %>
<% } %>
<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ImageTypes"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",55,e);}if (_boolean_result) { %>
	<% while (loop("ImageTypes","ImageType",null)) { %>
	    <image-type id="<%=context.getFormattedValue(stringToXml(context.getFormattedValue(getObject("ImageType:ID"),null)),null)%>"<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ImageType:ID"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",57,e);}if (_boolean_result) { %> source="<%=context.getFormattedValue(stringToXml(context.getFormattedValue(getObject("ImageType:SourceType"),null)),null)%>"<% } %>>
	        <% while (loop("locales","locale",null)) { %>
	        	<% {Object temp_obj = (stringToXml(context.getFormattedValue(getObject("ImageType:Name(locale)"),null))); getPipelineDictionary().put("ImageTypeNameLocalized", temp_obj);} %>

	    		
	    		<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (getObject("ImageTypeNameLocalized:Empty"))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",62,e);}if (_boolean_result) { %>
	    		<% {Object temp_obj = (getObject("locale")); getPipelineDictionary().put("localeVar", temp_obj);} %>
	    		<name xml:lang="<%
	    			LocaleInformation localeInformation = (LocaleInformation)dict.get("localeVar");
	    			out.print(LanguageImpexUtil.encodeLanguage(localeInformation.getLocaleID(), ""));
		    		 %>"><%=context.getFormattedValue(encodeString(context.getFormattedValue(getObject("ImageTypeNameLocalized"),null)),null)%></name>
	    		 <% } %>
	    	<% } %>
	        <prefix><%=context.getFormattedValue(stringToXml(context.getFormattedValue(getObject("ImageType:Prefix"),null)),null)%></prefix>
	        <% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ImageType:Width"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",71,e);}if (_boolean_result) { %>
	        	<width><% {String value = null;try{value=context.getFormattedValue(getObject("ImageType:Width"),"0",null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {72}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></width>
	        <% } %>
	        <% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ImageType:Height"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",74,e);}if (_boolean_result) { %>
	        	<height><% {String value = null;try{value=context.getFormattedValue(getObject("ImageType:Height"),"0",null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {75}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></height>
	        <% } %>
	        <% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ImageType:FallbackImage"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",77,e);}if (_boolean_result) { %>
	        	<fallback-image><%=context.getFormattedValue(stringToXml(context.getFormattedValue(getObject("ImageType:FallbackImage"),null)),null)%></fallback-image>
	        <% } %>
	        <% {Object temp_obj = (getObject("ImageType:Extension(\"PersistentObjectBOExtension\"):PersistentObject:AttributeValues")); getPipelineDictionary().put("AttributeValues", temp_obj);} %>
	        <% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("AttributeValues") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",81,e);}if (_boolean_result) { %>
	        	<% processOpenTag(response, pageContext, "customattributes", new TagParameter[] {
new TagParameter("attributes",getObject("AttributeValues"))}, 82); %>
	        <% } %>
		</image-type>
	<% } %>
<% } %>
<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ImageSets"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",87,e);}if (_boolean_result) { %>
	<% while (loop("ImageSets","ImageSet",null)) { %>
	    <image-set id="<%=context.getFormattedValue(stringToXml(context.getFormattedValue(getObject("ImageSet:ID"),null)),null)%>">
	    	<% while (loop("locales","locale",null)) { %>
	        	<% {Object temp_obj = (stringToXml(context.getFormattedValue(getObject("ImageSet:Name(locale)"),null))); getPipelineDictionary().put("ImageSetNameLocalized", temp_obj);} %>

	    		
	    		<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (getObject("ImageSetNameLocalized:Empty"))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",94,e);}if (_boolean_result) { %>
	    		<% {Object temp_obj = (getObject("locale")); getPipelineDictionary().put("localeVar", temp_obj);} %>
	    		<name xml:lang="<%
	    			LocaleInformation localeInformation = (LocaleInformation)dict.get("localeVar");
	    			out.print(LanguageImpexUtil.encodeLanguage(localeInformation.getLocaleID(), ""));
		    		 %>"><%=context.getFormattedValue(encodeString(context.getFormattedValue(getObject("ImageSetNameLocalized"),null)),null)%></name>
	    		 <% } %>
	    	<% } %>
	        <% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("ImageSet:SortedImageTypeViewPairs") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",102,e);}if (_boolean_result) { %>
	        	<type-view-assignments>
		        	<% while (loop("ImageSet:SortedImageTypeViewPairs","ImageTypeViewPair",null)) { %>
		        		<type-view-assignment image-view="<%=context.getFormattedValue(getObject("ImageTypeViewPair:ImageView:ID"),null)%>" image-type="<%=context.getFormattedValue(getObject("ImageTypeViewPair:ImageType:ID"),null)%>"/>
		        	<% } %>
	        	</type-view-assignments>
	        <% } %>
		</image-set>
	<% } %>
<% } %>
</enfinity>

<% printFooter(out); %>