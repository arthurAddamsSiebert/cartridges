/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-16 22:40:03 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.app_005fsf_005fresponsive_005fcm.default_.component.recommendation;

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

public final class ProductListRecommendation_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
    implements org.apache.jasper.runtime.JspSourceDependent {

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
 
 
response.setHeader(TemplateConstants.PERSONALIZED_HEADER, "1");setEncodingType("text/html"); 
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"modules/Modules", null, "2");} 
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/RecommModules", null, "3");} 
 {Object temp_obj = ("true"); getPipelineDictionary().put("execute", temp_obj);} 
 out.print(context.prepareWAPlacement("JS_head")); 
      out.write("<script type=\"text/javascript\" src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/js/recommendation.js\"></script>");
 out.print("</waplacement>"); 
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"component/common/inc/CollectionItemPrefix.isml", null, "7");} 
      out.write("<div id=\"recommendation-engine-list\" class=\"product-list-container ");
 {String value = null;try{value=context.getFormattedValue(getObject("PageletConfigurationParameters:CSSClass"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {10}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" style=\"display: none;\">");
 _boolean_result=false;try {_boolean_result=((Boolean)(((!((Boolean) ((((context.getFormattedValue(getObject("RenderedInCollection"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("PageletConfigurationParameters:Title")))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("PageletConfigurationParameters:Title"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",12,e);}if (_boolean_result) { 
      out.write("<h2>");
 {String value = null;try{value=context.getFormattedValue(getObject("PageletConfigurationParameters:Title"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {13}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</h2>");
 } 
      out.write("<script type=\"text/javascript\">\nvar recommMaxNumbersOfProducts=99;\n");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PageletConfigurationParameters:MaxNumberOfProducts"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",19,e);}if (_boolean_result) { 
      out.write("\nrecommMaxNumbersOfProducts=");
 {String value = null;try{value=context.getFormattedValue(getObject("PageletConfigurationParameters:MaxNumberOfProducts"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {20}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write(';');
      out.write('\n');
 } 
      out.write("\nvar recommViewContextId='';\n");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PageletConfigurationParameters:ProductView"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",23,e);}if (_boolean_result) { 
      out.write("\nrecommViewContextId='");
 {String value = null;try{value=context.getFormattedValue(getObject("PageletConfigurationParameters:ProductView:Id"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {24}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('\'');
      out.write(';');
      out.write('\n');
 } 
      out.write("</script>");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("PageletConfigurationParameters:ListStyle")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("PageletConfigurationParameters:ListStyle"),null).equals(context.getFormattedValue("carousel",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",28,e);}if (_boolean_result) { 
      out.write("<div class=\"product-list slick-carousel\" data-li-css-classes=\"product-list-item ");
 {String value = null;try{value=context.getFormattedValue(getObject("PageletConfigurationParameters:ListItemCSSClass"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {30}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write('\n');
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PageletConfigurationParameters:SlideItems"),null).equals(context.getFormattedValue("1",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",31,e);}if (_boolean_result) { 
      out.write("\ndata-slick='{\"slidesToShow\": 1, \"slidesToScroll\": 1}'\n");
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PageletConfigurationParameters:SlideItems"),null).equals(context.getFormattedValue("2",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",33,e);}if (_boolean_result) { 
      out.write("\ndata-slick='{\"slidesToShow\": 2, \"slidesToScroll\": 2}'\n");
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PageletConfigurationParameters:SlideItems"),null).equals(context.getFormattedValue("3",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",35,e);}if (_boolean_result) { 
      out.write("\ndata-slick='{\"slidesToShow\": 3, \"slidesToScroll\": 3, \"responsive\": [{\"breakpoint\": 992, \"settings\": {\"slidesToShow\": 2, \"slidesToScroll\": 2}}]}'\n");
 } else { 
      out.write("\ndata-slick='{\"slidesToShow\": 4, \"slidesToScroll\": 4, \"responsive\": [{\"breakpoint\": 992, \"settings\": {\"slidesToShow\": 3, \"slidesToScroll\": 3}}, {\"breakpoint\": 768, \"settings\": {\"slidesToShow\": 2, \"slidesToScroll\": 2}}]}'\n");
 }}} 
      out.write("\n>\n</div>");
 } else { 
      out.write("<div class=\"product-list row\" data-li-css-classes=\"product-list-item ");
 {String value = null;try{value=context.getFormattedValue(getObject("PageletConfigurationParameters:ListItemCSSClass"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {44}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"></div>");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PageletConfigurationParameters:RecommendationType"),null).equals(context.getFormattedValue("Product",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",48,e);}if (_boolean_result) { 
 processOpenTag(response, pageContext, "productrecommrequest", new TagParameter[] {
new TagParameter("ItemIDs",getObject("ProductBO:SKU"))}, 49); 
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PageletConfigurationParameters:RecommendationType"),null).equals(context.getFormattedValue("Cart",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",50,e);}if (_boolean_result) { 
 while (loop("Dictionary:CurrentCartBO:ProductLineItemBOs","PLI",null)) { 
 {Object temp_obj = (getObject("PLI:ProductBO:SKU")); getPipelineDictionary().put("SKU", temp_obj);} 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("SKUList"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",53,e);}if (_boolean_result) { 
 {Object temp_obj = (context.getFormattedValue(getObject("SKUList"),null) + context.getFormattedValue(",",null) + context.getFormattedValue(getObject("SKU"),null)); getPipelineDictionary().put("SKUList", temp_obj);} 
 } else { 
 {Object temp_obj = (getObject("SKU")); getPipelineDictionary().put("SKUList", temp_obj);} 
 } 
 } 
 processOpenTag(response, pageContext, "basketrecommrequest", new TagParameter[] {
new TagParameter("ItemIDs",getObject("SKUList"))}, 59); 
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PageletConfigurationParameters:RecommendationType"),null).equals(context.getFormattedValue("SearchTerm",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",60,e);}if (_boolean_result) { 
 processOpenTag(response, pageContext, "searchrecommrequest", new TagParameter[] {
new TagParameter("SearchTerm",getObject("SearchTerm"))}, 61); 
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PageletConfigurationParameters:RecommendationType"),null).equals(context.getFormattedValue("TopSeller",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",62,e);}if (_boolean_result) { 
 processOpenTag(response, pageContext, "topsellerrecommrequest", new TagParameter[] {
}, 63); 
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PageletConfigurationParameters:RecommendationType"),null).equals(context.getFormattedValue("User",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",64,e);}if (_boolean_result) { 
 processOpenTag(response, pageContext, "userrecommrequest", new TagParameter[] {
}, 65); 
 } else { 
 }}}}} 
      out.write("</div>");
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"component/common/inc/CollectionItemSuffix.isml", null, "72");} 
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
