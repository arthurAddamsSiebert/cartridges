/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-14 11:34:52 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.app_005fbo_005fch_005fsales_005fb2b.default_.customer;

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

public final class CustomerAccountManagerListColumns_005f52_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
      out.write('\n');
      out.write('[');
      out.write('\n');
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("params:CurrentChannelPermissionMap:SLD_MANAGE_CONSUMERS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",5,e);}if (_boolean_result) { 
      out.write("\n{\nid: 'select',\ntype: 'select',\ndataKey: 'ID',\nselectedItemsName: 'SelectedObjectUUID',\navailableItemsName: 'ObjectUUID'\n},\n");
 } 
      out.write("\n{\nid: 'type',\ntype: 'text',\ndataKey: 'type',\nsortable: false,\nwidth: 40,\ntitle: '");
 {out.write(localizeISText("customer.CustomerAccountManagerListColumns_52.type",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("',\nsortable: false\n},\n{\nid: 'name',\ntype: 'text',\ndataKey: 'displayName',\ntitle: '<a class=\"tableheader\" href=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("nameTitleUrl"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {27}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write('>');
 {out.write(localizeISText("customer.CustomerAccountManagerListColumns_52.user",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a>',\nsortable: false\n},\n{\nid: 'businessPartnerNo',\ntype: 'text',\ndataKey: 'businessPartnerNumber',\ntitle: '<a class=\"tableheader\" href=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("idTitleUrl"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {34}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write('>');
 {out.write(localizeISText("customer.CustomerAccountManagerListColumns_52.id",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a>',\nsortable: false\n},\n{\nid: 'disabledflag',\ntype: 'status',\ndataKey: 'isActive',\nsortable: true,\ntitle: '<a class=\"tableheader\" href=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("disabledFlagTitleUrl"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {42}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write('>');
 {out.write(localizeISText("customer.CustomerAccountManagerListColumns_52.status",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a>',\nwidth: 70,\nsortable: false,\nrender: function(params) {\nvar isActive = params.row.isActive,\nisCustomerActive = params.row.isCustomerActive,\nshowActive = isActive && isCustomerActive,\nsrc = showActive ? 'online.png' : 'offline.png',\ntitle = '';\nif (!isCustomerActive) {\ntitle = '");
 {out.write(localizeISText("customer.CustomerAccountManagerListColumns_52.customer.is.deactiva",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("';\n} else if (isActive) {\ntitle = '");
 {out.write(localizeISText("customer.CustomerAccountManagerListColumns_52.user.and.customer.ar",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("';\n} else {\ntitle = '");
 {out.write(localizeISText("customer.CustomerAccountManagerListColumns_52.user.is.deactivated",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("';\n} \nreturn '<img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/' + src + '\" alt=\"' + title + '\" title=\"' + title + '\" border=\"0\" />&nbsp;';\n}\n},\n{\nid: 'creationdate',\ntype: 'text',\ndataKey: 'creationDate',\ntitle: '<a class=\"tableheader\" href=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("creationDateTitleUrl"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {67}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write('>');
 {out.write(localizeISText("customer.CustomerAccountManagerListColumns_52.creation.date",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a>',\nsortable: false\n}\n]\n");
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