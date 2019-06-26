<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- Check search mask--><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("WFAdvancedSearch")))).booleanValue() && ((Boolean) (((((Boolean) getObject("WFAdvancedSearch:ProductID:isInvalid")).booleanValue() || ((Boolean) getObject("WFAdvancedSearch:ProductName:isInvalid")).booleanValue() || ((Boolean) getObject("WFAdvancedSearch:ManufacturerName:isInvalid")).booleanValue() || ((Boolean) getObject("WFAdvancedSearch:ShortDescription:isInvalid")).booleanValue() || ((Boolean) getObject("WFAdvancedSearch:PriceFrom:isInvalid")).booleanValue() || ((Boolean) getObject("WFAdvancedSearch:PriceTo:isInvalid")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("PriceFromError")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("PriceToError")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("ERROR_ModifiedDateFrom")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("ERROR_ModifiedDateTo")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",3,e);}if (_boolean_result) { %><tr>
<td>
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box e s w">
<tr>
<td class="error_icon e middle"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error" width="100%"><% {out.write(localizeISText("ProductSearchMessages.PleaseProvideAValidSearchParameter.error",null,null,null,null,null,null,null,null,null,null,null,null));} %> <br/><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("WFAdvancedSearch:ShortDescription:isInvalid")).booleanValue() || ((Boolean) getObject("WFAdvancedSearch:ManufacturerName:isInvalid")).booleanValue() || ((Boolean) getObject("WFAdvancedSearch:ProductID:isInvalid")).booleanValue() || ((Boolean) getObject("WFAdvancedSearch:ProductName:isInvalid")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",10,e);}if (_boolean_result) { %> 
<% {out.write(localizeISText("ProductSearchMessages.UseAtLeast3CharactersBeforeWildcards.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %></td>
</tr>
</table>
</td>
</tr><% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("WFSimpleSearch")))).booleanValue() && ((Boolean) (getObject("WFSimpleSearch:NameOrID:isInvalid"))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",18,e);}if (_boolean_result) { %><tr>
<td>
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr>
<td class="error_icon e middle"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error" width="100%"><% {out.write(localizeISText("ProductSearchMessages.PleaseProvideAValidSearchMask.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
</td>
</tr><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ErrorNameOrIdTooLong"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",31,e);}if (_boolean_result) { %><tr>
<td>
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr>
<td class="error_icon e">
<img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/>
</td>
<td class="error" width="100%"><% {out.write(localizeISText("ProductSearchMessages.PleaseEnterFewerIdentifiersInNameOrID.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
</td>
</tr><% }}} %><% printFooter(out); %>