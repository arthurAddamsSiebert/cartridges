<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"modules/Modules", null, "2");} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"modules/captcha/Modules", null, "3");} %><div data-testing-id="cart-page" data-cart-page>
<div class="row">
<div class="cart-header col-xs-12">
<h1 class="pull-left"><span class="cart-header-title"><% {out.write(localizeISText("shopping_cart.heading","",null,null,null,null,null,null,null,null,null,null,null));} %></span>
<span class="cart-header-note">
<span><% {out.write(localizeISText("shopping_cart.transaction.text","",null,null,null,null,null,null,null,null,null,null,null));} %></span>
<a data-dialog class="details-link" href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewContent-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("PageletEntryPointID",null),context.getFormattedValue("systeminclude.dialog.safeAndSecure.pagelet2-Include",null)))),null)%>"><% {out.write(localizeISText("shopping_cart.read_more.link","",null,null,null,null,null,null,null,null,null,null,null));} %></a>
</span>
</h1>
<ul class="share-tools"><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("PDFServiceAvailable")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("PDFServiceAvailable"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",15,e);}if (_boolean_result) { %><% {Object temp_obj = (getObject("CurrentDomain:Configuration:String(\"BasketSave\")")); getPipelineDictionary().put("SaveShoppingCartAsPDF", temp_obj);} %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("SaveShoppingCartAsPDF")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SaveShoppingCartAsPDF"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",17,e);}if (_boolean_result) { %><li>
<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCartPDF-Cart.pdf",null)))),null)%>" title="">
<span class="glyphicon glyphicon-file"></span>
<span class="share-label"><% {out.write(localizeISText("shopping_cart.title.pdf.link","",null,null,null,null,null,null,null,null,null,null,null));} %></span>
</a>
</li><% } %><% } %><% {Object temp_obj = (getObject("CurrentDomain:Configuration:String(\"BasketPrint\")")); getPipelineDictionary().put("PrintShoppingCartPreference", temp_obj);} %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("PrintShoppingCartPreference")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("PrintShoppingCartPreference"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",28,e);}if (_boolean_result) { %><li>
<a href="<%=context.getFormattedValue("#",null)%>" title="<% {out.write(localizeISText("shopping_cart.title.print.link","",null,null,null,null,null,null,null,null,null,null,null));} %>"><span class="glyphicon glyphicon-print"></span>
<span class="share-label"><% {out.write(localizeISText("shopping_cart.title.print.link","",null,null,null,null,null,null,null,null,null,null,null));} %></span>
</a>
</li><% } %><% {Object temp_obj = (getObject("CurrentDomain:Configuration:String(\"BasketEmail\")")); getPipelineDictionary().put("EmailShoppingCartPreference", temp_obj);} %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("EmailShoppingCartPreference")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("EmailShoppingCartPreference"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",37,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) getObject("Dictionary:CurrentCartBO:UserBO:Extension(\"UserBORoleExtension\"):hasRole(\"APP_B2B_OCI_USER\")")).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",39,e);}if (_boolean_result) { %><li><% processOpenTag(response, pageContext, "captchainclude", new TagParameter[] {
new TagParameter("enablepreference","intershop.CaptchaPreferences.EmailShoppingCart")}, 41); %><a data-testing-id="link-cart-as-email" data-dialog href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCartEmail-Start",null)))),null)%>" class="email-shopping-cart" title="<% {out.write(localizeISText("shopping_cart.title.email.link","",null,null,null,null,null,null,null,null,null,null,null));} %>">
<span class="glyphicon glyphicon-send"></span>
<span class="share-label"><% {out.write(localizeISText("shopping_cart.title.email.link","",null,null,null,null,null,null,null,null,null,null,null));} %></span>
</a>
</li><% } %><% } %></ul>
</div>
</div>
<div><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"cart/ShoppingCart", "Dictionary", "54");} %></div>
</div>
<div class="marketing-area"><% processOpenTag(response, pageContext, "slot", new TagParameter[] {
new TagParameter("slot","app_sf_responsive_cm:slot.marketing.content.pagelet2-Slot")}, 59); %></div><% printFooter(out); %>