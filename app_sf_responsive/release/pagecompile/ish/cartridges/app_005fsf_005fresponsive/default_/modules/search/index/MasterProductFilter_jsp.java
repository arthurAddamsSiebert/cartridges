/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-16 22:40:05 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.app_005fsf_005fresponsive.default_.modules.search.index;

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

public final class MasterProductFilter_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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

    String paramsName = (String)getObject("params");
    Object params = getObject(paramsName);
    if(params != null)
    {
        getPipelineDictionary().put("TmpParams", params);
    }

 _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("showcount")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",13,e);}if (_boolean_result) { 
 {Object temp_obj = ("true"); getPipelineDictionary().put("showcount", temp_obj);} 
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("filter:ConfigurationAttribute:FilterOptions:DisplayType"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",16,e);}if (_boolean_result) { 
 {Object temp_obj = (getObject("filter:ConfigurationAttribute:FilterOptions:DisplayType")); getPipelineDictionary().put("displayType", temp_obj);} 
 } else { 
 {Object temp_obj = ("text"); getPipelineDictionary().put("displayType", temp_obj);} 
 } 
 {Object temp_obj = ("filter-list"); getPipelineDictionary().put("displayClass", temp_obj);} 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("filter:ConfigurationAttribute:FilterOptions:SelectionType"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",23,e);}if (_boolean_result) { 
 {Object temp_obj = (getObject("filter:ConfigurationAttribute:FilterOptions:SelectionType")); getPipelineDictionary().put("selectionType", temp_obj);} 
 } else { 
 {Object temp_obj = ("single"); getPipelineDictionary().put("selectionType", temp_obj);} 
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) ((disableErrorMessages().isDefined(getObject("showselected"))))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",28,e);}if (_boolean_result) { 
 {Object temp_obj = ("true"); getPipelineDictionary().put("showselected", temp_obj);} 
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("sortvalue"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",32,e);}if (_boolean_result) { 
 {Object temp_obj = (getObject("sortvalue")); getPipelineDictionary().put("tmp_sortvalue", temp_obj);} 
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("filter")))).booleanValue() && ((Boolean) (hasLoopElements("filter:FilterAttributeEntry") ? Boolean.TRUE : Boolean.FALSE)).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",37,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((context.getFormattedValue(getObject("showselected"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("HasUnselectedValues"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",38,e);}if (_boolean_result) { 
      out.write("<ul class=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("displayClass"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {41}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write(" clearfix\" id=\"");
      out.print(context.getFormattedValue(context.getFormattedValue(getObject("filter:ConfigurationAttribute:Name"),null) + context.getFormattedValue("_id",null),null));
      out.write("\">\n<form name=\"myForm\" data-submit-form-handler=\"change\" method=\"post\" action=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue(getObject("pipeline"),null)))),null));
      out.write('"');
      out.write(' ');
      out.write('>');
 while (loop("TmpParams:EntrySet","map",null)) { 
 _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("map:Key"),null).equals(context.getFormattedValue("SearchParameter",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",47,e);}if (_boolean_result) { 
      out.write("<input type=\"hidden\" name=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("map:Key"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {48}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("map:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {48}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" />");
 } 
 } 
      out.write("<input type=\"hidden\" name=\"PageSize\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("query:PageSize"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {52}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write('>');
 {Object temp_obj = ((hasLoopElements("filter:FilterAttributeEntry") ? Boolean.TRUE : Boolean.FALSE)); getPipelineDictionary().put("singleFilterElement", temp_obj);} 
 while (loop("filter:FilterAttributeEntry","entry","cpt")) { 
 _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("cpt")).doubleValue() >((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",57,e);}if (_boolean_result) { 
 {Object temp_obj = ((((Boolean) getObject("singleFilterElement")).booleanValue() ? Boolean.FALSE : Boolean.TRUE) ); getPipelineDictionary().put("singleFilterElement", temp_obj);} 
 if (getLoopStack().isEmpty()) {Logger.error(this,"ISBREAK occured outside ISLOOP. Line: {}",59);}else{getLoopStack().pop();break;} 
 } 
 } 
      out.write("<select name=\"SearchParameter\"\nclass=\"ws-submit-search-param form-control\"\n");
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("singleFilterElement"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",64,e);}if (_boolean_result) { 
      out.write(" disabled");
 } 
      out.write("\n>\n<option value=\"\">");
 {String value = null;try{value=context.getFormattedValue(getObject("filter:ConfigurationAttribute:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {67}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("singleFilterElement"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",68,e);}if (_boolean_result) { 
      out.write(":&nbsp;\n");
 while (loop("filter:FilterAttributeEntry","entry","cpt")) { 
      out.print(context.getFormattedValue(getObject("entry:Value"),null));
 } 
 } 
      out.write("</Option>");
 while (loop("filter:FilterAttributeEntry","entry","cpt")) { 
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("singleFilterElement"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",77,e);}if (_boolean_result) { 
 if (getLoopStack().isEmpty()) {Logger.error(this,"ISBREAK occured outside ISLOOP. Line: {}",78);}else{getLoopStack().pop();break;} 
 } 
 {Object temp_obj = (""); getPipelineDictionary().put("CssParametricClass", temp_obj);} 
 _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("entry:Level")).doubleValue() >((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",83,e);}if (_boolean_result) { 
 {Object temp_obj = (context.getFormattedValue("filter-layer",null) + context.getFormattedValue(getObject("entry:Level"),null)); getPipelineDictionary().put("CssParametricClass", temp_obj);} 
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("entry:isSelected")).booleanValue() ? Boolean.FALSE : Boolean.TRUE) ))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",88,e);}if (_boolean_result) { 
      out.write("<li class=\"filter-item ");
 {String value = null;try{value=context.getFormattedValue(getObject("CssParametricClass"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {90}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write('>');
 _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("entry:Value"),null).equals(context.getFormattedValue("SHOWLESS",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",91,e);}if (_boolean_result) { 
      out.write("<option value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("query:ExtendedCondition(entry:Name,entry:Value,selectionType)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {92}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" style=\"background-color: #eeeeee;\">");
 {String value = null;try{value=context.getFormattedValue(getObject("entry:DisplayValue"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {93}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</option>\n<a class=\"filter-item-name\"\nhref=\"");
 processOpenTag(response, pageContext, "filterlink", new TagParameter[] {
new TagParameter("pipelinename",getObject("pipeline")),
new TagParameter("sortvalue",getObject("tmp_sortvalue")),
new TagParameter("pagesize",getObject("query:PageSize")),
new TagParameter("searchparameter",getObject("query:ExtendedCondition(entry:Name,entry:Value,selectionType)")),
new TagParameter("params","TmpParams")}, 97); 
      out.write("\"\n>\n<span class=\"icon-notselected\"></span>");
 {String value = null;try{value=context.getFormattedValue(getObject("entry:DisplayValue"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {104}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</a>\n<span class=\"filter-count\">(");
 {String value = null;try{value=context.getFormattedValue(getObject("entry:Count"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {106}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write(")</span>");
 } 
      out.write("</li>");
 } 
 } 
      out.write("</select>\n<noscript>\n<button type=\"submit\">");
 {out.write(localizeISText("search.filter.filter.button","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</button>\n</noscript>\n</form>\n</ul>");
 } 
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
