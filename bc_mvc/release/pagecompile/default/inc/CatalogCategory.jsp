<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>




<%@page import="com.intershop.beehive.xcs.capi.catalog.CatalogConstants"%>
<%@page import="com.intershop.beehive.xcs.internal.catalog.ExtensibleObjectCustomAttributesFilterCondition"%>
<%@page import="com.intershop.beehive.core.capi.impex.AttributeValueIterator"%>
<%@page import="com.intershop.beehive.core.capi.naming.NamingMgr"%>

<%@page import="com.intershop.beehive.xcs.internal.image.ImageSetDefinitionCategoryAssignment"%>
<%@page import = "com.intershop.component.image.internal.orm.ImageReference" %>

<%@page import="com.intershop.beehive.xcs.capi.catalog.CatalogMgr"%>
<%@page import="com.intershop.beehive.xcs.capi.catalog.CatalogCategory"%>

<%@page import="com.intershop.component.mvc.capi.catalog.MVCatalogMgr"%>
<%@page import="com.intershop.component.mvc.capi.catalog.Catalog"%>


<% %><%! protected Boolean printTemplateMarker() { return Boolean.FALSE; } %><%%><%@ page contentType="text/xml;charset=utf-8" %><%%><%@ page session="false"%><%setEncodingType("text/xml"); %>
 
<% context.setCustomTagTemplateName("customattributes","inc/CustomAttributes",false,new String[]{"attributes"},null); %> 

<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("catalogcategory"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",27,e);}if (_boolean_result) { %>
    <% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (getObject("catalogcategory:isHotDealsCategory"))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",28,e);}if (_boolean_result) { %>
        <category name="<% {String value = null;try{value=context.getFormattedValue(getObject("catalogcategory:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {29}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("catalogcategory:isRootCategory"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",29,e);}if (_boolean_result) { %> import-mode="UPDATE"<% } %>>
        <name><% {String value = null;try{value=context.getFormattedValue(getObject("catalogcategory:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {30}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></name>
    	<root><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("catalogcategory:isRootCategory"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",31,e);}if (_boolean_result) { %>1<% } else { %>0<% } %></root>
        <% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("catalogcategory:ProductQueryString"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",32,e);}if (_boolean_result) { %>
            <product-assignment-query><% {String value = null;try{value=context.getFormattedValue(getObject("catalogcategory:ProductQueryString"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {33}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></product-assignment-query>
        <% } %>
        <% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("catalogcategory:Template"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",35,e);}if (_boolean_result) { %>
            <template><% {String value = null;try{value=context.getFormattedValue(getObject("catalogcategory:Template"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {36}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></template>
        <% } %>
        <% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("catalogcategory:HotDealsCategory:Template"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",38,e);}if (_boolean_result) { %>
            <hotdeals-template><% {String value = null;try{value=context.getFormattedValue(getObject("catalogcategory:HotDealsCategory:Template"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {39}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></hotdeals-template>
        <% } %>
        <online><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("catalogcategory:isOnline"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",41,e);}if (_boolean_result) { %>1<% } else { %>0<% } %></online>
        <% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) getObject("catalogcategory:PositionNull")).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",42,e);}if (_boolean_result) { %>
            <position><%= stringToXml(getObject("catalogcategory:Position").toString()) %></position>
        <% } %>
        <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("catalogcategory:isRootCategory")).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("Catalog:ClassificationSystem")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",45,e);}if (_boolean_result) { %>
            <classification-system><% {String value = null;try{value=context.getFormattedValue(getObject("Catalog:ClassificationSystem:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {46}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></classification-system>
        <% } %>
		<category-links>
        <% while (loop("catalogcategory:OutgoingCategoryLinks","ccl",null)) { %>
        <category-link name="<% {String value = null;try{value=context.getFormattedValue(getObject("ccl:TargetCategory:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {50}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"<% _boolean_result=false;try {_boolean_result=((Boolean)((((!(context.getFormattedValue(getObject("ccl:TargetCategory:Domain:DomainName"),null).equals(context.getFormattedValue(getObject("catalogcategory:Domain:DomainName"),null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",50,e);}if (_boolean_result) { %> domain="<% {String value = null;try{value=context.getFormattedValue(getObject("ccl:TargetCategory:Domain:DomainName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {50}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"<% } %>>
        	<category-link-type name="<% {String value = null;try{value=context.getFormattedValue(getObject("ccl:TypeCode"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {51}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"></category-link-type>
	        <% while (loop("ccl:AttributeValues","av",null)) { %>
	            <% _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("av:Name"),null).equals(context.getFormattedValue("displayName",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",53,e);}if (_boolean_result) { %>
	                <display-name <% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("av:isLocalized"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",54,e);}if (_boolean_result) { %>xml:lang="<%=context.getFormattedValue(encodeString(context.getFormattedValue(getObject("av:XMLLocaleID"),null)),null)%>"<% } %>><% {String value = null;try{value=context.getFormattedValue(getObject("av:StringValue"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {54}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></display-name>
	            <% } %>
	            <% _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("av:Name"),null).equals(context.getFormattedValue("description",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",56,e);}if (_boolean_result) { %>
	                <description <% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("av:isLocalized"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",57,e);}if (_boolean_result) { %>xml:lang="<%=context.getFormattedValue(encodeString(context.getFormattedValue(getObject("av:XMLLocaleID"),null)),null)%>"<% } %>><% {String value = null;try{value=context.getFormattedValue(getObject("av:StringValue"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {57}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></description>
	            <% } %>
	        <% } %>
	        <% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) getObject("ccl:PositionNull")).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",60,e);}if (_boolean_result) { %>
	            <position><%= stringToXml(getObject("ccl:Position").toString()) %></position>
	        <% } %>
	        <%
	            com.intershop.beehive.xcs.capi.catalog.CatalogCategoryLink categoryLink = (com.intershop.beehive.xcs.capi.catalog.CatalogCategoryLink) getObject("ccl");
	            getPipelineDictionary().put("categoryLinkCustomAttributes", new com.intershop.beehive.core.capi.impex.AttributeValueIterator(categoryLink.createCustomCatalogCategoryLinkAttributesIterator(), categoryLink));
	        %>
	        <% processOpenTag(response, pageContext, "customattributes", new TagParameter[] {
new TagParameter("attributes",getObject("categoryLinkCustomAttributes"))}, 67); %>
        </category-link>
    <% } %>           
    </category-links>
        <% while (loop("catalogcategory:AttributeValues","av",null)) { %>
            <% _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("av:Name"),null).equals(context.getFormattedValue("displayName",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",72,e);}if (_boolean_result) { %>
                <display-name <% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("av:isLocalized"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",73,e);}if (_boolean_result) { %>xml:lang="<%=context.getFormattedValue(encodeString(context.getFormattedValue(getObject("av:XMLLocaleID"),null)),null)%>"<% } %>><% {String value = null;try{value=context.getFormattedValue(getObject("av:StringValue"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {73}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></display-name>
            <% } %>
            <% _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("av:Name"),null).equals(context.getFormattedValue("description",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",75,e);}if (_boolean_result) { %>
                <description <% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("av:isLocalized"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",76,e);}if (_boolean_result) { %>xml:lang="<%=context.getFormattedValue(encodeString(context.getFormattedValue(getObject("av:XMLLocaleID"),null)),null)%>"<% } %>><% {String value = null;try{value=context.getFormattedValue(getObject("av:StringValue"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {76}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></description>
            <% } %>
        <% } %>
        <% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("catalogcategory:Parent"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",79,e);}if (_boolean_result) { %>
            <parent name="<% {String value = null;try{value=context.getFormattedValue(getObject("catalogcategory:Parent:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {80}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" /><% } %>
		<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (getObject("catalogcategory:ProductBindingAttributeNull"))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",81,e);}if (_boolean_result) { %>
			<product-binding attribute="<% {String value = null;try{value=context.getFormattedValue(getObject("catalogcategory:ProductBindingAttribute"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {82}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" type="<% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("catalogcategory:ProductBindingType")).doubleValue() ==((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",82,e);}if (_boolean_result) { %>implicit<% } else { %>explicit<% } %>"><% {String value = null;try{value=context.getFormattedValue(getObject("catalogcategory:ProductBindingValue"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {82}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></product-binding>
		<% } %>
        <% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (getObject("catalogcategory:SearchQueryDefinitionNameNull"))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",84,e);}if (_boolean_result) { %>
            <searchquery-definition-name><% {String value = null;try{value=context.getFormattedValue(getObject("catalogcategory:SearchQueryDefinitionName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {85}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></searchquery-definition-name>
        <% } %>
        <%
            CatalogCategory categoryToExport = (CatalogCategory)getObject("catalogcategory");
            if(categoryToExport.isRootCategory())
            {
            	Catalog catalogToExport = NamingMgr.getManager(MVCatalogMgr.class).getCatalogByCatalogDomain(categoryToExport.getDomain());
            	
            	String excludedNamesAndPrefixes = CatalogConstants.CATEGORY_DISPLAYNAME + ";" + CatalogConstants.CATEGORY_DESCRIPTION;
            	String delimiter = ";" ;
            	
            	ExtensibleObjectCustomAttributesFilterCondition customAttributesFilterCondition 
            														= new ExtensibleObjectCustomAttributesFilterCondition(excludedNamesAndPrefixes, delimiter);
            	FilterIterator filteredCustomAttributes = new FilterIterator(catalogToExport.createAttributeValuesIterator(), customAttributesFilterCondition); 
            	
            	getPipelineDictionary().put("categoryCustomAttributes", new AttributeValueIterator(filteredCustomAttributes));
            }
            else
            {
            	getPipelineDictionary().put("categoryCustomAttributes", new AttributeValueIterator(categoryToExport.createCustomCategoryAttributesIterator()));
			}
        	CatalogMgr catalogMgr = (CatalogMgr)NamingMgr.getInstance().lookupManager(CatalogMgr.REGISTRY_NAME);
        	Iterator<ImageSetDefinitionCategoryAssignment> isdca = catalogMgr.getImageSetDefinitionCategoryAsgmtsByCategory(categoryToExport);
        	if (isdca.hasNext())
        	{
        		getPipelineDictionary().put("imageSetDefinitionAssignments", isdca); 
        %>
	        <image-set-assignments>
	
	        <% while (loop("imageSetDefinitionAssignments","isda",null)) { %>
	             <image-set-assignment image-set="<%=context.getFormattedValue(getObject("isda:ImageSetDefinition:ID"),null)%>"/>
	        <% } %>
	
	        </image-set-assignments>
        <%
	        }
         %>
		<%
				//
				// Category Images.
				//						
				String primaryImageView = categoryToExport.getPrimaryViewID();
				Iterator<ImageReference> imageReferences = categoryToExport.createImageReferencesIterator();
				if (imageReferences.hasNext() || null != primaryImageView)
				{
	          		out.println("<images>");
						if (null != primaryImageView)
						{
							  out.println("<primary-view image-view=\"" + primaryImageView + "\" />");
						}
						while (imageReferences.hasNext())
						{
							ImageReference imageReference = imageReferences.next();
							out.print("<image-ref image-view=\"" + stringToXml(imageReference.getImageView().getID()) + "\" image-type=\"" + stringToXml(imageReference.getImageType().getID()) + "\"");
							out.print(" image-base-name=\"" + stringToXml(imageReference.getImageBaseName()) + "\"");
							if (imageReference.getImageWidth() != 0)
							{
								  out.print(" image-width=\"" + imageReference.getImageWidth() + "\"");
							}
							if (imageReference.getImageHeight()!= 0)
							{
								  out.print(" image-height=\"" + imageReference.getImageHeight() + "\"");
							}
							if (! imageReference.getDomain().equals(categoryToExport.getDomain()))
							{
								  out.print(" domain=\"" + stringToXml(imageReference.getDomain().getDomainName()) + "\"");
							}
							out.println (" />");
						}
	          		out.println("</images>");
				}
			%>							
        <% processOpenTag(response, pageContext, "customattributes", new TagParameter[] {
new TagParameter("attributes",getObject("categoryCustomAttributes"))}, 157); %>
    </category>
    <% } %>
<% } %>
<% printFooter(out); %>