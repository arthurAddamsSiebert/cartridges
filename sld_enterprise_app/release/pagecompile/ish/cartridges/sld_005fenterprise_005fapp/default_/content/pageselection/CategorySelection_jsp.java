/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-13 15:29:30 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.sld_005fenterprise_005fapp.default_.content.pageselection;

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

public final class CategorySelection_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"webcontrols/Modules", null, "2");} 
 out.print(context.prepareWAPlacement("CSSWebLibraries")); 
      out.write("pageselection.css");
 out.print("</waplacement>"); 
 out.print(context.prepareWAPlacement("JSWebLibraries")); 
      out.write("bridge/bridge.js");
 out.print("</waplacement>"); 
 out.print(context.prepareWAPlacement("JSWebControls")); 
      out.write("\nvar selectedValue;\n// connect to parent window iframe bridge\nbridge.init('pageselection', function (bridge) {\n$('");
      out.print(context.getFormattedValue("#",null));
      out.write("categorySelectionDialog-ok').on('click', function onOk(event) {\nevent.preventDefault();\nbridge.applySelectionValue(selectedValue, 'ViewPageLinkCreation-Category');\n});\n});\n// reload page after closing\n$dialog.on('dialogclose', function onClose() {\nvar $iframe = $dialog.children('iframe');\n$iframe.attr('src', $iframe.attr('src'));\n});\n// store selected value\n$('");
      out.print(context.getFormattedValue("#",null));
      out.write("categorySelectionTree').on('afterToggleCheck.tree', function onSelect(event, data) {\nvar value= data.args[0][0].id;\nvar targetButton = $('");
      out.print(context.getFormattedValue("#",null));
      out.write("categorySelectionDialog-ok');\nif (value && value !== '') {\nselectedValue = value;\ntargetButton.prop('disabled', false);\n} else {\ntargetButton.prop('disabled', true);\n}\n});\n");
 out.print("</waplacement>"); 
      out.write("<div id=\"categorySelection\" class=\"dialog-content\">");
 processOpenTag(response, pageContext, "tree", new TagParameter[] {
new TagParameter("configtemplate","content/pageselection/CategorySelectionTreeConfig.isml"),
new TagParameter("datatemplate","content/pageselection/CategorySelectionTreeData.isml"),
new TagParameter("id","categorySelectionTree"),
new TagParameter("params",((new ParameterMap().addParameter(new ParameterEntry("Catalogs",getObject("SortedCatalogs"))))))}, 38); 
      out.write("</div>\n<div class=\"dialog-buttons\">\n<input type=\"button\" class=\"button\" id=\"categorySelectionDialog-ok\" value=\"");
 {out.write(localizeISText("content.pageselection.lightbox.ok.text","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("\" name=\"apply\" disabled=\"true\" />\n<input type=\"button\" class=\"button\" value=\"");
 {out.write(localizeISText("content.pageselection.lightbox.cancel.text","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("\" data-action=\"dialog-close\" name=\"cancel\" />\n</div>");
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
