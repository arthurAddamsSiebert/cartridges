<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("formParameter"))))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("formParameter:ID"),null).equals(context.getFormattedValue("PreviewCurrency",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",3,e);}if (_boolean_result) { %><% {Object temp_obj = (getObject("formParameter:Field(\"Currency\")")); getPipelineDictionary().put("CurrencyField", temp_obj);} %><% {Object temp_obj = (getObject("formParameter:Field(\"CurrencyFilter\")")); getPipelineDictionary().put("CurrencyFilterField", temp_obj);} %><% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("CurrencyFilterField:Value"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",6,e);}if (_boolean_result) { %><% {Object temp_obj = (getObject("CurrencyFilterField:Value")); getPipelineDictionary().put("CurrencyFilterFieldValue", temp_obj);} %><% } else { %><% {Object temp_obj = (getObject("formParameter:Value:SelectedValue:Enabled")); getPipelineDictionary().put("CurrencyFilterFieldValue", temp_obj);} %><% } %><% {Object temp_obj = (getObject("formParameter:Value")); getPipelineDictionary().put("PreviewCurrencyAttribute", temp_obj);} %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("PreviewCurrencyAttribute")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("PreviewCurrencyAttribute:Visible"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",12,e);}if (_boolean_result) { %><div class="sfe-fields" data-set-system-default-function="setSelectSystemDefault" data-is-system-default-function="isSelectSystemDefault" data-set-form-default-function="setSelectFormDefault" data-is-form-default-function="isSelectFormDefault">
<label class="fielditem2"><% {out.write(localizeISText("PreviewCurrency.Currency.label","",null,null,null,null,null,null,null,null,null,null,null));} %>:<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (getObject("CurrencyField:Optional"))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",14,e);}if (_boolean_result) { %><span class="star">*</span><% } %></label><% processOpenTag(response, pageContext, "createmap", new TagParameter[] {
new TagParameter("key1","PreviewCurrencyAttribute"),
new TagParameter("key2","previewContext"),
new TagParameter("key0","CurrencyField"),
new TagParameter("value2",getObject("previewContext")),
new TagParameter("value1",getObject("PreviewCurrencyAttribute")),
new TagParameter("key3","CurrentRequest"),
new TagParameter("value3",getObject("CurrentRequest")),
new TagParameter("value0",getObject("CurrencyField")),
new TagParameter("mapname","params")}, 16); %><% processOpenTag(response, pageContext, "dropdown", new TagParameter[] {
new TagParameter("filter","search"),
new TagParameter("uitemplate","preview/PreviewCurrencyDropdown.isml"),
new TagParameter("noneselectedtext",localizeText(context.getFormattedValue("PreviewCurrency.Currency.filter.text",null))),
new TagParameter("id",getObject("CurrencyField:QualifiedName")),
new TagParameter("params",getObject("params")),
new TagParameter("selectedlist","1"),
new TagParameter("filterlabel",localizeText(context.getFormattedValue("PreviewCurrency.Currency.placeholder",null)))}, 17); %></div><% } else { %><!-- visible flag not true for PreviewCurrency -->
<input type="hidden"
name="<% {String value = null;try{value=context.getFormattedValue(getObject("CurrencyField:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {22}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
id="<% {String value = null;try{value=context.getFormattedValue(getObject("CurrencyField:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {23}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
value="<% {String value = null;try{value=context.getFormattedValue(getObject("PreviewCurrencyAttribute:SelectedValue:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {24}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
/><% } %><% } else { %><!-- no 'formParameter' found for PreviewCurrency --><% } %><% printFooter(out); %>