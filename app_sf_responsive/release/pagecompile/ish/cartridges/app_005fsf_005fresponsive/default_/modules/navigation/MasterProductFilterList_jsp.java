/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-16 22:40:05 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.app_005fsf_005fresponsive.default_.modules.navigation;

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
import com.intershop.component.search.capi.FilterAttribute;
import com.intershop.component.search.capi.FilterAttributeEntry;
import java.util.Iterator;
import java.util.HashMap;
import java.util.ArrayList;

public final class MasterProductFilterList_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
 
 
response.setHeader(TemplateConstants.PERSONALIZED_HEADER, "1");setEncodingType("text/html"); 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ListNavigationVO"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",3,e);}if (_boolean_result) { 
 {Object temp_obj = (getObject("ListNavigationVO:SearchResult")); getPipelineDictionary().put("SearchResult", temp_obj);} 
 {Object temp_obj = (getObject("ListNavigationVO:FilterEntries")); getPipelineDictionary().put("FilterEntries", temp_obj);} 
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("showCount")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("showCount"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",7,e);}if (_boolean_result) { 
 {Object temp_obj = ("true"); getPipelineDictionary().put("cfg_showcount", temp_obj);} 
 } else { 
 {Object temp_obj = ("false"); getPipelineDictionary().put("cfg_showcount", temp_obj);} 
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("showSelected")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("showSelected"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",12,e);}if (_boolean_result) { 
 {Object temp_obj = ("true"); getPipelineDictionary().put("cfg_showselected", temp_obj);} 
 } else { 
 {Object temp_obj = ("false"); getPipelineDictionary().put("cfg_showselected", temp_obj);} 
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ListNavigationVO:SortingAttribute"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",17,e);}if (_boolean_result) { 
 {Object temp_obj = (getObject("ListNavigationVO:SortingAttribute")); getPipelineDictionary().put("cfg_sortvalue", temp_obj);} 
 } 
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"modules/search/index/Modules", null, "21");} 
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("FilterEntries")))).booleanValue() && ((Boolean) (hasLoopElements("FilterEntries") ? Boolean.TRUE : Boolean.FALSE)).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",24,e);}if (_boolean_result) { 
      out.write("<div class=\"\" id=\"filter-accordion\">\n<div class=\"\">\n<div class=\"col-md-12\">\n<h3>");
 {out.write(localizeISText("product.product_filters.heading","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</h3>\n</div>\n</div>\n<div class=\"collapse in\">");
 {Object temp_obj = (new Double(1)); getPipelineDictionary().put("filterCount", temp_obj);} 
 {Object temp_obj = (new Double(1)); getPipelineDictionary().put("rowCount", temp_obj);} 

                // We initialize first the selected filters list.
                getPipelineDictionary().put("SelectedFilters", new HashMap<String, ArrayList<FilterAttributeEntry>>());

            
 while (loop("FilterEntries","FilterEntry","cpt")) { 

                    HashMap<String, ArrayList<FilterAttributeEntry>> selected
                                                = (HashMap<String, ArrayList<FilterAttributeEntry>>) getObject("SelectedFilters");
          
                    // We need to make this as a String...
                    String hasUnSelectedValues = "false";
                    FilterAttribute filter;
                    if(getObject("FilterEntry") instanceof FilterAttribute)
                	{
                	    filter  = (FilterAttribute) getObject("FilterEntry");
	                    Iterator it                 = filter.createFilterAttributeEntryIterator();
	                    while(it.hasNext()) {
	                        FilterAttributeEntry entry = (FilterAttributeEntry) it.next();
	                        if (entry.isSelected()) {
	                            String key = filter.getConfigurationAttribute().getDisplayName();
									
	                            if (! selected.containsKey(key)) {
	                                selected.put(key, new  ArrayList<FilterAttributeEntry>());
	                            }
	                            selected.get(key).add(entry);
	                        } else {
	                            hasUnSelectedValues = "true";
	                        }
	                    }
                	}

                    getPipelineDictionary().put("HasUnSelectedValues", hasUnSelectedValues);
                
 {Object temp_obj = (getObject("FilterEntry")); getPipelineDictionary().put("filterAttribute", temp_obj);} 
 _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("filterAttribute:FilterAttributeEntry") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",76,e);}if (_boolean_result) { 
      out.write("<div class=\"filter-group col-md-3 col-sm-6 col-xs-12 margin-bottom-zero border-bottom-none\">");
 processOpenTag(response, pageContext, "masterproductfilter", new TagParameter[] {
new TagParameter("pipeline",context.getFormattedValue(getObject("ListNavigationVO:HandlerPipeline"),null) + context.getFormattedValue("-Browse",null)),
new TagParameter("filter",getObject("filterAttribute")),
new TagParameter("showcount",getObject("cfg_showcount")),
new TagParameter("sortvalue",getObject("cfg_sortvalue")),
new TagParameter("HasUnSelectedValues",getObject("HasUnSelectedValues")),
new TagParameter("query",getObject("SearchResult:Query")),
new TagParameter("showselected",getObject("cfg_showselected")),
new TagParameter("params","ListNavigationVO:GenericHandlerPipelineParams")}, 78); 
      out.write("</div>");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((( ((Number) ((new Double( ((Number) getObject("filterCount")).doubleValue() /((Number) new Double(4)).doubleValue())))).doubleValue() ==((Number)(getObject("rowCount"))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) (hasNext("FilterEntries") ? Boolean.TRUE : Boolean.FALSE)).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",89,e);}if (_boolean_result) { 
      out.write("</div>\n<div class=\"row\">");
 {Object temp_obj = ((new Double( ((Number) getObject("rowCount")).doubleValue() +((Number) new Double(1)).doubleValue()))); getPipelineDictionary().put("rowCount", temp_obj);} 
 } 
 {Object temp_obj = ((new Double( ((Number) getObject("filterCount")).doubleValue() +((Number) new Double(1)).doubleValue()))); getPipelineDictionary().put("filterCount", temp_obj);} 
 } 
 } 
      out.write("</div>");
 _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("SelectedFilters:EntrySet") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",99,e);}if (_boolean_result) { 
      out.write("<div class=\"row\">\n<div class=\"col-md-10 col-xs-12\">");
 processOpenTag(response, pageContext, "masterproductfilterremove", new TagParameter[] {
new TagParameter("pipeline",context.getFormattedValue(getObject("ListNavigationVO:HandlerPipeline"),null) + context.getFormattedValue("-Browse",null)),
new TagParameter("filter",getObject("SelectedFilters")),
new TagParameter("showcount",getObject("cfg_showcount")),
new TagParameter("sortvalue",getObject("cfg_sortvalue")),
new TagParameter("query",getObject("SearchResult:Query")),
new TagParameter("showselected",getObject("cfg_showselected")),
new TagParameter("params","ListNavigationVO:GenericHandlerPipelineParams")}, 102); 
      out.write("</div>\n<div class=\"col-md-2 col-xs-12\">\n<div class=\"pull-right\">\n<a href=\"");
 processOpenTag(response, pageContext, "filterlink", new TagParameter[] {
new TagParameter("pipelinename",context.getFormattedValue(getObject("ListNavigationVO:HandlerPipeline"),null) + context.getFormattedValue("-Browse",null)),
new TagParameter("pagesize",getObject("ListNavigationVO:PageSize")),
new TagParameter("searchparameter",getObject("ListNavigationVO:SearchResult:Query:RemoveAllConditions")),
new TagParameter("params","ListNavigationVO:GenericHandlerPipelineParams")}, 114); 
      out.write("\"\n>\n<span>");
 {out.write(localizeISText("product.remove_all_product_filters.text","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</span>\n</a>\n</div>\n</div>\n</div>");
 } 
      out.write("</div>");
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