<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%response.setHeader(TemplateConstants.PERSONALIZED_HEADER, "1");setEncodingType("text/html"); %><% {Object temp_obj = (getObject("CurrentCartBO:Extension(\"ShippingBucket\"):MultipleShipToAddresses")); getPipelineDictionary().put("MultipleShipToAddresses", temp_obj);} %><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (getObject("MultipleShipToAddresses"))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",6,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("CurrentCartBO:MultipleShipmentsSupported"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",7,e);}if (_boolean_result) { %><% {Object temp_obj = (getObject("CurrentCartBO:Extension(\"ShippingBucket\")")); getPipelineDictionary().put("OrderShippingBucket", temp_obj);} %><% {Object temp_obj = (getObject("OrderShippingBucket:SoleShipToAddressBO")); getPipelineDictionary().put("CommonShipToAddress", temp_obj);} %><% } else { %><% {Object temp_obj = (getObject("CurrentCartBO:CommonShipToAddressBO")); getPipelineDictionary().put("CommonShipToAddress", temp_obj);} %><% } %><% } %> 
<div class="modal-dialog modal-md" role="document">
<div class="modal-content">
<div class="modal-header">
<button type="button" class="close" data-dismiss="modal" title="<% {out.write(localizeISText("dialog.close.text","",null,null,null,null,null,null,null,null,null,null,null));} %>" aria-label="<% {out.write(localizeISText("dialog.close.text","",null,null,null,null,null,null,null,null,null,null,null));} %>"><span aria-hidden="true">&times;</span></button>
<h2 class="modal-title" id="delAddressConfirmationLabel"><% {out.write(localizeISText("checkout.address.delete.confirmation.heading","",null,null,null,null,null,null,null,null,null,null,null));} %></h2>
</div>
<div class="modal-body">
<p> 
<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("CurrentSession:LoggedIn"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",23,e);}if (_boolean_result) { %><% {out.write(localizeISText("checkout.address.delete.confirmation.loggedin.text","",null,null,null,null,null,null,null,null,null,null,null));} %><% } else { %><% {out.write(localizeISText("checkout.address.delete.confirmation.text","",null,null,null,null,null,null,null,null,null,null,null));} %><% } %></p> 
<small class="help-block"><% {out.write(localizeISText("checkout.address.delete.confirmation.deletionhint","",null,null,null,null,null,null,null,null,null,null,null));} %></small>
</div>
<div class="modal-footer"><% URLPipelineAction action66 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCheckoutAddresses-Dispatch",null)))),null));String site66 = null;String serverGroup66 = null;String actionValue66 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCheckoutAddresses-Dispatch",null)))),null);if (site66 == null){  site66 = action66.getDomain();  if (site66 == null)  {      site66 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup66 == null){  serverGroup66 = action66.getServerGroup();  if (serverGroup66 == null)  {      serverGroup66 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCheckoutAddresses-Dispatch",null)))),null));out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue66, site66, serverGroup66,true)); %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CommonShipToAddress:ID"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",33,e);}if (_boolean_result) { %><input type="hidden" name="AddressID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("CommonShipToAddress:URN"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {34}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" /><% } else { %><input type="hidden" name="AddressID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("AddressID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {36}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" /><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CustomerBO"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",39,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CommonShipToAddress:ID"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",40,e);}if (_boolean_result) { %><% {Object temp_obj = (getObject("CommonShipToAddress:URN")); getPipelineDictionary().put("HashAddressID", temp_obj);} %><% {Object temp_obj = (getObject("CommonShipToAddress")); getPipelineDictionary().put("HashAddressBO", temp_obj);} %><% } else { %><% {Object temp_obj = (getObject("AddressID")); getPipelineDictionary().put("HashAddressID", temp_obj);} %><% } %><% {out.flush();processExtensionPoint((com.intershop.beehive.core.capi.request.ServletResponse)response,"GenerateAddressHash", null, "46");} %><% } %><button type="button" class="btn btn-primary submitDeleteAddress" value="yes" name="delete"><% {out.write(localizeISText("checkout.address.button.delete","",null,null,null,null,null,null,null,null,null,null,null));} %></button>
<button type="button" class="btn btn-default" data-dismiss="modal"><% {out.write(localizeISText("checkout.address.button.cancel","",null,null,null,null,null,null,null,null,null,null,null));} %></button><% out.print("</form>"); %></div>
</div>
</div><% printFooter(out); %>