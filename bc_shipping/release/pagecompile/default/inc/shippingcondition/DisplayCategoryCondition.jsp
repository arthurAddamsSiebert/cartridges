<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% {try{executePipeline("ProcessShippingConditionConfiguration-GetCategories",((java.util.Map)(((new ParameterMap().addParameter(new ParameterEntry("ChannelDomain",getObject("ChannelDomain")))).addParameter(new ParameterEntry("Condition",getObject("Condition")))))),"resultDict");}catch(Exception e){Logger.error(this,"ISPIPELINE failed. Line: 4.",e);}} %><% {Object temp_obj = (getObject("resultDict:IncludedCategoriesIterator")); getPipelineDictionary().put("IncludedCategoriesIterator", temp_obj);} %><% {Object temp_obj = (getObject("resultDict:IncludedCategoriesPath")); getPipelineDictionary().put("IncludedCategoriesPath", temp_obj);} %><table cellpadding="0" cellspacing="0" border="0" width="100%">
<tr>
<td class="table_detail" colspan="2"><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("readonly")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("readonly"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",11,e);}if (_boolean_result) { %><a href="<% {String value = null;try{value=context.getFormattedValue(getObject("ConditionConfigurationURL"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {12}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="table_detail_link"><% {out.write(localizeISText("DisplayCategoryCondition.Category.link","",null,null,null,null,null,null,null,null,null,null,null));} %></a> <% {out.write(localizeISText("DisplayCategoryCondition.IS.link","",null,null,null,null,null,null,null,null,null,null,null));} %> 
<% } else { %><% {out.write(localizeISText("DisplayCategoryCondition.CategoryIS.link","",null,null,null,null,null,null,null,null,null,null,null));} %> 
<% } %><span class="emValue"><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("IncludedCategoriesIterator") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",17,e);}if (_boolean_result) { %><% while (loop("IncludedCategoriesIterator","Category",null)) { %><br/><% {Object temp_obj = (getObject("IncludedCategoriesPath:get(Category:UUID)")); getPipelineDictionary().put("ParentCategories", temp_obj);} %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ParentCategories"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",20,e);}if (_boolean_result) { %><% while (loop("ParentCategories","Parent",null)) { %><% {String value = null;try{value=context.getFormattedValue(getObject("Parent:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {22}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> <% _boolean_result=false;try {_boolean_result=((Boolean)((hasNext("Parent") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",22,e);}if (_boolean_result) { %>><% } %> 
<% } %> 
<% } %><% } %><% } %></span>
</td>
</tr>
</table><% printFooter(out); %>