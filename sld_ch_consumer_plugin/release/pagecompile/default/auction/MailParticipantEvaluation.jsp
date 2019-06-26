<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><!DOCTYPE HTML PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<!-- TemplateComment :  EMail form for notifying participantss for a new auction-->

<% %><%@ page contentType="text/html;charset=utf-8" %><%%><%@ page session="false"%><%setEncodingType("text/html"); %>

<subject><% {out.write(localizeISText("sld_ch_consumer_plugin.AuctionEvaluation",null,null,null,null,null,null,null,null,null,null,null,null));} %></subject>

<html>
<head><% insertIntershopSignature(request,(com.intershop.beehive.core.capi.request.ServletResponse)response); %>

<style type="text/css">

.infobox_title {
	font-family: Verdana, Geneva, sans-serif;
	font-size: 14px;
	font-weight: bold;
	padding-left: 8px;
	 color: #cc0000;
}

.infobox_subtitle {
	font-family: Verdana, Geneva, sans-serif;
	font-size: 11px;
	font-weight: bold;
	padding-left: 8px;
	color: black;
}

.infobox_item {
	font-family: Verdana, Geneva, sans-serif;
	font-weight:regular;
	font-size: 11px;
	color:black;
	padding-left: 8px;
}

.bids {
	font-family: Verdana, Geneva, sans-serif;
	font-weight:bold;
	font-size: 11px;
	color: #cc0000;
	padding-left: 8px;
}

A.infobox_link {
	font-family: Verdana, Geneva, sans-serif;
	font-size: 11px;
	padding-left: 8px;
	color: black;
	text-decoration: underline;
}

.table_title {
	font-family: Verdana, Geneva, sans-serif;
	font-size: 11px;
	color: #cc0000;
	font-weight: bold;
	/*background-color: #6699CB;*/
	height: 18px;
	padding-left: 4px;
}

.table_header {
	font-family: Verdana, Geneva, sans-serif;
	font-size: 10px;
	font-weight: bold;
	color: #cc0000;
	background-color: #FFE7A5;
	padding-left: 8px;
	padding-right: 8px;
	padding-top: 4px;
	padding-bottom: 4px;
}

.table_detail	{
	font-family: Verdana;
	vertical-align: top;
	font-size: 11px;
	color: #000000;
	padding-left: 8px;
	padding-right: 8px;
	padding-top: 4px;
	padding-bottom: 4px;
}

.table_detail2	{
	font-family: Verdana, Geneva, sans-serif;
	vertical-align: top;
	font-size: 11px;
	font-weight:bold;
	color: black;
	padding-left: 8px;
	padding-right: 8px;
	padding-top: 4px;
	padding-bottom: 4px;
}

.center {
	text-align: center;
}

.bg {
	background-color : #FFF6DD;
}

.n {
	border-top: 1px solid #FCBC54;
}

/* border only east |  */
.e {
	border-right: 1px solid #FCBC54;
}

/* border only south _ */
.s {
	border-bottom: 1px solid #FCBC54;
}

/* border only west  | */
.w {
	border-left: 1px solid #FCBC54;
}

</style>


</head>

<body bgcolor="#ffffff">

<table border="0" cellpadding="4" cellspacing="0" width="100%" class="infobox">
	<tr>
		<td colspan="2" class="infobox_title"><% {out.write(localizeISText("sld_ch_consumer_plugin.TheAuction0WasEvaluated.infobox_title",null,null,encodeString(context.getFormattedValue(getObject("Auction:DisplayName"),null)),null,null,null,null,null,null,null,null,null));} %></td>
	</tr>
	<tr>
		<td class="infobox_subtitle" colspan="2"><% {String value = null;try{value=context.getFormattedValue(getObject("res_msg"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {139}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
	</tr>
</table>
<p>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="n w e s">
	<tr>
		<td colspan="2" nowrap class="table_title"><% {out.write(localizeISText("MailParticipantEvaluation.AuctionDetails.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
	</tr>
	<tr>
		<td width="10%" class="table_detail2"><% {out.write(localizeISText("sld_ch_consumer_plugin.AuctionName.table_detail2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
		<td width="90%" class="table_detail"><% {String value = null;try{value=context.getFormattedValue(getObject("Auction:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {149}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
	</tr>
	<tr>
		<td nowrap class="table_detail2"><% {out.write(localizeISText("sld_ch_consumer_plugin.AuctionDescription.table_detail2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
		<td class="table_detail"><% {String value = null;try{value=context.getFormattedValue(getObject("Auction:ShortDescription"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {153}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
	</tr>
	<tr>
		<td nowrap class="table_detail2"><% {out.write(localizeISText("sld_ch_consumer_plugin.StartDate.table_detail2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
		<td class="table_detail"><% {String value = null;try{value=context.getFormattedValue(getObject("Auction:StartTime"),new Integer(DATE_SHORT),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {157}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> <% {String value = null;try{value=context.getFormattedValue(getObject("Auction:StartTime"),new Integer(DATE_TIME),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {157}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
	</tr>
	<tr>
		<td nowrap class="table_detail2"><% {out.write(localizeISText("sld_ch_consumer_plugin.EndDate.table_detail2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
		<td class="table_detail"><% {String value = null;try{value=context.getFormattedValue(getObject("Auction:EndTime"),new Integer(DATE_SHORT),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {161}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> <% {String value = null;try{value=context.getFormattedValue(getObject("Auction:EndTime"),new Integer(DATE_TIME),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {161}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
	</tr>
	<tr>
		<td nowrap class="table_detail2"><% {out.write(localizeISText("sld_ch_consumer_plugin.AuctionStartPrice.table_detail2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
		<td class="table_detail"><% {String value = null;try{value=context.getFormattedValue(getObject("Auction:StartBid:BidValue"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {165}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
	</tr>
</table>
<p>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
	<% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("AuctionItems") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",170,e);}if (_boolean_result) { %>
		<tr>
			<td class="table_header w n e s center" nowrap width="70"><% {out.write(localizeISText("sld_ch_consumer_plugin.QUANTITY.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
			<td class="table_header n e s center" nowrap width="70"><% {out.write(localizeISText("sld_ch_consumer_plugin.UNIT.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
			<td class="table_header n e s" nowrap width="40%"><% {out.write(localizeISText("sld_ch_consumer_plugin.AUCTIONITEM.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
			<td class="table_header n e s" nowrap width="60%"><% {out.write(localizeISText("sld_ch_consumer_plugin.DESCRIPTION.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
		</tr>
		<% while (loop("AuctionItems","AuctionItem",null)) { %>
		<tr>
			<td class="table_detail w e s center"><% {String value = null;try{value=context.getFormattedValue(getObject("AuctionItem:Quantity"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {179}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
			<td class="table_detail e s center"><% {String value = null;try{value=context.getFormattedValue(getObject("AuctionItem:Quantity:Unit"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {180}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
			<td class="table_detail e s"><% {String value = null;try{value=context.getFormattedValue(getObject("AuctionItem:Item:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {181}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
			<td class="table_detail e s"><% {String value = null;try{value=context.getFormattedValue(getObject("AuctionItem:Item:LongDescription"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {182}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
		</tr>		
		<% } %>	
	<% } %>
</table>

</body>
</html><% printFooter(out); %>