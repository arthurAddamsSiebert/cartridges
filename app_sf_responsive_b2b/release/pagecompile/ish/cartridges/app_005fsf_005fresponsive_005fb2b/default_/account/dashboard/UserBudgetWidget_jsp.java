/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-16 22:40:28 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.app_005fsf_005fresponsive_005fb2b.default_.account.dashboard;

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
import java.util.List;
import java.util.LinkedList;
import java.util.Collection;
import java.util.Collections;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.Iterables;
import com.intershop.component.user.capi.UserBO;
import com.intershop.component.b2b.capi.user.UserBudgetCalculator;

public final class UserBudgetWidget_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"modules/B2BModules", null, "11");} 
 processOpenTag(response, pageContext, "createmap", new TagParameter[] {
new TagParameter("key0","CustomerBO"),
new TagParameter("value0",getObject("CustomerBO")),
new TagParameter("mapname","PipelineParameters")}, 13); 
 {try{executePipeline("ViewUsers-TemplateCallback",((java.util.Map)(getObject("PipelineParameters"))),"Result");}catch(Exception e){Logger.error(this,"ISPIPELINE failed. Line: 16.",e);}} 
 processOpenTag(response, pageContext, "populatedictionary", new TagParameter[] {
new TagParameter("map",getObject("Result"))}, 17); 

    PipelineDictionary dictionary = getPipelineDictionary();
    Collection<UserBO> users = dictionary.get("Users");
    List<UserBO> userList = new LinkedList<UserBO>(users);
    Collections.sort(userList, Collections.reverseOrder(UserBudgetCalculator.SPENT_BUDGED_PERCENTAGE_COMPARATOR));
    dictionary.put("Users", new ImmutableList.Builder<UserBO>().addAll(Iterables.limit(userList, 5)).build());

      out.write("<div class=\"section section-seperator\">\n<h2>");
 {out.write(localizeISText("account.user.widget.user_budgets.heading","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</h2>\n<div class=\"list-header no-seperator hidden-xs\">\n<div class=\"col-xs-4 list-header-item\">");
 {out.write(localizeISText("account.user.widget.table.users","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</div>\n<div class=\"col-xs-4 list-header-item\">");
 {out.write(localizeISText("account.user.list.table.budget_spent","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</div>\n</div>\n<div class=\"list-body\">");
 while (loop("Users","User",null)) { 
 {Object temp_obj = (getObject("User:Extension(\"UserBOOrderApprovalExtension\")")); getPipelineDictionary().put("OrderApprovalExtension", temp_obj);} 
 processOpenTag(response, pageContext, "userbudgetcalculator", new TagParameter[] {
new TagParameter("UserBudgetCalculator","UserBudgetCalculator"),
new TagParameter("User",getObject("User"))}, 43); 
      out.write("<div class=\"list-item-row\">");
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("UserBudgetCalculator:OrderSpendLimit:Available"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",46,e);}if (_boolean_result) { 
      out.write("<dl>\n<dd class=\"col-xs-4 col-sm-4 list-item\">\n<div >\n<a href=\"");
      out.print(context.getFormattedValue(url(true,context.getFormattedValue(getObject("SecureURL"),null), context.getFormattedValue("",null), (new URLPipelineAction(context.getFormattedValue("ViewUser-Start",null))), (new URLParameterSet().addURLParameter(context.getFormattedValue("UserID",null),context.getFormattedValue(getObject("User:ID"),null)))),null));
      out.write('"');
      out.write('>');
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((context.getFormattedValue(getObject("User:FirstName"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("User:LastName"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",51,e);}if (_boolean_result) { 
 {String value = null;try{value=context.getFormattedValue(getObject("User:Login"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {52}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } else { 
 {String value = null;try{value=context.getFormattedValue(getObject("User:FirstName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {54}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write(' ');
 {String value = null;try{value=context.getFormattedValue(getObject("User:LastName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {54}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } 
      out.write("</a>\n</div>\n</dd>");
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("OrderApprovalExtension:Budget(OrderApprovalExtension:BudgetType):Available"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",60,e);}if (_boolean_result) { 
      out.write("<dd class=\"col-xs-8 col-sm-8 list-item\">");
 processOpenTag(response, pageContext, "userbudgetcalculator", new TagParameter[] {
new TagParameter("UserBudgetCalculator","UserBudgetCalculator"),
new TagParameter("User",getObject("User"))}, 62); 
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("OrderApprovalExtension:Budget(OrderApprovalExtension:BudgetType):Available"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",63,e);}if (_boolean_result) { 
      out.write("<div data-toggle=\"popover\" data-container=\"body\" data-html=\"true\" data-placement=\"top\" class=\"progress\" data-content=\"\n<div class='row col-md-12'>\n<div class='col-md-6'><label>");
 {out.write(localizeISText(context.getFormattedValue(context.getFormattedValue("orders.widget.",null) + context.getFormattedValue((context.getFormattedValue(getObject("OrderApprovalExtension:BudgetType"),null).toLowerCase()),null) + context.getFormattedValue("_spend_limit.label",null),null),"",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</label></div>\n<div class='col-md-6 text-right'>");
 {String value = null;try{value=context.getFormattedValue(getObject("UserBudgetCalculator:Budget:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {68}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</div>\n</div>\n<div class='row col-md-12'>\n<div class='col-md-6'><label>");
 {out.write(localizeISText("account.user.list.spent.label","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</label></div>\n<div class='col-md-6 text-right'>");
 {String value = null;try{value=context.getFormattedValue(getObject("UserBudgetCalculator:SpentBudget:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {72}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write(' ');
      out.write('(');
 {String value = null;try{value=context.getFormattedValue(getObject("UserBudgetCalculator:SpentBudgetPercentage"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {72}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("%)</div>\n</div>\n<div class='row col-md-12'>\n<div class='col-md-6'><label>");
 {out.write(localizeISText("account.user.list.left.label","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</label></div>\n<div class='col-md-6 text-right'>");
 {String value = null;try{value=context.getFormattedValue(getObject("UserBudgetCalculator:RemainingBudget:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {76}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write(' ');
      out.write('(');
 {String value = null;try{value=context.getFormattedValue(getObject("UserBudgetCalculator:RemainingBudgetPercentage"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {76}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("%)</div>\n</div>\n\">\n<div class=\"progress-bar ");
 _boolean_result=false;try {_boolean_result=((Boolean)(((( ((Number) getObject("UserBudgetCalculator:SpentBudgetPercentage")).doubleValue() >=((Number)(new Double(90.0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",79,e);}if (_boolean_result) { 
      out.write(" progress-bar-danger");
 } else {_boolean_result=false;try {_boolean_result=((Boolean)(((( ((Number) getObject("UserBudgetCalculator:SpentBudgetPercentage")).doubleValue() >=((Number)(new Double(70.0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",79,e);}if (_boolean_result) { 
      out.write(" progress-bar-warning");
 }} 
      out.write("\" role=\"progressbar\" aria-valuenow=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("UserBudgetCalculator:SpentBudgetPercentage"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {79}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" aria-valuemin=\"0\" aria-valuemax=\"100\" style=\"width: ");
 {String value = null;try{value=context.getFormattedValue(getObject("UserBudgetCalculator:SpentBudgetPercentage"),null,"DecimalSeparator=.");}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {79}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("%;\">\n<span class=\"progress-display\">");
 {String value = null;try{value=context.getFormattedValue(getObject("UserBudgetCalculator:SpentBudgetPercentage"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {80}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("%</span>\n</div>\n</div>");
 } 
      out.write("</dd>");
 } else { 
      out.write("<dd class=\"col-xs-8 col-sm-8 list-item\">\n<p>");
 {out.write(localizeISText("account.budget.common.undefined","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</p>\n</dd>");
 } 
      out.write("</dl>");
 } else { 
      out.write("<div class=\"col-xs-8 list-item\">\n<p>");
 {out.write(localizeISText("approval.details.threshold.unlimited","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</p>\n</div> \n");
 } 
      out.write("</div>");
 } 
      out.write("</div>\n<a href=\"");
      out.print(context.getFormattedValue(url(true,context.getFormattedValue(getObject("SecureURL"),null), context.getFormattedValue("",null), (new URLPipelineAction(context.getFormattedValue("ViewUsers-Start",null)))),null));
      out.write('"');
      out.write('>');
 {out.write(localizeISText("account.user.widget.view_all_users.link","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a>\n</div>");
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