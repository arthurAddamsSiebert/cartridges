<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %>	<!-- errors -->
	<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("UpdateProduct:ProductID:isMissing")).booleanValue() || ((Boolean) getObject("UpdateProduct:ProductName:isMissing")).booleanValue() || ((Boolean) ((((Boolean) getObject("IsUniqueSKU")).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",2,e);}if (_boolean_result) { %>
	<tr>
		<td>
			<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
				<tr valign="top">
					<td class="error_icon top e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
					<td class="error top" width="100%"><b><% {out.write(localizeISText("generalErrorLine.ProductCouldNotBeUpdated.error",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</b><br/>
						<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("UpdateProduct:ProductName:isMissing"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",9,e);}if (_boolean_result) { %><% {out.write(localizeISText("generalErrorLine.ProductNameIsMandatory.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/><% } %>
						<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("UpdateProduct:ProductID:isMissing"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",10,e);}if (_boolean_result) { %><% {out.write(localizeISText("generalErrorLine.ProductIDIsMandatory.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/><% } %>
						<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("IsUniqueSKU")).booleanValue() ? Boolean.FALSE : Boolean.TRUE) ))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",11,e);}if (_boolean_result) { %><% {out.write(localizeISText("generalErrorLine.ProductIDIsNotUnique.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/><% } %>
					</td>
				</tr>
			</table>
		</td>
	</tr>
	<% } %>
	<!-- end errors-->
	
	
	<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("RunningAuctionCounter")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("Product:RunningAuctions")))).booleanValue() && ((Boolean) ((( ((Number) getObject("Product:RunningAuctions")).doubleValue() >((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",21,e);}if (_boolean_result) { %>
	<tr>
		<td>
			<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
				<tr valign="top">
					<td class="error_icon top e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
					<td class="error top" width="100%">
					<% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("Product:RunningAuctions")).doubleValue() ==((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",28,e);}if (_boolean_result) { %>
						<b><% {out.write(localizeISText("generalErrorLine.WarningThisProductIsCurrentlyPartOfAnAuction.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></b><br/>
					<% } else { %>
						<b><% {out.write(localizeISText("generalErrorLine.WarningThisProductIsCurrentlyPartOfXAuctions.error",null,null,context.getFormattedValue(getObject("Product:RunningAuctions"),null),null,null,null,null,null,null,null,null,null));} %></b><br/>
					<% } %>
					<% {out.write(localizeISText("generalErrorLine.PleaseContactYourAuctionManagerBeforeEditing.error",null,null,null,null,null,null,null,null,null,null,null,null));} %>
					</td>
				</tr>
			</table>
		</td>
	</tr>
	<% } %>
	
<% printFooter(out); %>