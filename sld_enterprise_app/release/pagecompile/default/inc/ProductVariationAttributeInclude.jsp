<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
		<tr>
			<td>
				<table border="0" cellpadding="0" cellspacing="0" width="100%">
					<tr>
						<td width="100%" class="aldi table_title"><% {String value = null;try{value=context.getFormattedValue(getObject("VariableVariationAttribute:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {8}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
					</tr>
				</table>
				
				<!-- delete confirmation if one is selected, script is found in inc/ConfirmationScript.isml-->
				<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("confirmDeleteVariationAttribute"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",13,e);}if (_boolean_result) { %>	
					<table border="0" cellspacing="0" cellpadding="4" width="100%" class="confirm_box w e s">				
						<tr>
							<td class="error_icon e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/confirmation.gif" width="16" height="15" alt="" border="0"/></td>
							<td class="confirm" width="100%"><% {out.write(localizeISText("ProductVariationAttributeInclude.DeleteVariableVariationAttribute.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
							<td align="right">
								<table border="0" cellspacing="2" cellpadding="0">
									<tr>
										<td class="button"><input type="submit" name="deleteVariationAttribute" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("SelectCategory.OK.button",null)),null)%>" class="button"/></td><td></td>
										<td class="button"><input type="submit" name="cancel" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PageletEntryPointSetParent.Cancel.button",null)),null)%>" class="button"/></td>
									</tr>
								</table>
							</td>
						</tr>
					</table>
				<% } %>
				
				<!-- errors -->	
				<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("Error_ID")))).booleanValue() || ((Boolean) getObject("UpdateAttribute:AttributeName:isMissing")).booleanValue() || ((Boolean) getObject("UpdateAttribute:DisplayName:isMissing")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",31,e);}if (_boolean_result) { %>		
					<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
						<tr valign="top">
							<td class="error_icon top e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
							<td class="error top" width="100%"><b><% {out.write(localizeISText("ProductVariationAttributeInclude.VariableVariationAttributeCouldNotBeUpdated.error",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</b><br/>
							<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("UpdateAttribute:DisplayName:isMissing"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",36,e);}if (_boolean_result) { %><% {out.write(localizeISText("NewProductVariationAttributeInclude.DisplayNameIsMandatory.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/><% } %>
							<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("UpdateAttribute:AttributeName:isMissing"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",37,e);}if (_boolean_result) { %><% {out.write(localizeISText("NewProductVariationAttributeInclude.IDIsMandatory.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/><% } %>
							<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Error_ID"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",38,e);}if (_boolean_result) { %><% {out.write(localizeISText("NewProductVariationAttributeInclude.TheIDIsNotUnique.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %>
						</td>
						</tr>
					</table>		
				<% } %>
				<!-- EO errors-->
				
				<table border="0" cellpadding="0" cellspacing="0" width="100%">
					<tr>
						<td class="table_title_description w e s">
							<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Product:DerivedProduct"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",48,e);}if (_boolean_result) { %>
								<% {out.write(localizeISText("ProductVariationAttributeInclude.SeeTheConfigurationOfTheVariationAttribute.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %>
							<% } else {_boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_PRODUCTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",50,e);}if (_boolean_result) { %>
								<% {out.write(localizeISText("ProductVariationAttributeInclude.FieldsWithARedAsterisk.table_title_description",null,null,"star",null,null,null,null,null,null,null,null,null));} %><br/>
								<% {out.write(localizeISText("ProductVariationAttributeInclude.ClickApplyToSaveTheDetails.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %>
							<% } else { %>
								<% {out.write(localizeISText("ProductVariationAttributeInclude.YouCanEnterInformationInOtherLanguages.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %>
							<% }} %>
						</td>
					</tr>
				</table>
				
				<table border="0" cellpadding="4" cellspacing="0" width="100%" class="infobox_locale w e">			
					<tr>
						<td>
							<table border="0" cellpadding="0" cellspacing="0">
								<tr>
									<td class="infobox_item" nowrap="nowrap"><% {out.write(localizeISText("PlaceholderDefinitionTabGeneral.SelectLanguage.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:&nbsp;</td>
									<td>
										<select name="LocaleId" class="select inputfield_en">
											<% while (loop("Locales","Locales",null)) { %>
												<option value="<% {String value = null;try{value=context.getFormattedValue(getObject("Locales:LocaleID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {69}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Locales:LocaleID"),null).equals(context.getFormattedValue(getObject("Locale:LocaleID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",69,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {String value = null;try{value=context.getFormattedValue(getObject("Locales:getDisplayName(CurrentSession:Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {69}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</option>
											<% } %>
										</select>
									</td>
                                                                        <td>&nbsp;</td>
									<td width="100%">
										<table border="0" cellspacing="2" cellpadding="0">
											<tr>
												<td class="button"><input type="submit" name="setLocale" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("NewProductSet.Apply.input1",null)),null)%>" class="button"/></td>
											</tr>
										</table>
									</td>
								</tr>
							</table>
						</td>
					</tr>			
				</table>
			</td>
		</tr>			
		<tr>
			<td class="w e s n">	
				<table border="0" cellpadding="0" cellspacing="0">
					<tr>
						<% _boolean_result=false;try {_boolean_result=((Boolean)(((!((Boolean) (disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_PRODUCTS")))).booleanValue() || ((Boolean) (getObject("Product:DerivedProduct"))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",92,e);}if (_boolean_result) { %>
							<td nowrap="nowrap"  class="label"><label class="label" for="UpdateAttribute_DisplayName"><% {out.write(localizeISText("PageletTabProperties.Name.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
						<% } else {_boolean_result=false;try {_boolean_result=((Boolean)(getObject("UpdateAttribute:DisplayName:isMissing"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",94,e);}if (_boolean_result) { %>
							<td nowrap="nowrap"  class="label"><label class="label label_error" for="UpdateAttribute_DisplayName"><% {out.write(localizeISText("PageletTabProperties.Name.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></label></td>
						<% } else { %>
							<td nowrap="nowrap"  class="label"><label class="label" for="UpdateAttribute_DisplayName"><% {out.write(localizeISText("PageletTabProperties.Name.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></label></td>
						<% }} %>					
						<td class="table_detail" colspan="2">
							<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("UpdateAttribute:DisplayName:Value"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",100,e);}if (_boolean_result) { %>	
								<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Product:DerivedProduct"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",101,e);}if (_boolean_result) { %>
									<% {String value = null;try{value=context.getFormattedValue(getObject("UpdateAttribute:DisplayName:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {102}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>
								<% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_PRODUCTS")))).booleanValue() && ((Boolean) ((((Boolean) getObject("Product:DerivedProduct")).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() && ((Boolean) ((disableErrorMessages().isDefined(getObject("ProductLockedForMe"))))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",103,e);}if (_boolean_result) { %>
									<input type="text" name="UpdateAttribute_DisplayName" id="UpdateAttribute_DisplayName" maxlength="256" size="45" value="<% {String value = null;try{value=context.getFormattedValue(getObject("UpdateAttribute:DisplayName:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {104}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="inputfield_en"/>
								<% } else { %>
									<input type="text" name="UpdateAttribute_DisplayName" id="UpdateAttribute_DisplayName" maxlength="256" size="45" value="<% {String value = null;try{value=context.getFormattedValue(getObject("UpdateAttribute:DisplayName:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {106}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="inputfield_en" disabled="disabled"/>
								<% }} %>
							<% } else { %>
								<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Product:DerivedProduct"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",109,e);}if (_boolean_result) { %>
									<% {String value = null;try{value=context.getFormattedValue(getObject("VariableVariationAttribute:DisplayName(Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {110}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>
								<% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_PRODUCTS")))).booleanValue() && ((Boolean) ((((Boolean) getObject("Product:DerivedProduct")).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() && ((Boolean) ((disableErrorMessages().isDefined(getObject("ProductLockedForMe"))))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",111,e);}if (_boolean_result) { %>
									<input type="text" name="UpdateAttribute_DisplayName" id="UpdateAttribute_DisplayName" maxlength="256" size="45" value="<% {String value = null;try{value=context.getFormattedValue(getObject("VariableVariationAttribute:DisplayName(Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {112}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="inputfield_en"/>
								<% } else { %>
									<input type="text" name="UpdateAttribute_DisplayName" id="UpdateAttribute_DisplayName" maxlength="256" size="45" value="<% {String value = null;try{value=context.getFormattedValue(getObject("VariableVariationAttribute:DisplayName(Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {114}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="inputfield_en" disabled="disabled"/>
								<% }} %>
							<% } %>	
						</td>
					</tr>
					<tr>
						<% _boolean_result=false;try {_boolean_result=((Boolean)(((!((Boolean) (disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_PRODUCTS")))).booleanValue() || ((Boolean) (getObject("Product:DerivedProduct"))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",120,e);}if (_boolean_result) { %>
							<td nowrap="nowrap"  class="label"><label class="label" for="UpdateAttribute_AttributeName"><% {out.write(localizeISText("sld_enterprise_app.ID.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
						<% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("Error_ID")))).booleanValue() || ((Boolean) getObject("UpdateAttribute:AttributeName:isMissing")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",122,e);}if (_boolean_result) { %>
							<td nowrap="nowrap"  class="label"><label class="label label_error" for="UpdateAttribute_AttributeName"><% {out.write(localizeISText("sld_enterprise_app.ID.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></label></td>
						<% } else { %>
							<td nowrap="nowrap"  class="label"><label class="label" for="UpdateAttribute_AttributeName"><% {out.write(localizeISText("sld_enterprise_app.ID.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></label></td>
						<% }} %>	
						<td class="table_detail" colspan="2">
							<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("UpdateAttribute:AttributeName:Value"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",128,e);}if (_boolean_result) { %>
								<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Product:DerivedProduct"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",129,e);}if (_boolean_result) { %>
									<% {String value = null;try{value=context.getFormattedValue(getObject("UpdateAttribute:AttributeName:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {130}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>
								<% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_PRODUCTS")))).booleanValue() && ((Boolean) ((((Boolean) getObject("Product:DerivedProduct")).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() && ((Boolean) ((disableErrorMessages().isDefined(getObject("ProductLockedForMe"))))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",131,e);}if (_boolean_result) { %>
									<input type="text" name="UpdateAttribute_AttributeName" id="UpdateAttribute_AttributeName" maxlength="256" size="45" value="<% {String value = null;try{value=context.getFormattedValue(getObject("UpdateAttribute:AttributeName:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {132}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="inputfield_en"/>
								<% } else { %>
									<input type="text" name="UpdateAttribute_AttributeName" id="UpdateAttribute_AttributeName" maxlength="256" size="45" value="<% {String value = null;try{value=context.getFormattedValue(getObject("UpdateAttribute:AttributeName:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {134}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="inputfield_en" disabled="disabled"/>
								<% }} %>
							<% } else { %>
								<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Product:DerivedProduct"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",137,e);}if (_boolean_result) { %>
									<% {String value = null;try{value=context.getFormattedValue(getObject("VariableVariationAttribute:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {138}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>
								<% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_PRODUCTS")))).booleanValue() && ((Boolean) ((((Boolean) getObject("Product:DerivedProduct")).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() && ((Boolean) ((disableErrorMessages().isDefined(getObject("ProductLockedForMe"))))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",139,e);}if (_boolean_result) { %>
									<input type="text" name="UpdateAttribute_AttributeName" id="UpdateAttribute_AttributeName" maxlength="256" size="45" value="<% {String value = null;try{value=context.getFormattedValue(getObject("VariableVariationAttribute:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {140}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="inputfield_en"/>
								<% } else { %>
									<input type="text" name="UpdateAttribute_AttributeName" id="UpdateAttribute_AttributeName" maxlength="256" size="45" value="<% {String value = null;try{value=context.getFormattedValue(getObject("VariableVariationAttribute:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {142}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="inputfield_en" disabled="disabled"/>
								<% }} %>						
							<% } %>
						</td>
					</tr>
					
			       	<% {Object temp_obj = ("UpdateAttribute"); getPipelineDictionary().put("formName", temp_obj);} %>
					<% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"product/ProductVariationAttributeVariationSelectionInc", null, "149");} %>
					
					<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (getObject("Product:DerivedProduct"))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",151,e);}if (_boolean_result) { %>
						<tr>
							<td nowrap="nowrap"  class="label"><label class="label" for="productAttrName"><% {out.write(localizeISText("sld_enterprise_app.ProductAttributeName.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
							<td class="table_detail" colspan="2">
								<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("UpdateAttribute:ProductAttrName:Value"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",155,e);}if (_boolean_result) { %>
									<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_PRODUCTS")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("VariableVariationAttribute:PresentationOption"),null).equals(context.getFormattedValue("default",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((((Boolean) (disableErrorMessages().isDefined(getObject("ProductLockedForMe")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",156,e);}if (_boolean_result) { %>
										<input type="text" id="productAttrName" name="UpdateAttribute_ProductAttrName" value="<% {String value = null;try{value=context.getFormattedValue(getObject("UpdateAttribute:ProductAttrName:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {157}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" maxlength="256" size="45" class="inputfield_en" disabled="disabled"/>
									<% } else { %>
										<input type="text" id="productAttrName" name="UpdateAttribute_ProductAttrName" value="<% {String value = null;try{value=context.getFormattedValue(getObject("UpdateAttribute:ProductAttrName:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {159}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" maxlength="256" size="45" class="inputfield_en"/>
									<% } %>
								<% } else { %>
									<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_PRODUCTS")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("VariableVariationAttribute:PresentationOption"),null).equals(context.getFormattedValue("default",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((((Boolean) (disableErrorMessages().isDefined(getObject("ProductLockedForMe")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",162,e);}if (_boolean_result) { %>
										<input type="text" id="productAttrName" name="UpdateAttribute_ProductAttrName" value="<% {String value = null;try{value=context.getFormattedValue(getObject("VariableVariationAttribute:PresentationProductAttributeName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {163}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" maxlength="256" size="45" class="inputfield_en" disabled="disabled"/>
									<% } else { %>
										<input type="text" id="productAttrName" name="UpdateAttribute_ProductAttrName" value="<% {String value = null;try{value=context.getFormattedValue(getObject("VariableVariationAttribute:PresentationProductAttributeName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {165}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" maxlength="256" size="45" class="inputfield_en"/>
									<% } %>
								<% } %>
							</td>
	                        <td class="table_detail" width="100%">
								<% {out.write(localizeISText("ProductVariationAttributeInclude.ForSwatchImageHTMLColorCode.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %>
							</td>
						</tr>
					<% } else { %>
						<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) ((((context.getFormattedValue(getObject("VariableVariationAttribute:PresentationOption"),null).equals(context.getFormattedValue("default",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",174,e);}if (_boolean_result) { %>
							<tr>
								<td nowrap="nowrap"  class="label"><label class="label" for="productAttrName"><% {out.write(localizeISText("sld_enterprise_app.ProductAttributeName.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
								<td class="table_detail" colspan="2">
									<input type="text" id="productAttrName" name="UpdateAttribute_ProductAttrName" value="<% {String value = null;try{value=context.getFormattedValue(getObject("VariableVariationAttribute:PresentationProductAttributeName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {178}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" maxlength="256" size="45" class="inputfield_en" disabled="disabled"/>
								</td>
		                        <td class="table_detail" width="100%">
									<% {out.write(localizeISText("ProductVariationAttributeInclude.ForSwatchImageHTMLColorCode.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %>
								</td>
							</tr>
						<% } %>
					<% } %>
				</table>
			</td>
		</tr>
		<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_PRODUCTS")))).booleanValue() && !((Boolean) (getObject("Product:DerivedProduct"))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",189,e);}if (_boolean_result) { %>
			<tr>
				<td>					
					<table class="w e s" width="100%" border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td align="right">
								<table border="0" cellspacing="6" cellpadding="0">
									<tr>								
	                                    <% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ProductLockedForMe"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",197,e);}if (_boolean_result) { %>
	                                        <td class="button">
	                                            <input type="submit" name="applyVariationAttribute" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("NewProductSet.Apply.input1",null)),null)%>" class="button"/>
	                                        </td>
	                                    <% } else { %>
	                                        <td class="button">
	                                            <input type="submit" name="applyVariationAttribute" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("NewProductSet.Apply.input1",null)),null)%>" class="button" disabled="disabled"/>
	                                        </td>
	                                    <% } %>
	                                    <% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ProductLockedForMe"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",206,e);}if (_boolean_result) { %>
		                                    <td class="button">
		                                        <input type="reset" name="reset" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PageletTemplateTabProperties.Reset.button",null)),null)%>" class="button"/>
		                                    </td>
		                                <% } else { %>
		                                    <td class="button">
		                                        <input type="reset" name="reset" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PageletTemplateTabProperties.Reset.button",null)),null)%>" class="button" disabled="disabled"/>
		                                    </td>
		                                <% } %>
	                                    <% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ProductLockedForMe"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",215,e);}if (_boolean_result) { %>
	                                        <td class="button">
	                                            <input type="submit" name="confirmDeleteVariationAttribute" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("TemplateSearchButtons.Delete.button",null)),null)%>" class="button"/>
	                                        </td>
	                                    <% } else { %>
	                                        <td class="button">
	                                            <input type="submit" name="confirmDeleteVariationAttribute" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("TemplateSearchButtons.Delete.button",null)),null)%>" class="button" disabled="disabled"/>
	                                        </td>
	                                    <% } %>
									</tr>
								</table>
							</td>
						</tr>
					</table>		
				</td>
			</tr>
		<% } %>
	</table><% printFooter(out); %>