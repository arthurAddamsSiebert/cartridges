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
import com.intershop.beehive.core.capi.pipeline.PipelineDictionary;

public final class SortingURL_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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

    PipelineDictionary dictionary = getPipelineDictionary().get("dictionary") != null ?
        (PipelineDictionary)getPipelineDictionary().get("dictionary") : getPipelineDictionary(); 

	String lastSortByValue = dictionary.getFormValue((String)getObject("sortbyalias"));
	String lastSortDirectionValue = (String)dictionary.getFormValue((String)getObject("sortdirectionalias"));
	String currentSortByValue = (String)getObject("sortbyvalue");
	String ascending = "ascending";
	String descending = "descending";
	
	if (getObject("sortdirectionvalues") != null)
	{
		String s = (String)getObject("sortdirectionvalues");
		String[] a = s.split(",");

		if (a.length > 1)
		{
			ascending = a[0];
			descending = a[1];
		}
	}

	getPipelineDictionary().put("ascending", ascending);
	getPipelineDictionary().put("descending", descending);
	
	if ((lastSortByValue != null && lastSortByValue.equals(currentSortByValue)) &&
		(lastSortDirectionValue != null && lastSortDirectionValue.equals(ascending)))
	{ 
 
      out.write("<a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue(getObject("pipeline"),null))),(new URLParameterSet().addURLParameter(context.getFormattedValue(getObject("sortbyalias"),null),context.getFormattedValue(getObject("sortbyvalue"),null))).addURLParameter(context.getFormattedValue(getObject("sortdirectionalias"),null),context.getFormattedValue(getObject("descending"),null)).addURLParameter(context.getFormattedValue(getObject("parametername"),null),context.getFormattedValue(getObject("parametervalue"),null)).addURLParameter(context.getFormattedValue(getObject("parametername1"),null),context.getFormattedValue(getObject("parametervalue1"),null)).addURLParameter(context.getFormattedValue(getObject("parametername2"),null),context.getFormattedValue(getObject("parametervalue2"),null)).addURLParameter(context.getFormattedValue(getObject("parametername3"),null),context.getFormattedValue(getObject("parametervalue3"),null)).addURLParameter(context.getFormattedValue(getObject("parametername4"),null),context.getFormattedValue(getObject("parametervalue4"),null)).addURLParameter(context.getFormattedValue(getObject("parametername5"),null),context.getFormattedValue(getObject("parametervalue5"),null))),null));
      out.write("\"\nclass=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("style"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {41}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write('>');
 {String value = null;try{value=context.getFormattedValue(getObject("columnname"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {41}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</a>");
 
	} 
	else
	{ 

      out.write("<a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue(getObject("pipeline"),null))),(new URLParameterSet().addURLParameter(context.getFormattedValue(getObject("sortbyalias"),null),context.getFormattedValue(getObject("sortbyvalue"),null))).addURLParameter(context.getFormattedValue(getObject("sortdirectionalias"),null),context.getFormattedValue(getObject("ascending"),null)).addURLParameter(context.getFormattedValue(getObject("parametername"),null),context.getFormattedValue(getObject("parametervalue"),null)).addURLParameter(context.getFormattedValue(getObject("parametername1"),null),context.getFormattedValue(getObject("parametervalue1"),null)).addURLParameter(context.getFormattedValue(getObject("parametername2"),null),context.getFormattedValue(getObject("parametervalue2"),null)).addURLParameter(context.getFormattedValue(getObject("parametername3"),null),context.getFormattedValue(getObject("parametervalue3"),null)).addURLParameter(context.getFormattedValue(getObject("parametername4"),null),context.getFormattedValue(getObject("parametervalue4"),null)).addURLParameter(context.getFormattedValue(getObject("parametername5"),null),context.getFormattedValue(getObject("parametervalue5"),null))),null));
      out.write("\"\nclass=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("style"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {56}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write('>');
 {String value = null;try{value=context.getFormattedValue(getObject("columnname"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {56}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</a>");
 
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
