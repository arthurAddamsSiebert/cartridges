/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-13 15:29:13 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.sld_005fch_005fbase.default_.content.refsiteparameters;

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

public final class ChannelSortByParameterInc_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
 processOpenTag(response, pageContext, "createmap", new TagParameter[] {
new TagParameter("key1","Domain"),
new TagParameter("key0","Locale"),
new TagParameter("value1",getObject("CurrentChannel:Domain")),
new TagParameter("value0",getObject("Locale")),
new TagParameter("mapname","PipelineParams")}, 2); 
 {try{executePipeline("ProcessSearchIndex-GetSortings",((java.util.Map)(getObject("PipelineParams"))),"Result");}catch(Exception e){Logger.error(this,"ISPIPELINE failed. Line: 5.",e);}} 
 _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Result:SortableAttributes") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",7,e);}if (_boolean_result) { 
      out.write("<table style=\"margin-left: -3px;\">\n<tr>\n<td>");
 {out.write(localizeISText("ChannelSortByParameterInc.AvailableSortings",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n<td>&nbsp;</td>\n<td>");
 {out.write(localizeISText("ChannelSortByParameterInc.SelectedSortings",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n<td>&nbsp;</td>\n</tr>\n<tr>\n<td> \n<select multiple=\"multiple\" size=\"5\" class=\"inputfield_en\" style=\"width: 300px;\" id=\"allRefs_");
 {String value = null;try{value=context.getFormattedValue(getObject("ConfigurationParameterDefinition:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {17}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write('>');
 while (loop("Result:SortableAttributes","Sorting",null)) { 
 {Object temp_obj = (context.getFormattedValue(getObject("Sorting:Name"),null) + context.getFormattedValue("-asc",null)); getPipelineDictionary().put("sortingName_asc", temp_obj);} 
 _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (getObject("ConfigurationParameterWebForm:getParameter(ConfigurationParameterDefinition:Name):Value:Contains(sortingName_asc)"))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",20,e);}if (_boolean_result) { 
      out.write(" \n<option value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("Sorting:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {21}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("-asc\">");
 {String value = null;try{value=context.getFormattedValue(getObject("Sorting:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {22}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write(' ');
      out.write('-');
      out.write(' ');
 {out.write(localizeISText("ChannelSortByParameterInc.Ascending.option",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</option>");
 } 
 {Object temp_obj = (context.getFormattedValue(getObject("Sorting:Name"),null) + context.getFormattedValue("-desc",null)); getPipelineDictionary().put("sortingName_desc", temp_obj);} 
 _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (getObject("ConfigurationParameterWebForm:getParameter(ConfigurationParameterDefinition:Name):Value:Contains(sortingName_desc)"))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",26,e);}if (_boolean_result) { 
      out.write("<option value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("Sorting:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {27}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("-desc\">");
 {String value = null;try{value=context.getFormattedValue(getObject("Sorting:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {28}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write(' ');
      out.write('-');
      out.write(' ');
 {out.write(localizeISText("ChannelSortByParameterInc.Descending.option",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</option>");
 } 
      out.write(' ');
      out.write('\n');
 } 
      out.write("<!-- Gross/Net integration -->");
 {Object temp_obj = ("SalePrice-asc"); getPipelineDictionary().put("sortingName_asc", temp_obj);} 
 _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (getObject("ConfigurationParameterWebForm:getParameter(ConfigurationParameterDefinition:Name):Value:Contains(sortingName_asc)"))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",34,e);}if (_boolean_result) { 
      out.write(" \n<option value=\"SalePrice-asc\">");
 {out.write(localizeISText("ChannelSortByParameterInc.SalePriceAscending.option",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</option>");
 } 
 {Object temp_obj = ("SalePrice-desc"); getPipelineDictionary().put("sortingName_desc", temp_obj);} 
 _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (getObject("ConfigurationParameterWebForm:getParameter(ConfigurationParameterDefinition:Name):Value:Contains(sortingName_desc)"))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",40,e);}if (_boolean_result) { 
      out.write("<option value=\"SalePrice-desc\">");
 {out.write(localizeISText("ChannelSortByParameterInc.SalePriceDescending.option",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</option>");
 } 
      out.write(" \n</select>\n</td>\n<td>\n<input type=\"image\" src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/sort_right.gif\" alt=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("ChannelSortByParameterInc.Add.alt",null)),null));
      out.write("\" title=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("ChannelSortByParameterInc.Add.input",null)),null));
      out.write("\" onclick=\"moveOptionsAcross('allRefs_");
 {String value = null;try{value=context.getFormattedValue(getObject("ConfigurationParameterDefinition:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {48}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("', 'selectedRefs_");
 {String value = null;try{value=context.getFormattedValue(getObject("ConfigurationParameterDefinition:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {48}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("'); return false;\"/>\n<div style=\"height: 5px;\"></div>\n<input type=\"image\" src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/sort_left.gif\" alt=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("ChannelSortByParameterInc.Remove.alt",null)),null));
      out.write("\" title=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("ChannelSortByParameterInc.Remove.input",null)),null));
      out.write("\" onclick=\"moveOptionsAcross('selectedRefs_");
 {String value = null;try{value=context.getFormattedValue(getObject("ConfigurationParameterDefinition:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {50}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("', 'allRefs_");
 {String value = null;try{value=context.getFormattedValue(getObject("ConfigurationParameterDefinition:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {50}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("'); return false;\"/>\n</td>\n<td>\n<select multiple=\"multiple\" size=\"5\" class=\"submitAllValues inputfield_en\" style=\"width: 300px;\"\nname=\"ConfigurationParameter_");
 {String value = null;try{value=context.getFormattedValue(getObject("ConfigurationParameterDefinition:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {54}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" \nid=\"selectedRefs_");
 {String value = null;try{value=context.getFormattedValue(getObject("ConfigurationParameterDefinition:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {55}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" \n> \n");
 while (loop("ConfigurationParameterWebForm:getParameter(ConfigurationParameterDefinition:Name):Value:Iterator","ParameterValue",null)) { 
 while (loop("Result:SortableAttributes","availableValue",null)) { 
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue((getObject("ParameterValue")),null).equals(context.getFormattedValue((context.getFormattedValue(getObject("availableValue:Name"),null) + context.getFormattedValue("-asc",null)),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",60,e);}if (_boolean_result) { 
      out.write("<option value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("ParameterValue"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {61}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write('>');
 {String value = null;try{value=context.getFormattedValue(getObject("availableValue:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {62}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write(' ');
      out.write('-');
      out.write(' ');
 {out.write(localizeISText("ChannelSortByParameterInc.Ascending.option",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(" \n</option> \n");
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue((getObject("ParameterValue")),null).equals(context.getFormattedValue((context.getFormattedValue(getObject("availableValue:Name"),null) + context.getFormattedValue("-desc",null)),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",64,e);}if (_boolean_result) { 
      out.write("<option value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("ParameterValue"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {65}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write('>');
 {String value = null;try{value=context.getFormattedValue(getObject("availableValue:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {66}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write(' ');
      out.write('-');
      out.write(' ');
 {out.write(localizeISText("ChannelSortByParameterInc.Descending.option",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</option> \n");
 }} 
 } 
      out.write("<!-- Gross/Net integration -->");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue((getObject("ParameterValue")),null).equals(context.getFormattedValue(("SalePrice-asc"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",72,e);}if (_boolean_result) { 
      out.write("<option value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("ParameterValue"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {73}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write('>');
 {out.write(localizeISText("ChannelSortByParameterInc.SalePriceAscending.option",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</option> \n");
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue((getObject("ParameterValue")),null).equals(context.getFormattedValue(("SalePrice-desc"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",76,e);}if (_boolean_result) { 
      out.write("<option value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("ParameterValue"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {77}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write('>');
 {out.write(localizeISText("ChannelSortByParameterInc.SalePriceDescending.option",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</option> \n");
 }} 
      out.write(' ');
      out.write('\n');
 } 
      out.write(" \n</select>\n</td>\n<td>\n<input type=\"image\" src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/sort_up.gif\" alt=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("ChannelSortByParameterInc.MoveUp.alt",null)),null));
      out.write("\" title=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("ChannelSortByParameterInc.MoveUp.input",null)),null));
      out.write("\" onclick=\"moveOptionsUp('selectedRefs_");
 {String value = null;try{value=context.getFormattedValue(getObject("ConfigurationParameterDefinition:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {85}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("'); return false;\"/>\n<div style=\"height: 5px;\"></div>\n<input type=\"image\" src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/sort_down.gif\" alt=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("ChannelSortByParameterInc.MoveDown.alt",null)),null));
      out.write("\" title=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("ChannelSortByParameterInc.MoveDown.input",null)),null));
      out.write("\" onclick=\"moveOptionsDown('selectedRefs_");
 {String value = null;try{value=context.getFormattedValue(getObject("ConfigurationParameterDefinition:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {87}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("'); return false;\"/>\n</td>\n</tr> \n</table> \n");
 } else { 
 {out.write(localizeISText("ChannelSortByParameterInc.NoSortableAttributesAvailable",null,null,null,null,null,null,null,null,null,null,null,null));} 
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
