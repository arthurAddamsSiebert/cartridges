/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-13 15:29:25 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.sld_005fch_005fconsumer_005fplugin.default_.inc;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.*;
import java.io.*;
import com.intershop.beehive.core.internal.template.*;
import com.intershop.beehive.core.internal.template.isml.*;
import com.intershop.beehive.core.capi.log.*;
import com.intershop.beehive.core.capi.resource.*;
import com.intershop.beehive.core.capi.util.UUIDMgr;
import com.intershop.beehive.core.capi.util.XMLHelper;
import com.intershop.beehive.foundation.util.*;
import com.intershop.beehive.core.internal.url.*;
import com.intershop.beehive.core.internal.resource.*;
import com.intershop.beehive.core.internal.wsrp.*;
import com.intershop.beehive.core.capi.pipeline.PipelineDictionary;
import com.intershop.beehive.core.capi.naming.NamingMgr;
import com.intershop.beehive.core.capi.pagecache.PageCacheMgr;
import com.intershop.beehive.core.capi.request.SessionMgr;
import com.intershop.beehive.core.internal.request.SessionMgrImpl;
import com.intershop.beehive.core.pipelet.PipelineConstants;
import com.intershop.beehive.xcs.capi.product.Product;
import com.intershop.beehive.core.capi.domain.AttributeValue;
import com.intershop.beehive.core.capi.domain.AttributeDefinitionConstants;
import com.intershop.beehive.core.capi.impex.AttributeValueIterator;
import com.intershop.beehive.core.capi.jdbc.DatabaseDate;
import java.text.SimpleDateFormat;
import java.util.TimeZone;
import java.util.*;
import com.intershop.component.shipping.capi.productextracharge.ProductShippingSurcharge;
import com.intershop.component.shipping.capi.productextracharge.ProductShippingSurchargeRepository;
import com.intershop.component.shipping.capi.productextracharge.ProductShippingChargeOverride;
import com.intershop.component.shipping.capi.productextracharge.ProductShippingChargeOverrideRepository;
import com.intershop.beehive.core.capi.app.AppContextUtil;
import com.intershop.beehive.app.capi.AppContext;
import com.intershop.beehive.core.capi.domain.Application;
import com.intershop.component.application.capi.ApplicationBO;
import com.intershop.sellside.enterprise.capi.application.ApplicationBOApplicationSelectorExtension;
import com.intershop.beehive.core.capi.app.AppContextUtil;
import com.intershop.component.mvc.capi.catalog.MVCatalogMgr;
import com.intershop.beehive.core.capi.naming.NamingMgr;
import com.intershop.component.mvc.capi.catalog.Repository;

public final class ProductExportShippingSurcharge_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
    implements org.apache.jasper.runtime.JspSourceDependent {

 protected Boolean printTemplateMarker() { return Boolean.FALSE; } 
  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private javax.el.ExpressionFactory _el_expressionfactory;
  private org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
    _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
        throws java.io.IOException, javax.servlet.ServletException {

    final javax.servlet.jsp.PageContext pageContext;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/xml;charset=utf-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, false, 0, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      out = pageContext.getOut();
      _jspx_out = out;

 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 
 


setEncodingType("text/xml"); 
      out.write('\n');
 context.setCustomTagTemplateName("customattributes","inc/CustomAttributes",false,new String[]{"attributes"},null); 
      out.write('\n');
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"impex/Modules", null, "3");} 
      out.write("\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n        ");

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
    	                       
      out.write("\n    \t                       ");
 processOpenTag(response, pageContext, "customattributes", new TagParameter[] {
new TagParameter("attributes",getObject("ShippingSurchargeCustomAttributes"))}, 80); 
      out.write("\n    \t                       ");

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
    	                       
      out.write("\n    \t                       ");
 processOpenTag(response, pageContext, "customattributes", new TagParameter[] {
new TagParameter("attributes",getObject("ShippingChargeOverrideCustomAttributes"))}, 103); 
      out.write("\n    \t                       ");

    	                      out.println("</shippingsurcharge>");
    	                     }
                         }
                         out.println("</shippingsurcharges>");
                      }                      
                  }
              }
		
      out.write('\n');
 printFooter(out); 
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try { out.clearBuffer(); } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
