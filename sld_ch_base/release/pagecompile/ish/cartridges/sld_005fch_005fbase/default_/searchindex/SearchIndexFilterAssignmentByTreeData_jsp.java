/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-13 15:29:12 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.sld_005fch_005fbase.default_.searchindex;

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
import com.intershop.component.rest.capi.auth.Token;
import com.intershop.component.rest.internal.auth.TokenImpl;
import com.intershop.beehive.core.capi.user.User;

public final class SearchIndexFilterAssignmentByTreeData_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
    implements org.apache.jasper.runtime.JspSourceDependent {

 protected Boolean printTemplateMarker() { return Boolean.FALSE; } 
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
      response.setContentType("text/javascript;charset=utf-8");
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
 
      out.write("\n\n\n\n");
 
	getPipelineDictionary().put("HeaderParameterName" , Token.PARAMETER_NAME);
	User user = (User)getPipelineDictionary().get("params:CurrentUser");
	String token = new TokenImpl(user).getToken();
	getPipelineDictionary().put("HeaderParameterValue" , token);

      out.write('\n');
 

setEncodingType("text/javascript"); 
      out.write("\n(function () {\n// construct channel part of the url e.g. \"/inTronics/\"\nvar channelPart = \"/\".concat('");
 {String value = null;try{value=context.getFormattedValue(getObject("params:ChannelID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {14}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("','/'),\n// add user locale to the channel part of the url e.g. \"/inTronics;loc=de_DE/\"\nlocalePart = \"/\".concat(\"");
 {String value = null;try{value=context.getFormattedValue(getObject("params:ChannelID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {16}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\",';loc=','");
 {String value = null;try{value=context.getFormattedValue(getObject("params:Locale"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {16}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("',\"/\") \nvar restBase = '");
 {String value = null;try{value=context.getFormattedValue(replace(context.getFormattedValue(url(true,(new URLServletAction(context.getFormattedValue("",null)))),null),(String)("servlet"),(String)("rest")),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {17}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("',\nrestStart = \"");
 {String value = null;try{value=context.getFormattedValue(getObject("params:RestStartUri"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {18}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"\n.replace(channelPart, localePart )\n.replace('{key of item}', '");
      out.print(context.getFormattedValue(encodeString(context.getFormattedValue(getObject("params:SearchIndexId"),null)),null));
      out.write("')\n.replace('{key of item}', '");
 {String value = null;try{value=context.getFormattedValue(getObject("params:SearchIndexAttributeName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {21}",e);}if (value==null) value="";value = encodeString(value,"url,url");out.write(value);} 
      out.write("');\n// Fixes ignored crossDomain=true for $.ajax\njQuery.support.cors = true;\n/**\n* Maps REST data to tree nodes\n* @param {Array} data Data retrieved from REST\n*/\nfunction TreeRestData(data) {\nthis.data = data || [];\n}\n/**\n* Iterate over data and map each item as tree node\n* @return {Array} Tree nodes\n*/\nTreeRestData.prototype.map = function map() {\nreturn $.map(this.data, this._mapNode);\n};\n/**\n* Creates tree node from REST item\n* @param {Object} item Item retrieved from rest\n* @return {Object} Tree node\n*/\nTreeRestData.prototype._mapNode = function mapNode(item) {\nreturn {\ntitle: item.displayName || item.name,\ndata: {\ncheckbox: {\nvalue: item.domainId + '/' + item.name,\nchecked: !! item.assigned,\nundetermined: !! item.hasAssignedDescendants\n}\n},\nliAttr: {\n'data-uri': item.uri.replace(channelPart, localePart )\n},\nchildren: !! item.hasChildren\n};\n};\n/**\n* Sorts array by given attribute and order\n* @param {String} attribute Name of the attribute\n* @param {Boolean} ascending Ascending order\n* @return {Array} Sorted Array of Objects\n");
      out.write("*/\nTreeRestData.prototype.sort = function sort(attribute, ascending) {\nvar SMALLER = ascending === false ? 1 : -1,\nBIGGER = ascending === false ? -1 : 1;\nthis.data.sort(function compare(a, b) {\nif (a[attribute] < b[attribute]) return SMALLER;\nif (a[attribute] > b[attribute]) return BIGGER;\nreturn 0;\n});\nreturn this;\n};\nreturn function getData(node, callback) {\nvar uri = node !== -1 ? node.data('uri') : restStart;\nfunction onSuccess(response) {\nvar data, tree;\nif (!response.assignableCategoriesHierarchy) return onError();\nif (response.assignableCategoriesHierarchy.length === 0) {\nreturn callback({\ntitle: 'There are currently no categories to show here.'\n});\n}\ndata = new TreeRestData(response.assignableCategoriesHierarchy);\ntree = data.sort('displayName').map();\ncallback(tree);\n}\nfunction onError() {\ncallback({\ntitle: 'Error'\n});\n}\n$.ajax(restBase + uri, {\nheaders: {\n'");
 {String value = null;try{value=context.getFormattedValue(getObject("HeaderParameterName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {107}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("': '");
 {String value = null;try{value=context.getFormattedValue(getObject("HeaderParameterValue"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {107}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("'\n},\ntimeout: 15000,\ncrossDomain: true,\nsuccess: onSuccess,\nerror: onError\n});\n};\n})()\n");
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
