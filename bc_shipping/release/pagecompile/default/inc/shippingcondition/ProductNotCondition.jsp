<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><input type="hidden" name="SelectedMenuItem" value="OrderStatistics" />
<input type="hidden" name="EditConditionID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Condition:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {4}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" /><% {try{executePipeline("ProcessShippingConditionConfiguration-GetProducts",((java.util.Map)(((new ParameterMap().addParameter(new ParameterEntry("ChannelDomain",getObject("ChannelDomain")))).addParameter(new ParameterEntry("ConditionForm",getObject("ConditionForm")))))),"resultDict");}catch(Exception e){Logger.error(this,"ISPIPELINE failed. Line: 6.",e);}} %><% {Object temp_obj = (getObject("resultDict:IncludedProductsIterator")); getPipelineDictionary().put("IncludedProductsIterator", temp_obj);} %><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("ConditionForm:Products:Value:Iterator") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",12,e);}if (_boolean_result) { %><% while (loop("ConditionForm:Products:Value:Iterator","Product",null)) { %><input type="hidden" name="<% {String value = null;try{value=context.getFormattedValue(getObject("ConditionForm:Products:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {15}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Product"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {15}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" /><% } %><% } %><table border="0" width="100%" cellpadding="0" cellspacing="4">
<tr>
<td class="fielditem2"><% {out.write(localizeISText("ProductNotCondition.ConditionProductIsNotOneOfTheFollowing.fielditem2","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td class="table_detail"><select name="ExistingProducts" class="select" size="8"
multiple="multiple" style="width: 600px"><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("IncludedProductsIterator") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",29,e);}if (_boolean_result) { %><% while (loop("IncludedProductsIterator","Product",null)) { %><option value="<% {String value = null;try{value=context.getFormattedValue(getObject("Product:SKU"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {31}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% {String value = null;try{value=context.getFormattedValue(getObject("Product:name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {31}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> (<% {String value = null;try{value=context.getFormattedValue(getObject("Product:SKU"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {31}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>)</option><% } %><% } %></select></td>
</tr>
<tr>
<td class="table_detail">
<table border="0" cellpadding="0" cellspacing="0">
<tr>
<td class="button"><input type="hidden" name="addProducts" value="addProducts" /><input type="submit" name="addProduct" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ProductNotCondition.Add.button",null)),null)%>" class="button" /></td>
<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="4" height="1" alt="" border="0" /></td>
<td class="button"><input type="submit" name="removeProducts" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ProductNotCondition.RemoveSelected.button",null)),null)%>" class="button" /></td>
</tr>
</table>
</td>
</tr>
</table><% printFooter(out); %>