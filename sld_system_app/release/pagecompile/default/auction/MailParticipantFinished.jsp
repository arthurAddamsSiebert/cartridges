<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%%><%@ page session="false"%><%setEncodingType("text/html"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<!-- TemplateComment :  EMail form for outbid-->
<subject><% {out.write(localizeISText("MailParticipantFinished.AuctionHasBeenFinished",null,null,null,null,null,null,null,null,null,null,null,null));} %></subject>

<html>
	<head><% insertIntershopSignature(request,(com.intershop.beehive.core.capi.request.ServletResponse)response); %>
		<style type="text/css">
			.table_detail {
				font-family: Verdana, Geneva, Arial, Helvetica, sans-serif;
				font-size: 11px;
				color: #000000;
				background-color: #FFFFFF;
				padding-right: 4px;
				padding-left: 4px;
				padding-top: 2px;
				padding-bottom: 2px;
				height: 20px;
			}

			.table_header {
				font-family: Verdana, Geneva, Arial, Helvetica, sans-serif;
				font-size: 11px;
				color: #336699;
				font-weight: bold;
				padding-right: 4px;
				padding-left: 4px;
				background-color: #e5e5e5;
				height: 20px;
			}

			.center {
				text-align: center;
			}

			.n {
				border-top: 1px solid #6699cb;
			}

			/* border only east |  */
			.e {
				border-right: 1px solid #6699cb;
			}

			/* border only south _ */
			.s {
				border-bottom: 1px solid #6699cb;
			}

			/* border only west  | */
			.w {
				border-left: 1px solid #6699cb;
			}

			.fielditem2 {
				font-family: Verdana, Geneva, sans-serif;
				font-size: 11px;
				color: #336699;
				font-weight: bold;
				padding: 4px;
				vertical-align: top;
			}

			.table_title {
				font-family: Verdana, Geneva, Arial, Helvetica, sans-serif;
				font-size: 11px;
				color: #FFFFFF;
				font-weight: bold;
				background-color: #6699CB;
				height: 18px;
				padding-left: 4px;
				border-left: 1px solid #6699CB;
				border-right: 1px solid #6699CB;
			}

			.infobox {
				background-color: #E5E5E5;
				border: 1px solid #6699cb;
			}

			.infobox_title {
				font-family: Verdana, Geneva, sans-serif;
				font-size: 12px;
				font-weight: bold;
				padding-left: 4px;
				color: #336699;
			}

			.infobox_subtitle {
				font-family: Verdana, Geneva, sans-serif;
				font-size: 10px;
				font-weight: bold;
				padding-left: 4px;
				color: #336699;
			}

			.infobox_item {
				font-family: Verdana, Geneva, sans-serif;
				font-size: 10px;
				color: #336699;
				padding-right: 2px;
			}

			A.infobox_link {
				font-family: Verdana, Geneva, sans-serif;
				font-size: 11px;
				padding-left: 4px;
				color: #336699;
				text-decoration: underline;
			}

			A.infobox_link:active {
				font-family: Verdana, Geneva, sans-serif;
				font-size: 11px;
				padding-left: 4px;
				color: #6699cb;
				text-decoration: underline;
			}
		</style>
	</head>

	<body bgcolor="#ffffff">
		<table border="0" cellpadding="4" cellspacing="0" width="100%" class="infobox">
			<tr>
				<td class="infobox_title" colspan="2"><% {out.write(localizeISText("MailParticipantFinished.TheAuctionHasBeenFinished.infobox_title","",null,encodeString(context.getFormattedValue(getObject("Auction:DisplayName"),null)),encodeString(context.getFormattedValue(getObject("AuctionOwnerOrganization:DisplayName"),null)),null,null,null,null,null,null,null,null));} %></td>
			</tr>
			<tr>
				<td colspan="2"><a class="infobox_link" href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewLogout-Start",null),context.getFormattedValue("-",null),context.getFormattedValue("PrcSystem",null)))),null)%>"><% {out.write(localizeISText("MailParticipantFinished.ProcurementLogin.link","",null,null,null,null,null,null,null,null,null,null,null));} %></a></td>
			</tr>
		</table>
		<p>
		<table width="100%" border="0" cellspacing="0" cellpadding="0" class="n w e s">
			<tr>
				<td colspan="2" nowrap="nowrap" class="table_title"><% {out.write(localizeISText("MailParticipantFinished.AuctionDetails.table_title","",null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
			</tr>
			<tr>
				<td width="10%" class="fielditem2"><% {out.write(localizeISText("MailParticipantFinished.AuctionName.fielditem2","",null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
				<td width="90%" class="table_detail"><% {String value = null;try{value=context.getFormattedValue(getObject("Auction:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {139}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
			</tr>
			<tr>
				<td nowrap="nowrap" class="fielditem2"><% {out.write(localizeISText("MailParticipantFinished.AuctionDescription.fielditem2","",null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
				<td class="table_detail"><% {String value = null;try{value=context.getFormattedValue(getObject("Auction:ShortDescription"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {143}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
			</tr>
			<tr>
				<td nowrap="nowrap" class="fielditem2"><% {out.write(localizeISText("MailParticipantFinished.StartDate.fielditem2","",null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
				<td class="table_detail"><% {String value = null;try{value=context.getFormattedValue(getObject("Auction:StartTime"),new Integer(DATE_SHORT),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {147}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> <% {String value = null;try{value=context.getFormattedValue(getObject("Auction:StartTime"),new Integer(DATE_TIME),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {147}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
			</tr>
			<tr>
				<td nowrap="nowrap" class="fielditem2"><% {out.write(localizeISText("MailParticipantFinished.EndDate.fielditem2","",null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
				<td class="table_detail"><% {String value = null;try{value=context.getFormattedValue(getObject("Auction:EndTime"),new Integer(DATE_SHORT),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {151}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> <% {String value = null;try{value=context.getFormattedValue(getObject("Auction:EndTime"),new Integer(DATE_TIME),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {151}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
			</tr>
			<tr>
				<td nowrap="nowrap" class="fielditem2"><% {out.write(localizeISText("MailParticipantFinished.AuctionStartPrice.infobox_title","",null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
				<td class="table_detail"><% {String value = null;try{value=context.getFormattedValue(getObject("Auction:StartBid:BidValue"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {155}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
			</tr>
			<tr>
				<td nowrap="nowrap" class="fielditem2"><% {out.write(localizeISText("MailParticipantFinished.CurrentAuctionPrice.fielditem2","",null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
				<td class="table_detail"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Auction:CurrentBid:BidValue"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",159,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("Auction:CurrentBid:BidValue"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {159}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %><% {String value = null;try{value=context.getFormattedValue(getObject("Auction:StartBid:BidValue"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {159}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %>&nbsp;</td>
			</tr>
		</table>
		<p>
		<table width="100%" border="0" cellspacing="0" cellpadding="0">
			<% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("AuctionItems") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",164,e);}if (_boolean_result) { %>
				<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Auction:Definition:TypeCode"),null).equals(context.getFormattedValue("2",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",165,e);}if (_boolean_result) { %>
					<tr>
						
						<td class="table_header w n e s" nowrap="nowrap" width="40%"><% {out.write(localizeISText("MailParticipantFinished.AuctionItem.link","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
						<td class="table_header n e s" nowrap="nowrap" width="60%"><% {out.write(localizeISText("MailParticipantFinished.Description.table_header","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
					</tr>
					<% while (loop("AuctionItems","AuctionItem",null)) { %>
						<tr>
							
							<td class="table_detail w e s"><% {String value = null;try{value=context.getFormattedValue(getObject("AuctionItem:Item:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {178}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
							<td class="table_detail e s"><% {String value = null;try{value=context.getFormattedValue(getObject("AuctionItem:Item:ShortDescription"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {179}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
						</tr>
					<% } %>
				<% } else { %>
					<tr>
						<td class="table_header w n e s center" nowrap="nowrap" width="70"><% {out.write(localizeISText("MailParticipantFinished.Quantity.table_title","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
						<td class="table_header n e s center" nowrap="nowrap" width="70"><% {out.write(localizeISText("MailParticipantFinished.Unit.table_header","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
						<td class="table_header n e s" nowrap="nowrap" width="40%"><% {out.write(localizeISText("MailParticipantFinished.AuctionItem.fielditem2","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
						<td class="table_header n e s" nowrap="nowrap" width="60%"><% {out.write(localizeISText("MailParticipantFinished.Description.table_header1","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
					</tr>
					<% while (loop("AuctionItems","AuctionItem",null)) { %>
						<tr>
							<td class="table_detail w e s center"><% {String value = null;try{value=context.getFormattedValue(getObject("AuctionItem:Quantity"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {191}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
							<td class="table_detail e s center"><% {String value = null;try{value=context.getFormattedValue(getObject("AuctionItem:Quantity:Unit"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {192}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
							<td class="table_detail e s"><% {String value = null;try{value=context.getFormattedValue(getObject("AuctionItem:Item:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {193}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
							<td class="table_detail e s"><% {String value = null;try{value=context.getFormattedValue(getObject("AuctionItem:Item:LongDescription"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {194}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
						</tr>
					<% } %>
				<% } %>
			<% } %>
		</table>
	</body>
</html>
<% printFooter(out); %>