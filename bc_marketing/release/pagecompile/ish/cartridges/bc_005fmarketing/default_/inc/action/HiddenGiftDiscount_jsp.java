/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-13 15:30:08 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.bc_005fmarketing.default_.inc.action;

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

public final class HiddenGiftDiscount_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("EditAction"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",4,e);}if (_boolean_result) { 
      out.write("<input type=\"hidden\" name=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("ActionForm:ActionID:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {5}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("EditAction:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {5}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/>\n<input type=\"hidden\" name=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("ActionForm:ActionDomainID:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {6}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("EditAction:DomainID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {6}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write('/');
      out.write('>');
 {try{executePipeline("ProcessPromotionGiftDiscountConfiguration-GetExcludedCategoriesForProductWizard",((java.util.Map)(((new ParameterMap().addParameter(new ParameterEntry("Domain",getObject("CurrentChannel:Domain"))))))),"resultDict");}catch(Exception e){Logger.error(this,"ISPIPELINE failed. Line: 9.",e);}} 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("resultDict:ExcludedCategoryIDs"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",12,e);}if (_boolean_result) { 
      out.write("<input type=\"hidden\" name=\"ExcludedCategoryIDs\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("resultDict:ExcludedCategoryIDs"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {13}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write('/');
      out.write('>');
 } 
      out.write(' ');
      out.write('\n');
 } 
      out.write("<tr>\n<td class=\"fielditem2\" nowrap=\"nowrap\">&nbsp;</td>\n<td colspan=\"2\">\n<table cellspacing=\"0\" cellpadding=\"0\" border=\"0\">\n<tr>\n<td class=\"button\">\n<input type=\"submit\" class=\"button\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("HiddenGiftDiscount.SelectGiftProductS.input",null)),null));
      out.write("\" name=\"jumpActionIncExc\" />\n<input type=\"hidden\" name=\"hideProductExclusions\" value=\"true\"/>\n<input type=\"hidden\" name=\"hideCategoryInclusions\" value=\"true\"/>\n<input type=\"hidden\" name=\"hideCategoryExclusions\" value=\"true\"/>\n</td>\n</tr>\n</table>\n</td>\n</tr>\n<tr>\n<td class=\"fielditem2\" nowrap=\"nowrap\">&nbsp;</td>\n<td class=\"table_detail\" colspan=\"2\">\n<table cellpadding=\"0\" cellspacing=\"0\" border=\"0\">\n<tr>\n<td ");
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ActionForm:LimitToMaxItemCount:Invalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",36,e);}if (_boolean_result) { 
      out.write("class=\"fielditem2_error\"");
 } else { 
      out.write("class=\"fielditem2\"");
 } 
      out.write('>');
 {out.write(localizeISText("HiddenGiftDiscount.AddSelectedGiftProductS","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("&nbsp;&nbsp;</td>\n<td>\n<input type=\"text\" maxlength=\"8\" size=\"7\" class=\"inputfield_en\"\nname=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("ActionForm:LimitToMaxItemCount:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {39}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" \nvalue=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("ActionForm:LimitToMaxItemCount:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {40}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"\n/>\n</td>\n<td ");
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ActionForm:LimitToMaxItemCount:Invalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",43,e);}if (_boolean_result) { 
      out.write("class=\"fielditem2_error\"");
 } else { 
      out.write("class=\"fielditem2\"");
 } 
      out.write(">&nbsp;&nbsp;");
 {out.write(localizeISText("HiddenGiftDiscount.TimesAutomaticallyToCart","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>\n</td>\n</tr>");
 {Object temp_obj = (getObject("ActionDescriptorMap:get(ActionForm:ActionDescriptorID:Value):PromotionActionTemplate")); getPipelineDictionary().put("PromotionActionTemplate", temp_obj);} 
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("PromotionActionTemplate")))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("PromotionActionTemplate"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",49,e);}if (_boolean_result) { 
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,context.getFormattedValue(getObject("PromotionActionTemplate"),null), null, "50");} 
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
