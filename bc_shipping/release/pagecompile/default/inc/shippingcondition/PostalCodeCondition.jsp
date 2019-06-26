<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><%@page import="java.util.HashMap"%><%@page import="java.util.Vector"%><%@page import="java.util.Iterator"%><input type="hidden" name="EditConditionID"
value="<% {String value = null;try{value=context.getFormattedValue(getObject("Condition:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {9}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" /><% {try{executePipeline("ProcessShippingConditionConfiguration-GetPostalCodes",((java.util.Map)(((new ParameterMap().addParameter(new ParameterEntry("ChannelDomain",getObject("ChannelDomain")))).addParameter(new ParameterEntry("ConditionForm",getObject("ConditionForm")))))),"resultDict");}catch(Exception e){Logger.error(this,"ISPIPELINE failed. Line: 10.",e);}} %><% {Object temp_obj = (getObject("resultDict:IncludedPostalCodesMap")); getPipelineDictionary().put("IncludedPostalCodesMap", temp_obj);} %><%
	    getPipelineDictionary().put("AssignedPostalCodesMap", new HashMap<String, String>());
	%><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("ConditionForm:PostalCodes:Value:Iterator") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",18,e);}if (_boolean_result) { %><% while (loop("ConditionForm:PostalCodes:Value:Iterator","PostalCode",null)) { %><%
		    ((HashMap)getObject("AssignedPostalCodesMap")).put(getObject("PostalCode"), "true");
		%><input type="hidden" name="<% {String value = null;try{value=context.getFormattedValue(getObject("ConditionForm:PostalCodes:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {24}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" value="<% {String value = null;try{value=context.getFormattedValue(getObject("PostalCode"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {24}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" /><% } %><% } %><%
    Vector assignedPostalCodesVect = new Vector();
    Iterator keys = ((HashMap)getObject("AssignedPostalCodesMap")).keySet().iterator();
    while(keys.hasNext())
    {
        assignedPostalCodesVect.add(keys.next());
    }
    getPipelineDictionary().put("AssignedPostalCodes", assignedPostalCodesVect.iterator());
%><table border="0" width="100%" cellpadding="0" cellspacing="4">
<tr>
<td class="label_text"><label class="label label_text"><% {out.write(localizeISText("PostalCodeCondition.ConditionPostalCodeIsOneOfTheFollowing.fielditem2","",null,null,null,null,null,null,null,null,null,null,null));} %></label></td>
</tr>
<tr>
<td class="table_detail"><select name="ExistingPostalCodes" class="select" size="8"
multiple="multiple" style="width: 600px"><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("AssignedPostalCodes") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",44,e);}if (_boolean_result) { %><% while (loop("AssignedPostalCodes","PostalCode",null)) { %><option value="<% {String value = null;try{value=context.getFormattedValue(getObject("PostalCode"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {46}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% {String value = null;try{value=context.getFormattedValue(getObject("IncludedPostalCodesMap:get(PostalCode):PostalCode"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {46}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> - <% {String value = null;try{value=context.getFormattedValue(getObject("IncludedPostalCodesMap:get(PostalCode):Country:Id"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {46}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></option><% } %><% } %></select></td>
</tr>
<tr>
<td class="table_detail">
<table border="0" cellpadding="0" cellspacing="0">
<tr>
<td class="button"><input type="hidden" name="addPostalCodes" value="addPostalCodes" /><input type="submit" name="addPostalCode" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PostalCodeCondition.Add.button",null)),null)%>" class="button" /></td>
<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="4" height="1" alt="" border="0" /></td>
<td class="button"><input type="submit" name="removePostalCodes" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PostalCodeCondition.RemoveSelected.button",null)),null)%>" class="button" /></td>
</tr>
</table>
</td>
</tr>
</table><% printFooter(out); %>