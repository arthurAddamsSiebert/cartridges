/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-13 15:29:56 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.ac_005fbmecat.default_.inc;

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
import java.util.*;
import com.intershop.beehive.xcs.capi.product.*;
import com.intershop.beehive.xcs.capi.price.*;
import com.intershop.beehive.core.capi.naming.*;
import com.intershop.component.pricing.capi.definition.*;

public final class ArticlePriceDetails_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
 context.setCustomTagTemplateName("scaledprice","inc/ArticlePriceDetailsScaledPrice",false,new String[]{"scaledprice"},null); 
      out.write('\n');
      out.write('\n');
 _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("Product:ListPricesCount")).doubleValue() >((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",8,e);}if (_boolean_result) { 
      out.write("\n\t<ARTICLE_PRICE_DETAILS>\n\t");
 while (loop("Product:ListPrices","ListPrice",null)) { 
      out.write("\t\n\t    ");
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("BMEEnumChecker:isValidElement(\"bmecat\",\"dtCURRENCIES\",ListPrice:Currency)"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",11,e);}if (_boolean_result) { 
      out.write("\n\t\t\t<ARTICLE_PRICE price_type=\"net_list\">\n\t\t\t\t<PRICE_AMOUNT>");
 {String value = null;try{value=context.getFormattedValue(getObject("ListPrice:Value"),"#0.0#","DecimalSeparator=.");}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {13}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</PRICE_AMOUNT>\n\t\t\t\t<PRICE_CURRENCY>");
 {String value = null;try{value=context.getFormattedValue(getObject("ListPrice:Currency"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {14}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</PRICE_CURRENCY>\n\t\t\t\t<LOWER_BOUND>1</LOWER_BOUND>\n\t\t\t</ARTICLE_PRICE>\n\t\t");
 } 
      out.write('\n');
      out.write('	');
 } 
      out.write("\n\t</ARTICLE_PRICE_DETAILS>\n");
 } 
      out.write('\n');
      out.write('\n');

	PriceDefinitionMgr priceDefMgr = 
		(PriceDefinitionMgr)NamingMgr.getInstance().
			lookupManager(PriceDefinitionMgr.REGISTRY_NAME);
	Product product = (Product)getObject("Product");
	getPipelineDictionary().put("ScaledProductListPrices",
		priceDefMgr.getPriceDefinitions(product, PriceDefinitionConstants.SCALED_PRODUCT_LIST_PRICES));
	getPipelineDictionary().put("ScaledProductGroupPrices",
		priceDefMgr.getPriceDefinitions(product, PriceDefinitionConstants.SCALED_PRODUCT_GROUP_PRICES));

      out.write('\n');
 while (loop("ScaledProductListPrices","ScaledPrice",null)) { 
      out.write('\n');
      out.write('	');
 processOpenTag(response, pageContext, "scaledprice", new TagParameter[] {
new TagParameter("scaledprice",getObject("ScaledPrice"))}, 33); 
      out.write('\n');
 } 
      out.write('\n');
 while (loop("ScaledProductGroupPrices","ScaledPrice",null)) { 
      out.write('\n');
      out.write('	');
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ScaledPrice:UserGroup:Domain:DomainName"),null).equals(context.getFormattedValue(getObject("BuyingOrganization:ID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",36,e);}if (_boolean_result) { 
      out.write('\n');
      out.write('	');
      out.write('	');
 processOpenTag(response, pageContext, "scaledprice", new TagParameter[] {
new TagParameter("scaledprice",getObject("ScaledPrice"))}, 37); 
      out.write('\n');
      out.write('	');
 } 
      out.write('\n');
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
