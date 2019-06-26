/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-16 22:40:05 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.app_005fsf_005fresponsive.default_.account.wishlist;

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

public final class Wishlist_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
    implements org.apache.jasper.runtime.JspSourceDependent {

 protected Boolean printTemplateMarker() { return Boolean.TRUE; } 
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
      out.write('\n');
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"modules/Modules", null, "2");} 
      out.write("\n<script type=\"text/javascript\">\nfunction setWishlistItemID(wishlistItemID)\n{\n\tvar element = document.getElementById('WishlistItemID');\n\telement.value = wishlistItemID;\n}\n</script>\n\t\n");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ERROR_Basket_Product"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",11,e);}if (_boolean_result) { 
      out.write("\n\t<div class=\"alert alert-danger\">\n\t\t");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ERROR_Basket_Product"),null).equals(context.getFormattedValue("MaxItemSizeReached",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",13,e);}if (_boolean_result) { 
      out.write("\n\t\t\t<p>");
 {out.write(localizeISText("shopping_cart.max.item.count.error","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</p>\n\t\t");
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ERROR_Basket_Product"),null).equals(context.getFormattedValue("ProductRepeatDisallowed",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",15,e);}if (_boolean_result) { 
      out.write("\n\t\t\t<p>");
 {out.write(localizeISText("shopping_cart.repeat.disallowed.error","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</p>\n\t\t");
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ERROR_Basket_Product"),null).equals(context.getFormattedValue("QUANTITY_FORMAT",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",17,e);}if (_boolean_result) { 
      out.write("\n\t\t\t<p>");
 {out.write(localizeISText("shopping_cart.quantity.invalid.error.w.correction","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</p>\n\t\t");
 } else { 
      out.write("\n\t\t\t\n\t\t\t<p>");
 {out.write(localizeISText("shopping_cart.update.error","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</p>\n\t\t");
 }}} 
      out.write("\n\t</div>\n");
 } 
      out.write('\n');
 processOpenTag(response, pageContext, "shoppingcartglobalerrormsg", new TagParameter[] {
new TagParameter("addToBasketResults",getObject("AddToBasketResults"))}, 25); 
      out.write("\n\n<div class=\"section\">\n\t");
 {Object temp_obj = (getObject("WishlistBO:WishlistItemBOs")); getPipelineDictionary().put("WishlistItems", temp_obj);} 
      out.write('\n');
      out.write('	');
 _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("WishlistItems") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",31,e);}if (_boolean_result) { 
      out.write('\n');
      out.write('	');
      out.write('	');
 URLPipelineAction action16 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewWishlist-Dispatch",null)))),null));String site16 = null;String serverGroup16 = null;String actionValue16 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewWishlist-Dispatch",null)))),null);if (site16 == null){  site16 = action16.getDomain();  if (site16 == null)  {      site16 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup16 == null){  serverGroup16 = action16.getServerGroup();  if (serverGroup16 == null)  {      serverGroup16 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewWishlist-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("UpdateWishlist");out.print("\"");out.print(" class=\"");out.print("kor-wishlistForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue16, site16, serverGroup16,true)); 
      out.write("\n\t\t\t<input type=\"hidden\" name=\"WishlistID\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("WishlistBO:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {33}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" />\n\t\t\t<input type=\"hidden\" name=\"WishlistOwnerID\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("WishlistBO:UserBO:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {34}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" />\n\t\t\t<input type=\"hidden\" name=\"WishlistItemID\" id=\"WishlistItemID\" value=\"toBeSetByJavaScriptIfNecessary\" />\n\n\t\t\t<div class=\"list-header\">\n\t\t\t\t<div class=\"col-sm-3 col-xs-3 list-header-item\">");
 {out.write(localizeISText("account.wishlist.table.header.item","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</div>\n\t\t\t\t<div class=\"col-sm-9 col-xs-9 list-header-item column-price\">");
 {out.write(localizeISText("account.wishlist.table.header.price","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</div>\n\t\t\t</div>\n\t\t\t<div class=\"list-body\">\n\t\t\t\t");
 while (loop("WishlistItems","WishlistItem",null)) { 
      out.write("\n\t\t\t\t<div class=\"list-item-row\">\n\t\t\t\t\t");
 _boolean_result=false;try {_boolean_result=((Boolean)(((disableErrorMessages().isDefined(getObject("WishlistItem:ProductBO:SKU")))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",44,e);}if (_boolean_result) { 
      out.write("\n\t\t\t\t\t\t");
 processOpenTag(response, pageContext, "wishlistitem", new TagParameter[] {
new TagParameter("showQuantitiesText","true"),
new TagParameter("showPrice","true"),
new TagParameter("showAddToCartButton","true"),
new TagParameter("showDateAdded","true"),
new TagParameter("Currency",getObject("CurrentRequest:Currency")),
new TagParameter("showEditItemButtons","true"),
new TagParameter("showImage","true"),
new TagParameter("showQuantityControls","true"),
new TagParameter("WishlistItem",getObject("WishlistItem"))}, 45); 
      out.write("\n\t\t\t\t\t");
 } else { 
      out.write("\n\t\t\t\t\t\t<div class=\"list-item\">\n\t\t\t\t\t\t\t<p>");
 {out.write(localizeISText("account.overview.wishlist.unshared_product","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</p>\n\t\t\t\t\t\t</div>\n\t\t\t\t\t");
 } 
      out.write("\n\t\t\t\t</div>\n\t\t\t\t");
 } 
      out.write("\n\t\t\t</div>\n\n\t\t\t<button class=\"btn btn-default pull-right\" type=\"submit\" name=\"Update\">\n\t\t\t\t");
 {out.write(localizeISText("account.wishlist.table.update_wishlist","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("\n\t\t\t</button>\n\t\t");
 out.print("</form>"); 
      out.write('\n');
      out.write('	');
 } else { 
      out.write('\n');
      out.write('	');
      out.write('	');
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("WishlistBO"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",70,e);}if (_boolean_result) { 
      out.write("\n\t\t\t<p>");
 {out.write(localizeISText("account.wishlist.no_entries","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</p>\n\t\t");
 } 
      out.write('\n');
      out.write('	');
 } 
      out.write('\n');
      out.write('	');
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("WishlistBO"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",74,e);}if (_boolean_result) { 
      out.write("\n\t\t<a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewWishlist-ViewAll",null)))),null));
      out.write('"');
      out.write('>');
 {out.write(localizeISText("account.wishlist.searchform.return.link","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a>\n\t");
 } 
      out.write('\n');
      out.write('\n');
      out.write('	');
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("TargetWishlistBO"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",78,e);}if (_boolean_result) { 
      out.write('\n');
      out.write('	');
      out.write('	');
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"account/wishlist/MoveWishlistItemConfirmation", null, "79");} 
      out.write('\n');
      out.write('	');
 } 
      out.write("\n</div>\n\n");
 {Object temp_obj = ("Wishlist"); getPipelineDictionary().put("list_name", temp_obj);} 
      out.write('\n');
 processOpenTag(response, pageContext, "includetrackingtool", new TagParameter[] {
new TagParameter("template","ViewWishList")}, 84); 
      out.write('\n');
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
