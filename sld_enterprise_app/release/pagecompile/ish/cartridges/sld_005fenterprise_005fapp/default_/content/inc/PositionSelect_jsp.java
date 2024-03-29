/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-13 15:29:31 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.sld_005fenterprise_005fapp.default_.content.inc;

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
import com.intershop.beehive.core.capi.util.Positionable;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.LinkedHashMap;
import java.util.ArrayList;

public final class PositionSelect_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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

    String indexStr = (String)getPipelineDictionary().get("SelectedIndex");
    int index = 0;
	if (indexStr != null)
	{
	    try
	    {
	        index = Integer.parseInt(indexStr);
	    }
	    catch(NumberFormatException nfe)
	    {
	        throw new RuntimeException("Expecting .", nfe);
	    }
	}
    Number currentPosition = (Number)getPipelineDictionary().get("CurrentPosition");
    Number start = (Number)getPipelineDictionary().get("Start");
    Number end = (Number)getPipelineDictionary().get("End");
    Collection<Positionable> positionables = (Collection<Positionable>) getPipelineDictionary().get("Positionables");
    
    if (positionables == null)
    	positionables = new ArrayList<Positionable>(0);
    
    Map<Double,Integer> numbers = new LinkedHashMap<Double,Integer>();
    if(start != null && end != null)
    {
	    for(double i = start.doubleValue(), max = end.doubleValue(); i <= max; i++)
	    {
	        numbers.put(i, new Double(i).intValue());
	    }
    }
    else
    {
	    if (start == null)
	    {
	    	getPipelineDictionary().put("Start", 1);
	    	start = 1;
	    }

		Positionable max = null;
		Iterator<Positionable> positionablesItr = positionables.iterator();
		for(int i = start.intValue(); positionablesItr.hasNext(); i++)
		{
			Positionable current = max = positionablesItr.next();
			numbers.put(current.getPosition(), i);
			if ((currentPosition != null && current.getPosition() == currentPosition.doubleValue()) || (indexStr != null && i==index))
			{
				getPipelineDictionary().put("CurrentPosition", current.getPosition());
			}
		}
	    
	    if (end == null)
	    {
	    	getPipelineDictionary().put("End", numbers.size());
	    }
	    else
	    {
	    	for(double k=(max != null)?max.getPosition():end.doubleValue(), 
	    		v=(max != null)?numbers.size():end.doubleValue(); v<=end.doubleValue(); k++,v++)
	    	{
	    		numbers.put(k, new Double(v).intValue());
	    		if ((currentPosition != null && k == currentPosition.doubleValue()) || (indexStr != null && v==index))
	    		{
	    			getPipelineDictionary().put("CurrentPosition", k);
	    		}
	    		getPipelineDictionary().put("End", numbers.get(k));
	    	}
	    }
    }
    getPipelineDictionary().put("Map", numbers);

      out.write("<select name=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("SelectName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {78}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" id=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("SelectName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {78}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write('\n');
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("SelectClass"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",79,e);}if (_boolean_result) { 
      out.write("class=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("SelectClass"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {79}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
 } 
      out.write(' ');
      out.write('\n');
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ReadOnly")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ReadOnly"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",80,e);}if (_boolean_result) { 
      out.write("disabled=\"disabled\"");
 } 
      out.write(' ');
      out.write('\n');
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("OnChange"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",81,e);}if (_boolean_result) { 
      out.write("onchange=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("OnChange"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {81}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
 } 
      out.write('>');
 while (loop("Map:EntrySet","Entry",null)) { 
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Entry:Key"),null).equals(context.getFormattedValue(getObject("CurrentPosition"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",83,e);}if (_boolean_result) { 
      out.write("<option value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("Entry:Value"),new Integer(INTEGER),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {84}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" selected=\"selected\">");
 {String value = null;try{value=context.getFormattedValue(getObject("Entry:Value"),new Integer(INTEGER),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {84}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Start"),null).equals(context.getFormattedValue(getObject("Entry:Value"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",84,e);}if (_boolean_result) { 
      out.write(' ');
      out.write('(');
 {out.write(localizeISText("PositionSelect.Highest.option",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(')');
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("End"),null).equals(context.getFormattedValue(getObject("Entry:Value"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",85,e);}if (_boolean_result) { 
      out.write(' ');
      out.write('(');
 {out.write(localizeISText("PositionSelect.Lowest.option",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(')');
 }} 
      out.write("</option>");
 } else { 
      out.write("<option value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("Entry:Value"),new Integer(INTEGER),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {88}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write('>');
 {String value = null;try{value=context.getFormattedValue(getObject("Entry:Value"),new Integer(INTEGER),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {88}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Start"),null).equals(context.getFormattedValue(getObject("Entry:Value"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",88,e);}if (_boolean_result) { 
      out.write(' ');
      out.write('(');
 {out.write(localizeISText("PositionSelect.Highest.option1",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(')');
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("End"),null).equals(context.getFormattedValue(getObject("Entry:Value"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",89,e);}if (_boolean_result) { 
      out.write(' ');
      out.write('(');
 {out.write(localizeISText("PositionSelect.Lowest.option1",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(')');
 }} 
      out.write("</option>");
 } 
 } 
      out.write("</select>");
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
