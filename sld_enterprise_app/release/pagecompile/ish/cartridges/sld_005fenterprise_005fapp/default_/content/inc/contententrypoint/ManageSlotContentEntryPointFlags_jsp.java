/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-13 15:29:31 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.sld_005fenterprise_005fapp.default_.content.inc.contententrypoint;

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

public final class ManageSlotContentEntryPointFlags_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"content/Modules", null, "2");} 
 out.print(context.prepareWAPlacement("JSWebLibraries")); 
      out.write("flyoutdialog.js");
 out.print("</waplacement>"); 
 processOpenTag(response, pageContext, "contententrypointflagseditable", new TagParameter[] {
new TagParameter("ContentRepository",getObject("ContentRepository")),
new TagParameter("ContentEntryPoint",getObject("ContentEntryPoint")),
new TagParameter("Result","ContentEntryPointEditable")}, 6); 
 {Object temp_obj = (((!((Boolean) (getObject("ContentEntryPointEditable"))).booleanValue() || ((Boolean) getObject("Disabled")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE)); getPipelineDictionary().put("ReadOnly", temp_obj);} 
 {Object temp_obj = ((((Boolean) ((disableErrorMessages().isDefined(getObject("ConfirmUpdateAllowChanges"))))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) ); getPipelineDictionary().put("NotConfirmUpdateAllowChanges", temp_obj);} 
 {Object temp_obj = (getObject("ContentEntryPoint:ContentEntryPointDefinition")); getPipelineDictionary().put("ContentEntryPointDefinition", temp_obj);} 
 _boolean_result=false;try {_boolean_result=((Boolean)(((!((Boolean) ((( ((Number) getObject("ContentRepository:TypeCode")).doubleValue() ==((Number)(new Double(53))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ContentEntryPoint:Domain:UUID"),null).equals(context.getFormattedValue(getObject("ContentRepository:RepositoryDomain:UUID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && !((Boolean) ((disableErrorMessages().isDefined(getObject("ContentEntryPoint:Override"))))).booleanValue() && ((Boolean) ((((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("ContentEntryPointDefinition:PageletPipeline:ReferencedName")))).booleanValue() && ((Boolean) getObject("ContentEntryPointDefinition:PageletAssignmentsEnabled")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",11,e);}if (_boolean_result) { 
      out.write("<div class=\"flyOutPanel\">\n<div class=\"flyOutButton\"></div>\n<div class=\"flyOutDialog\">\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\n<tr>\n<td class=\"input_checkbox\"><input type=\"checkbox\" name=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("ReadOnlyFlagName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {20}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" id=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("ContentEntryPoint:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {20}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write(' ');
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ReadOnly"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",20,e);}if (_boolean_result) { 
      out.write("disabled=\"disabled\"");
 } 
      out.write(' ');
 _boolean_result=false;try {_boolean_result=((Boolean)(((!((Boolean) (getObject("ContentEntryPoint:ReadOnly(ContentRepository:RepositoryDomain)"))).booleanValue() && ((Boolean) getObject("NotConfirmUpdateAllowChanges")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",20,e);}if (_boolean_result) { 
      out.write("checked=\"checked\"");
 } 
      out.write("></td>\n<td nowrap=\"nowrap\" class=\"label_checkbox\"><label class=\"label label_checkbox\" for=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("ContentEntryPoint:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {21}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write('>');
 {out.write(localizeISText("ManageContentEntryPointFlags.AllowChanges.label",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</label></td>\n</tr>\n</table>\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"4\" width=\"100%\">\n<tr>\n<td width=\"100%\"></td>\n<td class=\"button\"><input type=\"submit\" name=\"updateEntryPoint\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("ManageContentEntryPointFlags.Apply.button",null)),null));
      out.write("\" class=\"button sfe-action-inline sfe-layout-change\" ");
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Disabled"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",27,e);}if (_boolean_result) { 
      out.write("disabled=\"disabled\"");
 } 
      out.write("/></td>\n<td class=\"button\"><input type=\"reset\" name=\"reset\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("ManageContentEntryPointFlags.Reset.button",null)),null));
      out.write("\" class=\"button\" ");
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Disabled"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",28,e);}if (_boolean_result) { 
      out.write("disabled=\"disabled\"");
 } 
      out.write("/></td>\n</tr>\n</table>\n</div>\n</div>");
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