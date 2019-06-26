<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("EditAction"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",4,e);}if (_boolean_result) { %><input type="hidden" name="<% {String value = null;try{value=context.getFormattedValue(getObject("ActionForm:ActionID:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {5}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" value="<% {String value = null;try{value=context.getFormattedValue(getObject("EditAction:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {5}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="<% {String value = null;try{value=context.getFormattedValue(getObject("ActionForm:ActionDomainID:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {6}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" value="<% {String value = null;try{value=context.getFormattedValue(getObject("EditAction:DomainID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {6}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><% {try{executePipeline("ProcessPromotionGiftDiscountConfiguration-GetExcludedCategoriesForProductWizard",((java.util.Map)(((new ParameterMap().addParameter(new ParameterEntry("Domain",getObject("CurrentChannel:Domain"))))))),"resultDict");}catch(Exception e){Logger.error(this,"ISPIPELINE failed. Line: 9.",e);}} %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("resultDict:ExcludedCategoryIDs"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",12,e);}if (_boolean_result) { %><input type="hidden" name="ExcludedCategoryIDs" value="<% {String value = null;try{value=context.getFormattedValue(getObject("resultDict:ExcludedCategoryIDs"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {13}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><% } %> 
<% } %><tr>
<td class="fielditem2" nowrap="nowrap">&nbsp;</td>
<td colspan="2">
<table cellspacing="0" cellpadding="0" border="0">
<tr>
<td class="button">
<input type="submit" class="button" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("HiddenGiftDiscount.SelectGiftProductS.input",null)),null)%>" name="jumpActionIncExc" />
<input type="hidden" name="hideProductExclusions" value="true"/>
<input type="hidden" name="hideCategoryInclusions" value="true"/>
<input type="hidden" name="hideCategoryExclusions" value="true"/>
</td>
</tr>
</table>
</td>
</tr>
<tr>
<td class="fielditem2" nowrap="nowrap">&nbsp;</td>
<td class="table_detail" colspan="2">
<table cellpadding="0" cellspacing="0" border="0">
<tr>
<td <% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ActionForm:LimitToMaxItemCount:Invalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",36,e);}if (_boolean_result) { %>class="fielditem2_error"<% } else { %>class="fielditem2"<% } %>><% {out.write(localizeISText("HiddenGiftDiscount.AddSelectedGiftProductS","",null,null,null,null,null,null,null,null,null,null,null));} %>&nbsp;&nbsp;</td>
<td>
<input type="text" maxlength="8" size="7" class="inputfield_en"
name="<% {String value = null;try{value=context.getFormattedValue(getObject("ActionForm:LimitToMaxItemCount:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {39}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" 
value="<% {String value = null;try{value=context.getFormattedValue(getObject("ActionForm:LimitToMaxItemCount:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {40}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
/>
</td>
<td <% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ActionForm:LimitToMaxItemCount:Invalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",43,e);}if (_boolean_result) { %>class="fielditem2_error"<% } else { %>class="fielditem2"<% } %>>&nbsp;&nbsp;<% {out.write(localizeISText("HiddenGiftDiscount.TimesAutomaticallyToCart","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
</td>
</tr><% {Object temp_obj = (getObject("ActionDescriptorMap:get(ActionForm:ActionDescriptorID:Value):PromotionActionTemplate")); getPipelineDictionary().put("PromotionActionTemplate", temp_obj);} %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("PromotionActionTemplate")))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("PromotionActionTemplate"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",49,e);}if (_boolean_result) { %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,context.getFormattedValue(getObject("PromotionActionTemplate"),null), null, "50");} %><% } %><% printFooter(out); %>