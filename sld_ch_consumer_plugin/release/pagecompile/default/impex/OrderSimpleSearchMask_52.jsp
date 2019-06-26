<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><tr>
<td>
<table border="0" cellpadding="5" cellspacing="0" width="100%" class="infobox w e s">
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("WFAdvancedSearch:DocumentNo:isInvalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",6,e);}if (_boolean_result) { %><td class="fielditem2_error"><% {out.write(localizeISText("OrderSimpleSearchMask_52.OrderNumber",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td><% } else { %><td class="infobox_item" nowrap="nowrap"><% {out.write(localizeISText("OrderSimpleSearchMask_52.OrderNumber",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td><% } %> 
<td>
<input type="text" name="WFAdvancedSearch_DocumentNo" value="<% {String value = null;try{value=context.getFormattedValue(getObject("WFAdvancedSearch_DocumentNo"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {12}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" maxlength=35 size="35" class="inputfield_en"/>
</td>
<td>&nbsp;</td><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("WFAdvancedSearch:CustomerName:isInvalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",15,e);}if (_boolean_result) { %><td class="fielditem2_error"><% {out.write(localizeISText("OrderSimpleSearchMask_52.Customer",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td><% } else { %><td class="infobox_item" nowrap="nowrap"><% {out.write(localizeISText("OrderSimpleSearchMask_52.Customer",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td><% } %> 
<td class="left">
<input type="text" name="WFAdvancedSearch_CustomerName" value="<% {String value = null;try{value=context.getFormattedValue(getObject("WFAdvancedSearch_CustomerName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {21}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" maxlength=35 size="35" class="inputfield_en"/>
</td>
<td class="left" width="100%">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button">
<input type="hidden" name="SearchType" value="simple"/>
<input type="hidden" name="DefaultButton" value="find"/>
<input type="submit" name="find" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("OrderSimpleSearchMask_52.Find.button",null)),null)%>" class="button"/>
</td>
</tr>
</table>
</td>
</tr>
</table>
</td>
</tr><% printFooter(out); %>