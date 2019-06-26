<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><%@page import="java.util.Iterator"%><%@page import="java.util.Set"%><%@page import="java.util.HashSet"%><%@page import="com.intershop.component.validation.capi.bo.ValidationResultBO"%><%
	Iterator<ValidationResultBO> completenessResults = (Iterator)getPipelineDictionary().get("ProductCompletenessResults");
	Set<String> distinctCompletenessResults = new HashSet<String>();
	if(completenessResults != null)
	{
	    while(completenessResults.hasNext())
	    {
	        ValidationResultBO resultBO = completenessResults.next();
	        distinctCompletenessResults.add(resultBO.getMessage());
	    }
	}
	getPipelineDictionary().put("DistinctProductCompletenessResults", distinctCompletenessResults.iterator());
%><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ProductID")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("DistinctProductCompletenessResults")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",20,e);}if (_boolean_result) { %><table>
<tr>
<td class="label"><% {out.write(localizeISText("sld_enterprise_app.ProductCompletenessProblems.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td><ul class='problem_list'><% while (loop("DistinctProductCompletenessResults","DistinctProductCompletenessResult",null)) { %><li class='problem_list_item'><% {String value = null;try{value=context.getFormattedValue(getObject("DistinctProductCompletenessResult"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {24}",e);}if (value==null) value="";value = encodeString(value,"javascript");out.write(value);} %></li><% } %></ul></td>
</tr>
</table><% } else { %><table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box">
<tr>
<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error top" width="100%"><% {out.write(localizeISText("sld_enterprise_app.ProductCompletenessCouldNotFetchData.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% } %><% printFooter(out); %>