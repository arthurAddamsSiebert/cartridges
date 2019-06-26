<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %>

<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("StartCategoryUnsorted"),null).equals(context.getFormattedValue("False",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",4,e);}if (_boolean_result) { %>
	<table border="0" cellspacing="0" cellpadding="0" width="100%">
		<tr>
			<td class="table_detail">
				<% {out.write(localizeISText("SubCategorySortingForm.SubCategorySortingIsCurrentlySetToManually.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %>
				<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_CATALOGS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",9,e);}if (_boolean_result) { %>
					<br/>
					<% {out.write(localizeISText("SubCategorySortingForm.InOrderToUseDynamicSubCategorySortingYouNeedToSele.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %>
				<% } %>
			</td>
		</tr>
	</table>
<% } else { %>	
<% URLPipelineAction action297 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCategorySubCategory-UpdateSubCategorySorting",null)))),null));String site297 = null;String serverGroup297 = null;String actionValue297 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCategorySubCategory-UpdateSubCategorySorting",null)))),null);if (site297 == null){  site297 = action297.getDomain();  if (site297 == null)  {      site297 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup297 == null){  serverGroup297 = action297.getServerGroup();  if (serverGroup297 == null)  {      serverGroup297 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCategorySubCategory-UpdateSubCategorySorting",null)))),null));out.print("\"");out.print(" name=\"");out.print("UpdateSubCategorySortingForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue297, site297, serverGroup297,true)); %>
	<input name="CatalogCategoryID" type="hidden" value="<%=context.getFormattedValue(getObject("Category:UUID"),null)%>"/>
	<input name="ParentCategoryID" type="hidden" value="<%=context.getFormattedValue(getObject("ParentCategory:UUID"),null)%>"/>
	<input name="CatalogID" type="hidden" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Catalog:Id"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {20}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
	<input name="CatalogUUID" type="hidden" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Catalog:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {21}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/> 

	<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Catalog:Root:UUID"),null).equals(context.getFormattedValue(getObject("Category:UUID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",23,e);}if (_boolean_result) { %>
		<% {Object temp_obj = (getObject("Catalog")); getPipelineDictionary().put("SortingOwner", temp_obj);} %>
	<% } else { %>
		<% {Object temp_obj = (getObject("Category")); getPipelineDictionary().put("SortingOwner", temp_obj);} %>
	<% } %>

	<table border="0" cellspacing="0" cellpadding="0" width="100%" class="n">
		<tr>
			<td class="input_radio">
				<% _boolean_result=false;try {_boolean_result=((Boolean)(((!((Boolean) (disableErrorMessages().isDefined(getObject("SortingOwner:SUBCATEGORY_SORTING_TYPE")))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("SortingOwner:SUBCATEGORY_SORTING_TYPE"),null).equals(context.getFormattedValue("default",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",32,e);}if (_boolean_result) { %>
					<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_CATALOGS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",33,e);}if (_boolean_result) { %>
						<input type="radio" name="RegFormSubCategorySorting_SubCategorySortingType" id="RegFormSubCategorySorting_SubCategorySortingType_default" value="default" checked="checked" />
					<% } else { %>
						<input type="radio" name="RegFormSubCategorySorting_SubCategorySortingType" id="RegFormSubCategorySorting_SubCategorySortingType_default" value="default" checked="checked" disabled="disabled" />
					<% } %>
				<% } else { %>
					<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_CATALOGS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",39,e);}if (_boolean_result) { %>
						<input type="radio" name="RegFormSubCategorySorting_SubCategorySortingType" id="RegFormSubCategorySorting_SubCategorySortingType_default" value="default" />
					<% } else { %>
						<input type="radio" name="RegFormSubCategorySorting_SubCategorySortingType" id="RegFormSubCategorySorting_SubCategorySortingType_default" value="default" disabled="disabled" />
					<% } %>
				<% } %>
			</td>
			<td class="label_radio_text"><label class="label label_radio_text label_light" for="RegFormSubCategorySorting_SubCategorySortingType_default"><% {out.write(localizeISText("SubCategorySortingForm.Default.label",null,null,null,null,null,null,null,null,null,null,null,null));} %></label></td>
			<td class="table_detail" colspan="2" width="100%">&nbsp;</td>
		</tr>
		<tr>
			<td class="input_radio">
				<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("SortingOwner:SUBCATEGORY_SORTING_TYPE")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SortingOwner:SUBCATEGORY_SORTING_TYPE"),null).equals(context.getFormattedValue("custom",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",51,e);}if (_boolean_result) { %>
					<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_CATALOGS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",52,e);}if (_boolean_result) { %>
						<input type="radio" name="RegFormSubCategorySorting_SubCategorySortingType" id="RegFormSubCategorySorting_SubCategorySortingType_custom" value="custom" checked="checked" />
					<% } else { %>
						<input type="radio" name="RegFormSubCategorySorting_SubCategorySortingType" id="RegFormSubCategorySorting_SubCategorySortingType_custom" value="custom" checked="checked" disabled="disabled" />
					<% } %>
				<% } else { %>
					<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_CATALOGS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",58,e);}if (_boolean_result) { %>
						<input type="radio" name="RegFormSubCategorySorting_SubCategorySortingType" id="RegFormSubCategorySorting_SubCategorySortingType_custom" value="custom" />
					<% } else { %>
						<input type="radio" name="RegFormSubCategorySorting_SubCategorySortingType" id="RegFormSubCategorySorting_SubCategorySortingType_custom" value="custom" disabled="disabled" />
					<% } %>
				<% } %>
			</td>
			<td class="label_radio_text"><label class="label label_radio_text label_light" for="RegFormSubCategorySorting_SubCategorySortingType_custom"><% {out.write(localizeISText("SubCategorySortingForm.Custom.label",null,null,null,null,null,null,null,null,null,null,null,null));} %> <img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/arrow_right.gif" id="img_arrow" alt="" border="0"/> <% {out.write(localizeISText("SubCategorySortingForm.SortingAttribute",null,null,null,null,null,null,null,null,null,null,null,null));} %>: </label></td>
			<td>
				 <table cellspacing="0" cellpadding="0" border="0">
				  <tr>
					<td class="input_radio" >
						<% _boolean_result=false;try {_boolean_result=((Boolean)((((((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("SortingOwner:SUBCATEGORY_SORTING_ATTRIBUTE")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SortingOwner:SUBCATEGORY_SORTING_ATTRIBUTE"),null).equals(context.getFormattedValue("none",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || !((Boolean) ((disableErrorMessages().isDefined(getObject("SortingOwner:SUBCATEGORY_SORTING_ATTRIBUTE"))))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",70,e);}if (_boolean_result) { %>
							<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_CATALOGS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",71,e);}if (_boolean_result) { %>
								<input type="radio" name="RegFormSubCategorySorting_SubCategorySortingAttribute" ID="RegFormSubCategorySorting_SubCategorySortingAttribute_none" value="none" checked="checked" />
							<% } else { %>
								<input type="radio" name="RegFormSubCategorySorting_SubCategorySortingAttribute" ID="RegFormSubCategorySorting_SubCategorySortingAttribute_none" value="none" checked="checked" disabled="disabled" />
							<% } %>
						<% } else { %>
							<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_CATALOGS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",77,e);}if (_boolean_result) { %>
								<input type="radio" name="RegFormSubCategorySorting_SubCategorySortingAttribute" ID="RegFormSubCategorySorting_SubCategorySortingAttribute_none" value="none" />
							<% } else { %>
								<input type="radio" name="RegFormSubCategorySorting_SubCategorySortingAttribute" ID="RegFormSubCategorySorting_SubCategorySortingAttribute_none" value="none" disabled="disabled" />
							<% } %>
						<% } %>
					</td>
					<td class="label_radio_text"><label class="label label_radio_text label_light" for="RegFormSubCategorySorting_SubCategorySortingAttribute_none"><% {out.write(localizeISText("SubCategorySortingForm.None.label",null,null,null,null,null,null,null,null,null,null,null,null));} %></label></td>
				 </tr>
				</table>
		   </td>
		   <td class="table_detail" width="100%">&nbsp;</td>	 
		</tr>
		<tr>					
			<td class="table_detail" nowrap="nowrap" colspan="2">&nbsp;</td>
			<td>
				<table cellspacing="0" cellpadding="0" border="0">
				  <tr>
					<td class="input_radio" >
						<% _boolean_result=false;try {_boolean_result=((Boolean)((((((Boolean) (disableErrorMessages().isDefined(getObject("SortingOwner:SUBCATEGORY_SORTING_ATTRIBUTE")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SortingOwner:SUBCATEGORY_SORTING_ATTRIBUTE"),null).equals(context.getFormattedValue("standard",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",96,e);}if (_boolean_result) { %>
							<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_CATALOGS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",97,e);}if (_boolean_result) { %>
								<input type="radio" name="RegFormSubCategorySorting_SubCategorySortingAttribute" name="RegFormSubCategorySorting_SubCategorySortingAttribute" value="standard" checked="checked" />
							<% } else { %>
								<input type="radio" name="RegFormSubCategorySorting_SubCategorySortingAttribute"  value="standard" checked="checked" disabled="disabled" />
							<% } %>
						<% } else { %>
							<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_CATALOGS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",103,e);}if (_boolean_result) { %>
								<input type="radio" name="RegFormSubCategorySorting_SubCategorySortingAttribute" id="RegFormSubCategorySorting_SubCategorySortingAttribute_standard" value="standard" />
							<% } else { %>
								<input type="radio" name="RegFormSubCategorySorting_SubCategorySortingAttribute" id="RegFormSubCategorySorting_SubCategorySortingAttribute_standard" value="standard" disabled="disabled" />
							<% } %>
						<% } %>
					</td>
					<td class="label_radio_text"><label class="label label_radio_text label_light" for="RegFormSubCategorySorting_SubCategorySortingAttribute_standard"><% {out.write(localizeISText("SubCategorySortingForm.Standard.label",null,null,null,null,null,null,null,null,null,null,null,null));} %></label></td>
					<td class="table_detail" width="100%">
						<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_CATALOGS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",112,e);}if (_boolean_result) { %>
							<select name="RegFormSubCategorySorting_SubCategorySortingStandardValue" class="select inputfield_en">
								<option value="displayName"  <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("SortingOwner:SUBCATEGORY_SORTING_STANDARD_VALUE"))))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SortingOwner:SUBCATEGORY_SORTING_STANDARD_VALUE"),null).equals(context.getFormattedValue("displayName",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",114,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("SubCategorySortingForm.CategoryName.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
								<option value="name" <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("SortingOwner:SUBCATEGORY_SORTING_STANDARD_VALUE"))))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SortingOwner:SUBCATEGORY_SORTING_STANDARD_VALUE"),null).equals(context.getFormattedValue("name",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",115,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("SubCategorySortingForm.CategoryID.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
							</select>
						<% } else { %>					
							<select name="RegFormSubCategorySorting_SubCategorySortingStandardValue" class="select inputfield_en" disabled="disabled">
								<option value="displayName"  <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("SortingOwner:SUBCATEGORY_SORTING_STANDARD_VALUE"))))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SortingOwner:SUBCATEGORY_SORTING_STANDARD_VALUE"),null).equals(context.getFormattedValue("displayName",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",119,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("SubCategorySortingForm.CategoryName.option1",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
								<option value="name" <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("SortingOwner:SUBCATEGORY_SORTING_STANDARD_VALUE"))))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SortingOwner:SUBCATEGORY_SORTING_STANDARD_VALUE"),null).equals(context.getFormattedValue("name",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",120,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("SubCategorySortingForm.CategoryID.option1",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
							</select>
						<% } %>
					</td>
					<td class="table_detail" width="100%">&nbsp;</td>
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
					<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("SortingOwner:SUBCATEGORY_SORTING_ATTRIBUTE")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SortingOwner:SUBCATEGORY_SORTING_ATTRIBUTE"),null).equals(context.getFormattedValue("custom",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("SubCategorySortingAttribute")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SubCategorySortingAttribute"),null).equals(context.getFormattedValue("custom",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",135,e);}if (_boolean_result) { %>
						<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_CATALOGS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",136,e);}if (_boolean_result) { %>
							<input type="radio" name="RegFormSubCategorySorting_SubCategorySortingAttribute" id="RegFormSubCategorySorting_SubCategorySortingAttribute_custom" value="custom" checked="checked" />
						<% } else { %>
							<input type="radio" name="RegFormSubCategorySorting_SubCategorySortingAttribute" id="RegFormSubCategorySorting_SubCategorySortingAttribute_custom" value="custom" checked="checked" disabled="disabled" />
						<% } %>
					<% } else { %>
						<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_CATALOGS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",142,e);}if (_boolean_result) { %>
							<input type="radio" name="RegFormSubCategorySorting_SubCategorySortingAttribute" id="RegFormSubCategorySorting_SubCategorySortingAttribute_custom" value="custom" />
						<% } else { %>
							<input type="radio" name="RegFormSubCategorySorting_SubCategorySortingAttribute" id="RegFormSubCategorySorting_SubCategorySortingAttribute_custom" value="custom" disabled="disabled" />
						<% } %>
					<% } %>
				</td>
				<td class="label_radio_text"><label class="label label_radio_text label_light" for="RegFormSubCategorySorting_SubCategorySortingAttribute_custom"><% {out.write(localizeISText("SubCategorySortingForm.Custom.label1",null,null,null,null,null,null,null,null,null,null,null,null));} %></label></td>
				<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_CATALOGS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",150,e);}if (_boolean_result) { %>
					<td class="table_detail">
						<input type="text" name="RegFormSubCategorySorting_SubCategorySortingCustomValue" maxlength="255" size="10" class="inputfield_en" value="<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("SortingOwner:SUBCATEGORY_SORTING_CUSTOM_VALUE"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",152,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("SortingOwner:SUBCATEGORY_SORTING_CUSTOM_VALUE"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {152}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %><% } %>"/>
					</td>
					<td class="table_detail">				
						<select name="RegFormSubCategorySorting_SubCategorySortingCustomValueType" class="select inputfield_en">
							<option value="Text"  <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("SortingOwner:SUBCATEGORY_SORTING_CUSTOM_VALUE_TYPE"))))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SortingOwner:SUBCATEGORY_SORTING_CUSTOM_VALUE_TYPE"),null).equals(context.getFormattedValue("Text",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",156,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("SubCategorySortingForm.String.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
							<option value="Integer" <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("SortingOwner:SUBCATEGORY_SORTING_CUSTOM_VALUE_TYPE"))))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SortingOwner:SUBCATEGORY_SORTING_CUSTOM_VALUE_TYPE"),null).equals(context.getFormattedValue("Integer",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",157,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("SubCategorySortingForm.Integer.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
							<option value="Float" <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("SortingOwner:SUBCATEGORY_SORTING_CUSTOM_VALUE_TYPE"))))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SortingOwner:SUBCATEGORY_SORTING_CUSTOM_VALUE_TYPE"),null).equals(context.getFormattedValue("Float",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",158,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("SubCategorySortingForm.Double.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
						</select>
					</td>
					<td class="table_detail">
						<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("SortingOwner:SUBCATEGORY_SORTING_CUSTOM_LOCALIZABLE_FLAG"))))).booleanValue() && ((Boolean) ((( ((Number) getObject("SortingOwner:SUBCATEGORY_SORTING_CUSTOM_LOCALIZABLE_FLAG")).doubleValue() ==((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",162,e);}if (_boolean_result) { %>
							<input type="checkbox" id="RegFormSubCategorySorting_SubCategorySortingCustomLocalizableFlag" name="RegFormSubCategorySorting_SubCategorySortingCustomLocalizableFlag" checked="checked" />
						<% } else { %>
							<input type="checkbox" id="RegFormSubCategorySorting_SubCategorySortingCustomLocalizableFlag" name="RegFormSubCategorySorting_SubCategorySortingCustomLocalizableFlag" />
						<% } %>
					</td>
					<% } else { %>
						<td class="table_detail">
							<input type="text" name="RegFormSubCategorySorting_SubCategorySortingCustomValue" maxlength="255" size="10" class="inputfield_en" value="<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("SortingOwner:SUBCATEGORY_SORTING_CUSTOM_VALUE"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",170,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("SortingOwner:SUBCATEGORY_SORTING_CUSTOM_VALUE"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {170}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %><% } %>" disabled="disabled"/>
						</td>
						<td class="table_detail">
						<select name="RegFormSubCategorySorting_SubCategorySortingCustomValueType" class="select inputfield_en" disabled="disabled">
							<option value="Text"  <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("SortingOwner:SUBCATEGORY_SORTING_CUSTOM_VALUE_TYPE"))))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SortingOwner:SUBCATEGORY_SORTING_CUSTOM_VALUE_TYPE"),null).equals(context.getFormattedValue("Text",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",174,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("SubCategorySortingForm.String.option1",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
							<option value="Integer" <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("SortingOwner:SUBCATEGORY_SORTING_CUSTOM_VALUE_TYPE"))))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SortingOwner:SUBCATEGORY_SORTING_CUSTOM_VALUE_TYPE"),null).equals(context.getFormattedValue("Integer",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",175,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("SubCategorySortingForm.Integer.option1",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
							<option value="Float" <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("SortingOwner:SUBCATEGORY_SORTING_CUSTOM_VALUE_TYPE"))))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SortingOwner:SUBCATEGORY_SORTING_CUSTOM_VALUE_TYPE"),null).equals(context.getFormattedValue("Float",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",176,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("SubCategorySortingForm.Double.option1",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
						</select>
						</td>
						<td class="input_radio">
						<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("SortingOwner:SUBCATEGORY_SORTING_CUSTOM_LOCALIZABLE_FLAG"))))).booleanValue() && ((Boolean) ((( ((Number) getObject("SortingOwner:SUBCATEGORY_SORTING_CUSTOM_LOCALIZABLE_FLAG")).doubleValue() ==((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",180,e);}if (_boolean_result) { %>
							<input type="checkbox" id="RegFormSubCategorySorting_SubCategorySortingCustomLocalizableFlag" name="RegFormSubCategorySorting_SubCategorySortingCustomLocalizableFlag" checked="checked" disabled="disabled" />
						<% } else { %>
							<input type="checkbox" id="RegFormSubCategorySorting_SubCategorySortingCustomLocalizableFlag" name="RegFormSubCategorySorting_SubCategorySortingCustomLocalizableFlag" disabled="disabled" />
						<% } %>
						</td>
					<% } %>
					<td  class="label_checkbox_text"><label class="label label_checkbox_text label_light" for="RegFormSubCategorySorting_SubCategorySortingCustomLocalizableFlag"><% {out.write(localizeISText("SubCategorySortingForm.Localizable.label",null,null,null,null,null,null,null,null,null,null,null,null));} %></label></td>
					 </tr>
			  </table>
			</td>
			<td class="table_detail" width="100%">&nbsp;</td>
		</tr>	
		<tr>
			<td colspan="5"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></td>
		</tr>
		<tr>
			<td nowrap="nowrap" colspan="2" class="label_select right"><label class="label label_select label_light" for="RegFormSubCategorySorting_SubCategorySortingDirection"><% {out.write(localizeISText("SubCategorySortingForm.SortingDirection.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
			<td class="table_detail" >
				<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_CATALOGS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",199,e);}if (_boolean_result) { %>
					<select name="RegFormSubCategorySorting_SubCategorySortingDirection" id="RegFormSubCategorySorting_SubCategorySortingDirection" class="select inputfield_en">
						<option value="ascending"  <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("SortingOwner:SUBCATEGORY_SORTING_DIRECTION"))))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SortingOwner:SUBCATEGORY_SORTING_DIRECTION"),null).equals(context.getFormattedValue("ascending",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",201,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("SubCategorySortingForm.Ascending.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
						<option value="descending" <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("SortingOwner:SUBCATEGORY_SORTING_DIRECTION"))))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SortingOwner:SUBCATEGORY_SORTING_DIRECTION"),null).equals(context.getFormattedValue("descending",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",202,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("SubCategorySortingForm.Descending.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
					</select>
				<% } else { %>
					<select name="RegFormSubCategorySorting_SubCategorySortingDirection" id="RegFormSubCategorySorting_SubCategorySortingDirection" class="select inputfield_en" disabled="disabled">
						<option value="ascending"  <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("SortingOwner:SUBCATEGORY_SORTING_DIRECTION"))))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SortingOwner:SUBCATEGORY_SORTING_DIRECTION"),null).equals(context.getFormattedValue("ascending",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",206,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("SubCategorySortingForm.Ascending.option1",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
						<option value="descending" <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("SortingOwner:SUBCATEGORY_SORTING_DIRECTION"))))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SortingOwner:SUBCATEGORY_SORTING_DIRECTION"),null).equals(context.getFormattedValue("descending",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",207,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("SubCategorySortingForm.Descending.option1",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
					</select>
				<% } %>
			</td>
			<td class="table_detail" width="100%">&nbsp;</td>
		</tr>
	</table>
	
	<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_CATALOGS")))).booleanValue() && ((Boolean) ((((Boolean) (getObject("Catalog:isProxy"))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",215,e);}if (_boolean_result) { %>
		<table width="100%" border="0" cellspacing="0" cellpadding="0">
			<tr>
				<td align="right" class="n">
					<table cellpadding="0" cellspacing="4" border="0">
						<tr>
							<td class="button"><input type="submit" name="updateSubCategorySorting" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("SubCategorySortingForm.Apply.button",null)),null)%>" class="button"/></td>
							<td class="button"><input type="reset" name="reset" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("SubCategorySortingForm.Reset.button",null)),null)%>" class="button"/></td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
	<% } %>
	
<% out.print("</form>"); %>
<% } %>	
<% printFooter(out); %>