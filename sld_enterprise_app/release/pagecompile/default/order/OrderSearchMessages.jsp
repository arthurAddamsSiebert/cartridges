<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- Check search mask--><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("WFAdvancedSearch:DocumentNo:isInvalid")).booleanValue() || ((Boolean) getObject("WFAdvancedSearch:CustomerName:isInvalid")).booleanValue() || ((Boolean) getObject("WFAdvancedSearch:ProductSKU:isInvalid")).booleanValue() || ((Boolean) getObject("WFAdvancedSearch:ChangedBy:isInvalid")).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("CreationDateFromError")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("CreationDateToError")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("CreationDateError")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("TotalFromError")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("TotalToError")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("TotalError")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",3,e);}if (_boolean_result) { %><tr>
<td>
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr>
<td class="error_icon e middle">
<img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/>
</td>
<td class="error" width="100%"><% {out.write(localizeISText("OrderSearchMessages.PleaseProvideAValidSearchParameter.error",null,null,null,null,null,null,null,null,null,null,null,null));} %> <br/><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("WFAdvancedSearch:DocumentNo:isInvalid")).booleanValue() || ((Boolean) getObject("WFAdvancedSearch:CustomerName:isInvalid")).booleanValue() || ((Boolean) getObject("WFAdvancedSearch:ProductSKU:isInvalid")).booleanValue() || ((Boolean) getObject("WFAdvancedSearch:ChangedBy:isInvalid")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",12,e);}if (_boolean_result) { %><% {out.write(localizeISText("OrderSearchMessages.UseAtLeast3CharactersBeforeWildcards.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CreationDateFromError"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",14,e);}if (_boolean_result) { %><% {out.write(localizeISText("OrderSearchMessages.ProvideAValidCreationFromDate.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CreationDateToError"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",16,e);}if (_boolean_result) { %><% {out.write(localizeISText("OrderSearchMessages.ProvideAValidCreationToDate.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CreationDateError"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",18,e);}if (_boolean_result) { %><% {out.write(localizeISText("OrderSearchMessages.CreationFromDateMustBeEarlierThanCreationToDate.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("TotalFromError"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",20,e);}if (_boolean_result) { %><% {out.write(localizeISText("OrderSearchMessages.ProvideAValidNumberForTotalFrom.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("TotalToError"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",22,e);}if (_boolean_result) { %><% {out.write(localizeISText("OrderSearchMessages.ProvideAValidNumberForTotalTo.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("TotalError"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",24,e);}if (_boolean_result) { %><% {out.write(localizeISText("OrderSearchMessages.TotalFromMustBeEqualOrLowerThanTotalTo.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><% }}}}}}} %></td>
</tr>
</table>
</td>
</tr><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("WFSimpleSearch:DocumentNo:isInvalid")).booleanValue() || ((Boolean) getObject("WFSimpleSearch:CustomerName:isInvalid")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",33,e);}if (_boolean_result) { %><tr>
<td>
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr>
<td class="error_icon e middle">
<img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/>
</td>
<td class="error" width="100%"><% {out.write(localizeISText("OrderSearchMessages.PleaseProvideAValidSearchParameter.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
</td>
</tr><% } %><% printFooter(out); %>