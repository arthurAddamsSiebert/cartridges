<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"modules/common/Modules", null, "2");} %><div class="form-group"><% processOpenTag(response, pageContext, "seq-next", new TagParameter[] {
new TagParameter("name","tabcount")}, 5); %><label class="control-label col-sm-4" for="<% {String value = null;try{value=context.getFormattedValue(context.getFormattedValue(getObject("webform:State:QualifiedName"),null) + context.getFormattedValue(getObject("idSuffix"),null),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {6}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("webform:CountryCode:Value"),null).equals(context.getFormattedValue("US",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",7,e);}if (_boolean_result) { %><% {out.write(localizeISText("account.address.state.label","",null,null,null,null,null,null,null,null,null,null,null));} %><% } else { %><% {out.write(localizeISText("account.default_address.state.label","",null,null,null,null,null,null,null,null,null,null,null));} %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) getObject("webform:State:Optional")).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",12,e);}if (_boolean_result) { %><span class="required">*</span><% } %></label>
<div class="col-sm-8"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("webform:State:Value"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",15,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("webform:State:isInvalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",16,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "stateselectbox", new TagParameter[] {
new TagParameter("formparameter",getObject("webform:State:QualifiedName")),
new TagParameter("autosuggestion","on"),
new TagParameter("countrycode",getObject("webform:CountryCode:Value")),
new TagParameter("validationgroup",getObject("validationgroup")),
new TagParameter("inputfieldid",context.getFormattedValue(getObject("webform:State:QualifiedName"),null) + context.getFormattedValue(getObject("idSuffix"),null)),
new TagParameter("state",getObject("webform:State:Value")),
new TagParameter("class","kor-error"),
new TagParameter("validation","required")}, 17); %><% } else { %><% processOpenTag(response, pageContext, "stateselectbox", new TagParameter[] {
new TagParameter("formparameter",getObject("webform:State:QualifiedName")),
new TagParameter("autosuggestion","on"),
new TagParameter("countrycode",getObject("webform:CountryCode:Value")),
new TagParameter("validationgroup",getObject("validationgroup")),
new TagParameter("inputfieldid",context.getFormattedValue(getObject("webform:State:QualifiedName"),null) + context.getFormattedValue(getObject("idSuffix"),null)),
new TagParameter("state",getObject("webform:State:Value")),
new TagParameter("validation","required")}, 19); %><% } %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("address"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",21,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "stateselectbox", new TagParameter[] {
new TagParameter("formparameter",getObject("webform:State:QualifiedName")),
new TagParameter("autosuggestion","on"),
new TagParameter("countrycode",getObject("address:CountryCode")),
new TagParameter("validationgroup",getObject("validationgroup")),
new TagParameter("inputfieldid",context.getFormattedValue(getObject("webform:State:QualifiedName"),null) + context.getFormattedValue(getObject("idSuffix"),null)),
new TagParameter("state",getObject("address:MainDivision")),
new TagParameter("validation","required")}, 22); %><% } else { %><% processOpenTag(response, pageContext, "stateselectbox", new TagParameter[] {
new TagParameter("formparameter",getObject("webform:State:QualifiedName")),
new TagParameter("autosuggestion","on"),
new TagParameter("countrycode",getObject("webform:CountryCode:Value")),
new TagParameter("validationgroup",getObject("validationgroup")),
new TagParameter("inputfieldid",context.getFormattedValue(getObject("webform:State:QualifiedName"),null) + context.getFormattedValue(getObject("idSuffix"),null)),
new TagParameter("validation","required")}, 24); %><% }} %></div> 
</div><% printFooter(out); %>