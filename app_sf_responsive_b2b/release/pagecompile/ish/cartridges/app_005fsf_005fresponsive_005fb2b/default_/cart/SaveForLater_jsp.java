/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-16 22:40:28 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.app_005fsf_005fresponsive_005fb2b.default_.cart;

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

public final class SaveForLater_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"modules/Modules", null, "3");} 
 context.setCustomTagTemplateName("wishlistitem","modules/account/WishlistItem.isml",true,new String[]{"WishlistItem","Currency","showImage","Pagelet","showQuantityControls","showQuantitiesText","showDateAdded","showPrice","showAddToCartButton","showEditItemButtons","showWishlistLink","saveForLaterList"},null); 
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("WishlistBO"))))).booleanValue() && ((Boolean) ((hasLoopElements("WishlistBO:Items") ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",22,e);}if (_boolean_result) { 
      out.write("<div class=\"ish-section\">\n<div class=\"ish-bar\">\n<h3>");
 {out.write(localizeISText("account.wishlist.saved_for_later.heading","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</h3>\n</div>");
 {Object temp_obj = (getObject("WishlistBO:Items")); getPipelineDictionary().put("WishlistItems", temp_obj);} 
      out.write("<div class=\"ish-shiftContent\">\n<table class=\"ish-productTable\">\n<thead>\n<tr>\n<th>");
 {out.write(localizeISText("account.wishlist.table.header.item","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</th>\n<th></th>\n<th>");
 {out.write(localizeISText("account.wishlist.table.header.date_added","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</th>\n<th class=\"ish-itemPrice\">");
 {out.write(localizeISText("account.wishlist.table.header.price","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</th>\n<th>&nbsp;</th>\n</tr>\n</thead>\n<tbody>");
 while (loop("WishlistItems","WishlistItem",null)) { 
 processOpenTag(response, pageContext, "wishlistitem", new TagParameter[] {
new TagParameter("showQuantitiesText","false"),
new TagParameter("showPrice","true"),
new TagParameter("showAddToCartButton","true"),
new TagParameter("Currency",getObject("CurrentRequest:Currency")),
new TagParameter("showDateAdded","true"),
new TagParameter("showEditItemButtons","true"),
new TagParameter("showImage","true"),
new TagParameter("showQuantityControls","true"),
new TagParameter("WishlistItem",getObject("WishlistItem")),
new TagParameter("saveForLaterList","true")}, 43); 
 } 
      out.write("</tbody>\n</table>\n</div>\n</div>");
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