<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% {try{executePipeline("ProcessItemInclusionsExclusionsConditionConfiguration-GetInclusionsExclusions",((java.util.Map)(((new ParameterMap().addParameter(new ParameterEntry("Condition",getObject("EditCondition"))))))),"Result");}catch(Exception e){Logger.error(this,"ISPIPELINE failed. Line: 4.",e);}} %><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) ((disableErrorMessages().isDefined(getObject("newCondition"))))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",5,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("Result:IncludedProductsPageable")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("Result:IncludedCategoriesPageable")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("Result:ExcludedProductsPageable")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("Result:ExcludedCategoriesPageable")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",6,e);}if (_boolean_result) { %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/condition/ItemInclusionsExclusionsConditionIncompleteness", null, "7");} %><% } %><% } %><table border="0" width="100%" cellpadding="0" cellspacing="0">
<tr>
<td class="fielditem"><% {out.write(localizeISText("ItemInclusionsExclusionsCondition.NoteIfThereAreNoExplicitelyIncludedProdu.fielditem","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td class="fielditem2" colspan="2"><% {out.write(localizeISText("ItemInclusionsExclusionsCondition.Inclusions.fielditem2","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td class="fielditem"><a class="table_detail_link2" href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue(getObject("DispatchPipeline"),null))),(new URLParameterSet().addURLParameter(context.getFormattedValue(getObject("ContextObjectIDName"),null),context.getFormattedValue(getObject("ContextObjectID"),null))).addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null)).addURLParameter(context.getFormattedValue(getObject("ConditionForm:ConditionDescriptorID:QualifiedName"),null),context.getFormattedValue(getObject("ConditionForm:ConditionDescriptorID:Value"),null)).addURLParameter(context.getFormattedValue("EditConditionID",null),context.getFormattedValue(getObject("EditCondition:UUID"),null)).addURLParameter(context.getFormattedValue("EditConditionTypeGroupID",null),context.getFormattedValue(getObject("EditConditionTypeGroup:UUID"),null)).addURLParameter(context.getFormattedValue("jumpConditionIncExc",null),context.getFormattedValue("jumpConditionIncExc",null)).addURLParameter(context.getFormattedValue("hideCategoryInclusions",null),context.getFormattedValue("true",null)).addURLParameter(context.getFormattedValue("hideProductExclusions",null),context.getFormattedValue("true",null)).addURLParameter(context.getFormattedValue("hideCategoryExclusions",null),context.getFormattedValue("true",null)).addURLParameter(context.getFormattedValue(getObject("parametername1"),null),context.getFormattedValue(getObject("parametervalue1"),null))),null)%>"><% {out.write(localizeISText("ItemInclusionsExclusionsCondition.IncludedProducts.link","",null,null,null,null,null,null,null,null,null,null,null));} %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Result:IncludedProductsPageable"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",20,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("Result:IncludedProductsPageable:ElementCount"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {20}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %>0<% } %>)</a></td>
<td class="fielditem"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Result:IncludedProductsPageable"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",22,e);}if (_boolean_result) { %><% {Object temp_obj = (new Double(0)); getPipelineDictionary().put("counter", temp_obj);} %><% while (loop("Result:IncludedProductsPageable","IncludedProduct",null)) { %><% {Object temp_obj = ((new Double( ((Number) getObject("counter")).doubleValue() +((Number) new Double(1)).doubleValue()))); getPipelineDictionary().put("counter", temp_obj);} %><% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("counter")).doubleValue() >((Number)(new Double(3))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",26,e);}if (_boolean_result) { %>, ... <% if (getLoopStack().isEmpty()) {Logger.error(this,"ISBREAK occured outside ISLOOP. Line: {}",26);}else{getLoopStack().pop();break;} %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("counter")).doubleValue() >((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",27,e);}if (_boolean_result) { %>, <% } %><% {String value = null;try{value=context.getFormattedValue(getObject("IncludedProduct:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {27}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> (<% {String value = null;try{value=context.getFormattedValue(getObject("IncludedProduct:SKU"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {27}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>)
<% } %><% } %></td>
</tr>
<tr>
<td class="fielditem" nowrap="nowrap"><a class="table_detail_link2" href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue(getObject("DispatchPipeline"),null))),(new URLParameterSet().addURLParameter(context.getFormattedValue(getObject("ContextObjectIDName"),null),context.getFormattedValue(getObject("ContextObjectID"),null))).addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null)).addURLParameter(context.getFormattedValue(getObject("ConditionForm:ConditionDescriptorID:QualifiedName"),null),context.getFormattedValue(getObject("ConditionForm:ConditionDescriptorID:Value"),null)).addURLParameter(context.getFormattedValue("EditConditionID",null),context.getFormattedValue(getObject("EditCondition:UUID"),null)).addURLParameter(context.getFormattedValue("EditConditionTypeGroupID",null),context.getFormattedValue(getObject("EditConditionTypeGroup:UUID"),null)).addURLParameter(context.getFormattedValue("jumpConditionIncExc",null),context.getFormattedValue("jumpConditionIncExc",null)).addURLParameter(context.getFormattedValue("hideProductInclusions",null),context.getFormattedValue("true",null)).addURLParameter(context.getFormattedValue("hideProductExclusions",null),context.getFormattedValue("true",null)).addURLParameter(context.getFormattedValue("hideCategoryExclusions",null),context.getFormattedValue("true",null)).addURLParameter(context.getFormattedValue(getObject("parametername1"),null),context.getFormattedValue(getObject("parametervalue1"),null))),null)%>"><% {out.write(localizeISText("ItemInclusionsExclusionsCondition.IncludedCategories.link","",null,null,null,null,null,null,null,null,null,null,null));} %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Result:IncludedCategoriesPageable"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",33,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("Result:IncludedCategoriesPageable:ElementCount"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {33}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %>0<% } %>)</a></td>
<td class="fielditem"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Result:IncludedCategoriesPageable"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",35,e);}if (_boolean_result) { %><% {Object temp_obj = (new Double(0)); getPipelineDictionary().put("counter", temp_obj);} %><% while (loop("Result:IncludedCategoriesPageable","IncludedCategory",null)) { %><% {Object temp_obj = ((new Double( ((Number) getObject("counter")).doubleValue() +((Number) new Double(1)).doubleValue()))); getPipelineDictionary().put("counter", temp_obj);} %><% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("counter")).doubleValue() >((Number)(new Double(3))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",39,e);}if (_boolean_result) { %>, ... <% if (getLoopStack().isEmpty()) {Logger.error(this,"ISBREAK occured outside ISLOOP. Line: {}",39);}else{getLoopStack().pop();break;} %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("counter")).doubleValue() >((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",40,e);}if (_boolean_result) { %>, <% } %><% {String value = null;try{value=context.getFormattedValue(getObject("IncludedCategory:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {40}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> (<% {String value = null;try{value=context.getFormattedValue(getObject("IncludedCategory:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {40}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>)
<% } %><% } %></td>
</tr>
<tr><td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></td></tr>
<tr>
<td class="fielditem2" colspan="2"><% {out.write(localizeISText("ItemInclusionsExclusionsCondition.Exclusions.fielditem2","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td class="fielditem"><a class="table_detail_link2" href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue(getObject("DispatchPipeline"),null))),(new URLParameterSet().addURLParameter(context.getFormattedValue(getObject("ContextObjectIDName"),null),context.getFormattedValue(getObject("ContextObjectID"),null))).addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null)).addURLParameter(context.getFormattedValue(getObject("ConditionForm:ConditionDescriptorID:QualifiedName"),null),context.getFormattedValue(getObject("ConditionForm:ConditionDescriptorID:Value"),null)).addURLParameter(context.getFormattedValue("EditConditionID",null),context.getFormattedValue(getObject("EditCondition:UUID"),null)).addURLParameter(context.getFormattedValue("EditConditionTypeGroupID",null),context.getFormattedValue(getObject("EditConditionTypeGroup:UUID"),null)).addURLParameter(context.getFormattedValue("jumpConditionIncExc",null),context.getFormattedValue("jumpConditionIncExc",null)).addURLParameter(context.getFormattedValue("hideProductInclusions",null),context.getFormattedValue("true",null)).addURLParameter(context.getFormattedValue("hideCategoryInclusions",null),context.getFormattedValue("true",null)).addURLParameter(context.getFormattedValue("hideCategoryExclusions",null),context.getFormattedValue("true",null)).addURLParameter(context.getFormattedValue(getObject("parametername1"),null),context.getFormattedValue(getObject("parametervalue1"),null))),null)%>"><% {out.write(localizeISText("ItemInclusionsExclusionsCondition.ExcludedProducts.link","",null,null,null,null,null,null,null,null,null,null,null));} %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Result:ExcludedProductsPageable"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",50,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("Result:ExcludedProductsPageable:ElementCount"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {50}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %>0<% } %>)</a></td>
<td class="fielditem"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Result:ExcludedProductsPageable"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",52,e);}if (_boolean_result) { %><% {Object temp_obj = (new Double(0)); getPipelineDictionary().put("counter", temp_obj);} %><% while (loop("Result:ExcludedProductsPageable","ExcludedProduct",null)) { %><% {Object temp_obj = ((new Double( ((Number) getObject("counter")).doubleValue() +((Number) new Double(1)).doubleValue()))); getPipelineDictionary().put("counter", temp_obj);} %><% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("counter")).doubleValue() >((Number)(new Double(3))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",56,e);}if (_boolean_result) { %>, ... <% if (getLoopStack().isEmpty()) {Logger.error(this,"ISBREAK occured outside ISLOOP. Line: {}",56);}else{getLoopStack().pop();break;} %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("counter")).doubleValue() >((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",57,e);}if (_boolean_result) { %>, <% } %><% {String value = null;try{value=context.getFormattedValue(getObject("ExcludedProduct:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {57}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> (<% {String value = null;try{value=context.getFormattedValue(getObject("ExcludedProduct:SKU"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {57}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>)
<% } %><% } %></td>
</tr>
<tr>
<td class="fielditem" nowrap="nowrap"><a class="table_detail_link2" href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue(getObject("DispatchPipeline"),null))),(new URLParameterSet().addURLParameter(context.getFormattedValue(getObject("ContextObjectIDName"),null),context.getFormattedValue(getObject("ContextObjectID"),null))).addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null)).addURLParameter(context.getFormattedValue(getObject("ConditionForm:ConditionDescriptorID:QualifiedName"),null),context.getFormattedValue(getObject("ConditionForm:ConditionDescriptorID:Value"),null)).addURLParameter(context.getFormattedValue("EditConditionID",null),context.getFormattedValue(getObject("EditCondition:UUID"),null)).addURLParameter(context.getFormattedValue("EditConditionTypeGroupID",null),context.getFormattedValue(getObject("EditConditionTypeGroup:UUID"),null)).addURLParameter(context.getFormattedValue("jumpConditionIncExc",null),context.getFormattedValue("jumpConditionIncExc",null)).addURLParameter(context.getFormattedValue("hideProductInclusions",null),context.getFormattedValue("true",null)).addURLParameter(context.getFormattedValue("hideCategoryInclusions",null),context.getFormattedValue("true",null)).addURLParameter(context.getFormattedValue("hideProductExclusions",null),context.getFormattedValue("true",null)).addURLParameter(context.getFormattedValue(getObject("parametername1"),null),context.getFormattedValue(getObject("parametervalue1"),null))),null)%>"><% {out.write(localizeISText("ItemInclusionsExclusionsCondition.ExcludedCategories.link","",null,null,null,null,null,null,null,null,null,null,null));} %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Result:ExcludedCategoriesPageable"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",63,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("Result:ExcludedCategoriesPageable:ElementCount"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {63}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %>0<% } %>)</a></td>
<td class="fielditem"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Result:ExcludedCategoriesPageable"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",65,e);}if (_boolean_result) { %><% {Object temp_obj = (new Double(0)); getPipelineDictionary().put("counter", temp_obj);} %><% while (loop("Result:ExcludedCategoriesPageable","ExcludedCategory",null)) { %><% {Object temp_obj = ((new Double( ((Number) getObject("counter")).doubleValue() +((Number) new Double(1)).doubleValue()))); getPipelineDictionary().put("counter", temp_obj);} %><% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("counter")).doubleValue() >((Number)(new Double(3))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",69,e);}if (_boolean_result) { %>, ... <% if (getLoopStack().isEmpty()) {Logger.error(this,"ISBREAK occured outside ISLOOP. Line: {}",69);}else{getLoopStack().pop();break;} %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("counter")).doubleValue() >((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",70,e);}if (_boolean_result) { %>, <% } %><% {String value = null;try{value=context.getFormattedValue(getObject("ExcludedCategory:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {70}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> (<% {String value = null;try{value=context.getFormattedValue(getObject("ExcludedCategory:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {70}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>)
<% } %><% } %></td>
</tr>
</table><% printFooter(out); %>