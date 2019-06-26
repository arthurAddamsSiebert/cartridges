/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-13 15:29:12 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.sld_005fch_005fbase.default_.marketing.inc.createPromotionErrorTemplates;

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

public final class FixDiscountOnOrderErrors_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
 
 
setEncodingType("text/html"); 
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ActionForm:isInvalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",3,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ActionForm:TargetPrice:isInvalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",6,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("ActionForm:TargetPrice:Errors"))))).booleanValue() && ((Boolean) ((hasLoopElements("ActionForm:TargetPrice:Errors") ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",8,e);}if (_boolean_result) { 
 while (loop("ActionForm:TargetPrice:Errors","Error",null)) { 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Error"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",11,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("Error"),null).equals(context.getFormattedValue("error.minmoney",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",12,e);}if (_boolean_result) { 
 {out.write(localizeISText("error.template.rule.MoneyCondition.NotLessThanZero.Money","",null,replace(context.getFormattedValue(localizeText(context.getFormattedValue("promotion.input.order.value",null)),null),(String)(":"),(String)("")),null,null,null,null,null,null,null,null,null));} 
 } else { 
 {out.write(localizeISText(context.getFormattedValue(getObject("Error"),null),"",null,null,null,null,null,null,null,null,null,null,null));} 
 } 
 } 
      out.write("<br/>");
 } 
 } else { 
 while (loop("ActionForm:TargetPrice:Fields","Field",null)) { 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Field:Errors"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",24,e);}if (_boolean_result) { 
 while (loop("Field:Errors","Error",null)) { 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Error"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",26,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("Error"),null).equals(context.getFormattedValue("error.required",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",27,e);}if (_boolean_result) { 
 {out.write(localizeISText("error.template.rule.MoneyCondition.NotLessThanZero.Money","",null,replace(context.getFormattedValue(localizeText(context.getFormattedValue("promotion.input.order.value",null)),null),(String)(":"),(String)("")),null,null,null,null,null,null,null,null,null));} 
 } else { 
 {out.write(localizeISText(context.getFormattedValue(getObject("Error"),null),"",null,null,null,null,null,null,null,null,null,null,null));} 
 } 
 } 
      out.write("<br/>");
 } 
 } 
 } 
 } 
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ActionForm:GrantedDiscount:isInvalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",43,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("ActionForm:GrantedDiscount:Errors"))))).booleanValue() && ((Boolean) ((hasLoopElements("ActionForm:GrantedDiscount:Errors") ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",45,e);}if (_boolean_result) { 
 while (loop("ActionForm:GrantedDiscount:Errors","Error",null)) { 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Error"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",48,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("Error"),null).equals(context.getFormattedValue("error.minmoney",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",49,e);}if (_boolean_result) { 
 {out.write(localizeISText("error.template.rule.MoneyCondition.NotLessThanZero.Money","",null,replace(context.getFormattedValue(localizeText(context.getFormattedValue("promotion.input.discount.value",null)),null),(String)(":"),(String)("")),null,null,null,null,null,null,null,null,null));} 
 } else { 
 {out.write(localizeISText(context.getFormattedValue(getObject("Error"),null),"",null,null,null,null,null,null,null,null,null,null,null));} 
 } 
 } 
      out.write("<br/>");
 } 
 } else { 
 while (loop("ActionForm:GrantedDiscount:Fields","Field",null)) { 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Field:Errors"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",61,e);}if (_boolean_result) { 
 while (loop("Field:Errors","Error",null)) { 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Error"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",63,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("Error"),null).equals(context.getFormattedValue("error.required",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",64,e);}if (_boolean_result) { 
 {out.write(localizeISText("error.template.rule.MoneyCondition.NotLessThanZero.Money","",null,replace(context.getFormattedValue(localizeText(context.getFormattedValue("promotion.input.discount.value",null)),null),(String)(":"),(String)("")),null,null,null,null,null,null,null,null,null));} 
 } else { 
 {out.write(localizeISText(context.getFormattedValue(getObject("Error"),null),"",null,null,null,null,null,null,null,null,null,null,null));} 
 } 
 } 
      out.write("<br/>");
 } 
 } 
 } 
 } 
 } 
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
