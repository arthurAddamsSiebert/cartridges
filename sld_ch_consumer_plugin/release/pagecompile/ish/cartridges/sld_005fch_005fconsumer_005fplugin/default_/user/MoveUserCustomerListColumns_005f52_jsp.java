/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-13 15:29:24 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.sld_005fch_005fconsumer_005fplugin.default_.user;

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

public final class MoveUserCustomerListColumns_005f52_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
 
 

setEncodingType("text/javascript"); 
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("configuration")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("currentapplication")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",3,e);}if (_boolean_result) { 
 {Object temp_obj = (context.getFormattedValue(getObject("config"),null) + context.getFormattedValue(".columns",null)); getPipelineDictionary().put("configColumns", temp_obj);} 
 {Object temp_obj = (context.getFormattedValue("\'",null) + context.getFormattedValue(replace(context.getFormattedValue(getObject("currentapplication:Configuration:String(configColumns)"),null),(String)(" "),(String)("\', \'")),null) + context.getFormattedValue("\'",null)); getPipelineDictionary().put("columns", temp_obj);} 
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("columns"),null).equals(context.getFormattedValue("\'\'",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",7,e);}if (_boolean_result) { 
 {Object temp_obj = (""); getPipelineDictionary().put("columns", temp_obj);} 
 } 
 } 
      out.write("\n(function () {\nvar allColumns = {\n");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("params:UserPermissionForEdit"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",12,e);}if (_boolean_result) { 
      out.write("\nselect: {\ntype: 'select',\ndataKey: 'ID',\nsingle: true,\nselectedItemsName: 'SelectedCustomerObjectUUID',\navailableItemsName: 'CustomerObjectUUID'\n},\n");
 } 
      out.write("\ntype: {\ntype: 'text',\ndataKey: 'type',\nsortable: false,\nwidth: 40,\ntitle: '");
 {out.write(localizeISText("MoveUserCustomerListColumns_52.Type",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("'\n},\nname: {\ntype: 'text',\ndataKey: 'name',\ntitle: '");
 {out.write(localizeISText("MoveUserCustomerListColumns_52.Customer",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("',\nsortable: true\n},\ncustomerNo: {\ntype: 'text',\ndataKey: 'customerID',\ntitle: '");
 {out.write(localizeISText("MoveUserCustomerListColumns_52.ID",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("',\nsortable: true\n},\ndisabledflag: {\ntype: 'status',\ndataKey: 'isActive',\nsortable: true,\ntitle: '");
 {out.write(localizeISText("MoveUserCustomerListColumns_52.Status",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("',\nwidth: 70,\nrender: function(params) {\nvar isActive = !!params.row.isActive, \nsrc = isActive ? 'online.png' : 'offline.png',\ntitle = (isActive ? '");
 {out.write(localizeISText("MoveUserCustomerListColumns_52.CustomerIsActivated",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("' : '");
 {out.write(localizeISText("MoveUserCustomerListColumns_52.CustomerIsDeactivated",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("') +\n'.\\n' +\n(isActive ? '");
 {out.write(localizeISText("MoveUserCustomerListColumns_52.CanLogInDependingOnTheirStatus",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("' : '");
 {out.write(localizeISText("MoveUserCustomerListColumns_52.CanTLogIn",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("');\nreturn '<img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/' + src + '\" alt=\"' + title + '\" title=\"' + title + '\" border=\"0\" />&nbsp;';\n}\n},\ncreationdate: {\ntype: 'text',\ndataKey: 'creationDate',\ntitle: '");
 {out.write(localizeISText("MoveUserCustomerListColumns_52.CreationDate",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("',\nsortable: true\n}\n},\nnames = [");
 {String value = null;try{value=context.getFormattedValue(getObject("columns"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {63}",e);}if (value==null) value="";out.write(value);} 
      out.write("],\ncolumns = [],\nlen = names.length,\ni, column;\n// only show specified columns\nfor (i = 0; i < len; i++) {\nif (!allColumns.hasOwnProperty(names[i])) continue;\ncolumn = allColumns[names[i]];\n// the column needs to know about its id\ncolumn.id = names[i];\ncolumns.push(column);\n}\n// show all columns if no columns are specified \nfor (i in allColumns) {\nif (!allColumns.hasOwnProperty(i)) continue;\ncolumn = allColumns[i];\ncolumn.id = i;\ncolumns.push(column);\n}\nreturn columns;\n})()");
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
