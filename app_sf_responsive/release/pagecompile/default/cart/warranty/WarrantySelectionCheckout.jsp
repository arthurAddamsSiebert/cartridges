<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%response.setHeader(TemplateConstants.PERSONALIZED_HEADER, "1");setEncodingType("text/html"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"modules/Modules", null, "2");} %><% {Object temp_obj = (getObject("PLI:ProductBO:Extension(\"Warranty\"):WarrantyBOs")); getPipelineDictionary().put("ProductWarranties", temp_obj);} %><% {Object temp_obj = (getObject("PLI:Extension(\"Warranty\")")); getPipelineDictionary().put("PLIWarranty", temp_obj);} %><% {Object temp_obj = (getObject("PLI:ProductBO:Extension(\"Warranty\"):isAnyWarrantyOnline")); getPipelineDictionary().put("WarrantyIsOnline", temp_obj);} %><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("ProductWarranties") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",8,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((((Boolean) ((disableErrorMessages().isDefined(getObject("WarrantyIsOnline"))))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("WarrantyIsOnline"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",9,e);}if (_boolean_result) { %><div class="warranty"><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("CartReadonly"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",11,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((getObject("PLIWarranty:hasWarranty")))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",12,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("PLIWarranty:Warranty:Warranty:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {13}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %><% {out.write(localizeISText("product.warranty.nowarranty","",null,null,null,null,null,null,null,null,null,null,null));} %><% } %><% } else { %><select class="form-control js-warrantySelection" data-testing-id="checkout-pli-warranty-selection" data-form-action-key="update" name="<% {String value = null;try{value=context.getFormattedValue(context.getFormattedValue("DependentSKU_",null) + context.getFormattedValue(getObject("PLI:ID"),null),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {18}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>">
<option value="NoWarranty" <% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (getObject("PLIWarranty:hasWarranty"))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",19,e);}if (_boolean_result) { %>selected="selected" <% } %>><% {out.write(localizeISText("product.warranty.nowarranty","",null,null,null,null,null,null,null,null,null,null,null));} %></option><% while (loop("ProductWarranties","Warranty",null)) { %><option value="<% {String value = null;try{value=context.getFormattedValue(context.getFormattedValue("Warranty_",null) + context.getFormattedValue(getObject("Warranty:ProductRef:ProductSKU"),null),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {23}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("PLIWarranty:hasWarranty"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",24,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue((getObject("PLIWarranty:Warranty:ProductSKU")),null).equals(context.getFormattedValue((getObject("Warranty:ProductRef:ProductSKU")),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",25,e);}if (_boolean_result) { %>selected="selected" <% } %><% } %>><% {String value = null;try{value=context.getFormattedValue(getObject("Warranty:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {26}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></option><% } %></select><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PLIWarranty:Warranty:ProductSKU"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",30,e);}if (_boolean_result) { %><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewWarrantyDetails-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SKU",null),context.getFormattedValue(getObject("PLIWarranty:Warranty:ProductSKU"),null)))),null)%>" data-dialog class="details-link"><% {out.write(localizeISText("checkout.detail.text","",null,null,null,null,null,null,null,null,null,null,null));} %></a><% } %> 
<% } %></div><% } %><% } %><% printFooter(out); %>