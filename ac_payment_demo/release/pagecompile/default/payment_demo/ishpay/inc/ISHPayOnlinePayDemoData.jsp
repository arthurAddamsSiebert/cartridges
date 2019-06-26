<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><div class="ipay-text-testingPurposes"><% {out.write(localizeISText("ISHPayOnlinePayDemoData.ForTestingPurposesUseThe.ipay","",null,null,null,null,null,null,null,null,null,null,null));} %> 
<a href="<%=context.getFormattedValue("#",null)%>" class="ipay-js-dialogOpener"><% {out.write(localizeISText("ISHPayOnlinePayDemoData.DemoData.link","",null,null,null,null,null,null,null,null,null,null,null));} %></a>
<div class="ui-dialog ui-widget ui-widget-content ui-corner-all">
<div class="ui-dialog-content">
<h3><% {out.write(localizeISText("ISHPayOnlinePayDemoData.ISHOnlinePayDemoData","",null,null,null,null,null,null,null,null,null,null,null));} %></h3>
<p><% {out.write(localizeISText("ISHPayOnlinePayDemoData.PleaseUseOneOfTheFollowingBankAccountsFo","",null,null,null,null,null,null,null,null,null,null,null));} %></p>
<h4><% {out.write(localizeISText("ISHPayOnlinePayDemoData.AccountWithGoodCreditworthiness",null,null,null,null,null,null,null,null,null,null,null,null));} %></h4>
<div class="ipay-field">
<div><span class="ipay-label"><% {out.write(localizeISText("ISHPayOnlinePayDemoData.AccountNumber","",null,null,null,null,null,null,null,null,null,null,null));} %></span><span class="ipay-text-data">100100100</span></div>
<div><span class="ipay-label"><% {out.write(localizeISText("ISHPayOnlinePayDemoData.BankCode","",null,null,null,null,null,null,null,null,null,null,null));} %></span><span class="ipay-text-data">10010010</span></div>
<div><span class="ipay-label"><% {out.write(localizeISText("ISHPayOnlinePayDemoData.PIN","",null,null,null,null,null,null,null,null,null,null,null));} %></span><span class="ipay-text-data">1234</span></div>
<div><span class="ipay-label"><% {out.write(localizeISText("ISHPayOnlinePayDemoData.TAN","",null,null,null,null,null,null,null,null,null,null,null));} %></span><span class="ipay-text-data">1234</span></div>
</div>
<h4><% {out.write(localizeISText("ISHPayOnlinePayDemoData.AccountWithBadCreditworthiness",null,null,null,null,null,null,null,null,null,null,null,null));} %></h4>
<div class="ipay-field">
<div><span class="ipay-label"><% {out.write(localizeISText("ISHPayOnlinePayDemoData.AccountNumber","",null,null,null,null,null,null,null,null,null,null,null));} %></span><span class="ipay-text-data">200200200</span></div>
<div><span class="ipay-label"><% {out.write(localizeISText("ISHPayOnlinePayDemoData.BankCode","",null,null,null,null,null,null,null,null,null,null,null));} %></span><span class="ipay-text-data">20020020</span></div>
<div><span class="ipay-label"><% {out.write(localizeISText("ISHPayOnlinePayDemoData.PIN","",null,null,null,null,null,null,null,null,null,null,null));} %></span><span class="ipay-text-data">1234</span></div>
<div><span class="ipay-label"><% {out.write(localizeISText("ISHPayOnlinePayDemoData.TAN","",null,null,null,null,null,null,null,null,null,null,null));} %></span><span class="ipay-text-data">1234</span></div>
</div>
</div>
</div>.
</div><% printFooter(out); %>