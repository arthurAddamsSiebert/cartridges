/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-13 15:29:30 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.sld_005fenterprise_005fapp.default_.content.placeholder;

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

public final class PlaceholderInheritanceChildTree_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
 {Object temp_obj = ((new Double( ((Number) getObject("depthCounter")).doubleValue() +((Number) new Double(1)).doubleValue()))); getPipelineDictionary().put("depthCounter", temp_obj);} 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ContentRepository"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",4,e);}if (_boolean_result) { 
 {Object temp_obj = (getObject("ContentRepository:UUID")); getPipelineDictionary().put("ContentRepositoryUUID", temp_obj);} 
 {Object temp_obj = (getObject("PageletPlaceholder:SourcePlaceholderDefinitionPO:SourcePlaceholderPOs(ContentRepository:RepositoryDomain)")); getPipelineDictionary().put("SourcePlaceholderPOs", temp_obj);} 
 } else { 
 {Object temp_obj = (getObject("PageletPlaceholder:SourcePlaceholderDefinitionPO:SourcePlaceholderPOs")); getPipelineDictionary().put("SourcePlaceholderPOs", temp_obj);} 
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("SourcePlaceholderPOs") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",11,e);}if (_boolean_result) { 
 while (loop("SourcePlaceholderPOs","SourcePlaceholderPO",null)) { 
 {Object temp_obj = ((new Double( ((Number) getObject("RowCounter")).doubleValue() +((Number) new Double(1)).doubleValue()))); getPipelineDictionary().put("RowCounter", temp_obj);} 
      out.write("<tr ");
 if ((Double)getObject("RowCounter")%2 == 1.00) {
      out.write("class=\"odd\" ");
}
      out.write(">\n<td>\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\"> \n<tr>");

							Double depthCounter = (Double)getObject("depthCounter");
							Map hasMoreMap = (Map)getObject("hasMoreMap");
							for ( int i = 0; i < depthCounter.intValue(); i ++ ) 
							{
								if ((hasMoreMap.get("level"+i) != null) && (hasMoreMap.get("level"+i).equals(true)))
								{
									
      out.write("<td style=\"width:22px;background: url(");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/cb_I.gif) repeat-y center;\">&nbsp;</td>");

								}
								else
								{
									
      out.write("<td style=\"width:22px;\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"22\" height=\"1\" alt=\"\" border=\"0\" /></td>");

								}
							}
						
 {Object temp_obj = (context.getFormattedValue("PlaceholderTree_",null) + context.getFormattedValue(getObject("SourcePlaceholderPO:UUID"),null)); getPipelineDictionary().put("PlaceholderEntry", temp_obj);} 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ContentRepository"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",36,e);}if (_boolean_result) { 
 {Object temp_obj = (getObject("SourcePlaceholderPO:SourcePlaceholderDefinitionPO:SourcePlaceholderPOs(ContentRepository:RepositoryDomain)")); getPipelineDictionary().put("SourcePlaceholderPOSourcePlaceholderPOs", temp_obj);} 
 } else { 
 {Object temp_obj = (getObject("SourcePlaceholderPO:SourcePlaceholderDefinitionPO:SourcePlaceholderPOs")); getPipelineDictionary().put("SourcePlaceholderPOSourcePlaceholderPOs", temp_obj);} 
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("SourcePlaceholderPOSourcePlaceholderPOs") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",41,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)((hasNext("SourcePlaceholderPO") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",42,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ExpandedPageletTreeEntries:Contains(PlaceholderEntry)"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",43,e);}if (_boolean_result) { 
      out.write("<td style=\"width:22px;background: url(");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/cb_minus.gif) repeat-y center;\">\n<a class=\"tree_icon_link\" href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPagelet-Collapse",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("Entry",null),context.getFormattedValue(getObject("PlaceholderEntry"),null))).addURLParameter(context.getFormattedValue("PageletUUID",null),context.getFormattedValue(getObject("PageletUUID"),null)).addURLParameter(context.getFormattedValue("ContentRepositoryUUID",null),context.getFormattedValue(getObject("ContentRepositoryUUID"),null))),null));
      out.write('"');
      out.write('>');
 } else { 
      out.write("<td style=\"width:22px;background: url(");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/cb_plus.gif) repeat-y center;\">\n<a class=\"tree_icon_link\" href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPagelet-Expand",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("Entry",null),context.getFormattedValue(getObject("PlaceholderEntry"),null))).addURLParameter(context.getFormattedValue("PageletUUID",null),context.getFormattedValue(getObject("PageletUUID"),null)).addURLParameter(context.getFormattedValue("ContentRepositoryUUID",null),context.getFormattedValue(getObject("ContentRepositoryUUID"),null))),null));
      out.write('"');
      out.write('>');
 } 
 } else { 
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ExpandedPageletTreeEntries:Contains(PlaceholderEntry)"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",51,e);}if (_boolean_result) { 
      out.write("<td style=\"width:22px;background: url(");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/cb_minus_bottom.gif) repeat-y center;\">\n<a class=\"tree_icon_link\" href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPagelet-Collapse",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("Entry",null),context.getFormattedValue(getObject("PlaceholderEntry"),null))).addURLParameter(context.getFormattedValue("PageletUUID",null),context.getFormattedValue(getObject("PageletUUID"),null)).addURLParameter(context.getFormattedValue("ContentRepositoryUUID",null),context.getFormattedValue(getObject("ContentRepositoryUUID"),null))),null));
      out.write('"');
      out.write('>');
 } else { 
      out.write("<td style=\"width:22px;background: url(");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/cb_plus_bottom.gif) repeat-y center;\">\n<a class=\"tree_icon_link\" href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPagelet-Expand",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("Entry",null),context.getFormattedValue(getObject("PlaceholderEntry"),null))).addURLParameter(context.getFormattedValue("PageletUUID",null),context.getFormattedValue(getObject("PageletUUID"),null)).addURLParameter(context.getFormattedValue("ContentRepositoryUUID",null),context.getFormattedValue(getObject("ContentRepositoryUUID"),null))),null));
      out.write('"');
      out.write('>');
 } 
 } 
      out.write("<img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"22\" alt=\"\" border=\"0\" />\n</a>\n</td>");
 } else { 
 _boolean_result=false;try {_boolean_result=((Boolean)((hasNext("SourcePlaceholderPO") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",63,e);}if (_boolean_result) { 
      out.write("<td style=\"width:22px;background: url(");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/cb_L_join.gif) repeat-y center;\">&nbsp;</td>");
 } else { 
      out.write("<td style=\"width:22px;background: url(");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/cb_L.gif) repeat-y center;\">&nbsp;</td>");
 } 
 } 
      out.write("<td class=\"table_detail\">\n<a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPagelet-View",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SelectedTab",null),context.getFormattedValue("Content",null))).addURLParameter(context.getFormattedValue("PageletUUID",null),context.getFormattedValue(getObject("SourcePlaceholderPO:Template:UUID"),null)).addURLParameter(context.getFormattedValue("ContentRepositoryUUID",null),context.getFormattedValue(getObject("ContentRepositoryUUID"),null)).addURLParameter(context.getFormattedValue("removeLastBreadCrumb",null),context.getFormattedValue("true",null))),null));
      out.write("\" class=\"table_detail_link2 sfe-action-disable\">");
 processOpenTag(response, pageContext, "pageletdisplayname", new TagParameter[] {
new TagParameter("Locale",getObject("Locale")),
new TagParameter("Pagelet",getObject("SourcePlaceholderPO:Template"))}, 71); 
      out.write("</a>\n</td>\n</tr>\n</table>\n</td>\n</tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("SourcePlaceholderPOSourcePlaceholderPOs") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",79,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ExpandedPageletTreeEntries:Contains(PlaceholderEntry)"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",80,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)((hasNext("SourcePlaceholderPO") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",81,e);}if (_boolean_result) { 

						hasMoreMap.put("level"+depthCounter.intValue(), true);
						getPipelineDictionary().put("hasMoreMap", hasMoreMap);
					
 } else { 

						hasMoreMap.put("level"+depthCounter.intValue(), false);
						getPipelineDictionary().put("hasMoreMap", hasMoreMap);
					
 } 
 processOpenTag(response, pageContext, "placeholderinheritancechildtree", new TagParameter[] {
new TagParameter("Locale",getObject("Locale")),
new TagParameter("sourcePlaceholderUUID",getObject("sourcePlaceholderUUID")),
new TagParameter("depthCounter",getObject("depthCounter")),
new TagParameter("hasMoreMap",getObject("hasMoreMap")),
new TagParameter("PageletUUID",getObject("PageletUUID")),
new TagParameter("ContentRepository",getObject("ContentRepository")),
new TagParameter("ReturnRowCounter","RowCounter"),
new TagParameter("ContentRepositoryUUID",getObject("ContentRepositoryUUID")),
new TagParameter("RowCounter",getObject("RowCounter")),
new TagParameter("PageletPlaceholder",getObject("SourcePlaceholderPO"))}, 92); 
 } 
 } 
 } 
 } 
 {Object temp_obj = (getObject("RowCounter")); getPipelineDictionary().put("ReturnRowCounter", temp_obj);} 
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
