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
						<td width="100%" class="aldi table_title"><% {out.write(localizeISText("NewProductVariationAttributeInclude.CreateNewVariableVariationAttribute.aldi",null,null,null,null,null,null,null,null,null,null,null,null));} %>&nbsp;</td>
					</tr>
				</table>
				
				<!-- errors -->	
				<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("Error_ID")))).booleanValue() || ((Boolean) getObject("CreateAttribute:AttributeName:isMissing")).booleanValue() || ((Boolean) getObject("CreateAttribute:DisplayName:isMissing")).booleanValue() || ((Boolean) getObject("CreateAttribute:VariationSelection:isMissing")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",13,e);}if (_boolean_result) { %>		
					<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
						<tr valign="top">
							<td class="error_icon top e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
							<td class="error top" width="100%">
								<b><% {out.write(localizeISText("NewProductVariationAttributeInclude.VariableVariationAttributeCouldNotBeCreated.error",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</b><br/>
								<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("CreateAttribute:DisplayName:isMissing"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",19,e);}if (_boolean_result) { %><% {out.write(localizeISText("NewProductVariationAttributeInclude.DisplayNameIsMandatory.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/><% } %>
								<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("CreateAttribute:AttributeName:isMissing"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",20,e);}if (_boolean_result) { %><% {out.write(localizeISText("NewProductVariationAttributeInclude.IDIsMandatory.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/><% } %>
								<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("CreateAttribute:VariationSelection:isMissing"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",21,e);}if (_boolean_result) { %><% {out.write(localizeISText("NewProductVariationAttributeInclude.VariationSelectionIsMandatory.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/><% } %>
								<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Error_ID"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",22,e);}if (_boolean_result) { %><% {out.write(localizeISText("NewProductVariationAttributeInclude.TheIDIsNotUnique.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %>
							</td>
						</tr>
					</table>		
				<% } %>
				<!-- EO errors-->	
				
				<table border="0" cellpadding="0" cellspacing="0" width="100%">
					<tr>
						<td class="table_title_description w e s">
							<% {out.write(localizeISText("NewProductVariationAttributeInclude.FieldsWithARedAsterisk.table_title_description",null,null,"star",null,null,null,null,null,null,null,null,null));} %><br/>
							<% {out.write(localizeISText("NewProductVariationAttributeInclude.ClickApplyToSaveTheDetails.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %>
						</td>
					</tr>
				</table>
				
				<table border="0" cellpadding="4" cellspacing="0" width="100%" class="infobox_locale w e">			
					<tr>
						<td>
							<table border="0" cellpadding="0" cellspacing="0">
								<tr>
									<td class="label_select" nowrap="nowrap"><label class="label label_select label_light" for="LocaleId"><% {out.write(localizeISText("PlaceholderDefinitionTabGeneral.SelectLanguage.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
									<td nowrap="nowrap">
										<select name="LocaleId" id="LocaleId" class="select inputfield_en">
											<% while (loop("Locales","Locales",null)) { %>
												<option value="<% {String value = null;try{value=context.getFormattedValue(getObject("Locales:LocaleID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {47}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Locales:LocaleID"),null).equals(context.getFormattedValue(getObject("Locale:LocaleID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",47,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {String value = null;try{value=context.getFormattedValue(getObject("Locales:getDisplayName(CurrentSession:Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {47}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</option>
											<% } %>
										</select>
									</td>
									<td>&nbsp;&nbsp;</td>
									<td width="100%">
										<table border="0" cellspacing="2" cellpadding="0">
											<tr>
												<td class="button"><input type="submit" name="setNewLocale" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("NewProductSet.Apply.input1",null)),null)%>" class="button"/></td>
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
						<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("CreateAttribute:DisplayName:isMissing"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",70,e);}if (_boolean_result) { %>
							<td nowrap="nowrap"  class="label"><label class="label label_error" for="CreateAttribute_DisplayName"><% {out.write(localizeISText("PageletTabProperties.Name.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></label></td>
						<% } else { %>
							<td nowrap="nowrap"  class="label"><label class="label" for="CreateAttribute_DisplayName"><% {out.write(localizeISText("PageletTabProperties.Name.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></label></td>
						<% } %>	
						<td class="table_detail" colspan="2"><input type="text" name="CreateAttribute_DisplayName" id="CreateAttribute_DisplayName" maxlength="256" size="45" value="<% {String value = null;try{value=context.getFormattedValue(getObject("CreateAttribute:DisplayName:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {75}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="inputfield_en"/></td>
					</tr>
					<tr>
						<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("Error_ID")))).booleanValue() || ((Boolean) getObject("CreateAttribute:AttributeName:isMissing")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",78,e);}if (_boolean_result) { %>
							<td nowrap="nowrap"  class="label"><label class="label label_error" for="CreateAttribute_AttributeName"><% {out.write(localizeISText("sld_enterprise_app.ID.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></label></td>
						<% } else { %>
							<td nowrap="nowrap"  class="label"><label class="label" for="CreateAttribute_AttributeName"><% {out.write(localizeISText("sld_enterprise_app.ID.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></label></td>
						<% } %>	
						<td class="table_detail" colspan="2"><input type="text" name="CreateAttribute_AttributeName" id="CreateAttribute_AttributeName" maxlength="256" size="45" value="<% {String value = null;try{value=context.getFormattedValue(getObject("CreateAttribute:AttributeName:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {83}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="inputfield_en"/></td>
					</tr>	
					
					<% {Object temp_obj = ("CreateAttribute"); getPipelineDictionary().put("formName", temp_obj);} %>
					<% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"product/ProductVariationAttributeVariationSelectionInc", null, "87");} %>
					
					<tr>
						<td nowrap="nowrap"  class="label"><label class="label" for="productAttrName"><% {out.write(localizeISText("sld_enterprise_app.ProductAttributeName.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
						<td class="table_detail" colspan="2">
							<input type="text" id="productAttrName" name="CreateAttribute_ProductAttrName" value="<% {String value = null;try{value=context.getFormattedValue(getObject("CreateAttribute:ProductAttrName:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {92}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" maxlength="256" size="45" class="inputfield_en" <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (((((Boolean) (((!(context.getFormattedValue(getObject("CreateAttribute_VariationSelection"),null).equals(context.getFormattedValue("SwatchImage",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) (((!(context.getFormattedValue(getObject("CreateAttribute_VariationSelection"),null).equals(context.getFormattedValue("colorCode",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) (((((Boolean) ((((context.getFormattedValue(getObject("CreateAttribute_VariationSelection"),null).equals(context.getFormattedValue("default",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("CreateAttribute_VariationSelection"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",92,e);}if (_boolean_result) { %>disabled="disabled"<% } %>/>
						</td>
						<td class="table_detail" width="100%">
							<% {out.write(localizeISText("NewProductVariationAttributeInclude.ForSwatchImageHTMLColorCode.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %>
						</td>
					</tr>							
				</table>
			</td>
		</tr>
		<tr>
			<td>					
				<table class="w e s" width="100%" border="0" cellspacing="0" cellpadding="0">
					<tr>
						<td align="right">
							<table border="0" cellspacing="4" cellpadding="0">
								<tr>								
									<td class="button"><input type="submit" name="createVariationAttribute" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("NewProductSet.Apply.input1",null)),null)%>" class="button"/></td>
									<td class="button"><input type="submit" name="back" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PageletEntryPointSetParent.Cancel.button",null)),null)%>" class="button"/></td>					
								</tr>
							</table>
						</td>
					</tr>
				</table>		
			</td>
		</tr>	
	</table><% printFooter(out); %>