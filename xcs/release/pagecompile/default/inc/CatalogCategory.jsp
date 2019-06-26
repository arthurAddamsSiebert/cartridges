<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>



<% %><%! protected Boolean printTemplateMarker() { return Boolean.FALSE; } %><%%><%@ page contentType="text/xml;charset=utf-8" %><%%><%@ page session="false"%><%setEncodingType("text/xml"); %>

<% context.setCustomTagTemplateName("customattributes","inc/CustomAttributes",false,new String[]{"attributes"},null); %>

<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("catalogcategory"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",11,e);}if (_boolean_result) { %>

<%
    if (getObject("ExportRefIDs") == null)
    {
        getPipelineDictionary().put("ExportRefIDs", Boolean.TRUE);
    }
    else if (!(getObject("ExportRefIDs") instanceof Boolean))
    {
        getPipelineDictionary().put("ExportRefIDs", new Boolean((String) getObject("ExportRefIDs")));      
    }

    if (getObject("ExportDomainRefs") == null)
    {
        getPipelineDictionary().put("ExportDomainRefs", Boolean.TRUE);
    }
    else if (!(getObject("ExportDomainRefs") instanceof Boolean))
    {
        getPipelineDictionary().put("ExportDomainRefs", new Boolean((String) getObject("ExportDomainRefs")));      
    }
%>

    <% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (getObject("catalogcategory:isHotDealsCategory"))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",33,e);}if (_boolean_result) { %>
        <category<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ExportRefIDs"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",34,e);}if (_boolean_result) { %> refid="<% {String value = null;try{value=context.getFormattedValue(getObject("catalogcategory:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {34}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"<% } %> name="<% {String value = null;try{value=context.getFormattedValue(getObject("catalogcategory:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {34}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>">
        <name><% {String value = null;try{value=context.getFormattedValue(getObject("catalogcategory:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {35}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></name>
    <root><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("catalogcategory:isRootCategory"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",36,e);}if (_boolean_result) { %>1<% } else { %>0<% } %></root>
        <% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("catalogcategory:ProductQueryString"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",37,e);}if (_boolean_result) { %>
            <product-assignment-query><% {String value = null;try{value=context.getFormattedValue(getObject("catalogcategory:ProductQueryString"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {38}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></product-assignment-query>
        <% } %>
        <% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("catalogcategory:Template"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",40,e);}if (_boolean_result) { %>
            <template><% {String value = null;try{value=context.getFormattedValue(getObject("catalogcategory:Template"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {41}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></template>
        <% } %>
        <% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("catalogcategory:HotDealsCategory:Template"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",43,e);}if (_boolean_result) { %>
            <hotdeals-template><% {String value = null;try{value=context.getFormattedValue(getObject("catalogcategory:HotDealsCategory:Template"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {44}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></hotdeals-template>
        <% } %>
        <online><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("catalogcategory:isOnline"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",46,e);}if (_boolean_result) { %>1<% } else { %>0<% } %></online>
        <% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) getObject("catalogcategory:PositionNull")).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",47,e);}if (_boolean_result) { %>
            <position><%= stringToXml(getObject("catalogcategory:Position").toString()) %></position>
        <% } %>
        <category-links>
        <% while (loop("catalogcategory:OutgoingCategoryLinks","ccl",null)) { %>
        <category-link name="<% {String value = null;try{value=context.getFormattedValue(getObject("ccl:TargetCategory:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {52}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" <% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ExportDomainRefs"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",52,e);}if (_boolean_result) { %>domain="<% {String value = null;try{value=context.getFormattedValue(getObject("ccl:TargetCategory:Domain:DomainName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {52}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"<% } %>>
        	<category-link-type name="<% {String value = null;try{value=context.getFormattedValue(getObject("ccl:TypeCode"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {53}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"></category-link-type>
	        <% while (loop("ccl:AttributeValues","av",null)) { %>
	            <% _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("av:Name"),null).equals(context.getFormattedValue("displayName",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",55,e);}if (_boolean_result) { %>
	                <display-name <% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("av:isLocalized"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",56,e);}if (_boolean_result) { %>xml:lang="<%=context.getFormattedValue(encodeString(context.getFormattedValue(getObject("av:XMLLocaleID"),null)),null)%>"<% } %>><% {String value = null;try{value=context.getFormattedValue(getObject("av:StringValue"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {56}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></display-name>
	            <% } %>
	            <% _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("av:Name"),null).equals(context.getFormattedValue("description",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",58,e);}if (_boolean_result) { %>
	                <description <% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("av:isLocalized"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",59,e);}if (_boolean_result) { %>xml:lang="<%=context.getFormattedValue(encodeString(context.getFormattedValue(getObject("av:XMLLocaleID"),null)),null)%>"<% } %>><% {String value = null;try{value=context.getFormattedValue(getObject("av:StringValue"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {59}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></description>
	            <% } %>
	        <% } %>
	        <% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) getObject("ccl:PositionNull")).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",62,e);}if (_boolean_result) { %>
	            <position><%= stringToXml(getObject("ccl:Position").toString()) %></position>
	        <% } %>
	        <%
	            com.intershop.beehive.xcs.capi.catalog.CatalogCategoryLink categoryLink = (com.intershop.beehive.xcs.capi.catalog.CatalogCategoryLink) getObject("ccl");
	            getPipelineDictionary().put("categoryLinkCustomAttributes", new com.intershop.beehive.core.capi.impex.AttributeValueIterator(categoryLink.createCustomCatalogCategoryLinkAttributesIterator(), categoryLink));
	        %>
	        <% processOpenTag(response, pageContext, "customattributes", new TagParameter[] {
new TagParameter("attributes",getObject("categoryLinkCustomAttributes"))}, 69); %>
        </category-link>
    <% } %>
    </category-links>
        <% while (loop("catalogcategory:AttributeValues","av",null)) { %>
            <% _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("av:Name"),null).equals(context.getFormattedValue("displayName",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",74,e);}if (_boolean_result) { %>
                <display-name <% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("av:isLocalized"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",75,e);}if (_boolean_result) { %>xml:lang="<%=context.getFormattedValue(encodeString(context.getFormattedValue(getObject("av:XMLLocaleID"),null)),null)%>"<% } %>><% {String value = null;try{value=context.getFormattedValue(getObject("av:StringValue"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {75}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></display-name>
            <% } %>
            <% _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("av:Name"),null).equals(context.getFormattedValue("description",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",77,e);}if (_boolean_result) { %>
                <description <% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("av:isLocalized"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",78,e);}if (_boolean_result) { %>xml:lang="<%=context.getFormattedValue(encodeString(context.getFormattedValue(getObject("av:XMLLocaleID"),null)),null)%>"<% } %>><% {String value = null;try{value=context.getFormattedValue(getObject("av:StringValue"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {78}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></description>
            <% } %>
        <% } %>
        <% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("catalogcategory:Parent"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",81,e);}if (_boolean_result) { %>
            <parent<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ExportRefIDs"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",82,e);}if (_boolean_result) { %> refid="<% {String value = null;try{value=context.getFormattedValue(getObject("catalogcategory:Parent:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {82}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"<% } %> name="<% {String value = null;try{value=context.getFormattedValue(getObject("catalogcategory:Parent:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {82}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ExportDomainRefs"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",82,e);}if (_boolean_result) { %> domain="<% {String value = null;try{value=context.getFormattedValue(stringToXml(context.getFormattedValue(getObject("catalogcategory:Parent:Domain:DomainName"),null)),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {82}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"<% } %>/>
        <% } %>
		<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (getObject("catalogcategory:ProductBindingAttributeNull"))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",84,e);}if (_boolean_result) { %>
			<product-binding attribute="<% {String value = null;try{value=context.getFormattedValue(getObject("catalogcategory:ProductBindingAttribute"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {85}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" type="<% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("catalogcategory:ProductBindingType")).doubleValue() ==((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",85,e);}if (_boolean_result) { %>implicit<% } else { %>explicit<% } %>"><% {String value = null;try{value=context.getFormattedValue(getObject("catalogcategory:ProductBindingValue"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {85}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></product-binding>
		<% } %>
        <% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (getObject("catalogcategory:SearchQueryDefinitionNameNull"))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",87,e);}if (_boolean_result) { %>
            <searchquery-definition-name><% {String value = null;try{value=context.getFormattedValue(getObject("catalogcategory:SearchQueryDefinitionName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {88}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></searchquery-definition-name>
        <% } %>
        <%
            com.intershop.beehive.xcs.capi.catalog.CatalogCategory category = (com.intershop.beehive.xcs.capi.catalog.CatalogCategory) getObject("catalogcategory");
            getPipelineDictionary().put("categoryCustomAttributes", new com.intershop.beehive.core.capi.impex.AttributeValueIterator(category.createCustomCategoryAttributesIterator(), category));
        %>
        <% processOpenTag(response, pageContext, "customattributes", new TagParameter[] {
new TagParameter("attributes",getObject("categoryCustomAttributes"))}, 94); %>
    </category>
    <% } %>
<% } %>
<% printFooter(out); %>