/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-16 22:40:38 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.app_005fsf_005fresponsive_005fcostcenter.default_.account.costcenter;

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

public final class CostCenterAddBuyersForm_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"modules/B2BModulesCostCenter", null, "3");} 
 _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) getObject("UserBOs:Empty")).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",4,e);}if (_boolean_result) { 
 URLPipelineAction action3 = new URLPipelineAction(context.getFormattedValue(url(true,context.getFormattedValue(getObject("SecureURL"),null), context.getFormattedValue("",null), (new URLPipelineAction(context.getFormattedValue("ViewCostCenter-AddCostCenterBuyer",null)))),null));String site3 = null;String serverGroup3 = null;String actionValue3 = context.getFormattedValue(url(true,context.getFormattedValue(getObject("SecureURL"),null), context.getFormattedValue("",null), (new URLPipelineAction(context.getFormattedValue("ViewCostCenter-AddCostCenterBuyer",null)))),null);if (site3 == null){  site3 = action3.getDomain();  if (site3 == null)  {      site3 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup3 == null){  serverGroup3 = action3.getServerGroup();  if (serverGroup3 == null)  {      serverGroup3 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,context.getFormattedValue(getObject("SecureURL"),null), context.getFormattedValue("",null), (new URLPipelineAction(context.getFormattedValue("ViewCostCenter-AddCostCenterBuyer",null)))),null));out.print("\"");out.print(" data-bv-message=\"");out.print("This value is not valid");out.print("\"");out.print(" class=\"");out.print("form-horizontal bv-form");out.print("\"");out.print(" data-bv-feedbackicons-valid=\"");out.print("glyphicon glyphicon-ok");out.print("\"");out.print(" name=\"");out.print(context.getFormattedValue(context.getFormattedValue(getObject("CostCenterAddBuyerForm:Alias"),null),null));out.print("\"");out.print(" data-bv-feedbackicons-invalid=\"");out.print("glyphicon glyphicon-remove");out.print("\"");out.print(" data-bv-feedbackicons-validating=\"");out.print("glyphicon glyphicon-refresh");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue3, site3, serverGroup3,true)); 
      out.write("<input type=\"hidden\" name=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("CostCenterUsersForm:CustomerID:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {17}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("CustomerBO:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {17}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/>\n<input type=\"hidden\" name=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("CostCenterUsersForm:CostCenterID:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {18}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("CostCenterID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {18}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/>\n<div class=\"section\">\n<table class=\"table table-condensed\" data-table=\"CostCenterBuyerList\">\n<thead>\n<th class=\"text-center\" style=\"width: 100px;\">\n<a href=\"");
      out.print(context.getFormattedValue("#",null));
      out.write("\" data-toggle-select=\"all\">");
 {out.write(localizeISText("account.costcenter.details.buyers.list.header.selectall","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a>\n<a href=\"");
      out.print(context.getFormattedValue("#",null));
      out.write("\" data-toggle-select=\"clear\" style=\"display: none;\">");
 {out.write(localizeISText("account.costcenter.details.buyers.list.header.clearall","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a>\n</th>\n<th>");
 {out.write(localizeISText("account.costcenter.details.buyers.list.header.name","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</th>\n<th style=\"width: 400px;\">");
 {out.write(localizeISText("account.costcenter.details.buyers.list.header.orderspendlimit","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</th>\n</thead>\n<tbody>");
 while (loop("UserBOs","UserBO",null)) { 
      out.write("<tr>\n<td class=\"text-center\">\n<input type=\"checkbox\" name=\"SelectedObjectUUID\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("UserBO:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {38}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" id=\"");
 {String value = null;try{value=context.getFormattedValue(context.getFormattedValue("UserID_",null) + context.getFormattedValue(getObject("UserBO:ID"),null),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {38}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" />\n</td>\n<td>\n<label for=\"");
 {String value = null;try{value=context.getFormattedValue(context.getFormattedValue("UserID_",null) + context.getFormattedValue(getObject("UserBO:ID"),null),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {43}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" style=\"cursor: pointer;\">");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((context.getFormattedValue(getObject("UserBO:FirstName"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("UserBO:LastName"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",44,e);}if (_boolean_result) { 
 {String value = null;try{value=context.getFormattedValue(getObject("UserBO:Login"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {45}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } else { 
 {String value = null;try{value=context.getFormattedValue(getObject("UserBO:FirstName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {47}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write(' ');
 {String value = null;try{value=context.getFormattedValue(getObject("UserBO:LastName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {47}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } 
      out.write("</label>\n</td>\n<td>\n<div class=\"row\">\n<div class=\"col-sm-6 col-xs-10\"> \n<div class=\"input-group\"> \n<span class=\"input-group-addon\">");
 {String value = null;try{value=context.getFormattedValue(getObject("CurrentRequest:CurrencyCode"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {59}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</span>\n<input type=\"text\" \nname=\"Budget_");
 {String value = null;try{value=context.getFormattedValue(getObject("UserBO:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {62}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" \nvalue=\"\" \nclass=\"form-control\" \ndata-bv-regexp=\"true\" data-bv-regexp-regexp=\"^[0-9.]+$\"\ndata-bv-regexp-message=\"");
 {out.write(localizeISText("account.costcenter.details.buyers.list.budget.error.valid","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("\"\n/>\n</div>\n</div>\n<div class=\"col-sm-5 col-xs-10\">\n<select\nclass=\"form-control\" \nname=\"BudgetPeriod_");
 {String value = null;try{value=context.getFormattedValue(getObject("UserBO:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {74}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"\nrequired\n>\n<option value=\"fixed\" ");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((context.getFormattedValue(getObject("CostCenterUsersForm:Period:Value"),null).equals(context.getFormattedValue("fixed",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("CostCenterUsersForm:Period:Value"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",77,e);}if (_boolean_result) { 
      out.write("selected=\"selected\"");
 } 
      out.write('>');
 {out.write(localizeISText("account.costcenter.label.budget.period.fixed","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</option>\n<option value=\"weekly\" ");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("CostCenterUsersForm:Period:Value"),null).equals(context.getFormattedValue("weekly",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",78,e);}if (_boolean_result) { 
      out.write("selected=\"selected\"");
 } 
      out.write('>');
 {out.write(localizeISText("account.costcenter.form.field.budget.period.value.weekly","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</option>\n<option value=\"monthly\" ");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("CostCenterUsersForm:Period:Value"),null).equals(context.getFormattedValue("monthly",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",79,e);}if (_boolean_result) { 
      out.write("selected=\"selected\"");
 } 
      out.write('>');
 {out.write(localizeISText("account.costcenter.form.field.budget.period.value.monthly","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</option>\n<option value=\"quarterly\" ");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("CostCenterUsersForm:Period:Value"),null).equals(context.getFormattedValue("quarterly",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",80,e);}if (_boolean_result) { 
      out.write("selected=\"selected\"");
 } 
      out.write('>');
 {out.write(localizeISText("account.costcenter.form.field.budget.period.value.quarterly","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</option>\n</select>\n</div>\n</div> \n</td>\n</tr>");
 } 
      out.write("</tbody>\n</table>\n</div>\n<div class=\"row\">\n<div class=\"modal-footer\">\n<div class=\"pull-right\">\n<button class=\"btn btn-primary\" type=\"submit\" name=\"add\">");
 {out.write(localizeISText("account.costcenter.details.buyers.action.add","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</button>\n<button type=\"button\" class=\"btn btn-default\" data-dismiss=\"modal\" name=\"cancel\">");
 {out.write(localizeISText("account.costcenter.form.button.cancel.text","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</button>\n</div>\n</div>\n</div>\n<script>\n$('[data-table=\"CostCenterBuyerList\"]').DataTable({\n\"responsive\": true,\n\"bLengthChange\" : false,\n\"order\": [[ 1, \"asc\" ]],\n\"columnDefs\": [ {\n\"targets\": 0,\n\"searchable\": false,\n\"orderable\": false\n} ]\n});\n</script>");
 out.print("</form>"); 
 } else { 
      out.write("<div class=\"section\">");
 {out.write(localizeISText("account.costcenter.details.add.buyers.list.empty","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</div>\n<div class=\"row\">\n<div class=\"modal-footer\">\n<div class=\"pull-right\">\n<button type=\"button\" class=\"btn btn-default\" data-dismiss=\"modal\" name=\"cancel\">");
 {out.write(localizeISText("account.costcenter.form.button.cancel.text","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</button>\n</div>\n</div>\n</div>");
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