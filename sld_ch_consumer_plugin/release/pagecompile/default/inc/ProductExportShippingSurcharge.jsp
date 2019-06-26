<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%! protected Boolean printTemplateMarker() { return Boolean.FALSE; } %><%%><%@ page contentType="text/xml;charset=utf-8" %><%%><%@ page session="false"%><%setEncodingType("text/xml"); %>
<% context.setCustomTagTemplateName("customattributes","inc/CustomAttributes",false,new String[]{"attributes"},null); %>
<% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"impex/Modules", null, "3");} %>

<%@ page import = "com.intershop.beehive.xcs.capi.product.Product,com.intershop.beehive.core.capi.domain.AttributeValue,com.intershop.beehive.core.capi.domain.AttributeDefinitionConstants,com.intershop.beehive.core.capi.impex.AttributeValueIterator,com.intershop.beehive.core.capi.jdbc.DatabaseDate,java.text.SimpleDateFormat,java.util.TimeZone,java.util.*" %>
<%@ page import = "com.intershop.component.shipping.capi.productextracharge.ProductShippingSurcharge" %>
<%@ page import = "com.intershop.component.shipping.capi.productextracharge.ProductShippingSurchargeRepository" %>
<%@ page import = "com.intershop.component.shipping.capi.productextracharge.ProductShippingChargeOverride" %>
<%@ page import = "com.intershop.component.shipping.capi.productextracharge.ProductShippingChargeOverrideRepository" %>
<%@ page import = "com.intershop.beehive.core.capi.app.AppContextUtil" %>
<%@ page import = "com.intershop.beehive.app.capi.AppContext" %>
<%@ page import = "com.intershop.beehive.core.capi.domain.Application" %>
<%@ page import = "com.intershop.component.application.capi.ApplicationBO" %>
<%@ page import = "com.intershop.sellside.enterprise.capi.application.ApplicationBOApplicationSelectorExtension" %>
<%@ page import = "com.intershop.beehive.core.capi.app.AppContextUtil" %>
<%@page import="com.intershop.component.mvc.capi.catalog.MVCatalogMgr"%>
<%@page import="com.intershop.beehive.core.capi.naming.NamingMgr"%>
<%@page import="com.intershop.component.mvc.capi.catalog.Repository"%>

        <%
              Product product = (Product) getObject("product");

              // Product shipping surcharges cannot be assigned to products that belong to the Master Product Repository of an Organization.
              // Therefore, methods of shipping related repositories must not be called in the context of an Organization,
              // because there are no Application-Domain relations for those repositories in this context. Further template processing
              // will finish with a NullPointerException due to the missing relations.
              ApplicationBO applicationBO = AppContextUtil.getCurrentAppContext().getVariable(ApplicationBO.CURRENT);
              ApplicationBOApplicationSelectorExtension applicationSelector = applicationBO.getExtension(ApplicationBOApplicationSelectorExtension.class);
              boolean isMasterRepository = (applicationSelector.getChannelID() == null);
             
              if (product != null && !isMasterRepository)
              {
                  MVCatalogMgr mVCatalogMgr = NamingMgr.getManager(MVCatalogMgr.class);
                  Repository channel = mVCatalogMgr.getRepositoryByUUID(applicationSelector.getChannelID());
                  
                  if(channel != null && channel.getTypeCode() != 32)
                  {
                      // the repository seems to be initialized with the wrong domain
                      // it differs from the domain where the ProductShippingSurcharge get created with
                      // found in queries and database: - created with('PrimeTech-Specials-Site') - used with getByProduct method ('PrimeTech-Site')
                      ProductShippingSurchargeRepository repository = 
                                      AppContextUtil.getCurrentAppContext().getApp().getNamedObject("productShippingSurchargeRepository");
                      ProductShippingChargeOverrideRepository repositoryOverride = 
                                      AppContextUtil.getCurrentAppContext().getApp().getNamedObject("productShippingChargeOverrideRepository");

                      Collection<ProductShippingSurcharge> shippingSurchargeCollection = null;
                      Collection<ProductShippingChargeOverride> shippingChargeOverrideCollection = null;
                      
                      if (repository != null)
                      {
                          shippingSurchargeCollection = repository.getByProduct(product);
                      }
                      if (repositoryOverride != null)
                      {
                          shippingChargeOverrideCollection = repositoryOverride.getByProduct(product);
                      }

                      if ((shippingSurchargeCollection != null && shippingSurchargeCollection.size() > 0) ||
                            (shippingChargeOverrideCollection != null && shippingChargeOverrideCollection.size() > 0))
                      {
                         out.println("<shippingsurcharges>");
                         if (shippingSurchargeCollection != null && shippingSurchargeCollection.size() > 0)
                         {
    	                     for(ProductShippingSurcharge shippingSurcharge : shippingSurchargeCollection)
    	                     {
    	                      out.println("<shippingsurcharge domain=\"" + shippingSurcharge.getDomain().getDomainName() + "\">");
    	                      // getShippingMethodID and getRegionID return both an empty string if database value is 'null'
    	                      if (!shippingSurcharge.getShippingMethodIDNull())
    	                      {
    	                          out.println("<shippingmethod-id>" + shippingSurcharge.getShippingMethodID() + "</shippingmethod-id>");
    	                      }
    	                      
    	                      if (!shippingSurcharge.getRegionIDNull())
    	                      {
    	                          out.println("<region-id>" + shippingSurcharge.getRegionID() + "</region-id>");
    	                      }
    	
    			              getPipelineDictionary().put("ShippingSurchargeCustomAttributes", shippingSurcharge.createAttributeValuesIterator());
    	                       %>
    	                       <% processOpenTag(response, pageContext, "customattributes", new TagParameter[] {
new TagParameter("attributes",getObject("ShippingSurchargeCustomAttributes"))}, 80); %>
    	                       <%
    	                      out.println("</shippingsurcharge>");
    	                     }
                         }
                         if (shippingChargeOverrideCollection != null && shippingChargeOverrideCollection.size() > 0)
                         {
    	                     for(ProductShippingChargeOverride shippingChargeOverride : shippingChargeOverrideCollection)
    	                     {
    	                      out.println("<shippingsurcharge type=\"override\" domain=\"" + shippingChargeOverride.getDomain().getDomainName() + "\">");
    	                      // getShippingMethodID and getRegionID return both an empty string if database value is 'null'
    	                      if (!shippingChargeOverride.getShippingMethodIDNull())
    	                      {
    	                          out.println("<shippingmethod-id>" + shippingChargeOverride.getShippingMethodID() + "</shippingmethod-id>");
    	                      }
    	                      
    	                      if (!shippingChargeOverride.getRegionIDNull())
    	                      {
    	                          out.println("<region-id>" + shippingChargeOverride.getRegionID() + "</region-id>");
    	                      }
    	
    			              getPipelineDictionary().put("ShippingChargeOverrideCustomAttributes", shippingChargeOverride.createAttributeValuesIterator());
    	                       %>
    	                       <% processOpenTag(response, pageContext, "customattributes", new TagParameter[] {
new TagParameter("attributes",getObject("ShippingChargeOverrideCustomAttributes"))}, 103); %>
    	                       <%
    	                      out.println("</shippingsurcharge>");
    	                     }
                         }
                         out.println("</shippingsurcharges>");
                      }                      
                  }
              }
		%>
<% printFooter(out); %>