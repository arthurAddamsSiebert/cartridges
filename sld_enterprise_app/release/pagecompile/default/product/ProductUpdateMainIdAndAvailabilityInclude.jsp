<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannel"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",1,e);}if (_boolean_result) { %>
	<% {Object temp_obj = (getObject("CurrentChannelPermissionMap")); getPipelineDictionary().put("PermissionMap", temp_obj);} %>
<% } else { %>
	<% {Object temp_obj = (getObject("CurrentUserPermissionMap")); getPipelineDictionary().put("PermissionMap", temp_obj);} %>
<% } %>

<tr>
	<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("PermissionMap:SLD_MANAGE_PRODUCTS")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",8,e);}if (_boolean_result) { %>
		<td nowrap="nowrap" class="label">
			<label class="label" for="UpdateProduct_ProductID"><% {out.write(localizeISText("sld_enterprise_app.ID.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label>
		</td>
	<% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("UpdateProduct:ProductID:isMissing")).booleanValue() || ((Boolean) ((((Boolean) getObject("IsUniqueSKU")).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",12,e);}if (_boolean_result) { %>
		<td class="label" nowrap="nowrap">
			<label class="label label_error" for="UpdateProduct_ProductID"><% {out.write(localizeISText("sld_enterprise_app.ID.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></label>
		</td>
	<% } else { %>
		<td nowrap="nowrap">
			<label class="label" for="UpdateProduct_ProductID"><% {out.write(localizeISText("sld_enterprise_app.ID.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></label>
		</td>
	<% }} %>
	<td class="table_detail" width="100%">
		<table cellpadding="0" cellspacing="0" border="0">
			<tr>
				<td><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("UpdateProduct:isSubmitted"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",24,e);}if (_boolean_result) { %>
				<input type="text" name="UpdateProduct_ProductID" id="UpdateProduct_ProductID" maxlength="256" size="70" value="<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("IsUniqueSKU")).booleanValue() ? Boolean.FALSE : Boolean.TRUE) ))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",25,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("UpdateProduct_ProductID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {25}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %><% {String value = null;try{value=context.getFormattedValue(getObject("UpdateProduct:ProductID:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {25}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %>" class="inputfield_en"/>
					<% } else { %>
					<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PermissionMap:SLD_MANAGE_PRODUCTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",27,e);}if (_boolean_result) { %>
						<input type="text" name="UpdateProduct_ProductID" id="UpdateProduct_ProductID" maxlength="256" size="70" value="<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("IsUniqueSKU")).booleanValue() ? Boolean.FALSE : Boolean.TRUE) ))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",28,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("UpdateProduct_ProductID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {28}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %><% {String value = null;try{value=context.getFormattedValue(getObject("Product:SKU"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {28}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %>" class="inputfield_en"/>
					<% } else { %>
						<input type="text" name="UpdateProduct_ProductID" id="UpdateProduct_ProductID" maxlength="256" size="70" value="<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("IsUniqueSKU")).booleanValue() ? Boolean.FALSE : Boolean.TRUE) ))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",30,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("UpdateProduct_ProductID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {30}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %><% {String value = null;try{value=context.getFormattedValue(getObject("Product:SKU"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {30}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %>" class="inputfield_en" disabled="disabled"/>
					<% } %>
					<% } %>
				</td>
				<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("UpdateProduct:isSubmitted")).booleanValue() && ((Boolean) (((((Boolean) ((((context.getFormattedValue(getObject("UpdateProduct_ProductID"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("UpdateProduct_ProductName"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",34,e);}if (_boolean_result) { %>
					<td class="input_checkbox">
						<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("UpdateProduct:ProductOnlineStatus:Value"),null).equals(context.getFormattedValue("online",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",36,e);}if (_boolean_result) { %>
							<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PermissionMap:SLD_MANAGE_PRODUCTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",37,e);}if (_boolean_result) { %>
								<input type="checkbox" name="UpdateProduct_ProductOnlineStatus" checked="checked" value="online"/>
							<% } else { %>
								<input type="checkbox" name="UpdateProduct_ProductOnlineStatus" checked="checked" value="online" disabled="disabled"/>
							<% } %>
						<% } else { %>
							<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PermissionMap:SLD_MANAGE_PRODUCTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",43,e);}if (_boolean_result) { %>
								<input type="checkbox" name="UpdateProduct_ProductOnlineStatus" value="online"/>
							<% } else { %>
								<input type="checkbox" name="UpdateProduct_ProductOnlineStatus" value="online" disabled="disabled"/>
							<% } %>
						<% } %>
					</td>
				<% } else { %>
					<td class="input_checkbox">
						<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Product:isOnline"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",52,e);}if (_boolean_result) { %>
							<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PermissionMap:SLD_MANAGE_PRODUCTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",53,e);}if (_boolean_result) { %>
								<input type="checkbox" name="UpdateProduct_ProductOnlineStatus" id="UpdateProduct_ProductOnlineStatus" <% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("DeletionOfDefaultVariationProduct")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",54,e);}if (_boolean_result) { %>checked="checked"<% } %> value="online"/>
							<% } else { %>
								<input type="checkbox" name="UpdateProduct_ProductOnlineStatus" id="UpdateProduct_ProductOnlineStatus" checked="checked" value="online" disabled="disabled"/>
							<% } %>
						<% } else { %>
							<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PermissionMap:SLD_MANAGE_PRODUCTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",59,e);}if (_boolean_result) { %>
								<input type="checkbox" name="UpdateProduct_ProductOnlineStatus" id="UpdateProduct_ProductOnlineStatus" value="online"/>
							<% } else { %>
								<input type="checkbox" name="UpdateProduct_ProductOnlineStatus" id="UpdateProduct_ProductOnlineStatus" value="online" disabled="disabled"/>
							<% } %>
						<% } %>
					</td>
				<% } %>
				<td nowrap="nowrap" class="label_checkbox_text"><label class="label label_checkbox_text" for="UpdateProduct_ProductOnlineStatus"><% {out.write(localizeISText("sld_enterprise_app.Online.label",null,null,null,null,null,null,null,null,null,null,null,null));} %></label></td>
					<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("UpdateProduct:isSubmitted")).booleanValue() && ((Boolean) (((((Boolean) ((((context.getFormattedValue(getObject("UpdateProduct_ProductID"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("UpdateProduct_ProductName"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",68,e);}if (_boolean_result) { %>
						<td class="input_checkbox">
							<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("UpdateProduct:ProductAvailableStatus:Value"),null).equals(context.getFormattedValue("available",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",70,e);}if (_boolean_result) { %>
								<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PermissionMap:SLD_MANAGE_PRODUCTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",71,e);}if (_boolean_result) { %>
									<input type="checkbox" name="UpdateProduct_ProductAvailableStatus" id="UpdateProduct_ProductAvailableStatus" checked="checked"  value="available"/>
								<% } else { %>
									<input type="checkbox" name="UpdateProduct_ProductAvailableStatus" id="UpdateProduct_ProductAvailableStatus" checked="checked"  value="available" disabled="disabled"/>
								<% } %>
							<% } else { %>
								<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PermissionMap:SLD_MANAGE_PRODUCTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",77,e);}if (_boolean_result) { %>
									<input type="checkbox" name="UpdateProduct_ProductAvailableStatus" id="UpdateProduct_ProductAvailableStatus" value="available"/>
								<% } else { %>
									<input type="checkbox" name="UpdateProduct_ProductAvailableStatus" id="UpdateProduct_ProductAvailableStatus" value="available" disabled="disabled"/>
								<% } %>
							<% } %>
						</td>
					<% } else { %>
						<td class="input_checkbox">
							<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Product:isAvailable"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",86,e);}if (_boolean_result) { %>
								<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PermissionMap:SLD_MANAGE_PRODUCTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",87,e);}if (_boolean_result) { %>
									<input type="checkbox" name="UpdateProduct_ProductAvailableStatus" id="UpdateProduct_ProductAvailableStatus" checked="checked" value="available"/>
								<% } else { %>
									<input type="checkbox" name="UpdateProduct_ProductAvailableStatus" id="UpdateProduct_ProductAvailableStatus" checked="checked" value="available" disabled="disabled"/>
								<% } %>
							<% } else { %>
								<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PermissionMap:SLD_MANAGE_PRODUCTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",93,e);}if (_boolean_result) { %>
									<input type="checkbox" name="UpdateProduct_ProductAvailableStatus" id="UpdateProduct_ProductAvailableStatus" value="available"/>
								<% } else { %>
									<input type="checkbox" name="UpdateProduct_ProductAvailableStatus" id="UpdateProduct_ProductAvailableStatus" value="available" disabled="disabled"/>
								<% } %>
							<% } %>
						</td>
					<% } %>
				<td nowrap="nowrap" class="label_checkbox_text"><label class="label label_checkbox_text" for="UpdateProduct_ProductAvailableStatus"><% {out.write(localizeISText("sld_enterprise_app.InStock.label",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
				<!-- Display Completeness Flag only in channels -->
				<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentSelectedChannel"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",103,e);}if (_boolean_result) { %>
					<td class="input_checkbox">						
						<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Product:Completeness"),null).equals(context.getFormattedValue("1",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",105,e);}if (_boolean_result) { %>
							<img class="product_incomplete" border="0" src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/offline.png" title="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.ProductIncomplete.title",null)),null)%>" data-product-id="<%=context.getFormattedValue(getObject("Product:UUID"),null)%>">
								<div class="problems_tooltip" style="display:none">
									<img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/ajax-loader-small.gif" alt="<%=context.getFormattedValue(context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.ProductCompletenessProblems.Loading.alt",null)),null) + context.getFormattedValue("...",null),null)%>" width="16" height="16" />							
								</div>				
							</img>
						<% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Product:Completeness"),null).equals(context.getFormattedValue("2",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",111,e);}if (_boolean_result) { %>
							<img border="0" src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/online.png" title="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.ProductComplete.title",null)),null)%>"/>
						<% } else { %>
							<img border="0" src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/inactive.png" title="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.ProductCompletenessStatusUndefined.title",null)),null)%>"/>
						<% }} %>
					</td>
					<td nowrap="nowrap" class="label_checkbox_text"><label class="label label_checkbox_text"><% {out.write(localizeISText("sld_enterprise_app.Complete.label",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
				<% } %>
			</tr>
		</table>
	</td>
</tr>

<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentSelectedChannel"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",124,e);}if (_boolean_result) { %>
	<% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"product/validation/ProductCompletenessProblemsTooltipScript", null, "125");} %>
<% } %><% printFooter(out); %>