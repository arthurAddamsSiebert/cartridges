/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-13 15:29:32 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.sld_005fenterprise_005fapp.default_.inc;

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
import com.intershop.component.product.capi.ProductBORepository;
import com.intershop.component.repository.capi.RepositoryBO;
import com.intershop.component.repository.capi.RepositoryBORepository;
import com.intershop.beehive.businessobject.capi.BusinessObjectRepositoryFactory;
import com.intershop.beehive.businessobject.capi.BusinessObjectContext;
import com.intershop.beehive.app.capi.AppContext;
import java.util.*;
import com.intershop.beehive.xcs.capi.product.*;
import com.intershop.component.mvc.capi.product.ServiceTypeBO;
import com.intershop.beehive.core.capi.domain.Domain;
import com.intershop.beehive.core.capi.naming.NamingMgr;
import com.intershop.beehive.core.capi.app.AppContextUtil;
import com.intershop.component.product.capi.ProductBO;

public final class ProductTypeCode_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html;charset=utf-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 0, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 
 

setEncodingType("text/html"); 

	Product product = (Product)getObject("Product");
	
  	boolean typeFound = false;
  	if (product.isBundled()) {
		
 {out.write(localizeISText("sld_enterprise_app.BundledProduct.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
typeFound = true;
  	}
  	if (product.isMastered()) {
		if(typeFound){ 
      out.write("<br/>");
} 
 {out.write(localizeISText("sld_enterprise_app.VariationProduct.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
 typeFound = true;
  	}
  	if (product.isProductBundle()) {
		if(typeFound){ 
      out.write("<br/>");
}
 {out.write(localizeISText("sld_enterprise_app.ProductBundle.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
     typeFound = true;
  	}
 	if (product.isProductMaster()) {
		if(typeFound){ 
      out.write("<br/>");
}
 {out.write(localizeISText("sld_enterprise_app.VariationMaster.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
   typeFound = true;
	}
	if ((product.getTypeCode() & 128) == 128) {
		if(typeFound){ 
      out.write("<br/>");
}
 {out.write(localizeISText("ProductTypeCode.RetailSet",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(' ');
 typeFound = true;
	}
	if ((product.getTypeCode() & 256) == 256) {
		if(typeFound){ 
      out.write("<br/>");
}
 {out.write(localizeISText("ProductTypeCode.PartOfRetailSet",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(' ');
 typeFound = true;
	}

    AppContext appContext = AppContextUtil.getCurrentAppContext();
    BusinessObjectContext boContext = (BusinessObjectContext)appContext.getVariable(BusinessObjectContext.NAME);
    BusinessObjectRepositoryFactory<RepositoryBORepository> repositoryFactory = boContext.getEngine().getRepositoryFactory(RepositoryBORepository.class);
    RepositoryBORepository repositoryBORepository = repositoryFactory.createRepository(boContext);
    RepositoryBO repository = repositoryBORepository.getRepositoryByID(product.getDomainID());
    ProductBORepository productBORepository = repository.getExtension(ProductBORepository.class);

	ProductBO productBO = productBORepository.getProductByID(product.getUUID());
	
	if ( productBO != null )
	{
		ServiceTypeBO serviceTypeBO = productBO.getServiceType();
		if (serviceTypeBO!=null)
		{
			if(typeFound) { out.print("<br/>"); } 
			else { typeFound = true; }
			out.print(serviceTypeBO.getDisplayName());		
		}
	}
	if (!typeFound && (product.isProductItem() || product.isOffer())) {
		
 {out.write(localizeISText("BrowseClassificationCatalog.Product.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 

	}

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
