<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %>
<input name="CatalogCategoryID" type="hidden" value="<%=context.getFormattedValue(getObject("Category:UUID"),null)%>"/>
<input name="ParentCategoryID" type="hidden" value="<%=context.getFormattedValue(getObject("ParentCategory:UUID"),null)%>"/>
<input name="CatalogID" type="hidden" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Catalog:Id"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {5}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>

	<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Catalog:Root:UUID"),null).equals(context.getFormattedValue(getObject("Category:UUID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",7,e);}if (_boolean_result) { %>
		<% {Object temp_obj = (getObject("Catalog")); getPipelineDictionary().put("SortingOwner", temp_obj);} %>
	<% } else { %>
		<% {Object temp_obj = (getObject("Category")); getPipelineDictionary().put("SortingOwner", temp_obj);} %>
	<% } %>

<table border="0" cellspacing="0" cellpadding="0" width="100%">
	<tr><td colspan="5"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" alt="" border="0" width="1" height="10"></td></tr>	
	<tr>
		<td class="table_title_description" colspan="5">
			<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Catalog:Root:UUID"),null).equals(context.getFormattedValue(getObject("Category:UUID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",17,e);}if (_boolean_result) { %>
				<% {out.write(localizeISText("ProductSortingForm.SelectDefaultOrDefineCustomSortingSettingsForThisC.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %>
			<% } else { %>
				<% {out.write(localizeISText("ProductSortingForm.SelectDefaultToUseTheSortingSettingsOfTheParentCat.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %>
			<% } %>
		</td>
	</tr>	
	<tr><td colspan="5"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" alt="" border="0" width="1" height="10"></td></tr>	
	<tr>
		 <td class="input_radio">
			<% _boolean_result=false;try {_boolean_result=((Boolean)(((!((Boolean) (disableErrorMessages().isDefined(getObject("SortingOwner:PRODUCT_SORTING_TYPE")))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("SortingOwner:PRODUCT_SORTING_TYPE"),null).equals(context.getFormattedValue("default",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",27,e);}if (_boolean_result) { %>
				<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_CATALOGS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",28,e);}if (_boolean_result) { %>
					<input type="radio" name="RegFormProductSorting_ProductSortingType" id="RegFormProductSorting_ProductSortingType_default" value="default" checked="checked" />
				<% } else { %>
					<input type="radio" name="RegFormProductSorting_ProductSortingType" id="RegFormProductSorting_ProductSortingType_default" value="default" checked="checked" disabled="disabled" />
				<% } %>
			<% } else { %>
				<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_CATALOGS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",34,e);}if (_boolean_result) { %>
					<input type="radio" name="RegFormProductSorting_ProductSortingType" id="RegFormProductSorting_ProductSortingType_default" value="default" />
				<% } else { %>
					<input type="radio" name="RegFormProductSorting_ProductSortingType" id="RegFormProductSorting_ProductSortingType_default" value="default" disabled="disabled" />
				<% } %>
			<% } %>
		</td>
		<td class="label_radio_text"><label class="label label_radio_text label_light" for="RegFormProductSorting_ProductSortingType_default"><% {out.write(localizeISText("ProductSortingForm.Default.label",null,null,null,null,null,null,null,null,null,null,null,null));} %></label></td>
	</tr>
	<tr>
		<td class="input_radio">
			<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("SortingOwner:PRODUCT_SORTING_TYPE")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SortingOwner:PRODUCT_SORTING_TYPE"),null).equals(context.getFormattedValue("custom",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",45,e);}if (_boolean_result) { %>
				<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_CATALOGS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",46,e);}if (_boolean_result) { %>
					<input type="radio" name="RegFormProductSorting_ProductSortingType" id="RegFormProductSorting_ProductSortingType_custom" value="custom" checked="checked" />
				<% } else { %>
					<input type="radio" name="RegFormProductSorting_ProductSortingType" id="RegFormProductSorting_ProductSortingType_custom" value="custom" checked="checked" disabled="disabled" />
				<% } %>
			<% } else { %>
				<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_CATALOGS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",52,e);}if (_boolean_result) { %>
					<input type="radio" name="RegFormProductSorting_ProductSortingType" id="RegFormProductSorting_ProductSortingType_custom" value="custom" />
				<% } else { %>
					<input type="radio" name="RegFormProductSorting_ProductSortingType" id="RegFormProductSorting_ProductSortingType_custom" value="custom" disabled="disabled" />
				<% } %>
			<% } %>
		</td>
		<td class="label_radio_text"><label class="label label_radio_text label_light" for="RegFormProductSorting_ProductSortingType_custom"><% {out.write(localizeISText("ProductSortingForm.Custom.label",null,null,null,null,null,null,null,null,null,null,null,null));} %> <img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/arrow_right.gif" id="img_arrow" alt="" border="0"/> <% {out.write(localizeISText("ProductSortingForm.SortingAttribute",null,null,null,null,null,null,null,null,null,null,null,null));} %>: </label></td>
		<td>
		 <table cellspacing="0" cellpadding="0" border="0">
		  <tr>
			<td class="input_radio" >
				<% _boolean_result=false;try {_boolean_result=((Boolean)((((((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("SortingOwner:PRODUCT_SORTING_ATTRIBUTE")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SortingOwner:PRODUCT_SORTING_ATTRIBUTE"),null).equals(context.getFormattedValue("none",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || !((Boolean) ((disableErrorMessages().isDefined(getObject("SortingOwner:PRODUCT_SORTING_ATTRIBUTE"))))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",64,e);}if (_boolean_result) { %>
					<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_CATALOGS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",65,e);}if (_boolean_result) { %>
						<input type="radio" name="RegFormProductSorting_ProductSortingAttribute" id="RegFormProductSorting_ProductSortingAttribute_none" value="none" checked="checked" />
					<% } else { %>
						<input type="radio" name="RegFormProductSorting_ProductSortingAttribute" id="RegFormProductSorting_ProductSortingAttribute_none" value="none" checked="checked" disabled="disabled" />
					<% } %>
				<% } else { %>
					<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_CATALOGS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",71,e);}if (_boolean_result) { %>
						<input type="radio" name="RegFormProductSorting_ProductSortingAttribute" id="RegFormProductSorting_ProductSortingAttribute_none" value="none" />
					<% } else { %>
						<input type="radio" name="RegFormProductSorting_ProductSortingAttribute" id="RegFormProductSorting_ProductSortingAttribute_none" value="none" disabled="disabled" />
					<% } %>
				<% } %>
			</td>
			<td class="label_radio_text"><label class="label label_radio_text label_light" for="RegFormProductSorting_ProductSortingAttribute_none"><% {out.write(localizeISText("ProductSortingForm.None.label",null,null,null,null,null,null,null,null,null,null,null,null));} %></label></td>
		 </tr>
		</table>
	   </td>	 
	</tr>
	<tr>					
		<td class="table_detail" nowrap="nowrap" colspan="2">&nbsp;</td>
		<td>
		 <table cellspacing="0" cellpadding="0" border="0">
		  <tr>
			<td class="input_radio" >
				<% _boolean_result=false;try {_boolean_result=((Boolean)((((((Boolean) (disableErrorMessages().isDefined(getObject("SortingOwner:PRODUCT_SORTING_ATTRIBUTE")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SortingOwner:PRODUCT_SORTING_ATTRIBUTE"),null).equals(context.getFormattedValue("standard",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",89,e);}if (_boolean_result) { %>
					<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_CATALOGS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",90,e);}if (_boolean_result) { %>
						<input type="radio" name="RegFormProductSorting_ProductSortingAttribute" id="RegFormProductSorting_ProductSortingAttribute_standard" value="standard" checked="checked" />
					<% } else { %>
						<input type="radio" name="RegFormProductSorting_ProductSortingAttribute" id="RegFormProductSorting_ProductSortingAttribute_standard" value="standard" checked="checked" disabled="disabled" />
					<% } %>
				<% } else { %>
					<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_CATALOGS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",96,e);}if (_boolean_result) { %>
						<input type="radio" name="RegFormProductSorting_ProductSortingAttribute" id="RegFormProductSorting_ProductSortingAttribute_standard" value="standard" />
					<% } else { %>
						<input type="radio" name="RegFormProductSorting_ProductSortingAttribute" id="RegFormProductSorting_ProductSortingAttribute_standard" value="standard" disabled="disabled" />
					<% } %>
				<% } %>
			</td>
			<td class="label_radio_text"><label class="label label_radio_text label_light" for="RegFormProductSorting_ProductSortingAttribute_standard"><% {out.write(localizeISText("ProductSortingForm.Standard.label",null,null,null,null,null,null,null,null,null,null,null,null));} %></label></td>
			<td class="table_detail" width="100%">
			<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_CATALOGS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",105,e);}if (_boolean_result) { %>
				<select name="RegFormProductSorting_ProductSortingStandardValue" class="select inputfield_en">
					<option value="name"  <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("SortingOwner:PRODUCT_SORTING_STANDARD_VALUE"))))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SortingOwner:PRODUCT_SORTING_STANDARD_VALUE"),null).equals(context.getFormattedValue("name",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",107,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("ProductSortingForm.ProductName.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
					<option value="manufacturerName" <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("SortingOwner:PRODUCT_SORTING_STANDARD_VALUE"))))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SortingOwner:PRODUCT_SORTING_STANDARD_VALUE"),null).equals(context.getFormattedValue("manufacturerName",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",108,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("ProductSortingForm.ManufacturerName.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
					<option value="value" <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("SortingOwner:PRODUCT_SORTING_STANDARD_VALUE"))))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SortingOwner:PRODUCT_SORTING_STANDARD_VALUE"),null).equals(context.getFormattedValue("value",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",109,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("ProductSortingForm.ListPrice.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
					<option value="sku" <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("SortingOwner:PRODUCT_SORTING_STANDARD_VALUE"))))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SortingOwner:PRODUCT_SORTING_STANDARD_VALUE"),null).equals(context.getFormattedValue("sku",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",110,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("ProductSortingForm.ProductID.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
				</select>
			<% } else { %>
				<select name="RegFormProductSorting_ProductSortingStandardValue" class="select inputfield_en" disabled="disabled" >
					<option value="name"  <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("SortingOwner:PRODUCT_SORTING_STANDARD_VALUE"))))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SortingOwner:PRODUCT_SORTING_STANDARD_VALUE"),null).equals(context.getFormattedValue("name",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",114,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("ProductSortingForm.ProductName.option1",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
					<option value="manufacturerName" <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("SortingOwner:PRODUCT_SORTING_STANDARD_VALUE"))))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SortingOwner:PRODUCT_SORTING_STANDARD_VALUE"),null).equals(context.getFormattedValue("manufacturerName",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",115,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("ProductSortingForm.ManufacturerName.option1",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
					<option value="value" <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("SortingOwner:PRODUCT_SORTING_STANDARD_VALUE"))))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SortingOwner:PRODUCT_SORTING_STANDARD_VALUE"),null).equals(context.getFormattedValue("value",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",116,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("ProductSortingForm.ListPrice.option1",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
					<option value="sku" <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("SortingOwner:PRODUCT_SORTING_STANDARD_VALUE"))))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SortingOwner:PRODUCT_SORTING_STANDARD_VALUE"),null).equals(context.getFormattedValue("sku",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",117,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("ProductSortingForm.ProductID.option1",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
				</select>
			<% } %>
			</td>
		  </tr>
		</table>
		</td>
	</tr>	
	<tr>
		<td class="table_detail" nowrap="nowrap" colspan="2">&nbsp;</td>
		<td>
		 <table cellspacing="0" cellpadding="0" border="0">
		  <tr>
			<td class="input_radio" >
				<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("SortingOwner:PRODUCT_SORTING_ATTRIBUTE")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SortingOwner:PRODUCT_SORTING_ATTRIBUTE"),null).equals(context.getFormattedValue("custom",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("ProductSortingAttribute")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ProductSortingAttribute"),null).equals(context.getFormattedValue("custom",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",131,e);}if (_boolean_result) { %>
					<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_CATALOGS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",132,e);}if (_boolean_result) { %>
						<input type="radio" name="RegFormProductSorting_ProductSortingAttribute" id="RegFormProductSorting_ProductSortingAttribute_custom" value="custom" checked="checked" />
					<% } else { %>
						<input type="radio" name="RegFormProductSorting_ProductSortingAttribute" id="RegFormProductSorting_ProductSortingAttribute_custom" value="custom" checked="checked" disabled="disabled"/>
					<% } %>
				<% } else { %>
					<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_CATALOGS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",138,e);}if (_boolean_result) { %>
						<input type="radio" name="RegFormProductSorting_ProductSortingAttribute" id="RegFormProductSorting_ProductSortingAttribute_custom" value="custom" />
					<% } else { %>
						<input type="radio" name="RegFormProductSorting_ProductSortingAttribute" id="RegFormProductSorting_ProductSortingAttribute_custom" value="custom" disabled="disabled" />
					<% } %>
				<% } %>
			</td>
			<td class="label_radio_text"><label class="label label_radio_text label_light" for="RegFormProductSorting_ProductSortingAttribute_custom"><% {out.write(localizeISText("ProductSortingForm.Custom.label1",null,null,null,null,null,null,null,null,null,null,null,null));} %></label></td>
				<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_CATALOGS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",146,e);}if (_boolean_result) { %>
					<td class="table_detail">
					<input type="text" name="RegFormProductSorting_ProductSortingCustomValue" maxlength="255" size="10" class="inputfield_en" value="<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("SortingOwner:PRODUCT_SORTING_CUSTOM_VALUE"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",148,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("SortingOwner:PRODUCT_SORTING_CUSTOM_VALUE"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {148}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %><% } %>"/>
					</td>
					<td class="table_detail">
					<select name="RegFormProductSorting_ProductSortingCustomValueType" class="select inputfield_en">
						<option value="Text"  <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("SortingOwner:PRODUCT_SORTING_CUSTOM_VALUE_TYPE"))))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SortingOwner:PRODUCT_SORTING_CUSTOM_VALUE_TYPE"),null).equals(context.getFormattedValue("Text",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",152,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("ProductSortingForm.String.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
						<option value="Integer" <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("SortingOwner:PRODUCT_SORTING_CUSTOM_VALUE_TYPE"))))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SortingOwner:PRODUCT_SORTING_CUSTOM_VALUE_TYPE"),null).equals(context.getFormattedValue("Integer",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",153,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("ProductSortingForm.Integer.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
						<option value="Float" <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("SortingOwner:PRODUCT_SORTING_CUSTOM_VALUE_TYPE"))))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SortingOwner:PRODUCT_SORTING_CUSTOM_VALUE_TYPE"),null).equals(context.getFormattedValue("Float",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",154,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("ProductSortingForm.Double.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
					</select>
					</td>
					<td class="input_checkbox">
					<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("SortingOwner:PRODUCT_SORTING_CUSTOM_LOCALIZABLE_FLAG"))))).booleanValue() && ((Boolean) ((( ((Number) getObject("SortingOwner:PRODUCT_SORTING_CUSTOM_LOCALIZABLE_FLAG")).doubleValue() ==((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",158,e);}if (_boolean_result) { %>
						<input type="checkbox" name="RegFormProductSorting_ProductSortingCustomLocalizableFlag" id="RegFormProductSorting_ProductSortingCustomLocalizableFlag" checked="checked"  />
					<% } else { %>
						<input type="checkbox" name="RegFormProductSorting_ProductSortingCustomLocalizableFlag" id="RegFormProductSorting_ProductSortingCustomLocalizableFlag" />
					<% } %>
					</td>
					<td  class="label_checkbox_text"><label class="label label_checkbox_text label_light" for="RegFormProductSorting_ProductSortingCustomLocalizableFlag"><% {out.write(localizeISText("ProductSortingForm.Localizable.label",null,null,null,null,null,null,null,null,null,null,null,null));} %></label></td>
				<% } else { %>
					<td class="table_detail">
					<input type="text" name="RegFormProductSorting_ProductSortingCustomValue" maxlength="255" size="10" class="inputfield_en" value="<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("SortingOwner:PRODUCT_SORTING_CUSTOM_VALUE"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",167,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("SortingOwner:PRODUCT_SORTING_CUSTOM_VALUE"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {167}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %><% } %>" disabled="disabled"/>
					</td>
					<td class="table_detail">
					<select name="RegFormProductSorting_ProductSortingCustomValueType" class="select inputfield_en" disabled="disabled">
						<option value="Text"  <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("SortingOwner:PRODUCT_SORTING_CUSTOM_VALUE_TYPE"))))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SortingOwner:PRODUCT_SORTING_CUSTOM_VALUE_TYPE"),null).equals(context.getFormattedValue("Text",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",171,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("ProductSortingForm.String.option1",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
						<option value="Integer" <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("SortingOwner:PRODUCT_SORTING_CUSTOM_VALUE_TYPE"))))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SortingOwner:PRODUCT_SORTING_CUSTOM_VALUE_TYPE"),null).equals(context.getFormattedValue("Integer",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",172,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("ProductSortingForm.Integer.option1",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
						<option value="Float" <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("SortingOwner:PRODUCT_SORTING_CUSTOM_VALUE_TYPE"))))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SortingOwner:PRODUCT_SORTING_CUSTOM_VALUE_TYPE"),null).equals(context.getFormattedValue("Float",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",173,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("ProductSortingForm.Double.option1",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
					</select>
					</td>
					<td class="input_checkbox">
					<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("SortingOwner:PRODUCT_SORTING_CUSTOM_LOCALIZABLE_FLAG"))))).booleanValue() && ((Boolean) ((( ((Number) getObject("SortingOwner:PRODUCT_SORTING_CUSTOM_LOCALIZABLE_FLAG")).doubleValue() ==((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",177,e);}if (_boolean_result) { %>
						<input type="checkbox" name="RegFormProductSorting_ProductSortingCustomLocalizableFlag" id="RegFormProductSorting_ProductSortingCustomLocalizableFlag" checked="checked" disabled="disabled" />
					<% } else { %>
						<input type="checkbox" name="RegFormProductSorting_ProductSortingCustomLocalizableFlag" id="RegFormProductSorting_ProductSortingCustomLocalizableFlag" disabled="disabled" />
					<% } %>
					</td>
					<td  class="label_checkbox_text"><label class="label label_checkbox_text label_light" for="RegFormProductSorting_ProductSortingCustomLocalizableFlag"><% {out.write(localizeISText("ProductSortingForm.Localizable.label1",null,null,null,null,null,null,null,null,null,null,null,null));} %></label></td>
				<% } %>
			 </tr>
		  </table>
		 </td>	
	</tr>
	<tr>
		<td colspan="5" style="height:7px"/>
	</tr>
	<tr>
		<td nowrap="nowrap" colspan="2" class="label_select right"><label class="label label_select label_light" for="RegFormProductSorting_ProductSortingDirection"><% {out.write(localizeISText("ProductSortingForm.SortingDirection.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
		<td class="fielditem" >
			<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_CATALOGS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",195,e);}if (_boolean_result) { %>
				<select name="RegFormProductSorting_ProductSortingDirection" id="RegFormProductSorting_ProductSortingDirection" class="select inputfield_en">
					<option value="ascending"  <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("SortingOwner:PRODUCT_SORTING_DIRECTION"))))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SortingOwner:PRODUCT_SORTING_DIRECTION"),null).equals(context.getFormattedValue("ascending",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",197,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("ProductSortingForm.Ascending.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
					<option value="descending" <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("SortingOwner:PRODUCT_SORTING_DIRECTION"))))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SortingOwner:PRODUCT_SORTING_DIRECTION"),null).equals(context.getFormattedValue("descending",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",198,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("ProductSortingForm.Descending.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
				</select>
			<% } else { %>
				<select name="RegFormProductSorting_ProductSortingDirection" id="RegFormProductSorting_ProductSortingDirection" class="select inputfield_en" disabled="disabled">
					<option value="ascending"  <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("SortingOwner:PRODUCT_SORTING_DIRECTION"))))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SortingOwner:PRODUCT_SORTING_DIRECTION"),null).equals(context.getFormattedValue("ascending",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",202,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("ProductSortingForm.Ascending.option1",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
					<option value="descending" <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("SortingOwner:PRODUCT_SORTING_DIRECTION"))))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SortingOwner:PRODUCT_SORTING_DIRECTION"),null).equals(context.getFormattedValue("descending",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",203,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("ProductSortingForm.Descending.option1",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
				</select>
			<% } %>
		</td>
		<td class="table_detail" width="100%">&nbsp;</td>
	</tr>
	<tr>
		<td colspan="5" style="height:7px"/>
	</tr>

</table><% printFooter(out); %>