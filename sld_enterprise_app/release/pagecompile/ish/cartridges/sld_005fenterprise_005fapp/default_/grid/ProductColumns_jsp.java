/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-13 15:29:31 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.sld_005fenterprise_005fapp.default_.grid;

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

public final class ProductColumns_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
 
      out.write('\n');
 

setEncodingType("text/javascript"); 
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("configuration")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("currentapplication")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",4,e);}if (_boolean_result) { 
 {Object temp_obj = (context.getFormattedValue(getObject("config"),null) + context.getFormattedValue(".columns",null)); getPipelineDictionary().put("configColumns", temp_obj);} 
 {Object temp_obj = (context.getFormattedValue("\'",null) + context.getFormattedValue(replace(context.getFormattedValue(getObject("currentapplication:Configuration:String(configColumns)"),null),(String)(" "),(String)("\', \'")),null) + context.getFormattedValue("\'",null)); getPipelineDictionary().put("columns", temp_obj);} 
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("columns"),null).equals(context.getFormattedValue("\'\'",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",8,e);}if (_boolean_result) { 
 {Object temp_obj = (""); getPipelineDictionary().put("columns", temp_obj);} 
 } 
 } 
      out.write("\n(function () {\nvar allColumns = {\nselect: {\ntype: 'select',\ndataKey: 'uuid',\nsingle: true,\nselectedItemsName: 'SelectedObjectUUID',\navailableItemsName: 'ObjectUUID',\nwidth: 30,\nmaxWidth: 30,\n},\nimage : {\ntype: 'image',\ndataKey: 'image',\ntitle: '");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("product.productlist.image.title",null)),null));
      out.write("',\nwidth: 40,\nmaxWidth: 40,\nsortable: false\n},\nname: {\ntype: 'text',\ndataKey: 'name',\ntitle: '");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("product.productlist.name.title",null)),null));
      out.write("',\nwidth: 265,\nmaxWidth: 265,\nsortable: true\n},\nsku: {\ntype: 'text',\ndataKey: 'sku',\ntitle: '");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("product.productlist.id.title",null)),null));
      out.write("',\nwidth: 165,\nmaxWidth: 165,\nsortable: true,\nrender: function (args) {\nreturn '<span title=\"'+args.row.sku+'\">'+args.row.sku+'</span>';\n}\n},\nsupplier: {\ntype: 'text',\ndataKey: 'supplier',\ntitle: '");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("product.productlist.supplier.title",null)),null));
      out.write("',\nsortable: false,\nwidth: 180,\nmaxWidth: 180,\nsortable: true\n},\nvalue: {\ntype: 'money',\ndataKey: 'value',\ntitle: '");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("product.productlist.listprice.title",null)),null));
      out.write("',\nwidth: 110,\nmaxWidth: 110,\nsortable: true\n}, \ntypeCode: {\ntype: 'text',\ndataKey: 'typeCode',\ntitle: '");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("product.productlist.typecode.title",null)),null));
      out.write("',\nsortable: false,\nwidth: 150,\nmaxWidth: 150\n},\nstatus: {\ntype: 'status',\ndataKey: 'status',\ntitle: '");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("product.productlist.status.title",null)),null));
      out.write("',\nsortable: false,\nwidth: 110,\nmaxWidth: 110,\nrender: function (args) {\nvar result = [];\nif (args.row.isOnline) {\nresult.push('<img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/status_online.gif\" alt=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("product.productlist.status.online",null)),null));
      out.write("\" title=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("product.productlist.status.online",null)),null));
      out.write("\" border=\"0\" />&nbsp;');\n}\nif (args.row.isAvailable) {\nresult.push('<img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/status_instock.gif\" alt=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("product.productlist.status.instock",null)),null));
      out.write("\" title=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("product.productlist.status.instock",null)),null));
      out.write("\" border=\"0\" />&nbsp;');\n}\nif (args.row.isCategorized) {\nresult.push('<img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/status_explicitly_bound.gif\" alt=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("product.productlist.status.categorized",null)),null));
      out.write("\" title=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("product.productlist.status.categorized",null)),null));
      out.write("\" border=\"0\"/>&nbsp;');\n}\nif (args.row.isOffered) {\nresult.push('<img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/status_offers.gif\" alt=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("product.productlist.status.offered",null)),null));
      out.write("\" title=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("product.productlist.status.offered",null)),null));
      out.write("\" border=\"0\"/>&nbsp;');\n}\nif (args.row.isShared) {\nresult.push('<img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/status_shared_product_to.gif\" alt=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("product.productlist.status.shared",null)),null));
      out.write("\" title=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("product.productlist.status.shared",null)),null));
      out.write("\" border=\"0\"/>');\n}\nreturn result.join('');\n}\n}\n},\nnames = [");
 {String value = null;try{value=context.getFormattedValue(getObject("columns"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {102}",e);}if (value==null) value="";out.write(value);} 
      out.write("],\nuseAll = names.length === 0,\ncolumns = [],\nname, column;\nfunction indexOf(list, element) {\nif (list.indexOf) {\nreturn list.indexOf(element);\n}\nfor (var i = 0, len = list.length; i < len; i++) {\nif (list[i] === element) {\nreturn i;\n}\n}\nreturn -1;\n}\nfor (name in allColumns) {\nif (!allColumns.hasOwnProperty(name)) continue;\nvar column = allColumns[name];\ncolumn.id = name;\n// check if column configuration is provided\nif (useAll) {\n// no column configuration\ncolumns.push(column);\n} else {\n// check if column is needed\nif (indexOf(names, name) !== -1) {\ncolumns.push(column);\n}\n}\n}\nreturn columns;\n})()\n");
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
