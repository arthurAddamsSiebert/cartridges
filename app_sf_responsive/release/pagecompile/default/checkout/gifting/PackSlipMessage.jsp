<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%response.setHeader(TemplateConstants.PERSONALIZED_HEADER, "1");setEncodingType("text/html"); %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("PackSlipMessage_Switch")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("PackSlipMessage_Switch"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && !((Boolean) (getObject("Bucket:SelectedBasketShippingMethodBO:DigitalDelivery"))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",3,e);}if (_boolean_result) { %><% {Object temp_obj = (getObject("PackSlipMessageForm:get(Bucket:ID)")); getPipelineDictionary().put("Subform", temp_obj);} %><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (getObject("Subform:PackSlipTo:ValueMissing"))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",6,e);}if (_boolean_result) { %><% {Object temp_obj = (getObject("Subform:PackSlipTo:Value")); getPipelineDictionary().put("email_to", temp_obj);} %><% } else { %><% processOpenTag(response, pageContext, "getindirectvalue", new TagParameter[] {
new TagParameter("entry","email_to"),
new TagParameter("print","false"),
new TagParameter("key",context.getFormattedValue("PackSlipMessageForm_",null) + context.getFormattedValue(getObject("Bucket:ID"),null) + context.getFormattedValue("_PackSlipTo",null))}, 9); %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("email_to"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",10,e);}if (_boolean_result) { %><% {Object temp_obj = (getObject("Bucket:PackSlipMessage:Message:To")); getPipelineDictionary().put("email_to", temp_obj);} %><% } %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (getObject("Subform:PackSlipFrom:ValueMissing"))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",15,e);}if (_boolean_result) { %><% {Object temp_obj = (getObject("Subform:PackSlipFrom:Value")); getPipelineDictionary().put("email_from", temp_obj);} %><% } else { %><% processOpenTag(response, pageContext, "getindirectvalue", new TagParameter[] {
new TagParameter("entry","email_from"),
new TagParameter("print","false"),
new TagParameter("key",context.getFormattedValue("PackSlipMessageForm_",null) + context.getFormattedValue(getObject("Bucket:ID"),null) + context.getFormattedValue("_PackSlipFrom",null))}, 18); %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("email_from"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",19,e);}if (_boolean_result) { %><% {Object temp_obj = (getObject("Bucket:PackSlipMessage:Message:From")); getPipelineDictionary().put("email_from", temp_obj);} %><% } %> 
<% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (getObject("Subform:PackSlipText:ValueMissing"))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",24,e);}if (_boolean_result) { %><% {Object temp_obj = (getObject("Subform:PackSlipText:Value")); getPipelineDictionary().put("text", temp_obj);} %><% } else { %><% processOpenTag(response, pageContext, "getindirectvalue", new TagParameter[] {
new TagParameter("entry","text"),
new TagParameter("print","false"),
new TagParameter("key",context.getFormattedValue("PackSlipMessageForm_",null) + context.getFormattedValue(getObject("Bucket:ID"),null) + context.getFormattedValue("_PackSlipText",null))}, 27); %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("text"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",28,e);}if (_boolean_result) { %><% {Object temp_obj = (getObject("Bucket:PackSlipMessage:Message:Message")); getPipelineDictionary().put("text", temp_obj);} %><% } %> 
<% } %><div class="packslip-message section">
<div class="checkbox <% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Subform:isInvalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",36,e);}if (_boolean_result) { %>has-error<% {Object temp_obj = ("true"); getPipelineDictionary().put("errorcheck", temp_obj);} %><% } %>">
<label for="PackSlipMessage_<% {String value = null;try{value=context.getFormattedValue(getObject("Bucket:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {37}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"> <input
type="checkbox" data-toggle="collapse"
data-target="<%=context.getFormattedValue("#",null)%>packageslip_<% {String value = null;try{value=context.getFormattedValue(getObject("Bucket:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {39}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
name="packingSlipMessage_<% {String value = null;try{value=context.getFormattedValue(getObject("Bucket:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {40}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
id="PackSlipMessage_<% {String value = null;try{value=context.getFormattedValue(getObject("Bucket:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {41}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" value="true"
<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("email_to")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("email_from")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("text")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",42,e);}if (_boolean_result) { %>
checked = "checked"
<% } %> /><% {out.write(localizeISText("checkout.shipping.packingSlipMessage.checkbox.text","",null,null,null,null,null,null,null,null,null,null,null));} %></label>
</div>
<div class="collapse<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("email_to")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("email_from")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("text")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",50,e);}if (_boolean_result) { %> in<% } %>" id="packageslip_<% {String value = null;try{value=context.getFormattedValue(getObject("Bucket:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {50}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" >
<br /><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Subform:PackSlipTo:isInvalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",54,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Subform:PackSlipTo:isError(\"error.maxlength\")"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",55,e);}if (_boolean_result) { %><div role="alertdialog" class="alert alert-danger col-sm-offset-2"><% {out.write(localizeISText("checkout.shipping.pack_slip.to.error.maxlength","",null,null,null,null,null,null,null,null,null,null,null));} %></div><% } else {_boolean_result=false;try {_boolean_result=((Boolean)(getObject("Subform:PackSlipTo:isError(\"error.profanitycheck\")"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",59,e);}if (_boolean_result) { %><div role="alertdialog" class="alert alert-danger col-sm-offset-2"><% {out.write(localizeISText("checkout.shipping.profanity.error","",null,null,null,null,null,null,null,null,null,null,null));} %></div><% }} %><% } %><div class="form-group<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (getObject("Subform:PackSlipTo:isInvalid"))).booleanValue() && ((Boolean) (getObject("Subform:PackSlipTo:isError(\"error.profanitycheck\")"))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",66,e);}if (_boolean_result) { %> has-error<% } %>">
<label for="PackSlipTo" class="control-label col-sm-2"><% {out.write(localizeISText("checkout.gifting.to","",null,null,null,null,null,null,null,null,null,null,null));} %></label>
<div class="col-sm-10">
<input type="text" maxlength="256" autocomplete="off" id="PackSlipTo"
name="PackSlipMessageForm_<% {String value = null;try{value=context.getFormattedValue(getObject("Bucket:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {72}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>_PackSlipTo"
class="form-control" value="<% {String value = null;try{value=context.getFormattedValue(getObject("email_to"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {73}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" 
/>
</div>
</div><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Subform:PackSlipFrom:isInvalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",79,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Subform:PackSlipFrom:isError(\"error.maxlength\")"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",80,e);}if (_boolean_result) { %><div role="alertdialog" class="alert alert-danger col-sm-offset-2"><% {out.write(localizeISText("checkout.shipping.pack_slip.from.error.maxlength","",null,null,null,null,null,null,null,null,null,null,null));} %></div><% } else {_boolean_result=false;try {_boolean_result=((Boolean)(getObject("Subform:PackSlipFrom:isError(\"error.profanitycheck\")"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",84,e);}if (_boolean_result) { %><div role="alertdialog" class="alert alert-danger col-sm-offset-2"><% {out.write(localizeISText("checkout.shipping.profanity.error","",null,null,null,null,null,null,null,null,null,null,null));} %></div><% }} %><% } %><div class="form-group<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (getObject("Subform:PackSlipFrom:isInvalid"))).booleanValue() && ((Boolean) (getObject("Subform:PackSlipFrom:isError(\"error.profanitycheck\")"))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",91,e);}if (_boolean_result) { %> has-error<% } %>">
<label for="PackSlipFrom" class="control-label col-sm-2"><% {out.write(localizeISText("checkout.gifting.from","",null,null,null,null,null,null,null,null,null,null,null));} %></label>
<div class="col-sm-10">
<input type="text" maxlength="256" autocomplete="off" id="PackSlipFrom"
name="PackSlipMessageForm_<% {String value = null;try{value=context.getFormattedValue(getObject("Bucket:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {97}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>_PackSlipFrom"
class="form-control" value="<% {String value = null;try{value=context.getFormattedValue(getObject("email_from"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {98}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" />
</div>
</div><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Subform:PackSlipText:isInvalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",103,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Subform:PackSlipText:isError(\"error.profanitycheck\")"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",104,e);}if (_boolean_result) { %><div role="alertdialog" class="alert alert-danger col-sm-offset-2"><% {out.write(localizeISText("checkout.shipping.profanity.error","",null,null,null,null,null,null,null,null,null,null,null));} %></div><% } %><% } %><div class="form-group<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (getObject("Subform:PackSlipText:isInvalid"))).booleanValue() && ((Boolean) (getObject("Subform:PackSlipText:isError(\"error.profanitycheck\")"))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",111,e);}if (_boolean_result) { %> has-error<% } %>"> 
<label for="PackSlipText" class="control-label col-sm-2"><% {out.write(localizeISText("checkout.gifting.message","",null,null,null,null,null,null,null,null,null,null,null));} %></label>
<div class="col-sm-10">
<textarea id="PackSlipText"
maxlength="<% {String value = null;try{value=context.getFormattedValue(getObject("PackSlipMessage_Form_MessageLength"),"0",null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {117}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
data-charactercounter="cCounterPackingSlipMessage_<% {String value = null;try{value=context.getFormattedValue(getObject("Bucket:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {118}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
name="PackSlipMessageForm_<% {String value = null;try{value=context.getFormattedValue(getObject("Bucket:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {119}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>_PackSlipText"
class="form-control <% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Subform:PackSlipText:isInvalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",120,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Subform:PackSlipText:isError(\"error.profanitycheck\")"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",120,e);}if (_boolean_result) { %> has-error<% } %><% } %>"
><% {String value = null;try{value=context.getFormattedValue(getObject("text"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {122}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></textarea>
</div>
<div class="col-sm-offset-2 col-sm-10">
<small class="input-help"><% {out.write(localizeISText("checkout.shipping_method.instructions_max_limit.pre.text","",null,null,null,null,null,null,null,null,null,null,null));} %><span id="cCounterPackingSlipMessage_<% {String value = null;try{value=context.getFormattedValue(getObject("Bucket:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {128}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"></span> <% {out.write(localizeISText("checkout.shipping_method.instructions_max_limit.post.text","",null,null,null,null,null,null,null,null,null,null,null));} %></small>
</div>
</div>
</div>
</div><% } %><% printFooter(out); %>