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
		<% {Object temp_obj = (getObject("Catalog:OriginalCatalog")); getPipelineDictionary().put("SortingOwner", temp_obj);} %>
	<% } else { %>
		<% {Object temp_obj = (getObject("Category")); getPipelineDictionary().put("SortingOwner", temp_obj);} %>
	<% } %>

<table border="0" cellspacing="0" cellpadding="0" width="100%">
	<tr><td colspan="5"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" alt="" border="0" width="1" height="10"></td></tr>	
	<tr>
		<td class="table_title_description" colspan="5">
			<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Catalog:Root:UUID"),null).equals(context.getFormattedValue(getObject("Category:UUID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",17,e);}if (_boolean_result) { %>
				<% {out.write(localizeISText("ChannelProductSortingForm.SelectDefaultToUseTheSortingSettings.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %>
				<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannel")))).booleanValue() && ((Boolean) ((( ((Number) getObject("CurrentChannel:TypeCode")).doubleValue() ==((Number)(new Double(52))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",19,e);}if (_boolean_result) { %>
					</br></br><% {out.write(localizeISText("ChannelProductSortingForm.SeeTheDocumentation.table_title_description",null,null,context.getFormattedValue(context.webRoot(),null) + context.getFormattedValue("/help/con_cat.html#con_cat_sort",null),"selection_link","_blank",null,null,null,null,null,null,null));} %>
				<% } %>
			<% } else { %>
				<% {out.write(localizeISText("ChannelProductSortingForm.SelectDefaultToUseTheSortingSettings.link",null,null,null,null,null,null,null,null,null,null,null,null));} %>
				<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannel")))).booleanValue() && ((Boolean) ((( ((Number) getObject("CurrentChannel:TypeCode")).doubleValue() ==((Number)(new Double(52))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",24,e);}if (_boolean_result) { %>
					</br></br><% {out.write(localizeISText("ChannelProductSortingForm.SeeTheDocumentation.table_title_description",null,null,context.getFormattedValue(context.webRoot(),null) + context.getFormattedValue("/help/con_cat.html#con_cat_sort",null),"selection_link","_blank",null,null,null,null,null,null,null));} %>
				<% } %>
			<% } %>
		</td>
	</tr>	
	<tr><td colspan="5"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" alt="" border="0" width="1" height="10"></td></tr>	
	<tr>
		<td class="input_radio">
			<% _boolean_result=false;try {_boolean_result=((Boolean)(((!((Boolean) (disableErrorMessages().isDefined(getObject("SortingOwner:PRODUCT_SORTING_TYPE")))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("SortingOwner:PRODUCT_SORTING_TYPE"),null).equals(context.getFormattedValue("default",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",33,e);}if (_boolean_result) { %>
				<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("Catalog:isProxy")).booleanValue() || ((Boolean) ((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_CATALOGS")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",34,e);}if (_boolean_result) { %>
					<input type="radio" name="RegFormProductSorting_ProductSortingType" value="default" checked="checked" disabled="disabled" />
				<% } else { %>
					<input type="radio" name="RegFormProductSorting_ProductSortingType" value="default" checked="checked" />
				<% } %>
			<% } else { %>
				<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("Catalog:isProxy")).booleanValue() || ((Boolean) ((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_CATALOGS")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",40,e);}if (_boolean_result) { %>
					<input type="radio" name="RegFormProductSorting_ProductSortingType" value="default" disabled="disabled" />
				<% } else { %>
					<input type="radio" name="RegFormProductSorting_ProductSortingType" value="default" />
				<% } %>
			<% } %>
		</td>
		<td class="label_radio_text" nowrap="nowrap" colspan="4"><label class="label label_radio_text label_light"><% {out.write(localizeISText("ChannelProductSortingForm.Default.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></label></td>
	</tr>
	<tr>
		<td class="input_radio">
			<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("SortingOwner:PRODUCT_SORTING_TYPE")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SortingOwner:PRODUCT_SORTING_TYPE"),null).equals(context.getFormattedValue("custom",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",51,e);}if (_boolean_result) { %>
				<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("Catalog:isProxy")).booleanValue() || ((Boolean) ((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_CATALOGS")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",52,e);}if (_boolean_result) { %>
					<input type="radio" name="RegFormProductSorting_ProductSortingType" value="custom" checked="checked" disabled="disabled" />
				<% } else { %>
					<input type="radio" name="RegFormProductSorting_ProductSortingType" value="custom" checked="checked" />
				<% } %>
			<% } else { %>
				<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("Catalog:isProxy")).booleanValue() || ((Boolean) ((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_CATALOGS")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",58,e);}if (_boolean_result) { %>
					<input type="radio" name="RegFormProductSorting_ProductSortingType" value="custom" disabled="disabled" />
				<% } else { %>
					<input type="radio" name="RegFormProductSorting_ProductSortingType" value="custom" />
				<% } %>
			<% } %>
		</td>
		<td class="label_radio_text" nowrap="nowrap"><label class="label label_radio_text label_light"><% {out.write(localizeISText("ChannelProductSortingForm.Custom.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %>&nbsp;<img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/arrow_right.gif" id="img_arrow" alt="" border="0"/> <% {out.write(localizeISText("ChannelProductSortingForm.SortingAttribute.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %>:&nbsp;</label></td>
		<td>
			<table cellspacing="0" cellpadding="0" border="0">
				<tr>
					<td class="input_radio">
						<% _boolean_result=false;try {_boolean_result=((Boolean)((((((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("SortingOwner:PRODUCT_SORTING_ATTRIBUTE")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SortingOwner:PRODUCT_SORTING_ATTRIBUTE"),null).equals(context.getFormattedValue("none",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || !((Boolean) ((disableErrorMessages().isDefined(getObject("SortingOwner:PRODUCT_SORTING_ATTRIBUTE"))))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",70,e);}if (_boolean_result) { %>
							<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("Catalog:isProxy")).booleanValue() || ((Boolean) ((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_CATALOGS")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",71,e);}if (_boolean_result) { %>
								<input type="radio" name="RegFormProductSorting_ProductSortingAttribute" value="none" checked="checked" disabled="disabled" />
							<% } else { %>
								<input type="radio" name="RegFormProductSorting_ProductSortingAttribute" value="none" checked="checked" />
							<% } %>
						<% } else { %>
							<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("Catalog:isProxy")).booleanValue() || ((Boolean) ((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_CATALOGS")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",77,e);}if (_boolean_result) { %>
								<input type="radio" name="RegFormProductSorting_ProductSortingAttribute" value="none" disabled="disabled" />
							<% } else { %>
								<input type="radio" name="RegFormProductSorting_ProductSortingAttribute" value="none" />
							<% } %>
						<% } %>
					</td>
					<td class="label_radio_text"><label class="label label_radio_text label_light"><% {out.write(localizeISText("ChannelProductSortingForm.None.input",null,null,null,null,null,null,null,null,null,null,null,null));} %></label></td>
				</tr>
			</table>
		</td>
	</tr>
	<tr>
		<td class="table_detail" nowrap="nowrap" colspan="2">&nbsp;</td>
		<td>
			<table cellspacing="0" cellpadding="0" border="0">
				<tr>
					<td class="input_radio">
						<% _boolean_result=false;try {_boolean_result=((Boolean)((((((Boolean) (disableErrorMessages().isDefined(getObject("SortingOwner:PRODUCT_SORTING_ATTRIBUTE")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SortingOwner:PRODUCT_SORTING_ATTRIBUTE"),null).equals(context.getFormattedValue("standard",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",95,e);}if (_boolean_result) { %>
							<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("Catalog:isProxy")).booleanValue() || ((Boolean) ((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_CATALOGS")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",96,e);}if (_boolean_result) { %>
								<input type="radio" name="RegFormProductSorting_ProductSortingAttribute" value="standard" checked="checked" disabled="disabled" />
							<% } else { %>
								<input type="radio" name="RegFormProductSorting_ProductSortingAttribute" value="standard" checked="checked" />
							<% } %>
						<% } else { %>
							<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("Catalog:isProxy")).booleanValue() || ((Boolean) ((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_CATALOGS")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",102,e);}if (_boolean_result) { %>
								<input type="radio" name="RegFormProductSorting_ProductSortingAttribute" value="standard" disabled="disabled" />
							<% } else { %>
								<input type="radio" name="RegFormProductSorting_ProductSortingAttribute" value="standard" />
							<% } %>
						<% } %>
					</td>
					<td class="label_radio_text"><label class="label label_radio_text label_light"><% {out.write(localizeISText("ChannelProductSortingForm.Standard.input",null,null,null,null,null,null,null,null,null,null,null,null));} %></label></td>
				</tr>
			</table>
		</td>
		<td class="table_detail" width="100%">
			<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("Catalog:isProxy")).booleanValue() || ((Boolean) ((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_CATALOGS")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",114,e);}if (_boolean_result) { %>
				<select name="RegFormProductSorting_ProductSortingStandardValue" class="select inputfield_en" disabled="disabled" >
					<option value="name"  <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("SortingOwner:PRODUCT_SORTING_STANDARD_VALUE"))))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SortingOwner:PRODUCT_SORTING_STANDARD_VALUE"),null).equals(context.getFormattedValue("name",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",116,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("ChannelProductSortingForm.ProductName.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
					<option value="manufacturerName" <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("SortingOwner:PRODUCT_SORTING_STANDARD_VALUE"))))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SortingOwner:PRODUCT_SORTING_STANDARD_VALUE"),null).equals(context.getFormattedValue("manufacturerName",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",117,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("ChannelProductSortingForm.ManufacturerName.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
					<option value="value" <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("SortingOwner:PRODUCT_SORTING_STANDARD_VALUE"))))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SortingOwner:PRODUCT_SORTING_STANDARD_VALUE"),null).equals(context.getFormattedValue("value",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",118,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("ChannelProductSortingForm.ListPrice.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
					<option value="sku" <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("SortingOwner:PRODUCT_SORTING_STANDARD_VALUE"))))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SortingOwner:PRODUCT_SORTING_STANDARD_VALUE"),null).equals(context.getFormattedValue("sku",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",119,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("ChannelProductSortingForm.ProductID.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>	
				</select>
			<% } else { %>
				<select name="RegFormProductSorting_ProductSortingStandardValue" class="select inputfield_en" >
					<option value="name"  <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("SortingOwner:PRODUCT_SORTING_STANDARD_VALUE"))))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SortingOwner:PRODUCT_SORTING_STANDARD_VALUE"),null).equals(context.getFormattedValue("name",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",123,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("ChannelProductSortingForm.ProductName.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
					<option value="manufacturerName" <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("SortingOwner:PRODUCT_SORTING_STANDARD_VALUE"))))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SortingOwner:PRODUCT_SORTING_STANDARD_VALUE"),null).equals(context.getFormattedValue("manufacturerName",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",124,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("ChannelProductSortingForm.ManufacturerName.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
					<option value="value" <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("SortingOwner:PRODUCT_SORTING_STANDARD_VALUE"))))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SortingOwner:PRODUCT_SORTING_STANDARD_VALUE"),null).equals(context.getFormattedValue("value",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",125,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("ChannelProductSortingForm.ListPrice.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
					<option value="sku" <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("SortingOwner:PRODUCT_SORTING_STANDARD_VALUE"))))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SortingOwner:PRODUCT_SORTING_STANDARD_VALUE"),null).equals(context.getFormattedValue("sku",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",126,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("ChannelProductSortingForm.ProductID.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
				</select>
			<% } %>
		</td>
	</tr>	
	<tr>
		<td class="table_detail" nowrap="nowrap" colspan="2">&nbsp;</td>
		<td>
			<table cellspacing="0" cellpadding="0" border="0">
				<tr>
					<td class="input_radio">
						<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("SortingOwner:PRODUCT_SORTING_ATTRIBUTE")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SortingOwner:PRODUCT_SORTING_ATTRIBUTE"),null).equals(context.getFormattedValue("custom",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("ProductSortingAttribute")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ProductSortingAttribute"),null).equals(context.getFormattedValue("custom",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",137,e);}if (_boolean_result) { %>
							<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("Catalog:isProxy")).booleanValue() || ((Boolean) ((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_CATALOGS")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",138,e);}if (_boolean_result) { %>
								<input type="radio" name="RegFormProductSorting_ProductSortingAttribute" value="custom" checked="checked" disabled="disabled" />
							<% } else { %>
								<input type="radio" name="RegFormProductSorting_ProductSortingAttribute" value="custom" checked="checked" />
							<% } %>
						<% } else { %>
							<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("Catalog:isProxy")).booleanValue() || ((Boolean) ((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_CATALOGS")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",144,e);}if (_boolean_result) { %>
								<input type="radio" name="RegFormProductSorting_ProductSortingAttribute" value="custom" disabled="disabled" />
							<% } else { %>
								<input type="radio" name="RegFormProductSorting_ProductSortingAttribute" value="custom" />
							<% } %>
						<% } %>
					</td>
					<td class="label_radio_text"><label class="label label_radio_text label_light"><% {out.write(localizeISText("ChannelProductSortingForm.Custom.input",null,null,null,null,null,null,null,null,null,null,null,null));} %></label></td>
				</tr>
			</table>
		</td>
		<td>
			<table cellspacing="0" cellpadding="0" border="0">
				<tr>					
					<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("Catalog:isProxy")).booleanValue() || ((Boolean) ((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_CATALOGS")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",158,e);}if (_boolean_result) { %>
						<td class="table_detail">
							<input type="text" name="RegFormProductSorting_ProductSortingCustomValue" maxlength="255" size="10" class="inputfield_en" value="<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("SortingOwner:PRODUCT_SORTING_CUSTOM_VALUE"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",160,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("SortingOwner:PRODUCT_SORTING_CUSTOM_VALUE"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {160}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %><% } %>" disabled="disabled" />
						</td>
						<td class="table_detail">
							<select name="RegFormProductSorting_ProductSortingCustomValueType" class="select inputfield_en" disabled="disabled" >
								<option value="Text"  <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("SortingOwner:PRODUCT_SORTING_CUSTOM_VALUE_TYPE"))))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SortingOwner:PRODUCT_SORTING_CUSTOM_VALUE_TYPE"),null).equals(context.getFormattedValue("Text",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",164,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("ChannelProductSortingForm.String.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
								<option value="Integer" <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("SortingOwner:PRODUCT_SORTING_CUSTOM_VALUE_TYPE"))))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SortingOwner:PRODUCT_SORTING_CUSTOM_VALUE_TYPE"),null).equals(context.getFormattedValue("Integer",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",165,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("ChannelProductSortingForm.Integer.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
								<option value="Float" <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("SortingOwner:PRODUCT_SORTING_CUSTOM_VALUE_TYPE"))))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SortingOwner:PRODUCT_SORTING_CUSTOM_VALUE_TYPE"),null).equals(context.getFormattedValue("Float",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",166,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("ChannelProductSortingForm.Double.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
							</select>
						</td>
						<td class="input_checkbox">
							<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("SortingOwner:PRODUCT_SORTING_CUSTOM_LOCALIZABLE_FLAG"))))).booleanValue() && ((Boolean) ((( ((Number) getObject("SortingOwner:PRODUCT_SORTING_CUSTOM_LOCALIZABLE_FLAG")).doubleValue() ==((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",170,e);}if (_boolean_result) { %>
								<input type="checkbox" name="RegFormProductSorting_ProductSortingCustomLocalizableFlag" checked="checked" disabled="disabled" />
							<% } else { %>
								<input type="checkbox" name="RegFormProductSorting_ProductSortingCustomLocalizableFlag" disabled="disabled" />
							<% } %>
						</td>
					<% } else { %>
						<td class="table_detail">				
							<input type="text" name="RegFormProductSorting_ProductSortingCustomValue" maxlength="255" size="10" class="inputfield_en" value="<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("SortingOwner:PRODUCT_SORTING_CUSTOM_VALUE"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",178,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("SortingOwner:PRODUCT_SORTING_CUSTOM_VALUE"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {178}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %><% } %>" />
						</td>
						<td class="table_detail">
							<select name="RegFormProductSorting_ProductSortingCustomValueType" class="select inputfield_en" >
								<option value="Text"  <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("SortingOwner:PRODUCT_SORTING_CUSTOM_VALUE_TYPE"))))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SortingOwner:PRODUCT_SORTING_CUSTOM_VALUE_TYPE"),null).equals(context.getFormattedValue("Text",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",182,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("ChannelProductSortingForm.String.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
								<option value="Integer" <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("SortingOwner:PRODUCT_SORTING_CUSTOM_VALUE_TYPE"))))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SortingOwner:PRODUCT_SORTING_CUSTOM_VALUE_TYPE"),null).equals(context.getFormattedValue("Integer",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",183,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("ChannelProductSortingForm.Integer.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
								<option value="Float" <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("SortingOwner:PRODUCT_SORTING_CUSTOM_VALUE_TYPE"))))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SortingOwner:PRODUCT_SORTING_CUSTOM_VALUE_TYPE"),null).equals(context.getFormattedValue("Float",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",184,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("ChannelProductSortingForm.Double.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
							</select>
						</td>
						<td class="input_checkbox">
							<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("SortingOwner:PRODUCT_SORTING_CUSTOM_LOCALIZABLE_FLAG"))))).booleanValue() && ((Boolean) ((( ((Number) getObject("SortingOwner:PRODUCT_SORTING_CUSTOM_LOCALIZABLE_FLAG")).doubleValue() ==((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",188,e);}if (_boolean_result) { %>
								<input type="checkbox" name="RegFormProductSorting_ProductSortingCustomLocalizableFlag" checked="checked" />
							<% } else { %>
								<input type="checkbox" name="RegFormProductSorting_ProductSortingCustomLocalizableFlag" />
							<% } %>
						</td>
					<% } %>
				<td class="label_checkbox_text"><label class="label label_checkbox_text"><% {out.write(localizeISText("ChannelProductSortingForm.Localizable.input",null,null,null,null,null,null,null,null,null,null,null,null));} %></label></td>
				</tr>
			</table>
		</td>
	</tr>
	<tr>
		<td colspan="5" style="height:7px"/>
	</tr>
	<tr>
		<td class="table_detail" nowrap="nowrap" colspan="1">&nbsp;</td>
		<td class="label_select right" nowrap="nowrap"><label class="label label_select label_light"><% {out.write(localizeISText("ChannelProductSortingForm.SortingDirection.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %>:&nbsp;</label></td>
		<td class="table_detail" >
			<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("Catalog:isProxy")).booleanValue() || ((Boolean) ((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_CATALOGS")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",207,e);}if (_boolean_result) { %>
				<select name="RegFormProductSorting_ProductSortingDirection" class="select inputfield_en" disabled="disabled">
					<option value="ascending"  <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("SortingOwner:PRODUCT_SORTING_DIRECTION"))))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SortingOwner:PRODUCT_SORTING_DIRECTION"),null).equals(context.getFormattedValue("ascending",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",209,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("ChannelProductSortingForm.Ascending.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
					<option value="descending" <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("SortingOwner:PRODUCT_SORTING_DIRECTION"))))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SortingOwner:PRODUCT_SORTING_DIRECTION"),null).equals(context.getFormattedValue("descending",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",210,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("ChannelProductSortingForm.Descending.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
				</select>
			<% } else { %>
				<select name="RegFormProductSorting_ProductSortingDirection" class="select inputfield_en" >
					<option value="ascending"  <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("SortingOwner:PRODUCT_SORTING_DIRECTION"))))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SortingOwner:PRODUCT_SORTING_DIRECTION"),null).equals(context.getFormattedValue("ascending",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",214,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("ChannelProductSortingForm.Ascending.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
					<option value="descending" <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("SortingOwner:PRODUCT_SORTING_DIRECTION"))))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SortingOwner:PRODUCT_SORTING_DIRECTION"),null).equals(context.getFormattedValue("descending",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",215,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("ChannelProductSortingForm.Descending.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
				</select>
			<% } %>
		</td>
		<td class="table_detail" width="100%">&nbsp;</td>
	</tr>
	<tr>
		<td colspan="5" style="height:7px"/>
	</tr>

</table><% printFooter(out); %>