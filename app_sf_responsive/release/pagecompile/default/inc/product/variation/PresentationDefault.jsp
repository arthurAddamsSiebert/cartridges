<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ProductBO:AttributeValue(VariationAttribute:Name)"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",3,e);}if (_boolean_result) { %><% {Object temp_obj = (getObject("ProductBO:AttributeValue(VariationAttribute:Name):Object")); getPipelineDictionary().put("defaultValue", temp_obj);} %><% } else { %><% {Object temp_obj = (""); getPipelineDictionary().put("defaultValue", temp_obj);} %><% } %><% {Object temp_obj = (""); getPipelineDictionary().put("defaultValues", temp_obj);} %><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("defaultValue") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",10,e);}if (_boolean_result) { %><% while (loop("defaultValue","defValue",null)) { %><% {Object temp_obj = (context.getFormattedValue(getObject("defaultValues"),null) + context.getFormattedValue(getObject("defValue"),null)); getPipelineDictionary().put("defaultValues", temp_obj);} %><% _boolean_result=false;try {_boolean_result=((Boolean)((hasNext("defValue") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",13,e);}if (_boolean_result) { %><% {Object temp_obj = (context.getFormattedValue(getObject("defaultValues"),null) + context.getFormattedValue("|",null)); getPipelineDictionary().put("defaultValues", temp_obj);} %><% } %><% } %><% } else { %><% {Object temp_obj = (getObject("defaultValue")); getPipelineDictionary().put("defaultValues", temp_obj);} %><% } %><% {Object temp_obj = (replace(context.getFormattedValue(getObject("VariationAttribute:Name"),null),(String)("[^\\w-:\\.]"),(String)(""))); getPipelineDictionary().put("VarAttrID", temp_obj);} %><select class="variation-attribute form-control"
id="ID_<% {String value = null;try{value=context.getFormattedValue(getObject("VarAttrID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {23}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>_<% {String value = null;try{value=context.getFormattedValue(getObject("ProductBO:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {23}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
aria-required="true" data-validate="required"
name="VariationAttribute_<% {String value = null;try{value=context.getFormattedValue(getObject("VarAttrID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {25}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
data-variation-attribute="<% {String value = null;try{value=context.getFormattedValue(getObject("VariationAttribute:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {26}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% while (loop("VariationInfo:VariationValues(VariationAttribute)","AttributeValue",null)) { %><% {Object temp_obj = (getObject("VariationInfo:VariationProduct(VariationAttribute,AttributeValue)")); getPipelineDictionary().put("VariationProduct", temp_obj);} %><% {Object temp_obj = (""); getPipelineDictionary().put("AttributeValues", temp_obj);} %><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("AttributeValue") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",30,e);}if (_boolean_result) { %><% while (loop("AttributeValue","attrValue",null)) { %><% {Object temp_obj = (context.getFormattedValue(getObject("AttributeValues"),null) + context.getFormattedValue(getObject("attrValue"),null)); getPipelineDictionary().put("AttributeValues", temp_obj);} %><% _boolean_result=false;try {_boolean_result=((Boolean)((hasNext("attrValue") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",33,e);}if (_boolean_result) { %><% {Object temp_obj = (context.getFormattedValue(getObject("AttributeValues"),null) + context.getFormattedValue("|",null)); getPipelineDictionary().put("AttributeValues", temp_obj);} %><% } %><% } %><% } else { %><% {Object temp_obj = (getObject("AttributeValue")); getPipelineDictionary().put("AttributeValues", temp_obj);} %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("VariationProduct"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",39,e);}if (_boolean_result) { %><option value="<% {String value = null;try{value=context.getFormattedValue(getObject("AttributeValues"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {40}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("AttributeValues"),null).equals(context.getFormattedValue(getObject("defaultValues"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",40,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {String value = null;try{value=context.getFormattedValue(getObject("AttributeValues"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {41}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></option><% } else { %><option class = "available_in_different_configuration" value="<% {String value = null;try{value=context.getFormattedValue(getObject("AttributeValues"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {44}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("AttributeValues"),null).equals(context.getFormattedValue(getObject("defaultValues"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",44,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {String value = null;try{value=context.getFormattedValue(getObject("AttributeValues"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {45}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> - <% {out.write(localizeISText("product.available_in_different_configuration","",null,null,null,null,null,null,null,null,null,null,null));} %></option><% } %><% } %></select><% printFooter(out); %>