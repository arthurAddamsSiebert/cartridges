<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %>
<style type="text/css">
	body {margin: 0; padding: 0; min-width: 100%!important; font-family: Arial; font-size: 16px; }
	
	
	table {border-collapse:separate; mso-table-lspace:0pt; mso-table-rspace:0pt;}
	a, a:link, a:visited {text-decoration: underline; color: <%=context.getFormattedValue("#",null)%>1db5b5; } 
	a, a:focus, a:hover, a:active {outline: 0 !important; }
	a:hover {text-decoration: underline;}
	
	h2,h2 a,h2 a:visited,h3,h3 a,h3 a:visited,h4,h5,h6,.t_cht {color:<%=context.getFormattedValue("#",null)%>000 !important}
	.ExternalClass p, .ExternalClass span, .ExternalClass font, .ExternalClass td {line-height: 100%}
	
	
	.ExternalClass {width: 100%;}
	
	
	.ExternalClass .ecxhm { display:none; }
	.ExternalClass .ecxhm2 {display: inline !important; font-size: 11px !important; color:<%=context.getFormattedValue("#",null)%>000000 !important;}
	
	
	<%=context.getFormattedValue("#",null)%>outlook a {padding:0;} /* Force Outlook to provide a "view in browser" menu link. */ 

	
	img {display: block; outline: none; text-decoration: none; -ms-interpolation-mode: bicubic;}
	a img {border: none;} 	
	a, a:focus, a:hover, a:active {outline: 0 !important; }


	
	a {color: <%=context.getFormattedValue("#",null)%>1db5b5; text-decoration: underline;}
	
	p {font-size: 16px;}
	p.header {font-size: 24px; padding-bottom: 15px; font-weight: bold;}
	p.header span.name{color: <%=context.getFormattedValue("#",null)%>999999;}

	.button {text-align: center; font-size: 18px; font-family: Arial; padding: 0 10px;}
	.button a {color: <%=context.getFormattedValue("#",null)%>ffffff; text-decoration: none; text-transform: uppercase;}

	
	.emailContent {width: 100%; max-width: 600px;}
	
	
	.emailHeader {font-family: Arial;}
	.emailHeader .logo {padding: 10px 0;}
	.emailHeader .headerNav {padding: 10px; font-size: 16px; background-color: <%=context.getFormattedValue("#",null)%>eeeeee; width: 100%;}
	
	
	.emailBody{font-family: Arial; line-height: 22px; font-size: 16px; padding: 40px 10px 80px 10px;}		
	.emailBodyElement {padding-bottom: 10px;}
	
	
	.emailFooter {color: <%=context.getFormattedValue("#",null)%>222222; font-size: 13px; font-family: Arial; }  
	.emailFooter a {font-size: 13px;}  
	
	.footerDisclaimer {background: <%=context.getFormattedValue("#",null)%>dddddd; font-family: Arial; font-size: 12px; color: <%=context.getFormattedValue("#",null)%>222222; padding: 10px;}
	.footerAddress	{background: <%=context.getFormattedValue("#",null)%>eeeeee; padding: 10px;}
	.footerAddressItem	{font-family: Arial; font-size: 12px; color: <%=context.getFormattedValue("#",null)%>222222;}
	.footerImprint	{background: <%=context.getFormattedValue("#",null)%>666666; font-family: Arial; font-size: 12px; color: <%=context.getFormattedValue("#",null)%>ffffff; padding: 10px;}
	.footerImprint a {color: <%=context.getFormattedValue("#",null)%>ffffff;}
	
	.productTitle {margin-bottom: 10px;}

	
	table[class=pattern] .mobileTable td td {width: 50%;}	
	
	
	table[class=mobileButtonPattern] {background-color: <%=context.getFormattedValue("#",null)%>1db5b5;}
	
	
	table.emailCostSummary td td {vertical-align: top;}	
	table.emailCartPrice th {background-color: <%=context.getFormattedValue("#",null)%>f9f9f9; padding: 5px; vertical-align: top; font-weight: bold;}
	table.emailCartPrice td {background-color: <%=context.getFormattedValue("#",null)%>f9f9f9; padding: 5px; vertical-align: top;}
	table.emailCartProductDetails td {padding: 10px; vertical-align: top; text-align: left;}
	h2.emailOrderSummary {background-color: <%=context.getFormattedValue("#",null)%>cccccc; padding: 10px;}
	
	td.orderConfirmationShippingInfo {background-color: <%=context.getFormattedValue("#",null)%>e3e3e3;}
	td.orderConfirmationBucketInfo {background-color: <%=context.getFormattedValue("#",null)%>fff;}
	
	.orderConfirmationShippingInfoAddress {font-weight: bold;}
	address {font-style: normal;}
	
	.details-link {display: none;}
	.old-price {color: <%=context.getFormattedValue("#",null)%>8b8b8b; text-decoration: line-through;}
	.total-price {font-weight: bold;}
	.emailPriceColumn {text-align: right;}

	@media only screen and (max-width: 550px), screen and (max-device-width: 550px) {
		.emailHeader .logo img {padding-left: 10px;}
		.emailBody {padding: 10px;}
		
		
		table[class=pattern] .mobileTable {
			display: table-footer-group;
		}
		
		table[class=pattern] .mobileTable td td {
			display: inline-block;
			width: 100%;
			-moz-box-sizing: border-box;
			-webkit-box-sizing: border-box;
			box-sizing: border-box;
		}
		
		
		table[class=mobileButtonPattern] {width: 100%;}
	
		
		table[class=pattern] .mobileTable td table.dataList td:last-child {padding-bottom: 10px;}
	
		
		body[yahoo] .hide {display: none!important;}
		body[yahoo] .buttonwrapper {background-color: transparent!important;}
		body[yahoo] .button {padding: 0px!important; text-transform:uppercase;}
		body[yahoo] .button a {background-color: <%=context.getFormattedValue("#",null)%>1db5b5; padding: 10px 15px !important;}
		
		
		.emailPriceColumn {text-align: center;}
		p.copyLink a {font-size: 6px;}
	}

	@media only screen and (min-device-width: 601px) {
		.emailContent {width: 600px !important;}

		.col380 {width: 380px!important;}
		.col425 {width: 425px!important;}
	}	

</style>

<% {out.flush();processExtensionPoint((com.intershop.beehive.core.capi.request.ServletResponse)response,"MailStyleB2B", null, "131");} %><% printFooter(out); %>