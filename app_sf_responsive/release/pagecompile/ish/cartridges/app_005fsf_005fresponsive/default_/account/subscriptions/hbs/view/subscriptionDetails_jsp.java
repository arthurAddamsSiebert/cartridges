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

public final class subscriptionDetails_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
      out.write("<div data-testing-id=\"subscription-details\">\n{{");
      out.print(context.getFormattedValue("#",null));
      out.write("if error}}\n<h1>");
 {out.write(localizeISText("account.subscription.details.link","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</h1>\n<p class=\"alert alert-danger\">");
 {out.write(localizeISText("subscription.rest.general.error","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</p>\n{{else}}\n<h1>");
 {out.write(localizeISText("account.subscription.details.link","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write('\n');
      out.write('{');
      out.write('{');
      out.print(context.getFormattedValue("#",null));
      out.write("unless expired}}\n<a class=\"btn btn-primary\" href=\"\"\ndata-subscription-id=\"{{id}}\"\ndata-line-items=\"{{itemCount}}\"\ndata-toggle=\"modal\"\n{{");
      out.print(context.getFormattedValue("#",null));
      out.write("if active}}\ndata-target=\"");
      out.print(context.getFormattedValue("#",null));
      out.write("confirmDeactivateModal\"\ntitle=\"");
 {out.write(localizeISText("account.subscriptions.list.deactivate","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("\"\ndata-dialog\ndata-quick-title=\"");
 {out.write(localizeISText("account.subscriptions.list.deactivate","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write('"');
      out.write('>');
 {out.write(localizeISText("account.subscriptions.dialog.confirm.button.deactivate","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("\n{{else}}\ndata-target=\"");
      out.print(context.getFormattedValue("#",null));
      out.write("confirmActivateModal\"\ntitle=\"");
 {out.write(localizeISText("account.subscriptions.list.activate","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("\"\ndata-dialog\ndata-quick-title=\"");
 {out.write(localizeISText("account.subscriptions.list.activate","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write('"');
      out.write('>');
 {out.write(localizeISText("account.subscriptions.dialog.confirm.button.activate","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("\n{{/if}}\n</a>\n{{/unless}}\n</h1>\n{{");
      out.print(context.getFormattedValue("#",null));
      out.write("unless expired}}\n{{");
      out.print(context.getFormattedValue("#",null));
      out.write("if errorCode}}\n<dd>\n<div class=\"alert alert-danger\">");
 {out.write(localizeISText("account.subscription.details.error","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</div>\n</dd>\n{{/if}} \n{{/unless}}\n<p>");
 {out.write(localizeISText("account.subscription.details.subheadline","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</p>\n<div class=\"alert alert-info\">");
 {out.write(localizeISText("account.subscription.details.note","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</div>\n<div class=\"section\">\n<dl class=\"dl-horizontal dl-horizontal-inline dl-separator\">\n<dt>");
 {out.write(localizeISText("account.subscription.details.label.subscription_number","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</dt>\n<dd>\n<span data-testing-id=\"subscription-number\">{{number}}</span>\n</dd>\n<dt>");
 {out.write(localizeISText("account.subscription.details.label.subscription_date","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</dt>\n<dd>\n{{dateFormatter creationDate \"DATE_SHORT\"}}\n</dd>\n<dt>");
 {out.write(localizeISText("account.subscription.details.label.last_order_date","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</dt>\n<dd>\n{{dateFormatter lastOrderDate \"DATE_SHORT\"}}\n</dd>\n<dt>");
 {out.write(localizeISText("account.subscription.details.label.next_order_date","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</dt>\n<dd>\n{{dateFormatter nextOrderDate \"DATE_SHORT\"}}\n</dd>\n<dt>");
 {out.write(localizeISText("account.subscription.details.label.last_order_count","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</dt>\n<dd>\n{{orderCount}}\n</dd>\n<dt>");
 {out.write(localizeISText("account.subscription.details.label.subscription_status","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</dt>\n<dd>\n{{");
      out.print(context.getFormattedValue("#",null));
      out.write("if expired}}\n<span class=\"label label-danger\">");
 {out.write(localizeISText("account.subscriptions.list.expired","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</span>\n{{else}}\n{{");
      out.print(context.getFormattedValue("#",null));
      out.write("if active}}\n<span class=\"label label-success\">");
 {out.write(localizeISText("account.subscriptions.list.active","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</span>\n{{else}}\n<span class=\"label label-warning\">");
 {out.write(localizeISText("account.subscriptions.list.deactivated","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</span>\n{{/if}}\n{{/if}}\n</dd>\n</dl>\n</div>");
 {out.flush();processExtensionPoint((com.intershop.beehive.core.capi.request.ServletResponse)response,"SubscriptionApprovalInfoBox", null, "93");} 
      out.write("<div class=\"section\">");
 {Object temp_obj = (getObject("BasketBO:Extension(\"RecurringBasket\")")); getPipelineDictionary().put("RecurringBasket", temp_obj);} 
 {Object temp_obj = (getObject("BasketBO")); getPipelineDictionary().put("CurrentCartBO", temp_obj);} 
      out.write("<div class=\"row equal\">\n<div class=\"col-md-6\">\n<div class=\"infobox\">\n<h3>");
 {out.write(localizeISText("subscription.title","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</h3>\n<dl class=\"dl-horizontal dl-horizontal-inline dl-separator\">\n<dt>");
 {out.write(localizeISText("account.subscription.details.label.recurrence","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</dt>\n<dd>\n{{intervalFormatter interval}}\n</dd>\n<dt>");
 {out.write(localizeISText("account.subscription.details.label.start_date","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</dt>\n<dd>\n{{dateFormatter startDate \"DATE_SHORT\"}}\n</dd>\n<dt>");
 {out.write(localizeISText("account.subscription.details.label.end_date","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</dt>\n<dd>\n{{dateFormatter endDate \"DATE_SHORT\"}}\n</dd>\n</dl>\n</div>\n</div>");
 {out.flush();processExtensionPoint((com.intershop.beehive.core.capi.request.ServletResponse)response,"SubscriptionPurchaserInfoBox", null, "126");} 
      out.write("</div>");
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"checkout/receipt/CheckoutReceiptBasketBuckets", null, "131");} 
      out.write("<div class=\"section\">\n<div class=\"cost-summary pull-right\">\n<h3>");
 {out.write(localizeISText("checkout.order_summary.heading","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</h3>");
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"checkout/common/widgets/CostSummary", null, "138");} 
      out.write("</div>\n</div>\n</div>\n{{/if}}\n</div>");
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
