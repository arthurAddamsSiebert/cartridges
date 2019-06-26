<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><style>
	.tooltip {
		display:none;
		position:absolute;
		border:1px solid #333;
		background-color:#161616;
		border-radius:5px;
		padding:10px;
		color:#fff;
		font-size:12px Arial;
	}
</style>
<script type="text/javascript">
	$(document).ready(function() {
		// Tooltip only Text
		$('.masterTooltip').hover(function(){
		        // Hover over code
		        var title = $(this).attr('title');
		        $(this).data('tipText', title).removeAttr('title');
		        $('<p class="tooltip"></p>')
		        .text(title)
		        .appendTo('body')
		        .fadeIn('slow');
		}, function() {
		        // Hover out code
		        $(this).attr('title', $(this).data('tipText'));
		        $('.tooltip').remove();
		}).mousemove(function(e) {
		        var mousex = e.pageX + 20; //Get X coordinates
		        var mousey = e.pageY + 10; //Get Y coordinates
		        $('.tooltip')
		        .css({ top: mousey, left: mousex })
		});
	});
</script>



<table border="0" cellpadding="0" cellspacing="0" width="100%" class="w e">
	<% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"contract/SalesTargetPriceListValidation", null, "40");} %>	
		
	<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("AddSalesTargetToContractForm:Submitted")).booleanValue() && ((Boolean) getObject("AddSalesTargetToContractForm:Invalid")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",42,e);}if (_boolean_result) { %>
		<tr>
			<td colspan="9">
				<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box s">
					<tbody>
						<tr>
							<td class="error_icon e top" width="1%">
								<img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/>
							</td>
							<td class="error top">
								<% {out.write(localizeISText("contract.form.edit.message.general","",null,null,null,null,null,null,null,null,null,null,null));} %>
								<% while (loop("AddSalesTargetToContractForm:InvalidParameters","InvalidParameter",null)) { %>
									<br/>
									<% while (loop("InvalidParameter:Errors","Error",null)) { %>
										<% {out.write(localizeISText(context.getFormattedValue(context.getFormattedValue("contract.configuration.addsalestarget.form.fields.",null) + context.getFormattedValue(getObject("InvalidParameter:ID"),null) + context.getFormattedValue(".",null) + context.getFormattedValue(getObject("Error"),null),null),"",null,null,null,null,null,null,null,null,null,null,null));} %>
									<% } %>
								<% } %>
							</td>
						</tr>
					</tbody>
				</table>
			</td>
		</tr>
	<% } %>
	
</table>

<table border="0" cellpadding="0" cellspacing="0" width="100%" class="w e">
	<tr>
		<td class="table_title_description s" colspan="9">
			<% {out.write(localizeISText("contract.configuration.description",null,null,"star",null,null,null,null,null,null,null,null,null));} %><br /><br/>
			<% {out.write(localizeISText("customer.FieldsWithARedAsteriskAreMandatory.table_title_description",null,null,"star",null,null,null,null,null,null,null,null,null));} %>
		</td>
	</tr>
</table>

<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (hasLoopElements("PriceLists") ? Boolean.TRUE : Boolean.FALSE)).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",78,e);}if (_boolean_result) { %>
	<table border="0" cellpadding="0" cellspacing="0" width="100%" class="w e">
		<tr>
			<td>
				<table border="0" cellspacing="0" cellpadding="0" width="100%">
						<tr>
							<td class="table_detail s" colspan="2">
								<% {out.write(localizeISText("contract.configuration.pricelists.notdefined.message","",null,null,null,null,null,null,null,null,null,null,null));} %>
							</td>
						</tr>
				</table>
			</td>
		</tr>
	</table>
<% } else { %>

	<% URLPipelineAction action9 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewContractConfiguration-Dispatch",null)))),null));String site9 = null;String serverGroup9 = null;String actionValue9 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewContractConfiguration-Dispatch",null)))),null);if (site9 == null){  site9 = action9.getDomain();  if (site9 == null)  {      site9 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup9 == null){  serverGroup9 = action9.getServerGroup();  if (serverGroup9 == null)  {      serverGroup9 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewContractConfiguration-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("AddSalesTargetToContract");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue9, site9, serverGroup9,true)); %>
		<input type="hidden" name="ContractID" value="<%=context.getFormattedValue(getObject("Contract:ID"),null)%>" />
		<input type="hidden" name="LocaleId" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Locale:LocaleID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {96}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
		
		<table border="0" cellpadding="0" cellspacing="0" width="100%" class="w e">
			
			<input type="hidden" name="AddSalesTargetToContract_Name" 
				<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("AddSalesTargetToContractForm:isSubmitted"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",101,e);}if (_boolean_result) { %>
					value="<% {String value = null;try{value=context.getFormattedValue(getObject("AddSalesTargetToContractForm:Name:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {102}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
				<% } else { %>
					value="<% {String value = null;try{value=context.getFormattedValue(getObject("Contract:Name(Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {104}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>-SalesTarget"
				<% } %>	/>
			 
			<input type="hidden" name="AddSalesTargetToContract_Comment" 
				<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("AddSalesTargetToContractForm:isSubmitted"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",108,e);}if (_boolean_result) { %>
					value="<% {String value = null;try{value=context.getFormattedValue(getObject("AddSalesTargetToContractForm:Comment:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {109}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
				<% } else { %>
					value="<% {String value = null;try{value=context.getFormattedValue(getObject("Contract:Description(Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {111}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>-SalesTarget"
				<% } %>	/>
			<tr><td colspan="2"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="4" alt="" border="0"/></td></tr>
			 
			<tr>
				<td nowrap="nowrap" class="label"><label class="label<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("AddSalesTargetToContractForm:Revenue:Invalid"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",116,e);}if (_boolean_result) { %> label_error<% } %>" for="AddSalesTargetToContract_Revenue">
					<% {out.write(localizeISText("contract.form.targetrevenue.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></label>
				</td>
				<td nowrap="nowrap" class="table_detail">
					<input type="text" name="AddSalesTargetToContract_Revenue" id="AddSalesTargetToContract_Revenue" class="inputfield_en" size="30"
						<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("AddSalesTargetToContractForm:isSubmitted"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",121,e);}if (_boolean_result) { %>
							value="<% {String value = null;try{value=context.getFormattedValue(getObject("AddSalesTargetToContractForm:Revenue:Value"),"#,##0.00",null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {122}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
						<% } else { %>
							value="<% {String value = null;try{value=context.getFormattedValue(getObject("Contract:SalesTarget:TargetAmount"),"#,##0.00",null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {124}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
						<% } %>	/>
					<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Contract:SalesTarget"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",126,e);}if (_boolean_result) { %>
						<% {Object temp_obj = (getObject("Contract:SalesTarget:Target:CurrencyMnemonic")); getPipelineDictionary().put("RevenueUnit", temp_obj);} %>
						
					<% } else {_boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Locale"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",129,e);}if (_boolean_result) { %> 
						<% {Object temp_obj = (getObject("Locale:CurrencyCode")); getPipelineDictionary().put("RevenueUnit", temp_obj);} %> 
					<% } else { %> 
						
						<% {Object temp_obj = (getObject("CurrentRequest:Locale:CurrencyCode")); getPipelineDictionary().put("RevenueUnit", temp_obj);} %>
					<% }} %>
					<input type="hidden" name="AddSalesTargetToContract_RevenueUnit" value="<% {String value = null;try{value=context.getFormattedValue(getObject("RevenueUnit"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {135}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
					<% {String value = null;try{value=context.getFormattedValue(getObject("RevenueUnit"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {136}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>
				</td>
			</tr>
			  
			<tr>
				<td nowrap="nowrap" class="label"><label class="label" for="AddSalesTargetToContract_PriceList">
					<% {out.write(localizeISText("contract.form.pricelist.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></label>
				</td>
				<td class="table_detail" nowrap="nowrap">
					<select name="AddSalesTargetToContract_PriceListID" id="AddSalesTargetToContract_PriceListID" class="select inputfield_en" size="1">
						<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("Contract:SalesTarget")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("Contract:SalesTarget:PriceListBO")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",146,e);}if (_boolean_result) { %>
							<option value="">Please select</option>											
						<% } %>
						<% while (loop("PriceLists","PriceListsItem",null)) { %>
							<option value="<% {String value = null;try{value=context.getFormattedValue(getObject("PriceListsItem:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {150}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="masterTooltip" title="<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((Boolean) (disableErrorMessages().isDefined(getObject("PriceListsItem:getDescription(CurrentSession:Locale)")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("PriceListsItem:getDescription(CurrentSession:Locale)"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",150,e);}if (_boolean_result) { %><% {out.write(localizeISText("contract.configuration.tooltip.nodescriptionavailable","",null,null,null,null,null,null,null,null,null,null,null));} %><% } else { %><% {String value = null;try{value=context.getFormattedValue(getObject("PriceListsItem:getDescription(CurrentSession:Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {150}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %>"
								<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("AddSalesTargetToContractForm")))).booleanValue() && ((Boolean) getObject("AddSalesTargetToContractForm:isSubmitted")).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("PriceListsItem:UUID"),null).equals(context.getFormattedValue(getObject("AddSalesTargetToContractForm:PriceListID:Value"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) (((!((Boolean) (disableErrorMessages().isDefined(getObject("AddSalesTargetToContractForm")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("Contract:SalesTarget")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("PriceListsItem:UUID"),null).equals(context.getFormattedValue(getObject("Contract:SalesTarget:PriceListBO:Extension(\"PersistentObjectBOExtension\"):PersistentObject:UUID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",151,e);}if (_boolean_result) { %> selected="selected"<% } %>
							><% {String value = null;try{value=context.getFormattedValue(getObject("PriceListsItem:getDisplayName(CurrentSession:Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {154}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></option>
						<% } %>
					</select>
				</td>
				<td width="100%" colspan="3">&nbsp;</td>
			</tr>
			<tr><td colspan="2"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="4" alt="" border="0"/></td></tr>
		</table>
	
		<table border="0" cellspacing="0" cellpadding="0" width="100%" class="w e n">
			<tbody>
				<tr>
					<td class="s" colspan="2" align="right">
						<table border="0" cellspacing="4" cellpadding="0">
							<tr>
								<td class="button">
									<input type="submit" name="apply" value="<% {out.write(localizeISText("contract.form.new.buttons.create","",null,null,null,null,null,null,null,null,null,null,null));} %>" class="button"/>
								</td>
							</tr>
						</table>
					</td>
				</tr>
			</tbody>
		</table>
	<% out.print("</form>"); %>
<% } %>
<% printFooter(out); %>