/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-13 15:30:08 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.bc_005fmarketing.default_.inc.condition;

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

public final class DisplayItemInclusionsExclusionsCondition_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
 
      out.write('\n');
 
setEncodingType("text/html"); 
 _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("readonly")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("readonly"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",3,e);}if (_boolean_result) { 
      out.write("<a href=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("ConditionConfigurationURL"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {4}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" class=\"table_detail_link\">");
 {String value = null;try{value=context.getFormattedValue(getObject("ThisDescriptor:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {4}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</a>&nbsp;\n");
 } else { 
 {String value = null;try{value=context.getFormattedValue(getObject("ThisDescriptor:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {6}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("&nbsp;\n");
 } 
 {try{executePipeline("ProcessItemInclusionsExclusionsConditionConfiguration-GetInclusionsExclusions",((java.util.Map)(((new ParameterMap().addParameter(new ParameterEntry("Condition",getObject("Condition"))))))),"Result");}catch(Exception e){Logger.error(this,"ISPIPELINE failed. Line: 8.",e);}} 
 _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("Result:IncludedProductsPageable")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("Result:IncludedCategoriesPageable")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("Result:ExcludedProductsPageable")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("Result:ExcludedCategoriesPageable")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",9,e);}if (_boolean_result) { 
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/condition/ItemInclusionsExclusionsConditionIncompleteness", null, "10");} 
 } 
      out.write("<table cellpadding=\"0\" cellspacing=\"0\" border=\"0\" width=\"100%\">\n<tr>\n<td class=\"table_detail\">");
 {Object temp_obj = ("false"); getPipelineDictionary().put("IncludeSeparator", temp_obj);} 
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("Result:IncludedProductsPageable")))).booleanValue() && ((Boolean) ((( ((Number) getObject("Result:IncludedProductsPageable:ElementCount")).doubleValue() >((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",16,e);}if (_boolean_result) { 
 {Object temp_obj = ("true"); getPipelineDictionary().put("IncludeSeparator", temp_obj);} 
 {Object temp_obj = (new Double(0)); getPipelineDictionary().put("counter", temp_obj);} 
 {String value = null;try{value=context.getFormattedValue(getObject("Result:IncludedProductsPageable:ElementCount"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {20}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write(' ');
 {out.write(localizeISText("DisplayItemInclusionsExclusionsCondition.IncludedProducts.table_detail","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(' ');
 while (loop("Result:IncludedProductsPageable","IncludedProduct",null)) { 
 {Object temp_obj = ((new Double( ((Number) getObject("counter")).doubleValue() +((Number) new Double(1)).doubleValue()))); getPipelineDictionary().put("counter", temp_obj);} 
 _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("counter")).doubleValue() >((Number)(new Double(3))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",20,e);}if (_boolean_result) { 
      out.write(", ... ");
 if (getLoopStack().isEmpty()) {Logger.error(this,"ISBREAK occured outside ISLOOP. Line: {}",20);}else{getLoopStack().pop();break;} 
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("counter")).doubleValue() >((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",20,e);}if (_boolean_result) { 
      out.write(',');
      out.write(' ');
 } 
 {String value = null;try{value=context.getFormattedValue(getObject("IncludedProduct:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {20}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write(' ');
      out.write('(');
 {String value = null;try{value=context.getFormattedValue(getObject("IncludedProduct:SKU"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {20}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write(')');
 } 
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("Result:IncludedCategoriesPageable")))).booleanValue() && ((Boolean) ((( ((Number) getObject("Result:IncludedCategoriesPageable:ElementCount")).doubleValue() >((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",22,e);}if (_boolean_result) { 
 {Object temp_obj = ("true"); getPipelineDictionary().put("IncludeSeparator", temp_obj);} 
 {Object temp_obj = (new Double(0)); getPipelineDictionary().put("counter", temp_obj);} 
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("IncludeSeparator"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",26,e);}if (_boolean_result) { 
      out.write("<br/>");
 } 
 {String value = null;try{value=context.getFormattedValue(getObject("Result:IncludedCategoriesPageable:ElementCount"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {26}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write(' ');
 {out.write(localizeISText("DisplayItemInclusionsExclusionsCondition.IncludedCategories.table_detail","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(' ');
 while (loop("Result:IncludedCategoriesPageable","IncludedCategory",null)) { 
 {Object temp_obj = ((new Double( ((Number) getObject("counter")).doubleValue() +((Number) new Double(1)).doubleValue()))); getPipelineDictionary().put("counter", temp_obj);} 
 _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("counter")).doubleValue() >((Number)(new Double(3))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",26,e);}if (_boolean_result) { 
      out.write(", ... ");
 if (getLoopStack().isEmpty()) {Logger.error(this,"ISBREAK occured outside ISLOOP. Line: {}",26);}else{getLoopStack().pop();break;} 
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("counter")).doubleValue() >((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",26,e);}if (_boolean_result) { 
      out.write(',');
      out.write(' ');
 } 
 {String value = null;try{value=context.getFormattedValue(getObject("IncludedCategory:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {26}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write(' ');
      out.write('(');
 {String value = null;try{value=context.getFormattedValue(getObject("IncludedCategory:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {26}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write(')');
 } 
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("Result:ExcludedProductsPageable")))).booleanValue() && ((Boolean) ((( ((Number) getObject("Result:ExcludedProductsPageable:ElementCount")).doubleValue() >((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",28,e);}if (_boolean_result) { 
 {Object temp_obj = ("true"); getPipelineDictionary().put("IncludeSeparator", temp_obj);} 
 {Object temp_obj = (new Double(0)); getPipelineDictionary().put("counter", temp_obj);} 
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("IncludeSeparator"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",32,e);}if (_boolean_result) { 
      out.write("<br/>");
 } 
 {String value = null;try{value=context.getFormattedValue(getObject("Result:ExcludedProductsPageable:ElementCount"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {32}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write(' ');
 {out.write(localizeISText("DisplayItemInclusionsExclusionsCondition.ExcludedProducts.table_detail","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(' ');
 while (loop("Result:ExcludedProductsPageable","ExcludedProduct",null)) { 
 {Object temp_obj = ((new Double( ((Number) getObject("counter")).doubleValue() +((Number) new Double(1)).doubleValue()))); getPipelineDictionary().put("counter", temp_obj);} 
 _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("counter")).doubleValue() >((Number)(new Double(3))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",32,e);}if (_boolean_result) { 
      out.write(", ... ");
 if (getLoopStack().isEmpty()) {Logger.error(this,"ISBREAK occured outside ISLOOP. Line: {}",32);}else{getLoopStack().pop();break;} 
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("counter")).doubleValue() >((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",32,e);}if (_boolean_result) { 
      out.write(',');
      out.write(' ');
 } 
 {String value = null;try{value=context.getFormattedValue(getObject("ExcludedProduct:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {32}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write(' ');
      out.write('(');
 {String value = null;try{value=context.getFormattedValue(getObject("ExcludedProduct:SKU"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {32}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write(')');
 } 
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("Result:ExcludedCategoriesPageable")))).booleanValue() && ((Boolean) ((( ((Number) getObject("Result:ExcludedCategoriesPageable:ElementCount")).doubleValue() >((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",34,e);}if (_boolean_result) { 
 {Object temp_obj = ("true"); getPipelineDictionary().put("IncludeSeparator", temp_obj);} 
 {Object temp_obj = (new Double(0)); getPipelineDictionary().put("counter", temp_obj);} 
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("IncludeSeparator"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",38,e);}if (_boolean_result) { 
      out.write("<br/>");
 } 
 {String value = null;try{value=context.getFormattedValue(getObject("Result:ExcludedCategoriesPageable:ElementCount"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {38}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write(' ');
 {out.write(localizeISText("DisplayItemInclusionsExclusionsCondition.ExcludedCategories.table_detail","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(' ');
 while (loop("Result:ExcludedCategoriesPageable","ExcludedCategory",null)) { 
 {Object temp_obj = ((new Double( ((Number) getObject("counter")).doubleValue() +((Number) new Double(1)).doubleValue()))); getPipelineDictionary().put("counter", temp_obj);} 
 _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("counter")).doubleValue() >((Number)(new Double(3))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",38,e);}if (_boolean_result) { 
      out.write(", ... ");
 if (getLoopStack().isEmpty()) {Logger.error(this,"ISBREAK occured outside ISLOOP. Line: {}",38);}else{getLoopStack().pop();break;} 
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("counter")).doubleValue() >((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",38,e);}if (_boolean_result) { 
      out.write(',');
      out.write(' ');
 } 
 {String value = null;try{value=context.getFormattedValue(getObject("ExcludedCategory:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {38}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write(' ');
      out.write('(');
 {String value = null;try{value=context.getFormattedValue(getObject("ExcludedCategory:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {38}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write(')');
 } 
 } 
      out.write("</td>\n</tr>\n</table>");
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