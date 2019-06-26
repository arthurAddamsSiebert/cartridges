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

public final class ExpandableSection_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
      out.write('\n');
      out.write('\n');
 _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("expandableSectionCounter")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",4,e);}if (_boolean_result) { 
      out.write("\n\t<script type=\"text/javascript\">\n\tfunction expandCollapseSection(sectionNum, expandedClassName, collapsedClassName){\n\t\tif(sectionNum){\n\t\t\tvar expandSection = document.getElementById('expSect_'+sectionNum);\n\t\t\tif(expandSection){\n\t\t\t\tvar headerTextComp = document.getElementById('headertext_'+sectionNum);\n\t\t\t\tif( expandSection.style.display == 'none' ){\n\t\t\t\t\theaderTextComp.className = expandedClassName;\n\t\t\t\t\texpandSection.style.display = 'inline';\n\t\t\t\t}else{\n\t\t\t\t\theaderTextComp.className = collapsedClassName;\n\t\t\t\t\texpandSection.style.display = 'none';\n\t\t\t\t}\n\t\t\t}\n\t\t}\n\t}</script>\n");
 } 
      out.write('\n');
      out.write('\n');
 {
/* Initializes the module:
	NOTE: it uses a counter for the module includes (stored in the pipelineDictionary under "expandableSectionCounter" key), 
	for two reasons:
	 - to ensure that the javaScript is initialized just once (if the counter has not yet been defined);
	 - and that if more than one expandableSections are used that expand/collapse events will process the correct section. 
	   This is done by adding the counter's value as sufix to the <a> and <div> 'id' attributes, 
	   and then supplying the value as js-function argument, so the correct elements' styles are changed. 
*/
	Integer expandableSectionCounter = getObject("expandableSectionCounter") != null ? (Integer)getObject("expandableSectionCounter") : 0 ;
	expandableSectionCounter++;
	getPipelineDictionary().put("expandableSectionCounter", expandableSectionCounter);
	
	/* Since this module is not strict, and to allow nested usage of expandableSections, 
	the module's attributes are assigned to local attribs to ensure they won't be lost!
	*/
	String contentTemplateAttr = (String) getObject("contenttemplate");
	String headerTextAttr = (String) getObject("headertext");
	String sectionExpandedAttr = (String) getObject("sectionexpanded");
	String headerClassnameAttr = (String) (getObject("headerclassname") != null ? getObject("headerclassname") : "table_title n e w s" );
	
	boolean isSectionExpanded = Boolean.valueOf(sectionExpandedAttr);
	String expandedClassName = "table_opened";
	String collapsedClassName = "table_closed";

      out.write("\n\n<table cellpadding=\"0\" cellspacing=\"0\" border=\"0\" width=\"100%\">\n\t<!-- Header (titleBar) of the section -->\n\t<tr onclick=\"expandCollapseSection('");
      out.print(expandableSectionCounter);
      out.write("', '");
      out.print(expandedClassName);
      out.write("', '");
      out.print(collapsedClassName);
      out.write("' )\">\n\t\t<td class=\"");
      out.print(headerClassnameAttr);
      out.write("\" style=\"white-space:nowrap\">\n\t\t\t<a\tid=\"headertext_");
      out.print(expandableSectionCounter);
      out.write("\"\n\t\t\t\tclass=\"");
      out.print((isSectionExpanded ? expandedClassName : collapsedClassName));
      out.write("\">\n\t\t\t\t");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("headertext"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",55,e);}if (_boolean_result) { 
      out.write("\n\t\t\t\t\t");
 {String value = null;try{value=context.getFormattedValue(getObject("headertext"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {56}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\n\t\t\t\t");
 } 
      out.write("\n\t\t\t</a>\n\t\t</td>\n\t</tr>\n\n\t<!-- Content of the section -->\n\t<tr>\n\t\t<td>\n\t\t\t<div id=\"expSect_");
      out.print(expandableSectionCounter);
      out.write("\" style=\"");
      out.print((isSectionExpanded ? "display:inline;": "display:none;" ) );
      out.write("\">\n\t\t\t\t");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("contenttemplate"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",66,e);}if (_boolean_result) { 
      out.write("\n\t\t\t\t\t");
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,context.getFormattedValue(getObject("contenttemplate"),null), null, "67");} 
      out.write("\n\t\t\t\t");
 } 
      out.write("\n\t\t\t</div>\n\t\t</td>\n\t</tr>\n</table>\n");
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
