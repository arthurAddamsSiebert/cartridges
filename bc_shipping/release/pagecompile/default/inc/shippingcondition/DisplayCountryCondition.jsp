<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% {try{executePipeline("ProcessShippingConditionConfiguration-GetCountries",((java.util.Map)(((new ParameterMap().addParameter(new ParameterEntry("ChannelDomain",getObject("ChannelDomain")))).addParameter(new ParameterEntry("Condition",getObject("Condition")))))),"resultDict");}catch(Exception e){Logger.error(this,"ISPIPELINE failed. Line: 4.",e);}} %><% {Object temp_obj = (getObject("resultDict:IncludedCountriesIterator")); getPipelineDictionary().put("IncludedCountriesIterator", temp_obj);} %><table cellpadding="0" cellspacing="0" border="0" width="100%">
<tr>
<td class="table_detail" colspan="2"><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("readonly")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("readonly"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",14,e);}if (_boolean_result) { %><a href="<% {String value = null;try{value=context.getFormattedValue(getObject("ConditionConfigurationURL"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {15}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="table_detail_link"><% {out.write(localizeISText("DisplayCountryCondition.Country.link","",null,null,null,null,null,null,null,null,null,null,null));} %></a>&nbsp;<% {out.write(localizeISText("DisplayCountryCondition.IS.link","",null,null,null,null,null,null,null,null,null,null,null));} %>&nbsp;<% } else { %><% {out.write(localizeISText("DisplayCountryCondition.CountryIS.link","",null,null,null,null,null,null,null,null,null,null,null));} %><% } %><span class="emValue"><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("IncludedCountriesIterator") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",19,e);}if (_boolean_result) { %><% while (loop("IncludedCountriesIterator","Country",null)) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("FirstElement"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",20,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((hasNext("Country") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",20,e);}if (_boolean_result) { %>, <% } else { %> <% {out.write(localizeISText("DisplayCountryCondition.Or.link","",null,null,null,null,null,null,null,null,null,null,null));} %> <% } %><% } %><% {Object temp_obj = ("true"); getPipelineDictionary().put("FirstElement", temp_obj);} %><% {String value = null;try{value=context.getFormattedValue(getObject("Country:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {20}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %><% } %></span>
</td>
</tr>
</table><% printFooter(out); %>