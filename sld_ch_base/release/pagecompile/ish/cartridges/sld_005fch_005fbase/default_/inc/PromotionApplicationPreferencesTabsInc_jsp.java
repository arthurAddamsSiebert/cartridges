/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-13 15:29:14 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.sld_005fch_005fbase.default_.inc;

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

public final class PromotionApplicationPreferencesTabsInc_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
 
      out.write('\n');
 
setEncodingType("text/html"); 
      out.write("\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"w100\">\n\t<tr>\n\t\t");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SelectedTab"),null).equals(context.getFormattedValue("ApplicationLevelExclusion",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",5,e);}if (_boolean_result) { 
      out.write("\n\t\t\t<td class=\"w e n table_tabs_en_background\" nowrap=\"nowrap\">");
 {out.write(localizeISText("PromotionApplicationPreferencesTabsInc.ApplicationLevelExclusion.table_tabs_en_background",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n\t\t");
 } else { 
      out.write("\n\t\t\t<td class=\"w e n s table_tabs_dis_background\" nowrap=\"nowrap\">\n\t\t\t\t<a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewApplicationPromotionPreferenceInclusionsExclusions-Edit",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ApplicationUUID",null),context.getFormattedValue(getObject("ApplicationUUID"),null)))),null));
      out.write("\" class=\"table_tabs_dis\">");
 {out.write(localizeISText("PromotionApplicationPreferencesTabsInc.ApplicationLevelExclusion.link",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a>\n\t\t\t</td>\n\t\t");
 } 
      out.write('\n');
      out.write('	');
      out.write('	');
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SelectedTab"),null).equals(context.getFormattedValue("LegalContentMessage",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",12,e);}if (_boolean_result) { 
      out.write("\n\t\t\t<td class=\"e n table_tabs_en_background\" nowrap=\"nowrap\">");
 {out.write(localizeISText("PromotionApplicationPreferencesTabsInc.LegalContentMessage.table_tabs_en_background",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n\t\t");
 } else { 
      out.write("\n\t\t\t<td class=\"e n s table_tabs_dis_background\" nowrap=\"nowrap\">\n\t\t\t\t<a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewApplicationPromotionPreferenceLegalContentMessage-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ApplicationUUID",null),context.getFormattedValue(getObject("ApplicationUUID"),null)))),null));
      out.write("\" class=\"table_tabs_dis\">");
 {out.write(localizeISText("PromotionApplicationPreferencesTabsInc.LegalContentMessage.link",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a></td>\n\t\t\t</td>\n\t\t");
 } 
      out.write("\n\t<!-- \tmost of the tabs are still \"channel aware\" instead of \"application aware\", \n\t\t\tand hence will have to be changed as soon as the new *Application* pipelines are implemented\n\t\t");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SelectedTab"),null).equals(context.getFormattedValue("PromotionBudgetSource",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",21,e);}if (_boolean_result) { 
      out.write("\n\t\t\t<td class=\"e n table_tabs_en_background\" nowrap=\"nowrap\">Budget Sources</td>\n\t\t");
 } else { 
      out.write("\n\t\t\t<td class=\"e n s table_tabs_dis_background\" nowrap=\"nowrap\">\n\t\t\t\t<a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotionPreferenceBudgetSource-List",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null)))),null));
      out.write("\" class=\"table_tabs_dis\">Budget Sources</a></td>\n\t\t\t</td>\n\t\t");
 } 
      out.write("\n\t-->\n\t\t");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SelectedTab"),null).equals(context.getFormattedValue("PromotionBudgetNotification",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",29,e);}if (_boolean_result) { 
      out.write("\n\t\t\t<td class=\"e n table_tabs_en_background\" nowrap=\"nowrap\">");
 {out.write(localizeISText("PromotionApplicationPreferencesTabsInc.BudgetNotification.table_tabs_en_background",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n\t\t");
 } else { 
      out.write("\n\t\t\t<td class=\"e n s table_tabs_dis_background\" nowrap=\"nowrap\">\n\t\t\t\t<a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewApplicationPromotionPreferenceBudgetNotification-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ApplicationUUID",null),context.getFormattedValue(getObject("ApplicationUUID"),null)))),null));
      out.write("\" class=\"table_tabs_dis\">");
 {out.write(localizeISText("PromotionApplicationPreferencesTabsInc.BudgetNotification.link",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a></td>\n\t\t\t</td>\n\t\t");
 } 
      out.write('\n');
      out.write('	');
      out.write('	');
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SelectedTab"),null).equals(context.getFormattedValue("MaxCodeRedemption",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",36,e);}if (_boolean_result) { 
      out.write("\n\t\t\t<td class=\"e n table_tabs_en_background\" nowrap=\"nowrap\">");
 {out.write(localizeISText("PromotionApplicationPreferencesTabsInc.MaximumCodeRedemption.table_tabs_en_background",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n\t\t");
 } else { 
      out.write("\n\t\t\t<td class=\"e n s table_tabs_dis_background\" nowrap=\"nowrap\">\n\t\t\t\t<a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewApplicationPromotionPreferenceMaxCodeRedemption-Edit",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ApplicationUUID",null),context.getFormattedValue(getObject("ApplicationUUID"),null)))),null));
      out.write("\" class=\"table_tabs_dis\">");
 {out.write(localizeISText("PromotionApplicationPreferencesTabsInc.MaximumCodeRedemption.link",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a></td>\n\t\t\t</td>\n\t\t");
 } 
      out.write("\n\t\t<td width=\"100%\" class=\"s\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"1\" height=\"1\" alt=\"\" border=\"0\"/></td>\n\t</tr>");
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