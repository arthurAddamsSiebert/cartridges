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
import com.intershop.beehive.core.capi.paging.PageableIterator;
import com.intershop.beehive.foundation.util.Iterators;
import java.util.List;
import java.util.ArrayList;

public final class FlexPagingBar102050100_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
	String rowsPerPageStr = (String)getObject("rowsperpage");
	List<String> rowsPerPage = new ArrayList<String>();
	if (rowsPerPageStr==null || "".equals(rowsPerPageStr))
	{
	    rowsPerPage.add("10");
	    rowsPerPage.add("20");	    
	    rowsPerPage.add("50");
	    rowsPerPage.add("100");
	}
	else
	{
	    String[] rowsPerPageEntries = rowsPerPageStr.split(" ");
	    if (rowsPerPageEntries==null)
	    {
	        rowsPerPageEntries = new String[]{rowsPerPageStr};
	    }
	    for (String rowsPerPageEntry : rowsPerPageEntries)
	    {
	    	rowsPerPage.add(rowsPerPageEntry.trim());   
	    }
	}
	getPipelineDictionary().put("RowsPerPageIt", Iterators.createResettableIterator(rowsPerPage));
	String showAllLimitStr = (String)getObject("ShowAllLimit");
	if (showAllLimitStr == null)
	{
		showAllLimitStr = "1000";
	}
	try
	{
		Integer showAllLimitInt = new Integer(showAllLimitStr);
		getPipelineDictionary().put("ShowAllLimitInt", showAllLimitInt);
	}
	catch (NumberFormatException e)
	{
		// do nothing, ignore ShowAllLimit
	}
	String firstLastLimitStr = (String)getObject("FirstLastLimit");
	if (firstLastLimitStr != null)
	{
	    try
	    {
	        Integer firstLastLimitInt = new Integer(firstLastLimitStr);
	        getPipelineDictionary().put("FirstLastLimitInt", firstLastLimitInt);
	    }
	    catch (NumberFormatException e)
	    {
	        // do nothing, ignore ShowAllLimit
	    }
	}

 _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("TmpPageable:ElementCount")).doubleValue() >((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",76,e);}if (_boolean_result) { 
      out.write("<table class=\"pagecursor\" width=\"100%\" border=\"0\" cellspacing=\"1\" cellpadding=\"1\">\n<tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)(((!((Boolean) (disableErrorMessages().isDefined(getObject("variablepagesize")))).booleanValue() || ((Boolean) (((!(context.getFormattedValue(getObject("variablepagesize"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",79,e);}if (_boolean_result) { 
      out.write("<td class=\"pagecursortxt top\" align=\"left\" width=\"50%\" nowrap=\"nowrap\"> \n&nbsp;");
 {out.write(localizeISText("FlexPagingBar102050100.ShowingItems.pagecursortxt",null,null,context.getFormattedValue(getObject("TmpPageable:PageStart"),null),context.getFormattedValue(getObject("TmpPageable:PageEnd"),null),context.getFormattedValue(getObject("TmpPageable:ElementCount"),null),"pagecursoritem bold",null,null,null,null,null,null));} 
      out.write("<input type=\"hidden\" name=\"PageNumberPrefix\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("pagenumberprefix"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {82}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/>\n<input type=\"hidden\" name=\"PageableID\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("TmpPageable:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {83}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/>\n<input type=\"hidden\" name=\"PageableName\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("pageable"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {84}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/>\n<input type=\"hidden\" name=\"CurrentPageNumber\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("TmpPageable:Page"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {85}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/>\n</td>");
 } else { 
      out.write("<td class=\"pagecursortxt top\" align=\"left\" width=\"33%\" nowrap=\"nowrap\">\n&nbsp;");
 {out.write(localizeISText("FlexPagingBar102050100.ShowingItems.pagecursortxt",null,null,context.getFormattedValue(getObject("TmpPageable:PageStart"),null),context.getFormattedValue(getObject("TmpPageable:PageEnd"),null),context.getFormattedValue(getObject("TmpPageable:ElementCount"),null),"pagecursoritem bold",null,null,null,null,null,null));} 
      out.write("<input type=\"hidden\" name=\"PageNumberPrefix\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("pagenumberprefix"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {90}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/>\n<input type=\"hidden\" name=\"PageableID\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("TmpPageable:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {91}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/>\n<input type=\"hidden\" name=\"PageableName\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("pageable"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {92}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/>\n<input type=\"hidden\" name=\"CurrentPageNumber\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("TmpPageable:Page"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {93}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/>\n</td>\n<td class=\"pagecursortxt\" align=\"center\" width=\"33%\">");
 while (loop("RowsPerPageIt","RowsPerPageItEntry",null)) { 
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("TmpPageable:PageSize"),null).equals(context.getFormattedValue(getObject("RowsPerPageItEntry"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",97,e);}if (_boolean_result) { 
      out.write("<b>[");
      out.print(context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("RowsPerPageItEntry"),null)),null));
      out.write("]&nbsp;</b>");
 } else { 
      out.write("<input type=\"submit\" name=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("pagesizeprefix"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {100}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.print(context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("RowsPerPageItEntry"),null)),null));
      out.write("\" value=\"");
      out.print(context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("RowsPerPageItEntry"),null)),null));
      out.write("\" class=\"pagecursorbtn\"/>&nbsp;\n");
 } 
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("TmpPageable:PageSize")).doubleValue() ==((Number)(new Double(-1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",103,e);}if (_boolean_result) { 
      out.write("<b>[");
 {out.write(localizeISText("FlexPagingBar102050100.ShowAll.pagecursorbtn",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("]</b>&nbsp;\n");
 } else { 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ShowAllLimitInt"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",106,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("TmpPageable:ElementCount")).doubleValue() <=((Number)(getObject("ShowAllLimitInt"))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",107,e);}if (_boolean_result) { 
      out.write("<input type=\"submit\" name=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("pagesizeprefix"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {108}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("-1\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("FlexPagingBar102050100.ShowAll.pagecursorbtn",null)),null));
      out.write("\" class=\"pagecursorbtn\"/>");
 } 
 } else { 
      out.write("<input type=\"submit\" name=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("pagesizeprefix"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {111}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("-1\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("FlexPagingBar102050100.ShowAll.pagecursorbtn",null)),null));
      out.write("\" class=\"pagecursorbtn\"/>");
 } 
 } 
      out.write("</td>\n<td class=\"pagecursortxt\" width=\"33%\" align=\"right\">");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)(((!((Boolean) (disableErrorMessages().isDefined(getObject("variablepagesize")))).booleanValue() || ((Boolean) (((!(context.getFormattedValue(getObject("variablepagesize"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",117,e);}if (_boolean_result) { 
      out.write("<td class=\"pagecursortxt\" width=\"50%\" align=\"right\">");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (getObject("TmpPageable:isFirstPage"))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",121,e);}if (_boolean_result) { 
      out.write("\n&lt;&lt;&nbsp;<input type=\"submit\" name=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("pagenumberprefix"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {122}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 {String value = null;try{value=context.getFormattedValue(getObject("TmpPageable:PrevPage"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {122}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("PageletSelectComponentSlot.Previous.button",null)),null));
      out.write("\" class=\"pagecursorbtn\"/>");
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
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((Boolean) (disableErrorMessages().isDefined(getObject("FirstLastLimitInt")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() || ((Boolean) ((( ((Number) getObject("TmpPageable:ElementCount")).doubleValue() <=((Number)(getObject("FirstLastLimitInt"))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",156,e);}if (_boolean_result) { 
      out.write("<input type=\"submit\" name=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("pagenumberprefix"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {157}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("0\" value=\"1\" class=\"pagecursorbtn\"/>");
 } 
      out.write("\n...\n");
}						
						for(int i = currentPage-maxLeft; i < currentPage+maxRight; i++)
						{
							getPipelineDictionary().put("i", i+"");//put string into pipeDic to avoid the ',' in PageNumber
							if (i != currentPage)
							{
      out.write("<input type=\"submit\" name=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("pagenumberprefix"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {166}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 {String value = null;try{value=context.getFormattedValue(getObject("i"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {166}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" value=\"");
      out.print( i+1);
      out.write("\" class=\"pagecursorbtn\"/>&nbsp;\n");
 {Object temp_obj = ((new Double( ((Number) getObject("counter")).doubleValue() +((Number) new Double(1)).doubleValue()))); getPipelineDictionary().put("counter", temp_obj);} 
}
							else
							{
								
      out.write("<b>[");
      out.print( i+1);
      out.write("]&nbsp;</b>");

							}
						}
						// navigate to last page
						getPipelineDictionary().put("pc", pageCount-1+"");//put string into pipeDic to avoid the ',' in PageNumber
						if (currentPage<pageCount-maxRight)
						{	
      out.write("\n...\n");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((Boolean) (disableErrorMessages().isDefined(getObject("FirstLastLimitInt")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() || ((Boolean) ((( ((Number) getObject("TmpPageable:ElementCount")).doubleValue() <=((Number)(getObject("FirstLastLimitInt"))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",179,e);}if (_boolean_result) { 
      out.write("<input type=\"submit\" name=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("pagenumberprefix"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {180}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 {String value = null;try{value=context.getFormattedValue(getObject("pc"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {180}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" value=\"");
      out.print( pageCount);
      out.write("\" class=\"pagecursorbtn\"/>&nbsp;\n");
 } 

						}
					}
				
 _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (getObject("TmpPageable:isLastPage"))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",186,e);}if (_boolean_result) { 
      out.write("<input type=\"submit\" name=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("pagenumberprefix"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {187}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 {String value = null;try{value=context.getFormattedValue(getObject("TmpPageable:NextPage"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {187}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("ComponentSelectPageletAssignmentButtons.Next.button",null)),null));
      out.write("\" class=\"pagecursorbtn\"/>&nbsp;&gt;&gt;\n");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("parametername"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",190,e);}if (_boolean_result) { 
      out.write("<input type=\"hidden\" name=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("parametername"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {190}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("parametervalue"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {190}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write('/');
      out.write('>');
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("parametername1"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",191,e);}if (_boolean_result) { 
      out.write("<input type=\"hidden\" name=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("parametername1"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {191}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("parametervalue1"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {191}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write('/');
      out.write('>');
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("parametername2"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",192,e);}if (_boolean_result) { 
      out.write("<input type=\"hidden\" name=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("parametername2"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {192}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("parametervalue2"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {192}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write('/');
      out.write('>');
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("parametername3"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",193,e);}if (_boolean_result) { 
      out.write("<input type=\"hidden\" name=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("parametername3"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {193}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("parametervalue3"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {193}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write('/');
      out.write('>');
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("parametername4"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",194,e);}if (_boolean_result) { 
      out.write("<input type=\"hidden\" name=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("parametername4"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {194}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("parametervalue4"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {194}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write('/');
      out.write('>');
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("parametername5"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",195,e);}if (_boolean_result) { 
      out.write("<input type=\"hidden\" name=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("parametername5"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {195}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("parametervalue5"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {195}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write('/');
      out.write('>');
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("parametername6"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",196,e);}if (_boolean_result) { 
      out.write("<input type=\"hidden\" name=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("parametername6"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {196}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("parametervalue6"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {196}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write('/');
      out.write('>');
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("parametername7"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",197,e);}if (_boolean_result) { 
      out.write("<input type=\"hidden\" name=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("parametername7"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {197}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("parametervalue7"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {197}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write('/');
      out.write('>');
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("parametername8"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",198,e);}if (_boolean_result) { 
      out.write("<input type=\"hidden\" name=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("parametername8"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {198}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("parametervalue8"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {198}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write('/');
      out.write('>');
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("parametername9"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",199,e);}if (_boolean_result) { 
      out.write("<input type=\"hidden\" name=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("parametername9"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {199}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("parametervalue9"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {199}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write('/');
      out.write('>');
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("parametername10"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",200,e);}if (_boolean_result) { 
      out.write("<input type=\"hidden\" name=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("parametername10"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {200}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("parametervalue10"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {200}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write('/');
      out.write('>');
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("parametername11"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",201,e);}if (_boolean_result) { 
      out.write("<input type=\"hidden\" name=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("parametername11"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {201}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("parametervalue11"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {201}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write('/');
      out.write('>');
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("parametername12"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",202,e);}if (_boolean_result) { 
      out.write("<input type=\"hidden\" name=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("parametername12"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {202}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("parametervalue12"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {202}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write('/');
      out.write('>');
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
