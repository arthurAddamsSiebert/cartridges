<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><%@page import="java.util.HashMap"%><%@page import="java.util.Vector"%><%@page import="java.util.Iterator"%><% {try{executePipeline("ProcessShippingConditionConfiguration-GetPostalCodes",((java.util.Map)(((new ParameterMap().addParameter(new ParameterEntry("ChannelDomain",getObject("ChannelDomain")))).addParameter(new ParameterEntry("Condition",getObject("Condition")))))),"resultDict");}catch(Exception e){Logger.error(this,"ISPIPELINE failed. Line: 8.",e);}} %><% {Object temp_obj = (getObject("resultDict:IncludedPostalCodesMap")); getPipelineDictionary().put("IncludedPostalCodesMap", temp_obj);} %><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Condition:PostalCodes") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",13,e);}if (_boolean_result) { %><% getPipelineDictionary().put("AssignedPostalCodesMap", new HashMap<String, String>()); %><% while (loop("Condition:PostalCodes","PostalCode",null)) { %><%  ((HashMap)getObject("AssignedPostalCodesMap")).put(getObject("PostalCode"), true); %><% } %><% 	Vector assignedPostalCodesVect = new Vector(); 
			Iterator keys = ((HashMap)getObject("AssignedPostalCodesMap")).keySet().iterator();
			while(keys.hasNext()){assignedPostalCodesVect.add(keys.next());}
			getPipelineDictionary().put("AssignedPostalCodes", assignedPostalCodesVect.iterator());
		%><% } %><table cellpadding="0" cellspacing="0" border="0" width="100%">
<tr>
<td class="table_detail" colspan="2"><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("readonly")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("readonly"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",29,e);}if (_boolean_result) { %><a href="<% {String value = null;try{value=context.getFormattedValue(getObject("ConditionConfigurationURL"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {30}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="table_detail_link"><% {out.write(localizeISText("DisplayPostalCodeCondition.PostalCode.link","",null,null,null,null,null,null,null,null,null,null,null));} %></a> <% {out.write(localizeISText("DisplayPostalCodeCondition.IS.link","",null,null,null,null,null,null,null,null,null,null,null));} %> 
<% } else { %><% {out.write(localizeISText("DisplayPostalCodeCondition.PostalCodeIS.link","",null,null,null,null,null,null,null,null,null,null,null));} %> 
<% } %><span class="emValue"><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("AssignedPostalCodes") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",35,e);}if (_boolean_result) { %><% while (loop("AssignedPostalCodes","PostalCode",null)) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("FirstElement"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",36,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((hasNext("PostalCode") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",36,e);}if (_boolean_result) { %>, <% } else { %> <% {out.write(localizeISText("DisplayPostalCodeCondition.Or.link","",null,null,null,null,null,null,null,null,null,null,null));} %> <% } %><% } %><% {Object temp_obj = ("true"); getPipelineDictionary().put("FirstElement", temp_obj);} %><% {String value = null;try{value=context.getFormattedValue(getObject("IncludedPostalCodesMap:get(PostalCode):Id"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {36}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> - <% {String value = null;try{value=context.getFormattedValue(getObject("IncludedPostalCodesMap:get(PostalCode):Country:Id"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {36}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %><% } %></span>
</td>
</tr>
</table><% printFooter(out); %>