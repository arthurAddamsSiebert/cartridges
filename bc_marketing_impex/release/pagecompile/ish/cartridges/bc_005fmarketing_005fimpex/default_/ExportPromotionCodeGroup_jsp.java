/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-13 15:30:07 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.bc_005fmarketing_005fimpex.default_;

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
import com.intershop.beehive.core.capi.paging.PageableIterator;
import com.intershop.component.marketingimpex.internal.promotion.codegroup.PromotionCodeGroupExportService;
import com.intershop.component.marketing.capi.code.PromotionCodeGroup;
import java.util.HashSet;
import java.util.Collections;
import java.util.Iterator;

public final class ExportPromotionCodeGroup_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
      out.write("\n\n\n\n\n\n\n\n");
 _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Objects") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",9,e);}if (_boolean_result) { 
      out.write("\n<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"yes\"?>\n<enfinity \n\txsi:schemaLocation=\"http://www.intershop.com/xml/ns/enfinity/6.6/bc_marketing/impex bc_marketing.xsd\n\t\thttp://www.intershop.com/xml/ns/enfinity/6.5/core/impex-dt dt.xsd\"\n\txmlns=\"http://www.intershop.com/xml/ns/enfinity/6.6/bc_marketing/impex\"\t\n\txmlns:ns2=\"http://www.intershop.com/xml/ns/enfinity/6.5/core/impex-dt\"\n\txmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\"\n\txmlns:xml=\"http://www.w3.org/XML/1998/namespace\"\n\txmlns:dt=\"http://www.intershop.com/xml/ns/enfinity/6.5/core/impex-dt\"\n\tmajor=\"6\" minor=\"6\" family=\"enfinity\" branch=\"enterprise\" build=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("BuildNumber"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {19}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\">\n\t\n\t\n\t");

		// retrieve all objects iterator
		Iterator<PromotionCodeGroup> promotionCodeGroups = ((PageableIterator<PromotionCodeGroup>) getObject("Objects")).toSequence();
		
		// create instance of export service
		PromotionCodeGroupExportService exportService = new PromotionCodeGroupExportService(out);
		
		PromotionCodeGroup pcg;
		
		// write XML into out stream
		while (promotionCodeGroups.hasNext()) 
		{
		    pcg = promotionCodeGroups.next();
			exportService.writeXML(pcg);
			out.write("\n");
		}
	
      out.write("\n</enfinity>\t\n");
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
