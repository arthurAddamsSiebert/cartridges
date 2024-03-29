/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-16 22:40:05 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.app_005fsf_005fresponsive.default_.account.subscriptions.hbs.view;

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

public final class subscriptionsList_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
      out.write("<div class=\"section\" data-testing-id=\"subscriptionsList-section\">\n<div class=\"row\">\n<div class=\"col-md-12\">\n{{");
      out.print(context.getFormattedValue("#",null));
      out.write("if error}}\n<p class=\"alert alert-danger\">");
 {out.write(localizeISText("subscription.rest.general.error","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</p>\n{{else}}\n{{");
      out.print(context.getFormattedValue("#",null));
      out.write("if loading}}\n<p>\n<span class=\"loader loader-inline\"></span>\n</p>\n{{else}}\n{{");
      out.print(context.getFormattedValue("#",null));
      out.write("if elements}}\n<div class=\"table-responsive\">\n<table class=\"table\" data-testing-id=\"subscriptionsList\">\n<thead>\n<tr>\n<th data-column-id=\"subscription-creationDate\">");
 {out.write(localizeISText("account.subscriptions.list.head.date","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</th>\n<th data-column-id=\"subscription-details\">");
 {out.write(localizeISText("account.subscriptions.list.head.details","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</th>\n<th data-column-id=\"subscription-recurrence\">");
 {out.write(localizeISText("account.subscriptions.list.head.recurrence","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</th>\n<th data-column-id=\"subscription-lastDate\">");
 {out.write(localizeISText("account.subscriptions.list.head.lastorder","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</th>\n<th data-column-id=\"subscription-status\">");
 {out.write(localizeISText("account.subscriptions.list.head.status","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</th>\n<th class=\"text-right\">");
 {out.write(localizeISText("account.subscriptions.list.head.ordertotal","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</th>\n<th></th>\n<th></th>\n</tr>\n</thead>\n<tbody>\n{{");
      out.print(context.getFormattedValue("#",null));
      out.write("each elements}}\n<tr{{");
      out.print(context.getFormattedValue("#",null));
      out.write("if active}}{{else}} class=\"inactive\"{{/if}}>\n<td>\n{{dateFormatter creationDate \"DATE_SHORT\"}}\n</td>\n<td>");
 {out.write(localizeISText("account.subscriptions.list.number","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(" <a href=\"{{url 'ViewSubscriptions-Details' SubscriptionID=link.title}}\" data-testing-id=\"subscription-number-link\">{{number}}</a><br/>");
 {out.write(localizeISText("account.subscriptions.list.items","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(" {{itemCount}}<br/>\n{{");
      out.print(context.getFormattedValue("#",null));
      out.write("if showBuyer}}\n{{");
      out.print(context.getFormattedValue("#",null));
      out.write("if ownUser}}\n");
 {out.write(localizeISText("account.subscriptions.list.buyer","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(" <strong>{{formattedBuyer buyer}}</strong><br/>\n{{else}}\n");
 {out.write(localizeISText("account.subscriptions.list.buyer","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(" {{formattedBuyer buyer}}<br/>\n{{/if}}\n{{/if}}\n</td>\n<td>\n{{intervalFormatter interval}}\n</td>\n<td>{{dateFormatter lastOrderDate \"DATE_SHORT\"}}</td>\n<td>\n{{");
      out.print(context.getFormattedValue("#",null));
      out.write("if expired}}\n");
 {out.write(localizeISText("account.subscriptions.list.expired","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("\n{{else}}\n{{");
      out.print(context.getFormattedValue("#",null));
      out.write("if active}}\n");
 {out.write(localizeISText("account.subscriptions.list.active","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("\n{{else}}\n");
 {out.write(localizeISText("account.subscriptions.list.deactivated","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("\n{{/if}}\n{{/if}}\n</td>\n<td class=\"text-right\">{{moneyFormatter this \"MONEY_LONG\" \"gross\"}}</td>\n<td class=\"text-right\">\n{{");
      out.print(context.getFormattedValue("#",null));
      out.write("unless expired}}\n{{");
      out.print(context.getFormattedValue("#",null));
      out.write("if active}}\n<a href=\"\"\nclass=\"btn-tool\"\ndata-subscription-id=\"{{link.title}}\"\ndata-line-items=\"{{itemCount}}\"\ndata-toggle=\"modal\"\ndata-target=\"");
      out.print(context.getFormattedValue("#",null));
      out.write("confirmDeactivateModal\"\ntitle=\"");
 {out.write(localizeISText("account.subscriptions.list.deactivate","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("\"\ndata-dialog\ndata-quick-title=\"");
 {out.write(localizeISText("account.subscriptions.list.deactivate","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("\"\n>\n<span class=\"glyphicon glyphicon-ban-circle\"></span>\n</a>\n{{else}}\n<a href=\"\"\nclass=\"btn-tool\"\ndata-subscription-id=\"{{link.title}}\"\ndata-line-items=\"{{itemCount}}\"\ndata-toggle=\"modal\"\ndata-target=\"");
      out.print(context.getFormattedValue("#",null));
      out.write("confirmActivateModal\"\ntitle=\"");
 {out.write(localizeISText("account.subscriptions.list.activate","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("\"\ndata-dialog\ndata-quick-title=\"");
 {out.write(localizeISText("account.subscriptions.list.activate","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("\"\n>\n<span class=\"glyphicon glyphicon-ok-circle\"></span>\n</a>\n{{/if}}\n{{/unless}}\n</td>\n<td class=\"text-right\">\n<a href=\"{{url 'ViewSubscriptions-Details' SubscriptionID=link.title}}\" title=\"");
 {out.write(localizeISText("account.subscriptions.list.link.details.text","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("\" class=\"btn-tool\">");
 {out.write(localizeISText("account.subscriptions.list.link.details.text","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a>\n</td>\n</tr>\n{{/each}}\n</tbody>\n</table>\n</div>\n{{else}}\n{{");
      out.print(context.getFormattedValue("#",null));
      out.write("if filterNotEmpty}}\n<p>");
 {out.write(localizeISText("account.subscriptions.list.nofilterdata","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</p>\n{{else}}\n<p>");
 {out.write(localizeISText("account.subscriptions.list.nodata","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</p>\n{{/if}}\n{{/if}}\n{{/if}}\n{{/if}}\n</div>\n</div>\n</div>");
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
