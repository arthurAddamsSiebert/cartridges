<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("formParameter"))))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("formParameter:ID"),null).equals(context.getFormattedValue("PreviewLocale",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",3,e);}if (_boolean_result) { %><% {Object temp_obj = (getObject("formParameter:Field(\"Locale\")")); getPipelineDictionary().put("LocaleField", temp_obj);} %><% {Object temp_obj = (getObject("formParameter:Field(\"LocaleFilter\")")); getPipelineDictionary().put("LocaleFilterField", temp_obj);} %><% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("LocaleFilterField:Value"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",6,e);}if (_boolean_result) { %><% {Object temp_obj = (getObject("LocaleFilterField:Value")); getPipelineDictionary().put("LocaleFilterFieldValue", temp_obj);} %><% } else { %><% {Object temp_obj = (getObject("formParameter:Value:SelectedValue:Enabled")); getPipelineDictionary().put("LocaleFilterFieldValue", temp_obj);} %><% } %><% {Object temp_obj = (getObject("formParameter:Value")); getPipelineDictionary().put("PreviewLocaleAttribute", temp_obj);} %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("PreviewLocaleAttribute")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("PreviewLocaleAttribute:Visible"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",12,e);}if (_boolean_result) { %><div class="sfe-fields" data-set-system-default-function="setSelectSystemDefault" data-is-system-default-function="isSelectSystemDefault" data-set-form-default-function="setSelectFormDefault" data-is-form-default-function="isSelectFormDefault">
<label class="fielditem2"><% {out.write(localizeISText("PreviewLocale.Language.label","",null,null,null,null,null,null,null,null,null,null,null));} %>:<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (getObject("LocaleField:Optional"))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",14,e);}if (_boolean_result) { %><span class="star">*</span><% } %></label><% processOpenTag(response, pageContext, "createmap", new TagParameter[] {
new TagParameter("key1","PreviewLocaleAttribute"),
new TagParameter("key2","previewContext"),
new TagParameter("key0","LocaleField"),
new TagParameter("value2",getObject("previewContext")),
new TagParameter("value1",getObject("PreviewLocaleAttribute")),
new TagParameter("key3","CurrentRequest"),
new TagParameter("value3",getObject("CurrentRequest")),
new TagParameter("value0",getObject("LocaleField")),
new TagParameter("mapname","params")}, 16); %><% processOpenTag(response, pageContext, "dropdown", new TagParameter[] {
new TagParameter("uitemplate","preview/PreviewLocaleDropdown.isml"),
new TagParameter("id",getObject("LocaleField:QualifiedName")),
new TagParameter("params",getObject("params")),
new TagParameter("selectedlist","1")}, 17); %></div><% } else { %><!-- visible flag not true for PreviewLocale -->
<input type="hidden" 
name="<% {String value = null;try{value=context.getFormattedValue(getObject("LocaleField:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {22}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
id="<% {String value = null;try{value=context.getFormattedValue(getObject("LocaleField:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {23}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
value="<% {String value = null;try{value=context.getFormattedValue(getObject("PreviewLocaleAttribute:SelectedValue:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {24}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
/><% } %><% } else { %><!-- no 'formParameter' found for PreviewLocale --><% } %><% printFooter(out); %>