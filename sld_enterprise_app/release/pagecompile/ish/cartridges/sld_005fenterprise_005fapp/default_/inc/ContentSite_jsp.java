/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-13 15:29:32 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.sld_005fenterprise_005fapp.default_.inc;

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

public final class ContentSite_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("sitefolder:UUID"),null).equals(context.getFormattedValue(getObject("rootfolderuuid"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",2,e);}if (_boolean_result) { 
 {Object temp_obj = (new Double(0)); getPipelineDictionary().put("level", temp_obj);} 
 } else { 
 {Object temp_obj = ((new Double( ((Number) getObject("level")).doubleValue() +((Number) new Double(1)).doubleValue()))); getPipelineDictionary().put("level", temp_obj);} 
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ExpandedSiteFolderMap:get(sitefolder:UUID)"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",7,e);}if (_boolean_result) { 
 {Object temp_obj = ("true"); getPipelineDictionary().put("isExpanded", temp_obj);} 
 } else { 
 {Object temp_obj = ("false"); getPipelineDictionary().put("isExpanded", temp_obj);} 
 } 
      out.write("<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tr>\n<td nowrap=\"nowrap\">");

			int level = ((Double)getObject("level")).intValue();
			int subLevelCount = 10;
			int currentSubCount = 0;

			for (int i=0; i<level; i++) {
				if(i > 0)
				{
					subLevelCount = ((Double)getObject("ElementCount" + (i - 1))).intValue();
					currentSubCount = ((Double)getObject("CurrentElementCount" + (i - 1))).intValue();
				}
				if (i>0 && currentSubCount != subLevelCount)
				{
					
      out.write("<img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/I.gif\" alt=\"\" border=\"0\"/>");

				}else
				{
					
      out.write("<img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" alt=\"\" border=\"0\"/>");

				}
			} 
      out.write("</td>");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("sitefolder:UUID"),null).equals(context.getFormattedValue(getObject("rootfolderuuid"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",33,e);}if (_boolean_result) { 
      out.write("<td><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"22\" height=\"1\" alt=\"\" border=\"0\"/></td>");
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("currentidx")).doubleValue() <((Number)(getObject("elementcount"))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",35,e);}if (_boolean_result) { 
      out.write("<td><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/T.gif\" alt=\"\" border=\"0\"/></td>");
 } else { 
      out.write("<td><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/L.gif\" alt=\"\" border=\"0\"/></td>");
 }} 
      out.write("<td>\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\n<tr>\n<td>\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"treeIconTable\"> \n");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("sitefolder:ElementCount")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) ))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",45,e);}if (_boolean_result) { 
      out.write("<tr>\n<td><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/T_extend.gif\" style=\"width: 24px; height:26px;\" alt=\"\" border=\"0\"/></td>\n</tr>");
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((((( ((Number) getObject("sitefolder:ElementCount")).doubleValue() ==((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",49,e);}if (_boolean_result) { 
      out.write("<tr>\n<td><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" style=\"width: 1px; height:28px;\" alt=\"\" border=\"0\"/></td>\n</tr>");
 } else { 
      out.write("<tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ExpandedSiteFolderMap:get(sitefolder:UUID)"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",55,e);}if (_boolean_result) { 
      out.write("<td class=\"treeIcon\"><a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue(context.getFormattedValue(getObject("handlerpipeline"),null) + context.getFormattedValue("-Collapse",null),null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SiteFolderUUID",null),context.getFormattedValue(getObject("sitefolder:UUID"),null))).addURLParameter(context.getFormattedValue("elementfilter",null),context.getFormattedValue(getObject("elementfilter"),null)).addURLParameter(context.getFormattedValue(getObject("parametername"),null),context.getFormattedValue(getObject("parametervalue"),null)).addURLParameter(context.getFormattedValue(getObject("parametername1"),null),context.getFormattedValue(getObject("parametervalue1"),null)).addURLParameter(context.getFormattedValue(getObject("parametername2"),null),context.getFormattedValue(getObject("parametervalue2"),null)).addURLParameter(context.getFormattedValue(getObject("parametername3"),null),context.getFormattedValue(getObject("parametervalue3"),null)).addURLParameter(context.getFormattedValue(getObject("parametername4"),null),context.getFormattedValue(getObject("parametervalue4"),null)).addURLParameter(context.getFormattedValue(getObject("parametername5"),null),context.getFormattedValue(getObject("parametervalue5"),null)).addURLParameter(context.getFormattedValue(getObject("parametername6"),null),context.getFormattedValue(getObject("parametervalue6"),null)).addURLParameter(context.getFormattedValue(getObject("parametername7"),null),context.getFormattedValue(getObject("parametervalue7"),null)).addURLParameter(context.getFormattedValue(getObject("parametername8"),null),context.getFormattedValue(getObject("parametervalue8"),null)).addURLParameter(context.getFormattedValue(getObject("parametername9"),null),context.getFormattedValue(getObject("parametervalue9"),null))),null));
      out.write("\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/minus.gif\" alt=\"\" border=\"0\" name=\"\" /></a></td>");
 } else { 
      out.write("<td class=\"treeIcon\"><a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue(context.getFormattedValue(getObject("handlerpipeline"),null) + context.getFormattedValue("-Expand",null),null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SiteFolderUUID",null),context.getFormattedValue(getObject("sitefolder:UUID"),null))).addURLParameter(context.getFormattedValue("elementfilter",null),context.getFormattedValue(getObject("elementfilter"),null)).addURLParameter(context.getFormattedValue(getObject("parametername"),null),context.getFormattedValue(getObject("parametervalue"),null)).addURLParameter(context.getFormattedValue(getObject("parametername1"),null),context.getFormattedValue(getObject("parametervalue1"),null)).addURLParameter(context.getFormattedValue(getObject("parametername2"),null),context.getFormattedValue(getObject("parametervalue2"),null)).addURLParameter(context.getFormattedValue(getObject("parametername3"),null),context.getFormattedValue(getObject("parametervalue3"),null)).addURLParameter(context.getFormattedValue(getObject("parametername4"),null),context.getFormattedValue(getObject("parametervalue4"),null)).addURLParameter(context.getFormattedValue(getObject("parametername5"),null),context.getFormattedValue(getObject("parametervalue5"),null)).addURLParameter(context.getFormattedValue(getObject("parametername6"),null),context.getFormattedValue(getObject("parametervalue6"),null)).addURLParameter(context.getFormattedValue(getObject("parametername7"),null),context.getFormattedValue(getObject("parametervalue7"),null)).addURLParameter(context.getFormattedValue(getObject("parametername8"),null),context.getFormattedValue(getObject("parametervalue8"),null)).addURLParameter(context.getFormattedValue(getObject("parametername9"),null),context.getFormattedValue(getObject("parametervalue9"),null))),null));
      out.write("\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/plus.gif\" alt=\"\" border=\"0\" name=\"\" /></a></td>");
 } 
      out.write("</tr>");
 }} 
      out.write(" \n</table>\n</td>\n<td>\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)((((((Boolean) (disableErrorMessages().isDefined(getObject("sitefolder:ElementCount")))).booleanValue() && ((Boolean) ((( ((Number) getObject("sitefolder:ElementCount")).doubleValue() !=((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",91,e);}if (_boolean_result) { 
      out.write("<td class=\"other_dep\" nowrap=\"nowrap\">");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((context.getFormattedValue(getObject("selectable"),null).equals(context.getFormattedValue("yes",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) (((((Boolean) ((((context.getFormattedValue(getObject("multipleselection"),null).equals(context.getFormattedValue("all",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("multipleselection"),null).equals(context.getFormattedValue("folder",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",93,e);}if (_boolean_result) { 
      out.write("<input type=\"checkbox\" name=\"SelectedSiteElementID\" value=\"");
      out.print(context.getFormattedValue(getObject("sitefolder:UUID"),null));
      out.write('"');
      out.write(' ');
 _boolean_result=false;try {_boolean_result=((Boolean)((((((Boolean) (disableErrorMessages().isDefined(getObject("regexmatcher")))).booleanValue() && ((Boolean) (getObject("regexmatcher:Match(sitefolder:Name)"))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",94,e);}if (_boolean_result) { 
      out.write("checked=\"checked\"");
 } 
      out.write('/');
      out.write('>');
 } 
      out.write("<a class=\"table_detail_link\" href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue(context.getFormattedValue(getObject("handlerpipeline"),null) + context.getFormattedValue("-Expand",null),null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SiteFolderUUID",null),context.getFormattedValue(getObject("sitefolder:UUID"),null))).addURLParameter(context.getFormattedValue("elementfilter",null),context.getFormattedValue(getObject("elementfilter"),null)).addURLParameter(context.getFormattedValue(getObject("parametername"),null),context.getFormattedValue(getObject("parametervalue"),null)).addURLParameter(context.getFormattedValue(getObject("parametername1"),null),context.getFormattedValue(getObject("parametervalue1"),null)).addURLParameter(context.getFormattedValue(getObject("parametername2"),null),context.getFormattedValue(getObject("parametervalue2"),null)).addURLParameter(context.getFormattedValue(getObject("parametername3"),null),context.getFormattedValue(getObject("parametervalue3"),null)).addURLParameter(context.getFormattedValue(getObject("parametername4"),null),context.getFormattedValue(getObject("parametervalue4"),null)).addURLParameter(context.getFormattedValue(getObject("parametername5"),null),context.getFormattedValue(getObject("parametervalue5"),null)).addURLParameter(context.getFormattedValue(getObject("parametername6"),null),context.getFormattedValue(getObject("parametervalue6"),null)).addURLParameter(context.getFormattedValue(getObject("parametername7"),null),context.getFormattedValue(getObject("parametervalue7"),null)).addURLParameter(context.getFormattedValue(getObject("parametername8"),null),context.getFormattedValue(getObject("parametervalue8"),null)).addURLParameter(context.getFormattedValue(getObject("parametername9"),null),context.getFormattedValue(getObject("parametervalue9"),null))),null));
      out.write('"');
      out.write('>');
 {String value = null;try{value=context.getFormattedValue(getObject("sitefolder:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {108}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</a></td>");
 } else { 
 _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("selectable"),null).equals(context.getFormattedValue("yes",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",110,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((context.getFormattedValue(getObject("multipleselection"),null).equals(context.getFormattedValue("all",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("multipleselection"),null).equals(context.getFormattedValue("asset",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",111,e);}if (_boolean_result) { 
      out.write("<td class=\"dep_check\"><input type=\"checkbox\" name=\"SelectedSiteElementID\" value=\"");
      out.print(context.getFormattedValue(getObject("sitefolder:UUID"),null));
      out.write('"');
      out.write(' ');
 _boolean_result=false;try {_boolean_result=((Boolean)((((((Boolean) (disableErrorMessages().isDefined(getObject("regexmatcher")))).booleanValue() && ((Boolean) (getObject("regexmatcher:Match(sitefolder:Name)"))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",112,e);}if (_boolean_result) { 
      out.write("checked=\"checked\"");
 } 
      out.write("/></td>");
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((((!(context.getFormattedValue(getObject("multipleselection"),null).equals(context.getFormattedValue("folder",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",113,e);}if (_boolean_result) { 
      out.write("<td class=\"dep_check\"><input type=\"radio\" name=\"SelectedSiteElementID\" value=\"");
      out.print(context.getFormattedValue(getObject("sitefolder:UUID"),null));
      out.write('"');
      out.write(' ');
 _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("sitefolder:UUID"),null).equals(context.getFormattedValue(getObject("SelectedSiteElementUUID"),null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",114,e);}if (_boolean_result) { 
      out.write("checked=\"checked\"");
 } 
      out.write("/></td>");
 }} 
 } 
      out.write("<td class=\"other_dep\" nowrap=\"nowrap\">");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("editable"),null).equals(context.getFormattedValue("yes",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",118,e);}if (_boolean_result) { 
      out.write("<a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue(context.getFormattedValue(getObject("handlerpipeline"),null) + context.getFormattedValue("-OpenEditor",null),null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ElementType",null),context.getFormattedValue(getObject("sitefolder:Type"),null))).addURLParameter(context.getFormattedValue("ElementUUID",null),context.getFormattedValue(getObject("sitefolder:UUID"),null))),null));
      out.write("\" class=\"table_detail_link\" target=\"_blank\">");
 {String value = null;try{value=context.getFormattedValue(getObject("sitefolder:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {119}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</a>");
 } else { 
 {String value = null;try{value=context.getFormattedValue(getObject("sitefolder:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {121}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } 
      out.write("</td>");
 } 
      out.write("</tr>\n</table>\n</td>\n</tr>\n</table>\n</td>\n</tr>\n</table>");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ExpandedSiteFolderMap:get(sitefolder:UUID)"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",138,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("level")).doubleValue() ==((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",139,e);}if (_boolean_result) { 
 {Object temp_obj = (new Double(0)); getPipelineDictionary().put("CurrentElementCount0", temp_obj);} 
 {Object temp_obj = (new Double(0)); getPipelineDictionary().put("ElementCount0", temp_obj);} 
 while (loop("ExpandedSiteFolderMap:get(sitefolder:UUID)","Folders",null)) { 
 {Object temp_obj = ((new Double( ((Number) getObject("ElementCount0")).doubleValue() +((Number) new Double(1)).doubleValue()))); getPipelineDictionary().put("ElementCount0", temp_obj);} 
 } 
 while (loop("ExpandedSiteFolderMap:get(sitefolder:UUID)","Folder0",null)) { 
 {Object temp_obj = ((new Double( ((Number) getObject("CurrentElementCount0")).doubleValue() +((Number) new Double(1)).doubleValue()))); getPipelineDictionary().put("CurrentElementCount0", temp_obj);} 
 processOpenTag(response, pageContext, "contentsite", new TagParameter[] {
new TagParameter("currentidx",getObject("CurrentElementCount0")),
new TagParameter("sitefolder",getObject("Folder0")),
new TagParameter("elementcount",getObject("ElementCount0"))}, 143); 
 } 
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("level")).doubleValue() ==((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",144,e);}if (_boolean_result) { 
 {Object temp_obj = (new Double(0)); getPipelineDictionary().put("CurrentElementCount1", temp_obj);} 
 {Object temp_obj = (new Double(0)); getPipelineDictionary().put("ElementCount1", temp_obj);} 
 while (loop("ExpandedSiteFolderMap:get(sitefolder:UUID)","Folders",null)) { 
 {Object temp_obj = ((new Double( ((Number) getObject("ElementCount1")).doubleValue() +((Number) new Double(1)).doubleValue()))); getPipelineDictionary().put("ElementCount1", temp_obj);} 
 } 
 while (loop("ExpandedSiteFolderMap:get(sitefolder:UUID)","Folder1",null)) { 
 {Object temp_obj = ((new Double( ((Number) getObject("CurrentElementCount1")).doubleValue() +((Number) new Double(1)).doubleValue()))); getPipelineDictionary().put("CurrentElementCount1", temp_obj);} 
 processOpenTag(response, pageContext, "contentsite", new TagParameter[] {
new TagParameter("currentidx",getObject("CurrentElementCount1")),
new TagParameter("sitefolder",getObject("Folder1")),
new TagParameter("elementcount",getObject("ElementCount1"))}, 148); 
 } 
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("level")).doubleValue() ==((Number)(new Double(2))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",149,e);}if (_boolean_result) { 
 {Object temp_obj = (new Double(0)); getPipelineDictionary().put("CurrentElementCount2", temp_obj);} 
 {Object temp_obj = (new Double(0)); getPipelineDictionary().put("ElementCount2", temp_obj);} 
 while (loop("ExpandedSiteFolderMap:get(sitefolder:UUID)","Folders",null)) { 
 {Object temp_obj = ((new Double( ((Number) getObject("ElementCount2")).doubleValue() +((Number) new Double(1)).doubleValue()))); getPipelineDictionary().put("ElementCount2", temp_obj);} 
 } 
 while (loop("ExpandedSiteFolderMap:get(sitefolder:UUID)","Folder2",null)) { 
 {Object temp_obj = ((new Double( ((Number) getObject("CurrentElementCount2")).doubleValue() +((Number) new Double(1)).doubleValue()))); getPipelineDictionary().put("CurrentElementCount2", temp_obj);} 
 processOpenTag(response, pageContext, "contentsite", new TagParameter[] {
new TagParameter("currentidx",getObject("CurrentElementCount2")),
new TagParameter("sitefolder",getObject("Folder2")),
new TagParameter("elementcount",getObject("ElementCount2"))}, 153); 
 } 
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("level")).doubleValue() ==((Number)(new Double(3))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",154,e);}if (_boolean_result) { 
 {Object temp_obj = (new Double(0)); getPipelineDictionary().put("CurrentElementCount3", temp_obj);} 
 {Object temp_obj = (new Double(0)); getPipelineDictionary().put("ElementCount3", temp_obj);} 
 while (loop("ExpandedSiteFolderMap:get(sitefolder:UUID)","Folders",null)) { 
 {Object temp_obj = ((new Double( ((Number) getObject("ElementCount3")).doubleValue() +((Number) new Double(1)).doubleValue()))); getPipelineDictionary().put("ElementCount3", temp_obj);} 
 } 
 while (loop("ExpandedSiteFolderMap:get(sitefolder:UUID)","Folder3",null)) { 
 {Object temp_obj = ((new Double( ((Number) getObject("CurrentElementCount3")).doubleValue() +((Number) new Double(1)).doubleValue()))); getPipelineDictionary().put("CurrentElementCount3", temp_obj);} 
 processOpenTag(response, pageContext, "contentsite", new TagParameter[] {
new TagParameter("currentidx",getObject("CurrentElementCount3")),
new TagParameter("sitefolder",getObject("Folder3")),
new TagParameter("elementcount",getObject("ElementCount3"))}, 158); 
 } 
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("level")).doubleValue() ==((Number)(new Double(4))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",159,e);}if (_boolean_result) { 
 {Object temp_obj = (new Double(0)); getPipelineDictionary().put("CurrentElementCount4", temp_obj);} 
 {Object temp_obj = (new Double(0)); getPipelineDictionary().put("ElementCount4", temp_obj);} 
 while (loop("ExpandedSiteFolderMap:get(sitefolder:UUID)","Folders",null)) { 
 {Object temp_obj = ((new Double( ((Number) getObject("ElementCount4")).doubleValue() +((Number) new Double(1)).doubleValue()))); getPipelineDictionary().put("ElementCount4", temp_obj);} 
 } 
 while (loop("ExpandedSiteFolderMap:get(sitefolder:UUID)","Folder4",null)) { 
 {Object temp_obj = ((new Double( ((Number) getObject("CurrentElementCount4")).doubleValue() +((Number) new Double(1)).doubleValue()))); getPipelineDictionary().put("CurrentElementCount4", temp_obj);} 
 processOpenTag(response, pageContext, "contentsite", new TagParameter[] {
new TagParameter("currentidx",getObject("CurrentElementCount4")),
new TagParameter("sitefolder",getObject("Folder4")),
new TagParameter("elementcount",getObject("ElementCount4"))}, 163); 
 } 
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("level")).doubleValue() ==((Number)(new Double(5))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",164,e);}if (_boolean_result) { 
 {Object temp_obj = (new Double(0)); getPipelineDictionary().put("CurrentElementCount5", temp_obj);} 
 {Object temp_obj = (new Double(0)); getPipelineDictionary().put("ElementCount5", temp_obj);} 
 while (loop("ExpandedSiteFolderMap:get(sitefolder:UUID)","Folders",null)) { 
 {Object temp_obj = ((new Double( ((Number) getObject("ElementCount5")).doubleValue() +((Number) new Double(1)).doubleValue()))); getPipelineDictionary().put("ElementCount5", temp_obj);} 
 } 
 while (loop("ExpandedSiteFolderMap:get(sitefolder:UUID)","Folder5",null)) { 
 {Object temp_obj = ((new Double( ((Number) getObject("CurrentElementCount5")).doubleValue() +((Number) new Double(1)).doubleValue()))); getPipelineDictionary().put("CurrentElementCount5", temp_obj);} 
 processOpenTag(response, pageContext, "contentsite", new TagParameter[] {
new TagParameter("currentidx",getObject("CurrentElementCount5")),
new TagParameter("sitefolder",getObject("Folder5")),
new TagParameter("elementcount",getObject("ElementCount5"))}, 168); 
 } 
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("level")).doubleValue() ==((Number)(new Double(6))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",169,e);}if (_boolean_result) { 
 {Object temp_obj = (new Double(0)); getPipelineDictionary().put("CurrentElementCount6", temp_obj);} 
 {Object temp_obj = (new Double(0)); getPipelineDictionary().put("ElementCount6", temp_obj);} 
 while (loop("ExpandedSiteFolderMap:get(sitefolder:UUID)","Folders",null)) { 
 {Object temp_obj = ((new Double( ((Number) getObject("ElementCount6")).doubleValue() +((Number) new Double(1)).doubleValue()))); getPipelineDictionary().put("ElementCount6", temp_obj);} 
 } 
 while (loop("ExpandedSiteFolderMap:get(sitefolder:UUID)","Folder6",null)) { 
 {Object temp_obj = ((new Double( ((Number) getObject("CurrentElementCount6")).doubleValue() +((Number) new Double(1)).doubleValue()))); getPipelineDictionary().put("CurrentElementCount6", temp_obj);} 
 processOpenTag(response, pageContext, "contentsite", new TagParameter[] {
new TagParameter("currentidx",getObject("CurrentElementCount6")),
new TagParameter("sitefolder",getObject("Folder6")),
new TagParameter("elementcount",getObject("ElementCount6"))}, 173); 
 } 
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("level")).doubleValue() ==((Number)(new Double(7))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",174,e);}if (_boolean_result) { 
 {Object temp_obj = (new Double(0)); getPipelineDictionary().put("CurrentElementCount7", temp_obj);} 
 {Object temp_obj = (new Double(0)); getPipelineDictionary().put("ElementCount7", temp_obj);} 
 while (loop("ExpandedSiteFolderMap:get(sitefolder:UUID)","Folders",null)) { 
 {Object temp_obj = ((new Double( ((Number) getObject("ElementCount7")).doubleValue() +((Number) new Double(1)).doubleValue()))); getPipelineDictionary().put("ElementCount7", temp_obj);} 
 } 
 while (loop("ExpandedSiteFolderMap:get(sitefolder:UUID)","Folder7",null)) { 
 {Object temp_obj = ((new Double( ((Number) getObject("CurrentElementCount7")).doubleValue() +((Number) new Double(1)).doubleValue()))); getPipelineDictionary().put("CurrentElementCount7", temp_obj);} 
 processOpenTag(response, pageContext, "contentsite", new TagParameter[] {
new TagParameter("currentidx",getObject("CurrentElementCount7")),
new TagParameter("sitefolder",getObject("Folder7")),
new TagParameter("elementcount",getObject("ElementCount7"))}, 178); 
 } 
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("level")).doubleValue() ==((Number)(new Double(8))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",179,e);}if (_boolean_result) { 
 {Object temp_obj = (new Double(0)); getPipelineDictionary().put("CurrentElementCount8", temp_obj);} 
 {Object temp_obj = (new Double(0)); getPipelineDictionary().put("ElementCount8", temp_obj);} 
 while (loop("ExpandedSiteFolderMap:get(sitefolder:UUID)","Folders",null)) { 
 {Object temp_obj = ((new Double( ((Number) getObject("ElementCount8")).doubleValue() +((Number) new Double(1)).doubleValue()))); getPipelineDictionary().put("ElementCount8", temp_obj);} 
 } 
 while (loop("ExpandedSiteFolderMap:get(sitefolder:UUID)","Folder8",null)) { 
 {Object temp_obj = ((new Double( ((Number) getObject("CurrentElementCount8")).doubleValue() +((Number) new Double(1)).doubleValue()))); getPipelineDictionary().put("CurrentElementCount8", temp_obj);} 
 processOpenTag(response, pageContext, "contentsite", new TagParameter[] {
new TagParameter("currentidx",getObject("CurrentElementCount8")),
new TagParameter("sitefolder",getObject("Folder8")),
new TagParameter("elementcount",getObject("ElementCount8"))}, 183); 
 } 
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("level")).doubleValue() ==((Number)(new Double(9))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",184,e);}if (_boolean_result) { 
 {Object temp_obj = (new Double(0)); getPipelineDictionary().put("CurrentElementCount9", temp_obj);} 
 {Object temp_obj = (new Double(0)); getPipelineDictionary().put("ElementCount9", temp_obj);} 
 while (loop("ExpandedSiteFolderMap:get(sitefolder:UUID)","Folders",null)) { 
 {Object temp_obj = ((new Double( ((Number) getObject("ElementCount9")).doubleValue() +((Number) new Double(1)).doubleValue()))); getPipelineDictionary().put("ElementCount9", temp_obj);} 
 } 
 while (loop("ExpandedSiteFolderMap:get(sitefolder:UUID)","Folder9",null)) { 
 {Object temp_obj = ((new Double( ((Number) getObject("CurrentElementCount9")).doubleValue() +((Number) new Double(1)).doubleValue()))); getPipelineDictionary().put("CurrentElementCount9", temp_obj);} 
 processOpenTag(response, pageContext, "contentsite", new TagParameter[] {
new TagParameter("currentidx",getObject("CurrentElementCount9")),
new TagParameter("sitefolder",getObject("Folder9")),
new TagParameter("elementcount",getObject("ElementCount9"))}, 188); 
 } 
 }}}}}}}}}} 
 } 
 {Object temp_obj = ((new Double( ((Number) getObject("level")).doubleValue() -((Number) new Double(1)).doubleValue()))); getPipelineDictionary().put("level", temp_obj);} 
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
