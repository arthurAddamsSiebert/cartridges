<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ProductBO:AttributeValue(VariationAttribute:Name)"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",3,e);}if (_boolean_result) { %><% {Object temp_obj = (getObject("ProductBO:AttributeValue(VariationAttribute:Name):Object")); getPipelineDictionary().put("defaultValue", temp_obj);} %><% } else { %><% {Object temp_obj = (""); getPipelineDictionary().put("defaultValue", temp_obj);} %><% } %><% {Object temp_obj = (""); getPipelineDictionary().put("defaultValues", temp_obj);} %><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("defaultValue") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",10,e);}if (_boolean_result) { %><% while (loop("defaultValue","defValue",null)) { %><% {Object temp_obj = (context.getFormattedValue(getObject("defaultValues"),null) + context.getFormattedValue(getObject("defValue"),null)); getPipelineDictionary().put("defaultValues", temp_obj);} %><% _boolean_result=false;try {_boolean_result=((Boolean)((hasNext("defValue") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",13,e);}if (_boolean_result) { %><% {Object temp_obj = (context.getFormattedValue(getObject("defaultValues"),null) + context.getFormattedValue("|",null)); getPipelineDictionary().put("defaultValues", temp_obj);} %><% } %><% } %><% } else { %><% {Object temp_obj = (getObject("defaultValue")); getPipelineDictionary().put("defaultValues", temp_obj);} %><% } %><ul class="variation-attribute imageVariationList
<% _boolean_result=false;try {_boolean_result=((Boolean)((((((Boolean) ((((context.getFormattedValue(getObject("VariationAttribute:PresentationOption"),null).equals(context.getFormattedValue("swatchImage",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("VariationAttribute:PresentationOption"),null).equals(context.getFormattedValue("defaultAndSwatchImage",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",20,e);}if (_boolean_result) { %>swatchImage<% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((((((Boolean) ((((context.getFormattedValue(getObject("VariationAttribute:PresentationOption"),null).equals(context.getFormattedValue("colorCode",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("VariationAttribute:PresentationOption"),null).equals(context.getFormattedValue("defaultAndColorCode",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",21,e);}if (_boolean_result) { %>colorCode<% } %>"
data-attribute-uuid="<% {String value = null;try{value=context.getFormattedValue(getObject("VariationAttribute:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {22}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
><% while (loop("VariationInfo:VariationValues(VariationAttribute)","VariationValue",null)) { %><% while (loop("VariationInfo:VariationProductBOs","Variation",null)) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Variation:Attribute(VariationAttribute:Name)"),null).equals(context.getFormattedValue(getObject("VariationValue"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",28,e);}if (_boolean_result) { %><% {Object temp_obj = (getObject("Variation")); getPipelineDictionary().put("VariationProduct", temp_obj);} %><% } %><% } %><% {Object temp_obj = (""); getPipelineDictionary().put("VariationValues", temp_obj);} %><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("VariationValue") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",35,e);}if (_boolean_result) { %><% while (loop("VariationValue","attrValue",null)) { %><% {Object temp_obj = (context.getFormattedValue(getObject("VariationValues"),null) + context.getFormattedValue(getObject("attrValue"),null)); getPipelineDictionary().put("VariationValues", temp_obj);} %><% _boolean_result=false;try {_boolean_result=((Boolean)((hasNext("attrValue") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",38,e);}if (_boolean_result) { %><% {Object temp_obj = (context.getFormattedValue(getObject("VariationValues"),null) + context.getFormattedValue("|",null)); getPipelineDictionary().put("VariationValues", temp_obj);} %><% } %><% } %><% } else { %><% {Object temp_obj = (getObject("VariationValue")); getPipelineDictionary().put("VariationValues", temp_obj);} %><% } %><li class="imageVariationListItem" ><% {Object temp_obj = (getObject("VariationInfo:VariationProduct(VariationAttribute,VariationValues)")); getPipelineDictionary().put("VariationProductSameConfiguration", temp_obj);} %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("VariationProduct"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",47,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) ((disableErrorMessages().isDefined(getObject("VariationProductSameConfiguration"))))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",48,e);}if (_boolean_result) { %><a data-variation-product-attribute="<% {String value = null;try{value=context.getFormattedValue(getObject("VariationValue"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {49}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" data-variation-attribute="<% {String value = null;try{value=context.getFormattedValue(getObject("VariationAttribute:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {49}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="<% _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("defaultValues"),null).equals(context.getFormattedValue(getObject("VariationValues"),null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",49,e);}if (_boolean_result) { %>selected<% } %>" href="javascript:void(false)" style="opacity: 0.3;" title="<% {out.write(localizeISText("product.available_in_different_configuration","",null,null,null,null,null,null,null,null,null,null,null));} %>"><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("VariationAttribute:DisplayName")))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("VariationAttribute:DisplayName"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",50,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((context.getFormattedValue(getObject("VariationAttribute:PresentationOption"),null).equals(context.getFormattedValue("colorCode",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("VariationAttribute:PresentationOption"),null).equals(context.getFormattedValue("defaultAndColorCode",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",51,e);}if (_boolean_result) { %><span style="background-color:<%=context.getFormattedValue("#",null)%><% {String value = null;try{value=context.getFormattedValue(getObject("VariationProduct:AttributeValue(VariationAttribute:PresentationProductAttributeName):StringValue"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {52}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("VariationProduct")))).booleanValue() && !((Boolean) (getObject("VariationProduct:Available"))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",52,e);}if (_boolean_result) { %>title="<% {out.write(localizeISText("product.variation.not_available.text","",null,null,null,null,null,null,null,null,null,null,null));} %>"<% } %>>&nbsp;</span><% } else { %><img src="<%=context.getFormattedValue(contentURL(context.getFormattedValue(getObject("VariationProduct:AttributeValue(VariationAttribute:PresentationProductAttributeName):StringValue"),null)),null)%>" alt="<% {String value = null;try{value=context.getFormattedValue(getObject("VariationValues"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {54}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("VariationProduct")))).booleanValue() && !((Boolean) (getObject("VariationProduct:Available"))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",54,e);}if (_boolean_result) { %>title="<% {out.write(localizeISText("product.variation.not_available.text","",null,null,null,null,null,null,null,null,null,null,null));} %>"<% } %>/><% } %><% } else { %><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/img/not_available.png" alt="<% {String value = null;try{value=context.getFormattedValue(getObject("VariationValues"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {57}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("VariationProduct")))).booleanValue() && !((Boolean) (getObject("VariationProduct:Available"))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",57,e);}if (_boolean_result) { %>title="<% {out.write(localizeISText("product.variation.not_available.text","",null,null,null,null,null,null,null,null,null,null,null));} %>"<% } %>/><% } %></a><% } else { %><a data-variation-product-attribute="<% {String value = null;try{value=context.getFormattedValue(getObject("VariationValue"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {61}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" data-variation-attribute="<% {String value = null;try{value=context.getFormattedValue(getObject("VariationAttribute:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {61}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="<% _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("defaultValues"),null).equals(context.getFormattedValue(getObject("VariationValues"),null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",61,e);}if (_boolean_result) { %>selected<% } %>" href="javascript:void(false)"><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("VariationAttribute:DisplayName")))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("VariationAttribute:DisplayName"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",62,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((context.getFormattedValue(getObject("VariationAttribute:PresentationOption"),null).equals(context.getFormattedValue("colorCode",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("VariationAttribute:PresentationOption"),null).equals(context.getFormattedValue("defaultAndColorCode",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",63,e);}if (_boolean_result) { %><span style="background-color:<%=context.getFormattedValue("#",null)%><% {String value = null;try{value=context.getFormattedValue(getObject("VariationProduct:AttributeValue(VariationAttribute:PresentationProductAttributeName):StringValue"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {64}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("VariationProduct")))).booleanValue() && !((Boolean) (getObject("VariationProduct:Available"))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",64,e);}if (_boolean_result) { %>title="<% {out.write(localizeISText("product.variation.not_available.text","",null,null,null,null,null,null,null,null,null,null,null));} %>"<% } %>>&nbsp;</span><% } else { %><img src="<%=context.getFormattedValue(contentURL(context.getFormattedValue(getObject("VariationProduct:AttributeValue(VariationAttribute:PresentationProductAttributeName):StringValue"),null)),null)%>" alt="<% {String value = null;try{value=context.getFormattedValue(getObject("VariationValues"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {66}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("VariationProduct")))).booleanValue() && !((Boolean) (getObject("VariationProduct:Available"))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",66,e);}if (_boolean_result) { %>title="<% {out.write(localizeISText("product.variation.not_available.text","",null,null,null,null,null,null,null,null,null,null,null));} %>"<% } %>/><% } %><% } else { %><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/img/not_available.png" alt="<% {String value = null;try{value=context.getFormattedValue(getObject("VariationValues"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {69}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("VariationProduct")))).booleanValue() && !((Boolean) (getObject("VariationProduct:Available"))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",69,e);}if (_boolean_result) { %>title="<% {out.write(localizeISText("product.variation.not_available.text","",null,null,null,null,null,null,null,null,null,null,null));} %>"<% } %>/><% } %></a><% } %><% } %></li><% } %></ul><% printFooter(out); %>