/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-13 15:29:32 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.sld_005fenterprise_005fapp.default_.productdifferences;

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

public final class ProductStatusDetail_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("NewProductSnapShot:ValidFrom")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("NewProductSnapShot:ValidTo")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",3,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("NewProductSnapShot:AvailabilityStatus"),null).equals(context.getFormattedValue("1",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",4,e);}if (_boolean_result) { 
 {Object temp_obj = ("limited online"); getPipelineDictionary().put("NewState", temp_obj);} 
 } else { 
 {Object temp_obj = ("limited offline"); getPipelineDictionary().put("NewState", temp_obj);} 
 } 
 } else { 
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("NewProductSnapShot:Online"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",10,e);}if (_boolean_result) { 
 {Object temp_obj = ("always online"); getPipelineDictionary().put("NewState", temp_obj);} 
 } else { 
 {Object temp_obj = ("always offline"); getPipelineDictionary().put("NewState", temp_obj);} 
 } 
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("OldProductSnapShot:ValidFrom")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("OldProductSnapShot:ValidTo")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",16,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("OldProductSnapShot:AvailabilityStatus"),null).equals(context.getFormattedValue("1",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",17,e);}if (_boolean_result) { 
 {Object temp_obj = ("limited online"); getPipelineDictionary().put("OldState", temp_obj);} 
 } else { 
 {Object temp_obj = ("limited offline"); getPipelineDictionary().put("OldState", temp_obj);} 
 } 
 } else { 
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("OldProductSnapShot:Online"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",23,e);}if (_boolean_result) { 
 {Object temp_obj = ("always online"); getPipelineDictionary().put("OldState", temp_obj);} 
 } else { 
 {Object temp_obj = ("always offline"); getPipelineDictionary().put("OldState", temp_obj);} 
 } 
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (((!(context.getFormattedValue(getObject("NewState"),null).equals(context.getFormattedValue(getObject("OldState"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) (((!(context.getFormattedValue(context.getFormattedValue(getObject("NewProductSnapShot:ValidFrom"),new Integer(DATE_SHORT)),null).equals(context.getFormattedValue(context.getFormattedValue(getObject("OldProductSnapShot:ValidFrom"),new Integer(DATE_SHORT)),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) (((!(context.getFormattedValue(context.getFormattedValue(getObject("NewProductSnapShot:ValidTo"),new Integer(DATE_SHORT)),null).equals(context.getFormattedValue(context.getFormattedValue(getObject("OldProductSnapShot:ValidTo"),new Integer(DATE_SHORT)),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) (((!(context.getFormattedValue(context.getFormattedValue(getObject("NewProductSnapShot:ValidFrom"),new Integer(DATE_TIME)),null).equals(context.getFormattedValue(context.getFormattedValue(getObject("OldProductSnapShot:ValidFrom"),new Integer(DATE_TIME)),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) (((!(context.getFormattedValue(context.getFormattedValue(getObject("NewProductSnapShot:ValidTo"),new Integer(DATE_TIME)),null).equals(context.getFormattedValue(context.getFormattedValue(getObject("OldProductSnapShot:ValidTo"),new Integer(DATE_TIME)),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",30,e);}if (_boolean_result) { 
 {Object temp_obj = ("true"); getPipelineDictionary().put("ProductChange", temp_obj);} 
      out.write("<tr><td class=\"w e\" colspan=\"3\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"1\" height=\"2\" alt=\"\" border=\"0\"/></td></tr>\n<tr>\n<td class=\"table_header w e n\" colspan=\"3\">");
 {out.write(localizeISText("ProductStatusDetail.OnlineStatus.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n<tr>\n<td class=\"table_header w n e s\">&nbsp;</td>\n<td class=\"table_header n e s\">");
 {out.write(localizeISText("ProductStatusDetail.MasterProduct.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n<td class=\"table_header n e s\">");
 {out.write(localizeISText("ProductStatusDetail.DerivedProduct.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n<tr>\n<td class=\"table_detail w e s\">");
 {out.write(localizeISText("ProductStatusDetail.Status.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":&nbsp;</td>\n<td class=\"table_detail e s\">");
 {String value = null;try{value=context.getFormattedValue(getObject("NewState"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {47}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("&nbsp;</td>\n<td class=\"table_detail e s\">");
 {String value = null;try{value=context.getFormattedValue(getObject("OldState"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {48}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("&nbsp;</td>\n</tr>\n<tr>\n<td class=\"table_detail w e s\">");
 {out.write(localizeISText("ProductStatusDetail.StartDate.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":&nbsp;</td>\n<td class=\"table_detail e s\">");
 {String value = null;try{value=context.getFormattedValue(context.getFormattedValue(getObject("NewProductSnapShot:ValidFrom"),new Integer(DATE_SHORT)),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {52}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("&nbsp;");
 {String value = null;try{value=context.getFormattedValue(context.getFormattedValue(getObject("NewProductSnapShot:ValidFrom"),new Integer(DATE_TIME)),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {52}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("&nbsp;</td>\n<td class=\"table_detail e s\">");
 {String value = null;try{value=context.getFormattedValue(context.getFormattedValue(getObject("OldProductSnapShot:ValidFrom"),new Integer(DATE_SHORT)),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {53}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("&nbsp;");
 {String value = null;try{value=context.getFormattedValue(context.getFormattedValue(getObject("OldProductSnapShot:ValidFrom"),new Integer(DATE_TIME)),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {53}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("&nbsp;</td>\n</tr>\n<tr>\n<td class=\"table_detail w e s\">");
 {out.write(localizeISText("ProductStatusDetail.EndDate.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":&nbsp;</td>\n<td class=\"table_detail e s\">");
 {String value = null;try{value=context.getFormattedValue(context.getFormattedValue(getObject("NewProductSnapShot:ValidTo"),new Integer(DATE_SHORT)),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {57}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("&nbsp;");
 {String value = null;try{value=context.getFormattedValue(context.getFormattedValue(getObject("NewProductSnapShot:ValidTo"),new Integer(DATE_TIME)),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {57}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("&nbsp;</td>\n<td class=\"table_detail e s\">");
 {String value = null;try{value=context.getFormattedValue(context.getFormattedValue(getObject("OldProductSnapShot:ValidTo"),new Integer(DATE_SHORT)),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {58}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("&nbsp;");
 {String value = null;try{value=context.getFormattedValue(context.getFormattedValue(getObject("OldProductSnapShot:ValidTo"),new Integer(DATE_TIME)),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {58}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("&nbsp;</td>\n</tr>");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (((!(context.getFormattedValue(context.getFormattedValue(getObject("NewProductSnapShot:LastOrderDate"),new Integer(DATE_SHORT)),null).equals(context.getFormattedValue(context.getFormattedValue(getObject("OldProductSnapShot:LastOrderDate"),new Integer(DATE_SHORT)),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) (((!(context.getFormattedValue(context.getFormattedValue(getObject("NewProductSnapShot:EndOfLife"),new Integer(DATE_SHORT)),null).equals(context.getFormattedValue(context.getFormattedValue(getObject("OldProductSnapShot:EndOfLife"),new Integer(DATE_SHORT)),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) (((!(context.getFormattedValue(context.getFormattedValue(getObject("NewProductSnapShot:LastOrderDate"),new Integer(DATE_TIME)),null).equals(context.getFormattedValue(context.getFormattedValue(getObject("OldProductSnapShot:LastOrderDate"),new Integer(DATE_TIME)),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) (((!(context.getFormattedValue(context.getFormattedValue(getObject("NewProductSnapShot:EndOfLife"),new Integer(DATE_TIME)),null).equals(context.getFormattedValue(context.getFormattedValue(getObject("OldProductSnapShot:EndOfLife"),new Integer(DATE_TIME)),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",62,e);}if (_boolean_result) { 
 {Object temp_obj = ("true"); getPipelineDictionary().put("ProductChange", temp_obj);} 
      out.write("<tr><td class=\"w e\" colspan=\"3\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"1\" height=\"2\" alt=\"\" border=\"0\"/></td></tr>\n<tr>\n<td colspan=\"3\" class=\"table_header aldi\">");
 {out.write(localizeISText("ProductStatusDetail.ProductLifecycle.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n<tr>\n<td class=\"table_detail w e s top\" colspan=\"3\">");
 {out.write(localizeISText("ProductStatusDetail.TheFollowingDatesHaveBeenChanged.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":</td>\n</tr>\n<tr>\n<td class=\"table_header e s\" width=\"10%\">&nbsp;</td>\n<td class=\"table_header e s\">");
 {out.write(localizeISText("ProductStatusDetail.MasterProduct.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":</td>\n<td class=\"table_header s\">");
 {out.write(localizeISText("ProductStatusDetail.DerivedProduct.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":</td>\n</tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (((!(context.getFormattedValue(context.getFormattedValue(getObject("NewProductSnapShot:LastOrderDate"),new Integer(DATE_SHORT)),null).equals(context.getFormattedValue(context.getFormattedValue(getObject("OldProductSnapShot:LastOrderDate"),new Integer(DATE_SHORT)),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) (((!(context.getFormattedValue(context.getFormattedValue(getObject("NewProductSnapShot:LastOrderDate"),new Integer(DATE_TIME)),null).equals(context.getFormattedValue(context.getFormattedValue(getObject("OldProductSnapShot:LastOrderDate"),new Integer(DATE_TIME)),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",80,e);}if (_boolean_result) { 
      out.write("<tr>\n<td class=\"table_detail e s\">");
 {out.write(localizeISText("ProductStatusDetail.LastOrderDate.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":&nbsp;</td>\n<td class=\"table_detail e s\">");
 {String value = null;try{value=context.getFormattedValue(context.getFormattedValue(getObject("NewProductSnapShot:LastOrderDate"),new Integer(DATE_SHORT)),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {84}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("&nbsp;");
 {String value = null;try{value=context.getFormattedValue(context.getFormattedValue(getObject("NewProductSnapShot:LastOrderDate"),new Integer(DATE_TIME)),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {84}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("&nbsp;</td>\n<td class=\"table_detail s\">");
 {String value = null;try{value=context.getFormattedValue(context.getFormattedValue(getObject("OldProductSnapShot:LastOrderDate"),new Integer(DATE_SHORT)),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {85}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("&nbsp;");
 {String value = null;try{value=context.getFormattedValue(context.getFormattedValue(getObject("OldProductSnapShot:LastOrderDate"),new Integer(DATE_TIME)),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {85}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("&nbsp;</td>\n</tr>");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (((!(context.getFormattedValue(context.getFormattedValue(getObject("NewProductSnapShot:EndOfLife"),new Integer(DATE_SHORT)),null).equals(context.getFormattedValue(context.getFormattedValue(getObject("OldProductSnapShot:EndOfLife"),new Integer(DATE_SHORT)),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) (((!(context.getFormattedValue(context.getFormattedValue(getObject("NewProductSnapShot:EndOfLife"),new Integer(DATE_TIME)),null).equals(context.getFormattedValue(context.getFormattedValue(getObject("OldProductSnapShot:EndOfLife"),new Integer(DATE_TIME)),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",88,e);}if (_boolean_result) { 
      out.write("<tr>\n<td class=\"table_detail e\">");
 {out.write(localizeISText("ProductStatusDetail.EndOfLife.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":&nbsp;</td>\n<td class=\"table_detail e\">");
 {String value = null;try{value=context.getFormattedValue(context.getFormattedValue(getObject("NewProductSnapShot:EndOfLife"),new Integer(DATE_SHORT)),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {92}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("&nbsp;");
 {String value = null;try{value=context.getFormattedValue(context.getFormattedValue(getObject("NewProductSnapShot:EndOfLife"),new Integer(DATE_TIME)),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {92}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("&nbsp;</td>\n<td class=\"table_detail\">");
 {String value = null;try{value=context.getFormattedValue(context.getFormattedValue(getObject("OldProductSnapShot:EndOfLife"),new Integer(DATE_SHORT)),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {93}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("&nbsp;");
 {String value = null;try{value=context.getFormattedValue(context.getFormattedValue(getObject("OldProductSnapShot:EndOfLife"),new Integer(DATE_TIME)),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {93}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("&nbsp;</td>\n</tr>");
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
