/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-14 11:34:52 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.app_005fbo_005fch_005fsales_005fb2b.default_.grid;

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

public final class ContractsColumns_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
      response.setContentType("text/javascript;charset=utf-8");
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
 
setEncodingType("text/javascript"); 
      out.write('\n');
      out.write('[');
      out.write('\n');
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("params:CurrentChannelPermissionMap:SLD_MANAGE_CONSUMERS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",4,e);}if (_boolean_result) { 
      out.write("\n{\nid: 'select',\ntype: 'select',\ndataKey: 'uuid',\nselectedItemsName: 'SelectedObjectUUID',\navailableItemsName: 'ObjectUUID'\n},\n");
 } 
      out.write(" \n{\nid: 'name',\ntype: 'link',\ndataKey: 'name',\ntitle: '");
 {out.write(localizeISText("contract.ContractsColumns.Name",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("',\nurl: '");
 {String value = null;try{value=context.getFormattedValue(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewContract-Edit",null)))),null) + context.getFormattedValue("?ContractID={uuid}",null),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {18}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("',\nparams: ['uuid'],\nsortable: true\n},\n{\nid: 'contractid',\ntype: 'link',\ndataKey: 'contractid',\ntitle: '");
 {out.write(localizeISText("contract.ContractsColumns.ContractID",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("',\nurl: '");
 {String value = null;try{value=context.getFormattedValue(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewContract-Edit",null)))),null) + context.getFormattedValue("?ContractID={uuid}",null),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {27}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("',\nparams: ['uuid'],\nsortable: true\n},\n");
 _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("params:CustomerBO")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",31,e);}if (_boolean_result) { 
      out.write("\n{\nid: 'customer',\ntype: 'text',\ndataKey: 'customer',\ntitle: '");
 {out.write(localizeISText("contract.ContractsColumns.Customer",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("',\nsortable: true\n},\n{\nid: 'customerid',\ntype: 'text',\ndataKey: 'customerid',\ntitle: '");
 {out.write(localizeISText("contract.ContractsColumns.CustomerID",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("',\nsortable: true\n}, \n");
 } 
      out.write(" \n{\nid: 'startdate',\ntype: 'text',\ndataKey: 'startdate',\ntitle: '");
 {out.write(localizeISText("contract.ContractsColumns.StartDate",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("',\nsortable: true\n},\n{\nid: 'enddate',\ntype: 'text',\ndataKey: 'enddate',\ntitle: '");
 {out.write(localizeISText("contract.ContractsColumns.EndDate",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("',\nsortable: true\n},\n{\nid: 'salestarget',\ntype: 'money',\ndataKey: 'salestarget',\ntitle: '");
 {out.write(localizeISText("contract.ContractsColumns.SalesTarget",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("',\nsortable: false\n},\n{\nid: 'progress',\ntype: 'progress',\ndataKey: 'progress',\ntitle: '");
 {out.write(localizeISText("contract.ContractsColumns.Progress",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("',\nsortable: false\n},\n{\nid: 'exceedance',\ntype: 'text',\ndataKey: 'exceedance',\ntitle: '");
 {out.write(localizeISText("contract.ContractsColumns.Exceedance",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("',\nsortable: false\n}\n]\n");
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