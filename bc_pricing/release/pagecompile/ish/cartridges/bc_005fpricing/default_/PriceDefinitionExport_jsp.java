/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-13 15:30:15 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.bc_005fpricing.default_;

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
import com.intershop.beehive.core.capi.environment.ORMMgr;
import com.intershop.beehive.xcs.capi.product.*;
import com.intershop.beehive.core.capi.naming.*;
import com.intershop.beehive.core.capi.domain.*;
import com.intershop.component.pricing.capi.definition.*;
import com.intershop.component.pricing.capi.scale.*;
import com.intershop.component.pricing.internal.scale.*;
import java.io.*;
import java.sql.*;
import java.util.*;
import java.text.*;

public final class PriceDefinitionExport_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
    implements org.apache.jasper.runtime.JspSourceDependent {

 protected Boolean printTemplateMarker() { return Boolean.FALSE; } 
 	PriceDefinitionMgr priceDefinitionMgr = (PriceDefinitionMgr)NamingMgr.getInstance().lookupManager(PriceDefinitionMgr.REGISTRY_NAME);	PriceScaleMgr priceScaleMgr = (PriceScaleMgr)NamingMgr.getInstance().lookupManager(PriceScaleMgr.REGISTRY_NAME);	ORMMgr ormMgr = (ORMMgr)NamingMgr.getInstance().lookupManager(ORMMgr.REGISTRY_NAME);	List getTypeCodes(String domainID)		throws SQLException	{		List typeCodes = new ArrayList();		PreparedStatement stmt = null;		try		{			Connection con = ormMgr.getORMEngine().getJDBCManager().getCurrentConnection();			stmt = con.prepareStatement(				"select distinct typecode from PRICEDEFINITIONPRODUCTBINDING where domainid=?");			stmt.setString(1, domainID);			ResultSet rs = stmt.executeQuery();			while (rs.next())			{				typeCodes.add(new Integer(rs.getInt("typecode")));					}		}		finally		{			if (stmt != null) stmt.close();					}		return typeCodes;	}	
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
      out.write("\n<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n\n\n<enfinity \n\txsi:schemaLocation=\"http://www.intershop.com/xml/ns/enfinity/7.1/bc_pricing/impex bc_pricing.xsd\"\n\txmlns=\"http://www.intershop.com/xml/ns/enfinity/7.1/bc_pricing/impex\"\n\txmlns:xml=\"http://www.w3.org/XML/1998/namespace\" \n\txmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\"\n\txmlns:dt=\"http://www.intershop.com/xml/ns/enfinity/6.5/core/impex-dt\">\n\t");
 context.setCustomTagTemplateName("pricedefinition","inc/PriceDefinition",false,new String[]{"product","typecode","definitions"},null); 
      out.write('\n');
      out.write('	');
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Objects"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",26,e);}if (_boolean_result) { 
      out.write('\n');
      out.write('	');
      out.write('	');

			Iterator products = (Iterator)getObject("Objects");
			while (products instanceof com.intershop.beehive.foundation.util.ResettableIterator)
			{
				products = ((com.intershop.beehive.foundation.util.ResettableIterator)products).toSequence();
			}
			List typeCodes = null;			while (products.hasNext())
			{
			  Product product = (Product)products.next();
				if (typeCodes == null)				{					typeCodes = getTypeCodes(product.getDomainID());				}				for (int i = 0, n = typeCodes.size(); i < n; ++i)				{
					Integer typeCode = (Integer)typeCodes.get(i);					Iterator defs = priceDefinitionMgr.getPriceDefinitions(product, typeCode.intValue());					getPipelineDictionary().put("definitions", defs);					getPipelineDictionary().put("product", product);					getPipelineDictionary().put("typecode", typeCode);					
      out.write("\t\t\t\t\t");
 processOpenTag(response, pageContext, "pricedefinition", new TagParameter[] {
new TagParameter("typecode",getObject("typecode")),
new TagParameter("product",getObject("product")),
new TagParameter("definitions",getObject("definitions"))}, 37); 
      out.write("\t\t\t\t\t");
							}			}		
      out.write('\n');
      out.write('	');
 } 
      out.write("\n</enfinity>\n\n");
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