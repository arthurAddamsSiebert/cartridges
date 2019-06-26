<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %> 
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %>

<script type="text/javascript">
	$(document).ready(function() {
		var _typesSelectionClassName = 'types-selection';
		
		$('.selection-switcher').click(function() {
			var switcherTargetedSelection = $('<%=context.getFormattedValue("#",null)%>' + $(this).attr('id') + '-' + _typesSelectionClassName);
			if (switcherTargetedSelection.is(':hidden')) {
				var selections = $('.' + _typesSelectionClassName);
				selections.hide();
				selections.find('select').attr('disabled', 'disabled');
				$(switcherTargetedSelection).show();
				$(switcherTargetedSelection).find('select').removeAttr('disabled');
			}
		});

		$('.' + _typesSelectionClassName + ' select').change(function() {
			var selectedValue = $(this).val();
			$('.selection-switcher').each(function(index, switcher) {
				var switcher = $(switcher);
				var switcherTargetedSelection = $('<%=context.getFormattedValue("#",null)%>' + switcher.attr('id') + '-' + _typesSelectionClassName);
				if (switcherTargetedSelection.find('select option[value="' + selectedValue + '"]').size() > 0) {
					switcher.removeAttr('disabled');
					switcherTargetedSelection.find('select').val(selectedValue);
				} else {
					switcher.attr('disabled', 'disabled');
				}
			});
		}).filter(':visible').change();
	});
</script>

<% _boolean_result=false;try {_boolean_result=((Boolean)(((!((Boolean) (disableErrorMessages().isDefined(getObject("LinkTarget")))).booleanValue() || ((Boolean) (((!((Boolean) ((((context.getFormattedValue(getObject("LinkTarget"),null).equals(context.getFormattedValue("product",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && !((Boolean) ((((context.getFormattedValue(getObject("LinkTarget"),null).equals(context.getFormattedValue("category",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",35,e);}if (_boolean_result) { %>
	<% {Object temp_obj = ("product"); getPipelineDictionary().put("LinkTarget", temp_obj);} %>
<% } %>
<table border="0" cellspacing="0" cellpadding="0" width="100%" class="w e s">
	<colgroup>
		<col width="10%" />
		<col width="1" />
	</colgroup>
	<tfoot>
		<tr>
			<td colspan="3" class="n">
				<table width="100%" border="0" cellspacing="4" cellpadding="0">
					<tr>
						<td class="button" width="1">
							<% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/product/bulkwizard/WizardParams", null, "49");} %>
							<input type="hidden" name="ParsingLocaleID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("CurrentRequest:Locale:LocaleID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {50}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
							<input type="hidden" name="ProcessDescription" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("AssignProductLinksSelectLinkType.AssignProductCategoryLinks",null)),null)%>"/>
							<input type="hidden" name="ActionID" value="AssignProductLinks"/>
							<input type="hidden" name="IsSearchFired" value="<% {String value = null;try{value=context.getFormattedValue(getObject("IsSearchFired"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {53}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" />
							<input type="submit" name="actionList" value="&lt;&lt;&nbsp;<%=context.getFormattedValue(localizeText(context.getFormattedValue("PageletSelectComponentSlot.Previous.button",null)),null)%>" class="button"/>
						</td>
						<td class="right">
							<table border="0" cellspacing="4" cellpadding="0" width="100%">
								<tr>
									<td class="right">
										<input type="submit" name="linkType" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ComponentSelectPageletAssignmentButtons.Next.button",null)),null)%>&nbsp;&gt;&gt;" class="button actions"/>
									</td>
									<td class="button" width="1">
										<input type="submit" name="cancel" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PageletEntryPointSetParent.Cancel.button",null)),null)%>" class="button"/>
									</td>
								</tr>
							</table>
						</td>
					</tr>
				</table>
			</td>
		</tr>
	</tfoot>
	<thead>
		<tr>
			<td class="table_title n s" colspan="3">
				<% {out.write(localizeISText("AssignProductLinksSelectLinkType.Step2AssignProductCategoryLinks.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %>
			</td>
		</tr>
		<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("LinkTypeMissing")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("LinkTargetMissing")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",79,e);}if (_boolean_result) { %>
			<tr>
				<td colspan="3">
					<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box s">
						<tr>
							<td class="error_icon e" width="1"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
							<td class="error top">
								<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("LinkTypeMissing"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",86,e);}if (_boolean_result) { %>
									<strong><% {out.write(localizeISText("AssignProductLinksSelectLinkType.YouHaveNotSelectedALinkType",null,null,null,null,null,null,null,null,null,null,null,null));} %></strong>
									<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("LinkTargetMissing"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",88,e);}if (_boolean_result) { %>
										<br />
									<% } %>
								<% } %>
								<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("LinkTargetMissing"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",92,e);}if (_boolean_result) { %>
									<strong><% {out.write(localizeISText("AssignProductLinksSelectLinkType.YouHaveNotSelectedALinkTarget",null,null,null,null,null,null,null,null,null,null,null,null));} %></strong>
								<% } %>
							</td>
						</tr>
					</table>
				</td>
			</tr>
		<% } %>
		<tr>
			<td class="table_title_description s" colspan="3">
				<% {out.write(localizeISText("AssignProductLinksSelectLinkType.Step2Of3NextStepSelectProductsOrSelectCa.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %>  
				<br/>
				<br/>
				<% {out.write(localizeISText("AssignProductLinksSelectLinkType.FieldsWithARedAsterisk.table_title_description",null,null,"star",null,null,null,null,null,null,null,null,null));} %> 
			</td>
		</tr>
	</thead>
	<tbody>
		<tr>
			<td colspan="3"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="5" alt="" border="0"/></td>
		</tr>
		<tr>
			<td nowrap="nowrap" class="label_select">
				<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("LinkTargetMissing"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",116,e);}if (_boolean_result) { %>
					<label for="ProductLinkTarget" class="label label_select label_error"><% {out.write(localizeISText("NewProductAttributeMappingRule.Target.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></label>
				<% } else { %>
					<label for="ProductLinkTarget" class="label label_select"><% {out.write(localizeISText("NewProductAttributeMappingRule.Target.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></label>
				<% } %>
			</td>
			<td class="input_radio">
				<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("LinkTarget"),null).equals(context.getFormattedValue("product",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",123,e);}if (_boolean_result) { %>
					<input type="radio" name="LinkTarget" id="link-to-product" class="selection-switcher" value="product" checked="checked" />
				<% } else { %>
					<input type="radio" name="LinkTarget" id="link-to-product" class="selection-switcher" value="product" />
				<% } %>
			</td>
			<td>
				<label for="link-to-product" class="label label_radio_text label_light"><% {out.write(localizeISText("BrowseClassificationCatalog.Product.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></label>
			</td>
		</tr>
		<tr>
			<td></td>
			<td class="input_radio">
				<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("LinkTarget"),null).equals(context.getFormattedValue("category",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",136,e);}if (_boolean_result) { %>
					<input type="radio" name="LinkTarget" id="link-to-category" class="selection-switcher" value="category" checked="checked" />
				<% } else { %>
					<input type="radio" name="LinkTarget" id="link-to-category" class="selection-switcher" value="category" />
				<% } %>
			</td>
			<td>
				<label for="link-to-category" class="label label_radio_text label_light"><% {out.write(localizeISText("sld_enterprise_app.Category",null,null,null,null,null,null,null,null,null,null,null,null));} %></label>
			</td>
		</tr>
		<tr>
			<td nowrap="nowrap" rowspan="2" class="label_select">
				<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("LinkTargetMissing"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",148,e);}if (_boolean_result) { %>
					<label for="ProductLinkType" class="label label_select label_error"><% {out.write(localizeISText("AssignProductLinksSelectLinkType.LinkTypeTheSelectedProducts.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>...:<span class="star">*</span></label>
				<% } else { %>
					<label for="ProductLinkType" class="label label_select"><% {out.write(localizeISText("AssignProductLinksSelectLinkType.LinkTypeTheSelectedProducts.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>...:<span class="star">*</span></label>
				<% } %>
			</td>
		</tr>
		<tr class="types-selection<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) ((((context.getFormattedValue(getObject("LinkTarget"),null).equals(context.getFormattedValue("product",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",155,e);}if (_boolean_result) { %> cpo-hidden<% } %>" id="link-to-product-types-selection">
			<td colspan="2" class="table_detail">
				<select name="ProductLinkType" id="ProductLinkType" class="select inputfield_en">
					<option value=""><% {out.write(localizeISText("AssignProductLinksSelectLinkType.PleaseSelect.option",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</option>
					
					<% while (loop("ProductLinkTypeSummaryIter","ProductLinkTypeSummary",null)) { %>	
						<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ProductLinkTypeSummary:ProductLinkAllowed"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",161,e);}if (_boolean_result) { %>	
							<option value="<%=context.getFormattedValue(encodeString(context.getFormattedValue(getObject("ProductLinkTypeSummary:TypeCodeDefinition:Name"),null)),null)%>" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ProductLinkTypeSummary:TypeCodeDefinition:Name"),null).equals(context.getFormattedValue(getObject("SelectedProductLinkType"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",162,e);}if (_boolean_result) { %>selected="selected"<% } %> > <% {out.write(localizeISText("AssignProductLinksSelectLinkType.have.title","",null,null,null,null,null,null,null,null,null,null,null));} %> <% {out.write(localizeISText(context.getFormattedValue(context.getFormattedValue("typeCodeDefinition.",null) + context.getFormattedValue(getObject("ProductLinkTypeSummary:TypeCodeDefinition:Group"),null) + context.getFormattedValue(".",null) + context.getFormattedValue(getObject("ProductLinkTypeSummary:TypeCodeDefinition:Name"),null) + context.getFormattedValue(".displayName",null),null),"",null,null,null,null,null,null,null,null,null,null,null));} %></option>
							<option value="<%=context.getFormattedValue(encodeString(context.getFormattedValue(context.getFormattedValue(getObject("ProductLinkTypeSummary:TypeCodeDefinition:Name"),null) + context.getFormattedValue("_Incoming",null),null)),null)%>" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue((context.getFormattedValue(getObject("ProductLinkTypeSummary:TypeCodeDefinition:Name"),null) + context.getFormattedValue("_Incoming",null)),null).equals(context.getFormattedValue(getObject("SelectedProductLinkType"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",163,e);}if (_boolean_result) { %>selected="selected"<% } %> > <% {out.write(localizeISText("AssignProductLinksSelectLinkType.are.title","",null,null,null,null,null,null,null,null,null,null,null));} %> <% {out.write(localizeISText(context.getFormattedValue(context.getFormattedValue("typeCodeDefinition.",null) + context.getFormattedValue(getObject("ProductLinkTypeSummary:TypeCodeDefinition:Group"),null) + context.getFormattedValue(".",null) + context.getFormattedValue(getObject("ProductLinkTypeSummary:TypeCodeDefinition:Name"),null) + context.getFormattedValue(".displayName",null),null),"",null,null,null,null,null,null,null,null,null,null,null));} %></option>
						<% } %>
					<% } %>
					
				</select>
			</td>
		</tr>
		<tr class="types-selection<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) ((((context.getFormattedValue(getObject("LinkTarget"),null).equals(context.getFormattedValue("category",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",170,e);}if (_boolean_result) { %> cpo-hidden<% } %>" id="link-to-category-types-selection">
			<td colspan="2" class="table_detail">
				<select name="CategoryLinkType" class="select inputfield_en">
					<option value=""><% {out.write(localizeISText("AssignProductLinksSelectLinkType.PleaseSelect.option",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</option>
					
					<% while (loop("ProductLinkTypeSummaryIter","ProductLinkTypeSummary",null)) { %>
						<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ProductLinkTypeSummary:CategoryLinkAllowed"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",176,e);}if (_boolean_result) { %>
							<option value="<%=context.getFormattedValue(encodeString(context.getFormattedValue(getObject("ProductLinkTypeSummary:TypeCodeDefinition:Name"),null)),null)%>" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ProductLinkTypeSummary:TypeCodeDefinition:Name"),null).equals(context.getFormattedValue(getObject("LinkType"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",177,e);}if (_boolean_result) { %>selected="selected"<% } %>> <% {out.write(localizeISText("AssignProductLinksSelectLinkType.have.title","",null,null,null,null,null,null,null,null,null,null,null));} %> <% {out.write(localizeISText(context.getFormattedValue(context.getFormattedValue("typeCodeDefinition.",null) + context.getFormattedValue(getObject("ProductLinkTypeSummary:TypeCodeDefinition:Group"),null) + context.getFormattedValue(".",null) + context.getFormattedValue(getObject("ProductLinkTypeSummary:TypeCodeDefinition:Name"),null) + context.getFormattedValue(".displayName",null),null),"",null,null,null,null,null,null,null,null,null,null,null));} %></option>
							<option value="<%=context.getFormattedValue(encodeString(context.getFormattedValue(context.getFormattedValue(getObject("ProductLinkTypeSummary:TypeCodeDefinition:Name"),null) + context.getFormattedValue("_C",null),null)),null)%>" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue((context.getFormattedValue(getObject("ProductLinkTypeSummary:TypeCodeDefinition:Name"),null) + context.getFormattedValue("_C",null)),null).equals(context.getFormattedValue(getObject("LinkType"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",178,e);}if (_boolean_result) { %>selected="selected"<% } %>> <% {out.write(localizeISText("AssignProductLinksSelectLinkType.are.title","",null,null,null,null,null,null,null,null,null,null,null));} %> <% {out.write(localizeISText(context.getFormattedValue(context.getFormattedValue("typeCodeDefinition.",null) + context.getFormattedValue(getObject("ProductLinkTypeSummary:TypeCodeDefinition:Group"),null) + context.getFormattedValue(".",null) + context.getFormattedValue(getObject("ProductLinkTypeSummary:TypeCodeDefinition:Name"),null) + context.getFormattedValue(".displayName",null),null),"",null,null,null,null,null,null,null,null,null,null,null));} %></option>
						<% } %>
					<% } %>
					
				</select>
			</td>
		</tr>
		<tr>
			<td colspan="3"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="4" border="0"/></td>
		</tr>
	</tbody>
</table>
<% printFooter(out); %>