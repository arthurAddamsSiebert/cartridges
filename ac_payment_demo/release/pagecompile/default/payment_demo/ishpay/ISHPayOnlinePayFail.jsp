<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"modules/common/Modules", null, "2");} %><div class="ipay-onlinePayLogo"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/OnlinePAY_logo.png" width="130" height="17" alt="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ISHPayOnlinePayFail.ISHPAYLogo.alt",null)),null)%>"/></div><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"payment_demo/ishpay/inc/ISHPayOrderAddresses", null, "5");} %><div>
<h3><% {out.write(localizeISText("ISHPayOnlinePayFail.PaymentFailed","",null,null,null,null,null,null,null,null,null,null,null));} %></h3><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("code"),null).equals(context.getFormattedValue("2",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",8,e);}if (_boolean_result) { %><p><% {out.write(localizeISText("ISHPayOnlinePayFail.YourPaymentWithISHOnlinePayCouldNotBeAut","",null,null,null,null,null,null,null,null,null,null,null));} %></p>
<div>
<span class="ipay-label"><% {out.write(localizeISText("ISHPayOnlinePayFail.AccountHolder","",null,null,null,null,null,null,null,null,null,null,null));} %></span><% {String value = null;try{value=context.getFormattedValue(getObject("customer"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {11}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></div>
<div><% processOpenTag(response, pageContext, "garblestring", new TagParameter[] {
new TagParameter("output","truncatedAccountNumber"),
new TagParameter("character","x"),
new TagParameter("length","4"),
new TagParameter("text",getObject("account")),
new TagParameter("direction","begin")}, 14); %><span class="ipay-label"><% {out.write(localizeISText("ISHPayOnlinePayFail.AccountNumber","",null,null,null,null,null,null,null,null,null,null,null));} %></span><% {String value = null;try{value=context.getFormattedValue(getObject("truncatedAccountNumber"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {15}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></div>
<div>
<span class="ipay-label"><% {out.write(localizeISText("ISHPayOnlinePayFail.BankCode","",null,null,null,null,null,null,null,null,null,null,null));} %></span><% {String value = null;try{value=context.getFormattedValue(getObject("bank"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {18}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></div>
<div class="ipay-field">
<span class="ipay-label"><% {out.write(localizeISText("ISHPayOnlinePayFail.BankName.ipay","",null,null,null,null,null,null,null,null,null,null,null));} %></span><% {out.write(localizeISText("ISHPayOnlinePayFail.TestBank.ipay","",null,null,null,null,null,null,null,null,null,null,null));} %></div><% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((context.getFormattedValue(getObject("code"),null).equals(context.getFormattedValue("3",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) ((disableErrorMessages().isDefined(getObject("pin"))))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",23,e);}if (_boolean_result) { %><p><% {out.write(localizeISText("ISHPayOnlinePayFail.YourPaymentWithISHOnlinePayCouldNotBeAut1",null,null,null,null,null,null,null,null,null,null,null,null));} %></p><% } else { %><p><% {out.write(localizeISText("ISHPayOnlinePayFail.FailedYourPaymentWithISHOnlinePayCouldNo",null,null,null,null,null,null,null,null,null,null,null,null));} %></p><% }} %><% URLPipelineAction action6 = new URLPipelineAction(context.getFormattedValue(getObject("failURL"),null));String site6 = null;String serverGroup6 = null;String actionValue6 = context.getFormattedValue(getObject("failURL"),null);if (site6 == null){  site6 = action6.getDomain();  if (site6 == null)  {      site6 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup6 == null){  serverGroup6 = action6.getServerGroup();  if (serverGroup6 == null)  {      serverGroup6 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(getObject("failURL"),null));out.print("\"");out.print(" name=\"");out.print("Form");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue6, site6, serverGroup6,true)); %><button type="submit" name="back"><% {out.write(localizeISText("ISHPayOnlinePayFail.ViewCanceledOrder.button","",null,null,null,null,null,null,null,null,null,null,null));} %></button><% out.print("</form>"); %></div><% printFooter(out); %>