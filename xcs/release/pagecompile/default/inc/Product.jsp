<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>



<% %><%! protected Boolean printTemplateMarker() { return Boolean.FALSE; } %><%%><%@ page contentType="text/xml;charset=utf-8" %><%%><%@ page session="false"%><%setEncodingType("text/xml"); %>
<% context.setCustomTagTemplateName("customattributes","inc/CustomAttributes",false,new String[]{"attributes"},null); %>
<% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"impex/Modules", null, "7");} %>

<%@ page import = "com.intershop.beehive.xcs.capi.product.*,com.intershop.beehive.xcs.internal.product.*,com.intershop.beehive.xcs.capi.productvariation.*,com.intershop.beehive.xcs.capi.catalog.*,com.intershop.beehive.xcs.capi.price.*,java.util.Iterator,com.intershop.beehive.core.capi.domain.AttributeValue,com.intershop.beehive.core.capi.domain.AttributeDefinitionConstants,com.intershop.beehive.core.capi.impex.AttributeValueIterator,com.intershop.beehive.core.capi.jdbc.DatabaseDate,java.text.SimpleDateFormat,java.util.TimeZone,java.util.*" %>
<%@ page import = "com.intershop.beehive.core.capi.naming.NamingMgr" %>
<%@ page import = "com.intershop.beehive.core.capi.domain.DomainMgr" %>
<%@ page import = "com.intershop.beehive.core.capi.domain.Domain" %>
<%@ page import = "com.intershop.beehive.xcs.capi.catalog.TypedProductCategoryAssignment" %>
<%@ page import = "com.intershop.beehive.xcs.capi.catalog.TypedProductCategoryAssignmentMgr" %>
<%@ page import = "com.intershop.component.image.internal.orm.ImageReference" %>

<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("product"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",17,e);}if (_boolean_result) { %>
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
    <% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("product:isOffer"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",38,e);}if (_boolean_result) { %>
        <offer<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ExportRefIDs"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",39,e);}if (_boolean_result) { %> refid="<%=context.getFormattedValue(getObject("product:UUID"),null)%>"<% } %> sku="<% {String value = null;try{value=context.getFormattedValue(getObject("product:SKU"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {39}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>">
    <% } else { %>
        <product<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ExportRefIDs"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",41,e);}if (_boolean_result) { %> refid="<%=context.getFormattedValue(getObject("product:UUID"),null)%>"<% } %> sku="<% {String value = null;try{value=context.getFormattedValue(getObject("product:SKU"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {41}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>">
    <% } %>

        <sku><% {String value = null;try{value=context.getFormattedValue(getObject("product:SKU"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {44}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></sku>
        <%
            Product product = (Product) getObject("product");
            
            boolean exportRefIDs     = ((Boolean) getObject("ExportRefIDs")).booleanValue();
            boolean exportDomainRefs = ((Boolean) getObject("ExportDomainRefs")).booleanValue();

            if (!product.getTypeCodeNull())
            {
                //
                //  Type code handling.
                //
                
                int sumTypeCode = ProductConstants.OFFER |
                                  ProductConstants.ITEM |
                                  ProductConstants.BUNDLE |
                                  ProductConstants.BUNDLED |
                                  ProductConstants.MASTER |
                                  ProductConstants.MASTERED |
                                  ProductConstants.OFFERED;
            
                if (product.getTypeCode() > sumTypeCode || product.getTypeCode() < 1)
                {
                    out.print("<type-code>");
                    out.print(product.getTypeCode());
                    out.println("</type-code>");
                }           
            }

            //
            //  Name, short/long description and custom attributes.
            //

            Iterator    attributes = product.createAttributeValuesIterator();
            StringBuffer customAttributes = new StringBuffer(4096);
            int          numAttributes    = 0;

            while (attributes.hasNext())
            {
                AttributeValue attribute = (AttributeValue) attributes.next();

                String attributeName = attribute.getName();

                //  Ignore some attributes (or export elsewhere).

                if (ProductConstants.SKU.equals(attributeName))
                {
                    continue;
                }

              //
              //  Order required attributes.
              //
                if (ProductConstants.ORDER_REQUIRED_ATTRIBUTES.equals(attributeName))
                {
                    String orderRequiredAttributesStr = attribute.getStringValue();
                    if (orderRequiredAttributesStr != null)
                    {
                       out.println("<order-required-attributes>");

                       java.util.StringTokenizer orderRequiredAttributes = new java.util.StringTokenizer(orderRequiredAttributesStr, AttributeDefinitionConstants.MULTIPLE_ATTR_DELIMITER);

                       while (orderRequiredAttributes.hasMoreTokens())
                       {
                          out.println("<order-required-attribute name=\"" + stringToXml(orderRequiredAttributes.nextToken()) + "\"/>");
                       }
                       out.println("</order-required-attributes>");
                    }
                }

                String locale = attribute.getXMLLocaleID();

                if (ProductConstants.NAME.equals(attributeName))
                {
                    out.print("<name xml:lang=\"" +locale+ "\">");
                    out.print(stringToXml(attribute.getStringValue()));
                    out.println("</name>");
                }
                else if (ProductConstants.SHORTDESCRIPTION.equals(attributeName))
                {
                    out.print("<short-description xml:lang=\"" +locale+ "\">");
                    out.print(stringToXml(attribute.getStringValue()));
                    out.println("</short-description>");
                }
                else if (ProductConstants.LONGDESCRIPTION.equals(attributeName))
                {
                    out.print("<long-description xml:lang=\"" +locale+ "\">");
                    out.print(stringToXml(attribute.getStringValue()));
                    out.println("</long-description>");
                }
                else
                {
                    //  Other custom attributes will be exported by included subtemplate.
                }
            }   // while attributes


            //
            // Other custom attributes
            getPipelineDictionary().put("productCustomAttributes", new AttributeValueIterator(product.createCustomAttributesIterator(), product));

            //
            //  Category links.
            //

            Iterator categoryLinks = product.createCatalogCategoriesIterator();
            TypedProductCategoryAssignmentMgr tpcaMgr = NamingMgr.getManager(TypedProductCategoryAssignmentMgr.class);
            Iterator<? extends TypedProductCategoryAssignment> typedCategoryLinks = tpcaMgr.getTypedProductCategoryAssignments(product.getDomain(), product).iterator();

            if (categoryLinks.hasNext() || typedCategoryLinks.hasNext())
            {
                String defaultCategoryID = product.getDefaultCatalogCategoryID();

                out.println("<category-links>");

                while (categoryLinks.hasNext())
                {
                    CatalogCategory category;
                    CatalogCategory assignedCategory = (CatalogCategory) categoryLinks.next();
                    String homeCategoryID            = assignedCategory.getUUID();

                    boolean online       = assignedCategory.isProductAssignmentOnline(product);
                    boolean positionNull = assignedCategory.getProductPositionNull(product);

                    int hotdeals = 0;
                    if (assignedCategory.isHotDealsCategory())
                    {
                        hotdeals = 1;
                        category = assignedCategory.getHotDealsOwner();
                    }
                    else
                    {
                        hotdeals = 0;
                        category = assignedCategory;
                    }

                    String refidAttribute  = (exportRefIDs) ? " refid=\"" + category.getUUID() + '"' : "";
                    String domainAttribute = (exportDomainRefs) ? " domain=\"" + stringToXml(category.getDomain().getDomainName()) + '"' : "";
                    String name  = category.getName();
                    int isdefault = homeCategoryID.equals(defaultCategoryID) ? 1 : 0;
                    
                    out.print("<category-link");
                    out.print(refidAttribute);
                    out.print("\" name=\"");
                    out.print(stringToXml(name));
                    out.print('"');
                    out.print(domainAttribute);
                    out.print(" default = \"");
                    out.print(isdefault);
                    out.print("\" hotdeal = \"");
                    out.print(hotdeals);

                    if (online && positionNull)
                    {
                        out.println("\"/>");
                    }
                    else
                    {
                        out.println("\">");
                        if (!positionNull)
                        {
                            out.println("<position>"+category.getProductPosition(product)+"</position>");
                        }
                        if (!online)
                        {
                            out.println("<online>0</online>");
                        }
                        out.println("</category-link>");
                    }
                }

                while (typedCategoryLinks.hasNext())
                {
                    TypedProductCategoryAssignment tpca = typedCategoryLinks.next();

		            boolean online       = tpca.isAssignmentOnline();
		            boolean positionNull = tpca.getPositionNull();
		            Domain domain = NamingMgr.getManager(DomainMgr.class).getDomainByUUID(tpca.getDomainID());
		
		            String refidAttribute  = (exportRefIDs) ? " refid=\"" + tpca.getCatalogCategoryID() + '"' : "";
		            String domainAttribute = (exportDomainRefs) ? " domain=\"" + stringToXml(tpca.getCatalogCategory().getDomain().getDomainName()) + '"' : "";
		            String name  = tpca.getCatalogCategory().getName();
		            
		            out.print("<typed-category-link");
		            out.print(refidAttribute);
		            out.print("\" name=\"");
		            out.print(stringToXml(name));
		            out.print('"');
		            out.print(domainAttribute);
		            out.print(" type-code=\"");
		            out.print(stringToXml(tpca.getTypeCode()));
		
		            if (online && positionNull)
		            {
		                out.println("\"/>");
		            }
		            else
		            {
		                out.println("\">");
		                if (!positionNull)
		                {
		                    out.println("<position>"+tpca.getPosition()+"</position>");
		                }
		                if (!online)
		                {
		                    out.println("<online>0</online>");
		                }
		                out.println("</typed-category-link>");
		            }
                }

                out.println("</category-links>");
            }

						//
						// Images.
						//
						
						String primaryImageView = product.getPrimaryViewID();
						Iterator<ImageReference> imageReferences = product.createImageReferencesIterator();
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
									out.print("<image-ref image-view=\"" + imageReference.getImageView().getID() + "\" image-type=\"" + imageReference.getImageType().getID() + "\"");
									out.print(" image-base-name=\"" + imageReference.getImageBaseName() + "\"");
									if (imageReference.getImageWidth() != 0)
									{
										  out.print(" image-width=\"" + imageReference.getImageWidth() + "\"");
									}
									if (imageReference.getImageHeight()!= 0)
									{
										  out.print(" image-height=\"" + imageReference.getImageHeight() + "\"");
									}
									if (! imageReference.getDomain().equals(product.getDomain()))
									{
										  out.print(" domain=\"" + imageReference.getDomain().getDomainName() + "\"");
									}
									out.println (" />");
								}
			          out.println("</images>");
						}

            //
            //  List prices.
            //

            Iterator prices = product.createListPricesIterator();

            if (prices.hasNext())
            {
                out.println("<product-list-prices>");

                do
                {
                    ProductListPrice price = (ProductListPrice) prices.next();

                    String      currency      = price.getCurrency();
                    String      value         = price.getValue().toString();
                    int         isNetPrice    = price.isNetPrice() ? 1 : 0;

                    out.print("<product-list-price currency=\"");
                    out.print(currency);
                    out.print("\" net-price=\"");
                    out.print(isNetPrice);
                    out.print("\">");
                    out.print(value);
                    out.println("</product-list-price>");
                }
                while (prices.hasNext());

                out.println("</product-list-prices>");
            }

            //
            //  Cost prices.
            //

            prices = product.createCostPricesIterator();

            if (prices.hasNext())
            {
                out.println("<product-cost-prices>");

                do
                {
                    ProductCostPrice price = (ProductCostPrice) prices.next();

                    String      currency      = price.getCurrency();
                    String      value         = price.getValue().toString();
                    int         isNetPrice    = price.isNetPrice() ? 1 : 0;

                    out.print("<product-cost-price currency=\"");
                    out.print(currency);
                    out.print("\" net-price=\"");
                    out.print(isNetPrice);
                    out.print("\">");
                    out.print(value);
                    out.println("</product-cost-price>");
                }
                while (prices.hasNext());

                out.println("</product-cost-prices>");
            }

            //
            //  Product links.
            //

            Iterator productLinks = product.createOutgoingProductLinksIterator();

            if (productLinks.hasNext())
            {
                out.println("<product-links>");

                while (productLinks.hasNext())
                {
                    ProductLink productLink = (ProductLink) productLinks.next();

                    CatalogCategory linkedCategory = productLink.getLinkedCatalogCategory();
                    Product         linkedProduct  = productLink.getTargetProduct();
                    String          linkType       = productLink.getTypeCode();

                    if (linkedProduct != null)
                    {
                        String refidAttribute  = (exportRefIDs) ? " refid=\"" + linkedProduct.getUUID() + '"' : "";
                        String domainAttribute = (exportDomainRefs) ? " domain=\"" + stringToXml(linkedProduct.getDomain().getDomainName()) + '"' : "";
                        String sku     = linkedProduct.getSKU();

                        out.println("<product-link" + refidAttribute + " sku = \"" + stringToXml(sku) + '"' + domainAttribute + '>');

                        out.println("<product-link-type name=\"" + linkType + "\"></product-link-type></product-link>");
                        
                        if (linkedCategory != null)
                        {
                            refidAttribute   = (exportRefIDs) ? " refid=\"" + linkedCategory.getUUID() + '"' : "";
                            domainAttribute  = (exportDomainRefs) ? " domain=\"" + stringToXml(linkedCategory.getDomain().getDomainName()) + '"' : "";
                            String name      = linkedCategory.getName();

                            out.println("<product-link-category" + refidAttribute + " name = \"" + name + '"' + domainAttribute + "/>");
                        }

                        if (productLink.getQuantity() != null )
                        {
			                out.println("<quantity>" + productLink.getQuantity() + "</quantity>");
			            }

                        if (!productLink.getPositionNull())
                        {
			                out.println("<position>" + productLink.getPosition() + "</position>");
			            }
			            
		                
			            //
			            //  unit, description and custom attributes.
			            //
			            Iterator productLinkAttributes = productLink.createAttributeValuesIterator();
			
			            while (productLinkAttributes.hasNext())
			            {
			                AttributeValue attribute = (AttributeValue) productLinkAttributes.next();
			
			                String attributeName = attribute.getName();
			                String locale = attribute.getXMLLocaleID();

			                if ("unit".equals(attributeName))
			                {
			                    out.print("<unit xml:lang=\"" +locale+ "\">");
			                    out.print(stringToXml(attribute.getStringValue()));
			                    out.println("</unit>");
			                }
                		}
			
						List productLinkOtherCustomAttributes  = new ArrayList();
			            productLinkAttributes = productLink.createAttributeValuesIterator();
			
			            while (productLinkAttributes.hasNext())
			            {
			                AttributeValue attribute = (AttributeValue) productLinkAttributes.next();
			
			                String attributeName = attribute.getName();
			                String locale = attribute.getXMLLocaleID();

			                if ("description".equals(attributeName))
			                {
			                    out.print("<description xml:lang=\"" +locale+ "\">");
			                    out.print(stringToXml(attribute.getStringValue()));
			                    out.println("</description>");
			                }
			                else if ("unit".equals(attributeName))
			                {
			                	// unit has been done before to ensure correct sequence of 
			                	// elements
			                }
			                else
			                {
			                    //  Other custom attributes will be exported by included subtemplate.
			                    productLinkOtherCustomAttributes.add(attribute);
			                }
                		}
                		                
			            getPipelineDictionary().put("ProductLinkCustomAttributes", productLinkOtherCustomAttributes);
                        %>
                        <% processOpenTag(response, pageContext, "customattributes", new TagParameter[] {
new TagParameter("attributes",getObject("ProductLinkCustomAttributes"))}, 453); %>
                        <%
                    }
                }

                out.println("</product-links>");
            }

            //
            //  Bundled products (if product is bundle).
            //

            if (product.isProductBundle())
            {
                Iterator assignments = product.createBundleAssignmentsIterator();

                if (assignments.hasNext())
                {
                    out.println("<bundled-products>");

                    while (assignments.hasNext())
                    {
                        BundledProduct assignment = (BundledProduct) assignments.next();
                        Product    bundledProduct = assignment.getProduct();

                        if (bundledProduct==null) 
                            continue;

                        String refidAttribute  = (exportRefIDs) ? " refid=\"" + bundledProduct.getUUID() + '"' : "";
                        String domainAttribute = (exportDomainRefs) ? " domain=\"" + stringToXml(bundledProduct.getDomain().getDomainName()) + '"' : "";
                        String sku             = bundledProduct.getSKU();

                        out.println("<bundled-product" + refidAttribute + " sku = \"" + stringToXml(sku) + '"' + domainAttribute + '>');

                        com.intershop.beehive.foundation.quantity.Quantity bundledQuantity = assignment.getQuantity();
                        if (bundledQuantity != null)
                        {
                            String unit  = bundledQuantity.getUnit();
                            double value = bundledQuantity.getValue().doubleValue();

                            out.println("<bundled-quantity unit = \"" + unit + "\">" + value + "</bundled-quantity>");
                        }

                        if (!assignment.getPositionNull())
                        {
                            out.println("<position>" + assignment.getPosition() + "</position>");
                        }

                        if (!assignment.isOnline())
                        {
                            out.println("<online>0</online>");
                        }


                        out.println("</bundled-product>");
                    }

                    out.println("</bundled-products>");
                }
            }

            //
            //  Variations.
            //

            if (product.isProductMaster())
            {
                Iterator masteredIter = product.createMasteredProductsIterator();
                Iterator attributeIter = product.createVariableVariationAttributesIterator();

                ProductVariation defaultVariation = product.getDefaultProductVariation();
                String defaultMasteredId = null;

                if (defaultVariation != null)
                {
                    defaultMasteredId = defaultVariation.getProductID();
                }


                out.println("<variations>");
                out.println("<mastered-products>");

                while (masteredIter.hasNext())
                {
                    Product mastered = (Product) masteredIter.next();
                    String  masteredUUID  = mastered.getUUID();
                    String  masteredSKU   = mastered.getSKU();
                    String masteredVariationPositionString = mastered.getProductVariationPositionNull() ? null : String.valueOf(mastered.getProductVariationPosition());
                    String  masteredDomainAttribute = (exportDomainRefs) ? " domain = \"" + stringToXml(mastered.getDomain().getDomainName()) + '"' : "";
                    out.print("<mastered-product sku = \"" + stringToXml(masteredSKU) + '"' + masteredDomainAttribute + " default = \"" + (masteredUUID.equals(defaultMasteredId) ? '1' : '0') + '"');
                    if (masteredVariationPositionString != null) {
                    	out.print(" productvariationposition = \"" + stringToXml(masteredVariationPositionString) + "\"");
                    }
                    out.println("/>");
                }

                out.println("</mastered-products>");

				if (attributeIter.hasNext())
				{
	                out.println("<variation-attributes>");
	
	                while (attributeIter.hasNext())
	                {
	                    VariableVariationAttribute attribute = (VariableVariationAttribute) attributeIter.next();
	                    out.println("<variation-attribute name = \"" + stringToXml(attribute.getName()) + "\">");
	
						if (!attribute.getPositionNull())
						{
							out.println("<position>" + attribute.getPosition() + "</position>");
						}
						if (!attribute.getPresentationOptionNull())
						{
							out.println("<presentation-option>" + attribute.getPresentationOption() + "</presentation-option>");
						}
						if (!attribute.getPresentationProductAttributeNameNull())
						{
							out.println("<presentation-product-attribute-name>" + attribute.getPresentationProductAttributeName() + "</presentation-product-attribute-name>");
						}
	
	                    Iterator avs = attribute.createAttributeValuesIterator();
	                    if (avs.hasNext())
	                    {
	                        getPipelineDictionary().put("variableAttCustomAttributes", new com.intershop.beehive.core.capi.impex.AttributeValueIterator(avs, attribute));
	                        %>
	                        <% processOpenTag(response, pageContext, "customattributes", new TagParameter[] {
new TagParameter("attributes",getObject("variableAttCustomAttributes"))}, 578); %>
	                        <%
	                    }
                	}

	                out.println("</variation-attributes>");
				}
                out.println("</variations>");

            }
        %>
        <% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("product:isOffer"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",589,e);}if (_boolean_result) { %>
                <offered-product<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ExportRefIDs"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",590,e);}if (_boolean_result) { %> refid="<% {String value = null;try{value=context.getFormattedValue(getObject("product:OfferedProduct:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {590}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"<% } %> sku="<% {String value = null;try{value=context.getFormattedValue(getObject("product:OfferedProduct:SKU"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {590}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ExportDomainRefs"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",590,e);}if (_boolean_result) { %> domain="<% {String value = null;try{value=context.getFormattedValue(stringToXml(context.getFormattedValue(getObject("product:OfferedProduct:Domain:DomainName"),null)),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {590}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"<% } %>/>
        <% } %>
        <% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) getObject("product:TaxClassIDNull")).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",592,e);}if (_boolean_result) { %><tax-class id = "<% {String value = null;try{value=context.getFormattedValue(getObject("product:TaxClassID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {592}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><% } %>
        <% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) getObject("product:ProductTypeIDNull")).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",593,e);}if (_boolean_result) { %><product-type name = "<% {String value = null;try{value=context.getFormattedValue(getObject("product:ProductType:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {593}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ExportDomainRefs"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",593,e);}if (_boolean_result) { %> domain = "<% {String value = null;try{value=context.getFormattedValue(stringToXml(context.getFormattedValue(getObject("product:ProductType:Domain:DomainName"),null)),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {593}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"<% } %>/><% } %>
        <% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) getObject("product:TemplateNull")).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",594,e);}if (_boolean_result) { %><template><% {String value = null;try{value=context.getFormattedValue(getObject("product:Template"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {594}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></template><% } %>

        <online><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("product:isOnline"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",596,e);}if (_boolean_result) { %>1<% } else { %>0<% } %></online>

        <available><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("product:isAvailable"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",598,e);}if (_boolean_result) { %>1<% } else { %>0<% } %></available>
        <% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) getObject("product:AvailabilityStatusNull")).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",599,e);}if (_boolean_result) { %><availability-status><% {String value = null;try{value=context.getFormattedValue(getObject("product:AvailabilityStatus"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {599}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></availability-status><% } %>
		
	    <% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) getObject("product:LastOrderDateNull")).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",601,e);}if (_boolean_result) { %><last-order-date><% processOpenTag(response, pageContext, "datetime", new TagParameter[] {
new TagParameter("date",getObject("product:LastOrderDate"))}, 601); %></last-order-date><% } %>
      	<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) getObject("product:EndOfLifeNull")).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",602,e);}if (_boolean_result) { %><end-of-life><% processOpenTag(response, pageContext, "datetime", new TagParameter[] {
new TagParameter("date",getObject("product:EndOfLife"))}, 602); %></end-of-life><% } %>
      	
      	<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (((((Boolean) (getObject("product:isProductBundle"))).booleanValue() || ((Boolean) (getObject("product:isProductMaster"))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) (getObject("product:isDerivingDates"))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",604,e);}if (_boolean_result) { %>
      	<derive-dates>1</derive-dates>
      	<% } %>
	
		<%
			getPipelineDictionary().put("supplierName", product.getSupplierName());
			getPipelineDictionary().put("supplierSKU", product.getSupplierSKU());
		%>
        <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("supplierName")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("supplierSKU")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",612,e);}if (_boolean_result) { %><supplier>
                    <% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("supplierName"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",613,e);}if (_boolean_result) { %><supplier-name><% {String value = null;try{value=context.getFormattedValue(getObject("supplierName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {613}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></supplier-name><% } %>
                    <% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("supplierSKU"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",614,e);}if (_boolean_result) { %><supplier-sku><% {String value = null;try{value=context.getFormattedValue(getObject("supplierSKU"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {614}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></supplier-sku><% } %>
           </supplier><% } %>
           
		<%
			getPipelineDictionary().put("manufacturerName", product.getManufacturerName());
			getPipelineDictionary().put("manufacturerSKU", product.getManufacturerSKU());
		%>
        <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("manufacturerName")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("manufacturerSKU")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",621,e);}if (_boolean_result) { %><manufacturer>
                    <% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("manufacturerName"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",622,e);}if (_boolean_result) { %><manufacturer-name><% {String value = null;try{value=context.getFormattedValue(getObject("manufacturerName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {622}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></manufacturer-name><% } %>
                    <% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("manufacturerSKU"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",623,e);}if (_boolean_result) { %><manufacturer-sku><% {String value = null;try{value=context.getFormattedValue(getObject("manufacturerSKU"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {623}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></manufacturer-sku><% } %>
           </manufacturer><% } %>
        <% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) getObject("product:UnitNull")).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",625,e);}if (_boolean_result) { %><quantity unit = "<% {String value = null;try{value=context.getFormattedValue(getObject("product:Unit"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {625}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>">
                    <% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) getObject("product:StepQuantityValueNull")).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",626,e);}if (_boolean_result) { %><step-quantity><% out.print(getObject("product:StepQuantityValue")); %></step-quantity><% } %>
                    <% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) getObject("product:MinOrderQuantityValueNull")).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",627,e);}if (_boolean_result) { %><min-order-quantity><% out.print(getObject("product:MinOrderQuantityValue")); %></min-order-quantity><% } %>
                    <% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("product:isPriceQuantityAvailable"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",628,e);}if (_boolean_result) { %><price-quantity><% out.print(getObject("product:PriceQuantityValue")); %></price-quantity><% } %>
            </quantity><% } %>
            
      	<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("product:ValidFrom"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",631,e);}if (_boolean_result) { %><valid-from><% processOpenTag(response, pageContext, "datetime", new TagParameter[] {
new TagParameter("date",getObject("product:ValidFrom"))}, 631); %></valid-from><% } %>
      	<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("product:ValidTo"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",632,e);}if (_boolean_result) { %><valid-to><% processOpenTag(response, pageContext, "datetime", new TagParameter[] {
new TagParameter("date",getObject("product:ValidTo"))}, 632); %></valid-to><% } %>

        <% {Object temp_obj = ("true"); getPipelineDictionary().put("isProductCustomAttributes", temp_obj);} %>
        <% processOpenTag(response, pageContext, "customattributes", new TagParameter[] {
new TagParameter("attributes",getObject("productCustomAttributes"))}, 635); %>
        <% {Object temp_obj = ("false"); getPipelineDictionary().put("isProductCustomAttributes", temp_obj);} %>

    <% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("product:isOffer"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",638,e);}if (_boolean_result) { %>
        </offer>
    <% } else { %>
        </product>
    <% } %>
<% } %>
<% printFooter(out); %>