<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- Working Area -->
<!-- Main Content --><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotionCodeList-ShowAll",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("PromotionCodeGroupID",null),context.getFormattedValue(getObject("PromotionCodeGroup:ID"),null))).addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null)))),
new TagParameter("text",localizeText(context.getFormattedValue("PromotionCodeGenerate.GeneratePromotionCodes.text",null)))}, 6); %><!-- start input form --><% URLPipelineAction action300 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotionCodeList-DispatchGenerateCodes",null)))),null));String site300 = null;String serverGroup300 = null;String actionValue300 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotionCodeList-DispatchGenerateCodes",null)))),null);if (site300 == null){  site300 = action300.getDomain();  if (site300 == null)  {      site300 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup300 == null){  serverGroup300 = action300.getServerGroup();  if (serverGroup300 == null)  {      serverGroup300 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotionCodeList-DispatchGenerateCodes",null)))),null));out.print("\"");out.print(" name=\"");out.print(context.getFormattedValue(getObject("PromotionCodeGenerateForm:ID"),null));out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue300, site300, serverGroup300,true)); %><table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" class="table_title w e s n"><% {String value = null;try{value=context.getFormattedValue(getObject("PromotionCodeGroup:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {14}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> - <% {out.write(localizeISText("PromotionCodeGenerate.GeneratePromotionCodes.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %> 
</td>
</tr>
<!-- errors --><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("PromotionCodeGenerateForm:isInvalid")).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("ErrorCode")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",18,e);}if (_boolean_result) { %><tr>
<td>
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr valign="top">
<td class="error_icon top e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error top" width="100%">
<b><% {out.write(localizeISText("PromotionCodeGenerate.PromotionCodesCouldNotBeGenerated.error",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</b><br/><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("PromotionCodeGenerateForm:Prefix:isError(\"error.code.prefix.length\")"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",26,e);}if (_boolean_result) { %><% {out.write(localizeISText("PromotionCodeGenerate.CodePrefixFieldIsWrongCodePrefixLength.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("PromotionCodeGenerateForm:Prefix:isError(\"error.maxlength\")"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",29,e);}if (_boolean_result) { %><% {out.write(localizeISText("PromotionCodeGenerate.CodePrefixFieldIsWrongMaxLength.error",null,null,null,null,null,null,null,null,null,null,null,null));} %> <br/><% } %> 
<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("PromotionCodeGenerateForm:Prefix:isError(\"error.profanitycheck\")"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",32,e);}if (_boolean_result) { %><% while (loop("PromotionCodeGenerateForm:Prefix:FailedValidators","Validator",null)) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Validator:MatchedBadWords"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",34,e);}if (_boolean_result) { %><% {out.write(localizeISText("PromotionCodeGenerate.DueToADefinedListOfWords.error",null,null,encodeString(context.getFormattedValue(getObject("Validator:MatchedBadWords"),null)),null,null,null,null,null,null,null,null,null));} %><% if (getLoopStack().isEmpty()) {Logger.error(this,"ISBREAK occured outside ISLOOP. Line: {}",36);}else{getLoopStack().pop();break;} %><% } %><% } %><% } %> 
<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("PromotionCodeGenerateForm:Length:isError(\"error.required\")"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",40,e);}if (_boolean_result) { %><% {out.write(localizeISText("PromotionCodeGenerate.CodeLengthFieldIsMandatory.error",null,null,null,null,null,null,null,null,null,null,null,null));} %> <br/> 
<% } %> 
<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("PromotionCodeGenerateForm:Length:isError(\"error.intrange\")"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",43,e);}if (_boolean_result) { %><% {out.write(localizeISText("PromotionCodeGenerate.CodeLengthFieldIsWrongIntRange.error",null,null,null,null,null,null,null,null,null,null,null,null));} %> <br/> 
<% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("PromotionCodeGenerateForm:Number:isError(\"error.required\")"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",46,e);}if (_boolean_result) { %><% {out.write(localizeISText("PromotionCodeGenerate.NumberOfCodesFieldIsMandatory.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/> 
<% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("PromotionCodeGenerateForm:Number:isError(\"error.intrange\")"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",49,e);}if (_boolean_result) { %><% {out.write(localizeISText("PromotionCodeGenerate.NumberOfCodesFieldIsWrongIntRange.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/> 
<% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ErrorCode")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ErrorCode"),null).equals(context.getFormattedValue("SuffixLengthToShort",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",52,e);}if (_boolean_result) { %><% {out.write(localizeISText("PromotionCodeGenerate.ThereAreNotEnoughFreeCodes.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/><br/><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("possiblePromotionCodesCount"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",54,e);}if (_boolean_result) { %><% {out.write(localizeISText("PromotionCodeGenerate.YouCanOnlyCreateXCodes.error",null,null,context.getFormattedValue(getObject("possiblePromotionCodesCount"),new Integer(INTEGER)),null,null,null,null,null,null,null,null,null));} %><% } %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ErrorCode")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ErrorCode"),null).equals(context.getFormattedValue("MissingSuffixLength",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",58,e);}if (_boolean_result) { %><% {out.write(localizeISText("PromotionCodeGenerate.CodeLengthIsNotDefined.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("PromotionCodeGenerateForm:ExcludedCharacters:isInvalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",61,e);}if (_boolean_result) { %><% {out.write(localizeISText("PromotionCodeGenerate.ExcludedCharactersFieldIsWrong.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %></td>
</tr>
</table>
</td>
</tr><% } %><!-- EO errors-->
<tr>
<td class="table_title_description w e s"><% {out.write(localizeISText("PromotionCodeGenerate.DefineTheRulesForPromotionCodeCreation.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/><br/><% {out.write(localizeISText("PromotionCodeGenerate.MaximumNumberOfCodesEquals",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/><br/><% {out.write(localizeISText("PromotionCodeGenerate.MaximumNumberOfCodesExample",null,null,null,null,null,null,null,null,null,null,null,null));} %> = 10 <sup>(4 - 2)</sup> - 20 = 10<sup>2</sup> - 20 = 100 - 20 = 80<br/><% {out.write(localizeISText("PromotionCodeGenerate.MaximumNumberOfCodesResult",null,null,null,null,null,null,null,null,null,null,null,null));} %> 
<br/><br/><br/><% {out.write(localizeISText("PromotionCodeGenerate.SpecialCaseIfLengthOfPrefixEqualsTheCodeLength",null,null,null,null,null,null,null,null,null,null,null,null));} %> 
</td>
</tr>
</table>
<table cellpadding="0" cellspacing="0" border="0" width="100%" class="w e s">
<tr>
<td>
<table cellpadding="0" cellspacing="5" border="0">
<tr>
<td colspan="2"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="4" alt="" border="0"/></td>
</tr>
<tr>
<td <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("PromotionCodeGenerateForm:Prefix:isInvalid")).booleanValue() || ((Boolean) getObject("PromotionCodeGenerateForm:isError(\"error.code.prefixlength\")")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",94,e);}if (_boolean_result) { %>class="fielditem2_error"<% } else { %>class="fielditem2"<% } %> nowrap="nowrap"><% {out.write(localizeISText("PromotionCodeGenerate.CodePrefix",null,null,null,null,null,null,null,null,null,null,null,null));} %>:
</td>
<td class="table_detail">
<input class="inputfield_en" type="text" 
maxlength="128" 
size="35" 
name="<% {String value = null;try{value=context.getFormattedValue(getObject("PromotionCodeGenerateForm:Prefix:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {101}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" value="<% {String value = null;try{value=context.getFormattedValue(getObject("PromotionCodeGenerateForm:Prefix:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {101}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
</td>
<td nowrap="nowrap" class="table_detail"><% {out.write(localizeISText("PromotionCodeGenerate.AllCodesStartWithThisText.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td <% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("PromotionCodeGenerateForm:Length:isInvalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",108,e);}if (_boolean_result) { %>class="fielditem2_error"<% } else { %>class="fielditem2"<% } %> nowrap="nowrap"><% {out.write(localizeISText("PromotionCodeGenerate.CodeLength",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span>
</td>
<td class="table_detail">
<input class="inputfield_en" type="text" 
maxlength="3" 
size="9" 
name="<% {String value = null;try{value=context.getFormattedValue(getObject("PromotionCodeGenerateForm:Length:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {115}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" value="<% {String value = null;try{value=context.getFormattedValue(getObject("PromotionCodeGenerateForm:Length:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {115}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
</td>
<td nowrap="nowrap" class="table_detail"><% {out.write(localizeISText("PromotionCodeGenerate.NumberOfCharactersPerCode.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td <% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("PromotionCodeGenerateForm:Number:isInvalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",122,e);}if (_boolean_result) { %>class="fielditem2_error"<% } else { %>class="fielditem2"<% } %> nowrap="nowrap"><% {out.write(localizeISText("PromotionCodeGenerate.NoOfCodes",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span>
</td>
<td class="table_detail">
<input class="inputfield_en" type="text" 
maxlength="9" 
size="9" 
name="<% {String value = null;try{value=context.getFormattedValue(getObject("PromotionCodeGenerateForm:Number:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {129}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" value="<% {String value = null;try{value=context.getFormattedValue(getObject("PromotionCodeGenerateForm:Number:Value"),"#",null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {129}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
</td>
<td nowrap="nowrap" class="table_detail">
&nbsp;
</td>
</tr>
<tr>
<td <% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("PromotionCodeGenerateForm:ExcludedCharacters:isInvalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",136,e);}if (_boolean_result) { %>class="fielditem2_error"<% } else { %>class="fielditem2"<% } %> nowrap="nowrap"><% {out.write(localizeISText("PromotionCodeGenerate.ExcludedCharacters",null,null,null,null,null,null,null,null,null,null,null,null));} %>:
</td>
<td class="table_detail">
<input class="inputfield_en" type="text" 
maxlength="128" 
size="35" 
name="<% {String value = null;try{value=context.getFormattedValue(getObject("PromotionCodeGenerateForm:ExcludedCharacters:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {143}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" value="<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PromotionCodeGenerateForm:ExcludedCharacters:Value"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",143,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("MisleadingCharactersInPromotionCodesStringValue"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {143}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %><% {String value = null;try{value=context.getFormattedValue(getObject("PromotionCodeGenerateForm:ExcludedCharacters:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {143}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %>"/>
</td>
<td nowrap="nowrap" class="table_detail"><% {out.write(localizeISText("PromotionCodeGenerate.CharactersWhichShouldBeExcluded.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table> 
</td>
</tr>
<!-- Buttons -->
<tr>
<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></td>
</tr>
<tr>
<td align="right" class="n">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<input type="hidden" name="ChannelID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("CurrentChannel:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {161}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="PromotionCodeGroupID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("PromotionCodeGroup:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {162}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="DeterminePageablePipeline" value="ProcessPromotionCode-BatchGeneratePageable"/>
<input type="hidden" name="SelectedMenuItem" value="OnlineMarketing"/>
<input type="hidden" name="ProcessDescription" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PromotionCodeGenerate.GeneratePromotionCodes.input",null)),null)%>"/>
<td class="button"><input type="submit" name="generateCodes" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PromotionCodeGenerate.Generate.button",null)),null)%>" class="button"/></td>
<td class="button"><input type="submit" name="cancel" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PromotionCodeGenerate.Cancel.button",null)),null)%>" class="button"/></td>
</tr>
</table>
</td>
</tr>
</table><% out.print("</form>"); %> 
<!-- EO Main Content -->
<!-- EO Working Area --><% printFooter(out); %>