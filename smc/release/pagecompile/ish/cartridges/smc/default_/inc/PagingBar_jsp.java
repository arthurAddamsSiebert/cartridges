/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-13 15:29:33 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.smc.default_.inc;

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
import com.intershop.beehive.core.capi.paging.PageableIterator;

public final class PagingBar_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
 _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("pagenumberprefix")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",3,e);}if (_boolean_result) { 
 getPipelineDictionary().put("pagenumberprefix", "PageNumber_"); 
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("pagesizeprefix")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",6,e);}if (_boolean_result) { 
 getPipelineDictionary().put("pagesizeprefix", "PageSize_"); 
 } 

String pageableName = (String)getObject("pageable");
Object pageable = getObject(pageableName);
PageableIterator pIterator = null;
int pageCount = 0;
if(pageable != null)
{
	getPipelineDictionary().put("TmpPageable", pageable);
	pIterator = (PageableIterator)getObject("TmpPageable");
	pageCount = pIterator.getPageCount();
	getPipelineDictionary().put("pageCount",new Integer(pageCount-1));
}

 _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("TmpPageable:ElementCount")).doubleValue() >((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",25,e);}if (_boolean_result) { 
      out.write("<table class=\"pagecursor\" width=\"100%\" border=\"0\" cellspacing=\"1\" cellpadding=\"1\"><tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)(((!((Boolean) (disableErrorMessages().isDefined(getObject("variablepagesize")))).booleanValue() || ((Boolean) (((!(context.getFormattedValue(getObject("variablepagesize"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",27,e);}if (_boolean_result) { 
      out.write("<td class=\"pagecursortxt top\" align=\"left\" width=\"50%\" nowrap=\"nowrap\">&nbsp;");
 {out.write(localizeISText("smc.ShowingNumberOfItems.pagecursortxt",null,null,context.getFormattedValue(getObject("TmpPageable:PageStart"),null),context.getFormattedValue(getObject("TmpPageable:PageEnd"),null),context.getFormattedValue(getObject("TmpPageable:ElementCount"),null),"pagecursoritem bold",null,null,null,null,null,null));} 
      out.write("<input type=\"hidden\" name=\"PageNumberPrefix\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("pagenumberprefix"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {28}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/><input type=\"hidden\" name=\"PageableID\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("TmpPageable:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {28}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/><input type=\"hidden\" name=\"PageableName\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("pageable"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {28}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/><input type=\"hidden\" name=\"CurrentPageNumber\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("TmpPageable:Page"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {28}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/></td>");
 } else { 
      out.write("<td class=\"pagecursortxt top\" align=\"left\" width=\"25%\" nowrap=\"nowrap\">&nbsp;");
 {out.write(localizeISText("smc.ShowingNumberOfItems.pagecursortxt",null,null,context.getFormattedValue(getObject("TmpPageable:PageStart"),null),context.getFormattedValue(getObject("TmpPageable:PageEnd"),null),context.getFormattedValue(getObject("TmpPageable:ElementCount"),null),"pagecursoritem bold",null,null,null,null,null,null));} 
      out.write("<input type=\"hidden\" name=\"PageNumberPrefix\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("pagenumberprefix"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {30}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/><input type=\"hidden\" name=\"PageableID\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("TmpPageable:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {30}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/><input type=\"hidden\" name=\"PageableName\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("pageable"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {30}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/><input type=\"hidden\" name=\"CurrentPageNumber\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("TmpPageable:Page"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {30}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/></td>\n<td class=\"pagecursortxt\" align=\"center\" width=\"25%\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("TmpPageable:PageSize")).doubleValue() ==((Number)(new Double(10))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",32,e);}if (_boolean_result) { 
      out.write("<b>[10]</b>&nbsp;\n");
 } else { 
      out.write("<input type=\"submit\" name=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("pagesizeprefix"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {35}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("10\" value=\"10\" class=\"pagecursorbtn\"/>&nbsp;\n");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("TmpPageable:PageSize")).doubleValue() ==((Number)(new Double(20))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",37,e);}if (_boolean_result) { 
      out.write("<b>[20]</b>&nbsp;\n");
 } else { 
      out.write("<input type=\"submit\" name=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("pagesizeprefix"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {40}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("20\" value=\"20\" class=\"pagecursorbtn\"/>&nbsp;\n");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("TmpPageable:PageSize")).doubleValue() ==((Number)(new Double(50))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",42,e);}if (_boolean_result) { 
      out.write("<b>[50]</b>&nbsp;\n");
 } else { 
      out.write("<input type=\"submit\" name=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("pagesizeprefix"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {45}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("50\" value=\"50\" class=\"pagecursorbtn\"/>&nbsp;\n");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("TmpPageable:PageSize")).doubleValue() ==((Number)(new Double(-1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",47,e);}if (_boolean_result) { 
      out.write("<b>[");
 {out.write(localizeISText("PagingBar.ShowAll.pagecursorbtn","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("]</b>&nbsp;\n");
 } else { 
      out.write("<input type=\"submit\" name=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("pagesizeprefix"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {50}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("-1\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("PagingBar.ShowAll.pagecursorbtn",null)),null));
      out.write("\" class=\"pagecursorbtn\"/>&nbsp;\n");
 } 
      out.write("</td> \n<td class=\"pagecursortxt\" width=\"33%\" align=\"right\" nowrap=\"nowrap\">");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)(((!((Boolean) (disableErrorMessages().isDefined(getObject("variablepagesize")))).booleanValue() || ((Boolean) (((!(context.getFormattedValue(getObject("variablepagesize"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",55,e);}if (_boolean_result) { 
      out.write("<td class=\"pagecursortxt\" width=\"50%\" align=\"right\">");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (getObject("TmpPageable:isFirstPage"))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",58,e);}if (_boolean_result) { 
      out.write("\n&lt;&lt;&nbsp;<input type=\"submit\" name=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("pagenumberprefix"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {59}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 {String value = null;try{value=context.getFormattedValue(getObject("TmpPageable:PrevPage"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {59}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("PagingBar.Previous.pagecursorbtn",null)),null));
      out.write("\" class=\"pagecursorbtn\"/>&nbsp;\n");
 } 
 {Object temp_obj = (new Double(1)); getPipelineDictionary().put("counter", temp_obj);} 

				int currentPage = pIterator.getPage();

				// max quantity of pages shown right from position of current page
				int maxRight	= 6;
				// max quantity of pages shown right from position of current page
				int maxLeft		= 5;
				int maxWidth	= maxRight + maxLeft;

				if (pageCount < maxWidth) maxWidth = pageCount;

				// adjust limits in case current page is within the last maxRight elements on the right side
				if (pageCount-currentPage < maxRight)
				{
					maxRight	= pageCount-currentPage;
					maxLeft		= maxWidth - maxRight;
				}

				// adjust limits in case current page is within the first maxLeft elements on the left side
				if (currentPage-maxLeft < 0)
				{
					maxLeft  = currentPage;
					maxRight = maxWidth - maxLeft;
				}

				if(pageCount>=2)
				{
					// navigate to first page
					if (currentPage>maxLeft)
					{
      out.write("<input type=\"submit\" name=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("pagenumberprefix"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {93}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("0\" value=\"1\" class=\"pagecursorbtn\"/>...\n");
}
					for(int i = currentPage-maxLeft; i < currentPage+maxRight; i++)
					{
						getPipelineDictionary().put("i", i+"");//put string into pipeDic to avoid the ',' in PageNumber
						if (i != currentPage)
						{
      out.write("<input type=\"submit\" name=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("pagenumberprefix"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {100}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 {String value = null;try{value=context.getFormattedValue(getObject("i"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {100}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" value=\"");
      out.print( i+1);
      out.write("\" class=\"pagecursorbtn\"/>&nbsp;\n");
 {Object temp_obj = ((new Double( ((Number) getObject("counter")).doubleValue() +((Number) new Double(1)).doubleValue()))); getPipelineDictionary().put("counter", temp_obj);} 
}
						else
						{
							
      out.write("<b>[");
      out.print( i+1);
      out.write("]</b>&nbsp;");

						}
					}
					// navigate to last page
					getPipelineDictionary().put("pc", pageCount-1+"");//put string into pipeDic to avoid the ',' in PageNumber
					if (currentPage<pageCount-maxRight)
					{	
      out.write("\n...<input type=\"submit\" name=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("pagenumberprefix"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {112}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 {String value = null;try{value=context.getFormattedValue(getObject("pc"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {112}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" value=\"");
      out.print( pageCount);
      out.write("\" class=\"pagecursorbtn\"/>&nbsp;\n");

					}
				} 
 _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (getObject("TmpPageable:isLastPage"))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",116,e);}if (_boolean_result) { 
      out.write("<input type=\"submit\" name=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("pagenumberprefix"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {117}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 {String value = null;try{value=context.getFormattedValue(getObject("TmpPageable:NextPage"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {117}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("PagingBar.Next.pagecursorbtn",null)),null));
      out.write("\" class=\"pagecursorbtn\"/>&nbsp;&gt;&gt;\n");
 } 
      out.write("</td>\n</tr>\n</table>");
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
