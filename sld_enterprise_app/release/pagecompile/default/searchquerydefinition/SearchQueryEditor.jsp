<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %>

<% out.print(context.prepareWAPlacement("JSWebLibraries")); %>ParametricSearchAttributes.js<% out.print("</waplacement>"); %>

<% context.setCustomTagTemplateName("searchqueryeditorvalueitem","searchquerydefinition/SearchQueryEditorValueItem.isml",false,new String[]{"searchindex2","name","value","number","localized","readonly","showlocalizedcheckbox","negated"},null); %>
<% context.setCustomTagTemplateName("searchqueryeditorrangeitem","searchquerydefinition/SearchQueryEditorRangeItem.isml",false,new String[]{"searchindex2","name","value","value2","number","localized","readonly","showlocalizedcheckbox"},null); %>
<% context.setCustomTagTemplateName("searchqueryeditorsortingitem","searchquerydefinition/SearchQueryEditorSortingItem.isml",false,new String[]{"searchindex2","name","value","number","readonly"},null); %>
<% context.setCustomTagTemplateName("searchqueryeditorrankingitem","searchquerydefinition/SearchQueryEditorRankingItem.isml",false,new String[]{"searchindex2","name","value","value2","number","localized","readonly","showlocalizedcheckbox"},null); %>
<!-- RepositoryDomain must be set in the calling template(or pipeline), since this module is used now in Organization too, and taking it from CurrentChannel is no longer option (and should not be)! -->
<% processOpenTag(response, pageContext, "createmap", new TagParameter[] {
new TagParameter("key1","Locale"),
new TagParameter("key0","Domain"),
new TagParameter("value1",getObject("Locale")),
new TagParameter("value0",getObject("RepositoryDomain")),
new TagParameter("mapname","PipelineParams")}, 30); %>
<% {try{executePipeline("ProcessProductFilter-GetSearchIndexByLocale",((java.util.Map)(getObject("PipelineParams"))),"dict");}catch(Exception e){Logger.error(this,"ISPIPELINE failed. Line: 32.",e);}} %>
<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("dict:SearchIndex"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",34,e);}if (_boolean_result) { %>
	<% {Object temp_obj = (getObject("dict:SearchIndex")); getPipelineDictionary().put("searchindex", temp_obj);} %>
	<% } else { %>
	<% {try{executePipeline("ProcessProductFilter-GetSearchIndex",((java.util.Map)(getObject("PipelineParams"))),"dict");}catch(Exception e){Logger.error(this,"ISPIPELINE failed. Line: 37.",e);}} %>
	<% {Object temp_obj = (getObject("dict:SearchIndex")); getPipelineDictionary().put("searchindex", temp_obj);} %>
<% } %>

<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("searchindex"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",42,e);}if (_boolean_result) { %>
	<table border="0" cellspacing="0" cellpadding="0" width="50%">
		<tr>
			<td>
				<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("showhelptext")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("showhelptext"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",46,e);}if (_boolean_result) { %>
					<table class="searchbox n e w" border="0" cellspacing="0"
						cellpadding="0" width="100%">
						<tr>
							<td class="table_title_description">
								<% {out.write(localizeISText("SearchQueryEditor.PleaseBeAwareThatAnyChangesInTheMasterSearchIndexW.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %>
							</td>
						</tr>
					</table>
				<% } %>
				<table class="searchbox " border="0" cellspacing="10" cellpadding="0" width="100%">
					<tr>
						<td colspan="5">
							<table class="information w e s" width="100%" cellspacing="0"
								cellpadding="4" border="0">
								<tr>
									<td class="e">
										<img
											src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/information.gif" alt="" width="16"
											height="15" border="0">
									</td>
									<td width="100%">
										<b> 
											<% {out.write(localizeISText("SearchQueryEditor.UsingSearchIndex0.fielditem2",null,null,encodeString(context.getFormattedValue(getObject("searchindex:Configuration:Name"),null)),null,null,null,null,null,null,null,null,null));} %>
										</b>
									</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td class="table_title2 left" colspan="5">
							<% {out.write(localizeISText("SearchQueryEditor.Category.table_title2",null,null,null,null,null,null,null,null,null,null,null,null));} %>
						</td>
					</tr>
					<tr>
						<td class="table_title_description" colspan="5">
							<% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("readonly"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",88,e);}if (_boolean_result) { %>
								<% {out.write(localizeISText("SearchQueryEditor.SpecifiesTheCatalogCategoryToWhichTheProductFilter.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %>
							<% } else { %>
								<% {out.write(localizeISText("SearchQueryEditor.SpecifiesTheCatalogCategoryToWhichTheProductFilter.table_title_description1",null,null,null,null,null,null,null,null,null,null,null,null));} %>
							<% } %>
						</td>
					</tr>
					<tr>
						<td colspan="5">
							<table cellpadding="0" cellspacing="0" border="0">
								<tr>
									<td class="label">
										<label class="label label_light"
											for="SQDForm_ContextObjectID"><% {out.write(localizeISText("SearchQueryEditor.CategoryNameAndDomain.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>
										</label>
									</td>
									<td colspan="2">&nbsp;</td>
								</tr>
								<tr>
									<td>
										<% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("readonly"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",114,e);}if (_boolean_result) { %>
											<input type="text" id="SQDForm_ContextObjectID"
												name="SQDForm_ContextObjectID" maxlength="256" size="50"
												readonly="readonly"
												value="<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CatalogCategory"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",118,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("CatalogCategory:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {118}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>@<% {String value = null;try{value=context.getFormattedValue(getObject("CatalogCategory:Domain:DomainName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {118}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %><% {String value = null;try{value=context.getFormattedValue(getObject("form:ContextObjectID:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {118}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %>"
												class="inputfield_en" />
										<% } else { %>
											<input type="text" id="SQDForm_ContextObjectID"
												name="SQDForm_ContextObjectID" maxlength="256" size="50"
												readonly="readonly"
												value="<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CatalogCategory"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",124,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("CatalogCategory:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {124}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>@<% {String value = null;try{value=context.getFormattedValue(getObject("CatalogCategory:Domain:DomainName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {124}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %><% {String value = null;try{value=context.getFormattedValue(getObject("form:ContextObjectID:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {124}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %>"
												class="inputfield_en" disabled="disabled" />
										<% } %>
									</td>
									<% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("readonly"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",128,e);}if (_boolean_result) { %>
										<td>&nbsp;</td>
										<td align="right">
											<table border="0" cellspacing="4" cellpadding="0">
												<tr>
													<td align="center">
														<table border="0" cellspacing="4" cellpadding="0">
															<tr>
																<input type="hidden" name="SearchType"
																	value="parametric" />
																<input type="hidden" name="SearchPipeline"
																	value="ViewProductFilter-Dispatch" />
																<input type="hidden" name="SearchPipelineParametername1"
																	value="callbackpipeline" />
																<input type="hidden"
																	name="SearchPipelineParametervalue1"
																	value="<% {String value = null;try{value=context.getFormattedValue(getObject("callbackpipeline"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {144}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" />
																<input type="hidden" name="ClassificationSearchEnabled"
																	value="true" />
																<td class="button">
																	<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ConfigurationParameterDefinition"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",148,e);}if (_boolean_result) { %>
																		<input type="submit" name="StartSelectFilterCategory"
																			onClick="if(this.form.elements['SelectedConfigurationParameterName'] != null){ this.form.elements['SelectedConfigurationParameterName'].value ='<% {String value = null;try{value=context.getFormattedValue(getObject("ConfigurationParameterDefinition:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {150}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>';} if(this.form.elements['SelectedConfigurationParameterQualifiedName'] != null){ this.form.elements['SelectedConfigurationParameterQualifiedName'].value ='<% {String value = null;try{value=context.getFormattedValue(getObject("ConfigurationParameterDefinition:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {150}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>';}"
																			value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ImageParameterInc.Select.button",null)),null)%>"
																			class="button" />
																	<% } else { %>
																		<input type="submit" name="StartSelectFilterCategory"
																			value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("SearchQueryEditor.Select.button",null)),null)%>"
																			class="button" />
																	<% } %>
																</td>
																<td class="button">
																	<input type="button"
																		onClick="document.getElementById('SQDForm_ContextObjectID').value='';"
																		value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("SearchQueryEditor.Clear.button",null)),null)%>"
																		class="button" name="clear" />
																</td>
															</tr>
														</table>
													</td>
												</tr>
											</table>
										</td>
									<% } else { %>
										<td colspan="2">&nbsp;</td>
									<% } %>
								</tr>
							</table>
						</td>
					</tr>

					<tr>
						<td colspan="5" class="n">
							<img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" alt="" border="0" width="1" height="3">
						</td>
					</tr>
					<tr>
						<td class="table_title2 left " colspan="5">
							<% {out.write(localizeISText("SearchQueryEditor.FilterCondition.table_title2",null,null,null,null,null,null,null,null,null,null,null,null));} %>
						</td>
					</tr>
					<tr>
						<td class="table_title_description" colspan="5">
							<% {out.write(localizeISText("SearchQueryEditor.SpecifiesTheTextValuesForTextAttributesOrValueRang.table_title_description",null,null,"","javascript:controllElements.showPlaceholderSuggest()",null,null,null,null,null,null,null,null));} %>
						</td>
					</tr>
					<tr>
						<td class="label">
							<label class="label label_light" for="SQDForm_ValueCondition_Attribute0">
								<% {out.write(localizeISText("SearchQueryEditor.Attribute.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>
							</label>
						</td>
						<td class="label">
							<label class="label label_light" for="SQDForm_ValueCondition_Negated0">&nbsp;
							</label>
						</td>
						<td class="label" colspan="2">
							<label class="label label_light" for="SQDForm_ValueCondition_Value0" />
								<% {out.write(localizeISText("SearchQueryEditor.Value.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>
							</label>
						</td>

						
						<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("islocalized"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",214,e);}if (_boolean_result) { %>
							<td class="label">
								<label class="label label_light" for="SQDForm_ValueCondition_Localized0">
									<% {out.write(localizeISText("SearchQueryEditor.Localized.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>
								</label>
							</td>
						<% } else { %>
							<td></td>
						<% } %>

						<td></td>
					</tr>

					<% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("readonly"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",227,e);}if (_boolean_result) { %>
						<% processOpenTag(response, pageContext, "searchqueryeditorvalueitem", new TagParameter[] {
new TagParameter("number","0"),
new TagParameter("showlocalizedcheckbox",getObject("islocalized")),
new TagParameter("negated",getObject("form:ValueCondition_Negated0:Value")),
new TagParameter("searchindex2",getObject("searchindex")),
new TagParameter("name",getObject("form:ValueCondition_Attribute0:Value")),
new TagParameter("localized",getObject("form:ValueCondition_Localized0:Value")),
new TagParameter("value",getObject("form:ValueCondition_Value0:Value"))}, 228); %>
						<% processOpenTag(response, pageContext, "searchqueryeditorvalueitem", new TagParameter[] {
new TagParameter("number","1"),
new TagParameter("showlocalizedcheckbox",getObject("islocalized")),
new TagParameter("negated",getObject("form:ValueCondition_Negated1:Value")),
new TagParameter("searchindex2",getObject("searchindex")),
new TagParameter("name",getObject("form:ValueCondition_Attribute1:Value")),
new TagParameter("localized",getObject("form:ValueCondition_Localized1:Value")),
new TagParameter("value",getObject("form:ValueCondition_Value1:Value"))}, 234); %>
						<% processOpenTag(response, pageContext, "searchqueryeditorvalueitem", new TagParameter[] {
new TagParameter("number","2"),
new TagParameter("showlocalizedcheckbox",getObject("islocalized")),
new TagParameter("negated",getObject("form:ValueCondition_Negated2:Value")),
new TagParameter("searchindex2",getObject("searchindex")),
new TagParameter("name",getObject("form:ValueCondition_Attribute2:Value")),
new TagParameter("localized",getObject("form:ValueCondition_Localized2:Value")),
new TagParameter("value",getObject("form:ValueCondition_Value2:Value"))}, 240); %>
						<% processOpenTag(response, pageContext, "searchqueryeditorvalueitem", new TagParameter[] {
new TagParameter("number","3"),
new TagParameter("showlocalizedcheckbox",getObject("islocalized")),
new TagParameter("negated",getObject("form:ValueCondition_Negated3:Value")),
new TagParameter("searchindex2",getObject("searchindex")),
new TagParameter("name",getObject("form:ValueCondition_Attribute3:Value")),
new TagParameter("localized",getObject("form:ValueCondition_Localized3:Value")),
new TagParameter("value",getObject("form:ValueCondition_Value3:Value"))}, 246); %>
						<% processOpenTag(response, pageContext, "searchqueryeditorvalueitem", new TagParameter[] {
new TagParameter("number","4"),
new TagParameter("showlocalizedcheckbox",getObject("islocalized")),
new TagParameter("negated",getObject("form:ValueCondition_Negated4:Value")),
new TagParameter("searchindex2",getObject("searchindex")),
new TagParameter("name",getObject("form:ValueCondition_Attribute4:Value")),
new TagParameter("localized",getObject("form:ValueCondition_Localized4:Value")),
new TagParameter("value",getObject("form:ValueCondition_Value4:Value"))}, 252); %>
						<% processOpenTag(response, pageContext, "searchqueryeditorvalueitem", new TagParameter[] {
new TagParameter("number","5"),
new TagParameter("showlocalizedcheckbox",getObject("islocalized")),
new TagParameter("negated",getObject("form:ValueCondition_Negated5:Value")),
new TagParameter("searchindex2",getObject("searchindex")),
new TagParameter("name",getObject("form:ValueCondition_Attribute5:Value")),
new TagParameter("localized",getObject("form:ValueCondition_Localized5:Value")),
new TagParameter("value",getObject("form:ValueCondition_Value5:Value"))}, 258); %>
						<% processOpenTag(response, pageContext, "searchqueryeditorvalueitem", new TagParameter[] {
new TagParameter("number","6"),
new TagParameter("showlocalizedcheckbox",getObject("islocalized")),
new TagParameter("negated",getObject("form:ValueCondition_Negated6:Value")),
new TagParameter("searchindex2",getObject("searchindex")),
new TagParameter("name",getObject("form:ValueCondition_Attribute6:Value")),
new TagParameter("localized",getObject("form:ValueCondition_Localized6:Value")),
new TagParameter("value",getObject("form:ValueCondition_Value6:Value"))}, 264); %>
						<% processOpenTag(response, pageContext, "searchqueryeditorvalueitem", new TagParameter[] {
new TagParameter("number","7"),
new TagParameter("showlocalizedcheckbox",getObject("islocalized")),
new TagParameter("negated",getObject("form:ValueCondition_Negated7:Value")),
new TagParameter("searchindex2",getObject("searchindex")),
new TagParameter("name",getObject("form:ValueCondition_Attribute7:Value")),
new TagParameter("localized",getObject("form:ValueCondition_Localized7:Value")),
new TagParameter("value",getObject("form:ValueCondition_Value7:Value"))}, 270); %>
						<% processOpenTag(response, pageContext, "searchqueryeditorvalueitem", new TagParameter[] {
new TagParameter("number","8"),
new TagParameter("showlocalizedcheckbox",getObject("islocalized")),
new TagParameter("negated",getObject("form:ValueCondition_Negated8:Value")),
new TagParameter("searchindex2",getObject("searchindex")),
new TagParameter("name",getObject("form:ValueCondition_Attribute8:Value")),
new TagParameter("localized",getObject("form:ValueCondition_Localized8:Value")),
new TagParameter("value",getObject("form:ValueCondition_Value8:Value"))}, 276); %>
						<% processOpenTag(response, pageContext, "searchqueryeditorvalueitem", new TagParameter[] {
new TagParameter("number","9"),
new TagParameter("showlocalizedcheckbox",getObject("islocalized")),
new TagParameter("negated",getObject("form:ValueCondition_Negated9:Value")),
new TagParameter("searchindex2",getObject("searchindex")),
new TagParameter("name",getObject("form:ValueCondition_Attribute9:Value")),
new TagParameter("localized",getObject("form:ValueCondition_Localized9:Value")),
new TagParameter("value",getObject("form:ValueCondition_Value9:Value"))}, 282); %>
					<% } else { %>
						<% processOpenTag(response, pageContext, "searchqueryeditorvalueitem", new TagParameter[] {
new TagParameter("number","0"),
new TagParameter("showlocalizedcheckbox",getObject("islocalized")),
new TagParameter("negated",getObject("form:ValueCondition_Negated0:Value")),
new TagParameter("searchindex2",getObject("searchindex")),
new TagParameter("name",getObject("form:ValueCondition_Attribute0:Value")),
new TagParameter("localized",getObject("form:ValueCondition_Localized0:Value")),
new TagParameter("value",getObject("form:ValueCondition_Value0:Value"))}, 289); %>
						<% _boolean_result=false;try {_boolean_result=((Boolean)((((!(context.getFormattedValue(getObject("SQDForm:ValueCondition_Attribute1:Value"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",295,e);}if (_boolean_result) { %>
							<% processOpenTag(response, pageContext, "searchqueryeditorvalueitem", new TagParameter[] {
new TagParameter("number","1"),
new TagParameter("showlocalizedcheckbox",getObject("islocalized")),
new TagParameter("negated",getObject("form:ValueCondition_Negated1:Value")),
new TagParameter("searchindex2",getObject("searchindex")),
new TagParameter("name",getObject("form:ValueCondition_Attribute1:Value")),
new TagParameter("localized",getObject("form:ValueCondition_Localized1:Value")),
new TagParameter("value",getObject("form:ValueCondition_Value1:Value"))}, 296); %>
						<% } %>
						<% _boolean_result=false;try {_boolean_result=((Boolean)((((!(context.getFormattedValue(getObject("SQDForm:ValueCondition_Attribute2:Value"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",303,e);}if (_boolean_result) { %>
							<% processOpenTag(response, pageContext, "searchqueryeditorvalueitem", new TagParameter[] {
new TagParameter("number","2"),
new TagParameter("showlocalizedcheckbox",getObject("islocalized")),
new TagParameter("negated",getObject("form:ValueCondition_Negated2:Value")),
new TagParameter("searchindex2",getObject("searchindex")),
new TagParameter("name",getObject("form:ValueCondition_Attribute2:Value")),
new TagParameter("localized",getObject("form:ValueCondition_Localized2:Value")),
new TagParameter("value",getObject("form:ValueCondition_Value2:Value"))}, 304); %>
						<% } %>
						<% _boolean_result=false;try {_boolean_result=((Boolean)((((!(context.getFormattedValue(getObject("SQDForm:ValueCondition_Attribute3:Value"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",311,e);}if (_boolean_result) { %>
							<% processOpenTag(response, pageContext, "searchqueryeditorvalueitem", new TagParameter[] {
new TagParameter("number","3"),
new TagParameter("showlocalizedcheckbox",getObject("islocalized")),
new TagParameter("negated",getObject("form:ValueCondition_Negated3:Value")),
new TagParameter("searchindex2",getObject("searchindex")),
new TagParameter("name",getObject("form:ValueCondition_Attribute3:Value")),
new TagParameter("localized",getObject("form:ValueCondition_Localized3:Value")),
new TagParameter("value",getObject("form:ValueCondition_Value3:Value"))}, 312); %>
						<% } %>
						<% _boolean_result=false;try {_boolean_result=((Boolean)((((!(context.getFormattedValue(getObject("SQDForm:ValueCondition_Attribute4:Value"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",319,e);}if (_boolean_result) { %>
							<% processOpenTag(response, pageContext, "searchqueryeditorvalueitem", new TagParameter[] {
new TagParameter("number","4"),
new TagParameter("showlocalizedcheckbox",getObject("islocalized")),
new TagParameter("negated",getObject("form:ValueCondition_Negated4:Value")),
new TagParameter("searchindex2",getObject("searchindex")),
new TagParameter("name",getObject("form:ValueCondition_Attribute4:Value")),
new TagParameter("localized",getObject("form:ValueCondition_Localized4:Value")),
new TagParameter("value",getObject("form:ValueCondition_Value4:Value"))}, 320); %>
						<% } %>
						<% _boolean_result=false;try {_boolean_result=((Boolean)((((!(context.getFormattedValue(getObject("SQDForm:ValueCondition_Attribute5:Value"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",327,e);}if (_boolean_result) { %>
							<% processOpenTag(response, pageContext, "searchqueryeditorvalueitem", new TagParameter[] {
new TagParameter("number","5"),
new TagParameter("showlocalizedcheckbox",getObject("islocalized")),
new TagParameter("negated",getObject("form:ValueCondition_Negated5:Value")),
new TagParameter("searchindex2",getObject("searchindex")),
new TagParameter("name",getObject("form:ValueCondition_Attribute5:Value")),
new TagParameter("localized",getObject("form:ValueCondition_Localized5:Value")),
new TagParameter("value",getObject("form:ValueCondition_Value5:Value"))}, 328); %>
						<% } %>
						<% _boolean_result=false;try {_boolean_result=((Boolean)((((!(context.getFormattedValue(getObject("SQDForm:ValueCondition_Attribute6:Value"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",335,e);}if (_boolean_result) { %>
							<% processOpenTag(response, pageContext, "searchqueryeditorvalueitem", new TagParameter[] {
new TagParameter("number","6"),
new TagParameter("showlocalizedcheckbox",getObject("islocalized")),
new TagParameter("negated",getObject("form:ValueCondition_Negated6:Value")),
new TagParameter("searchindex2",getObject("searchindex")),
new TagParameter("name",getObject("form:ValueCondition_Attribute6:Value")),
new TagParameter("localized",getObject("form:ValueCondition_Localized6:Value")),
new TagParameter("value",getObject("form:ValueCondition_Value6:Value"))}, 336); %>
						<% } %>
						<% _boolean_result=false;try {_boolean_result=((Boolean)((((!(context.getFormattedValue(getObject("SQDForm:ValueCondition_Attribute7:Value"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",343,e);}if (_boolean_result) { %>
							<% processOpenTag(response, pageContext, "searchqueryeditorvalueitem", new TagParameter[] {
new TagParameter("number","7"),
new TagParameter("showlocalizedcheckbox",getObject("islocalized")),
new TagParameter("negated",getObject("form:ValueCondition_Negated7:Value")),
new TagParameter("searchindex2",getObject("searchindex")),
new TagParameter("name",getObject("form:ValueCondition_Attribute7:Value")),
new TagParameter("localized",getObject("form:ValueCondition_Localized7:Value")),
new TagParameter("value",getObject("form:ValueCondition_Value7:Value"))}, 344); %>
						<% } %>
						<% _boolean_result=false;try {_boolean_result=((Boolean)((((!(context.getFormattedValue(getObject("SQDForm:ValueCondition_Attribute8:Value"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",351,e);}if (_boolean_result) { %>
							<% processOpenTag(response, pageContext, "searchqueryeditorvalueitem", new TagParameter[] {
new TagParameter("number","8"),
new TagParameter("showlocalizedcheckbox",getObject("islocalized")),
new TagParameter("negated",getObject("form:ValueCondition_Negated8:Value")),
new TagParameter("searchindex2",getObject("searchindex")),
new TagParameter("name",getObject("form:ValueCondition_Attribute8:Value")),
new TagParameter("localized",getObject("form:ValueCondition_Localized8:Value")),
new TagParameter("value",getObject("form:ValueCondition_Value8:Value"))}, 352); %>
						<% } %>
						<% _boolean_result=false;try {_boolean_result=((Boolean)((((!(context.getFormattedValue(getObject("SQDForm:ValueCondition_Attribute9:Value"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",359,e);}if (_boolean_result) { %>
							<% processOpenTag(response, pageContext, "searchqueryeditorvalueitem", new TagParameter[] {
new TagParameter("number","9"),
new TagParameter("showlocalizedcheckbox",getObject("islocalized")),
new TagParameter("negated",getObject("form:ValueCondition_Negated9:Value")),
new TagParameter("searchindex2",getObject("searchindex")),
new TagParameter("name",getObject("form:ValueCondition_Attribute9:Value")),
new TagParameter("localized",getObject("form:ValueCondition_Localized9:Value")),
new TagParameter("value",getObject("form:ValueCondition_Value9:Value"))}, 360); %>
						<% } %>
					<% } %>

					<% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("readonly"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",369,e);}if (_boolean_result) { %>
						<tr id="addValueAttribute">
							<td colspan="5">
								<table border="0" cellspacing="1" cellpadding="0">
									<tr>
										<td class="button">
											<input type="button"
												name="addValueAttribute"
												value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("SearchQueryEditor.Add.button",null)),null)%>"
												class="button"
												onClick="controllElements.showRow('valueCondition'); return false;" />
										</td>
									</tr>
								</table>
							</td>
						</tr>
					<% } %>


					<tr>
						<td class="label" colspan="2">
							<label class="label label_light" for="SQDForm_RangeCondition_Attribute0">
								<% {out.write(localizeISText("SearchQueryEditor.Attribute.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>
							</label>
						</td>
						<td class="label">
							<label class="label label_light" for="SQDForm_RangeCondition_ValueLower0">
								<% {out.write(localizeISText("SearchQueryEditor.Min.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>
							</label>
						</td>
						<td class="label">
							<label class="label label_light" for="SQDForm_RangeCondition_ValueUpper0">
								<% {out.write(localizeISText("SearchQueryEditor.Max.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>
							</label>
						</td>
						
						<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("islocalized"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",405,e);}if (_boolean_result) { %>
							<td class="label">
								<label class="label label_light" for="SQDForm_RangeCondition_Localized0">
									<% {out.write(localizeISText("SearchQueryEditor.Localized.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>
								</label>
							</td>
						<% } else { %>
							<td></td>
						<% } %>
						<td></td>
					</tr>

					<% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("readonly"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",417,e);}if (_boolean_result) { %>
						<% processOpenTag(response, pageContext, "searchqueryeditorrangeitem", new TagParameter[] {
new TagParameter("number","0"),
new TagParameter("showlocalizedcheckbox",getObject("islocalized")),
new TagParameter("searchindex2",getObject("searchindex")),
new TagParameter("value2",getObject("form:RangeCondition_ValueUpper0:Value")),
new TagParameter("name",getObject("form:RangeCondition_Attribute0:Value")),
new TagParameter("localized",getObject("form:RangeCondition_Localized0:Value")),
new TagParameter("value",getObject("form:RangeCondition_ValueLower0:Value"))}, 418); %>
						<% processOpenTag(response, pageContext, "searchqueryeditorrangeitem", new TagParameter[] {
new TagParameter("number","1"),
new TagParameter("showlocalizedcheckbox",getObject("islocalized")),
new TagParameter("searchindex2",getObject("searchindex")),
new TagParameter("value2",getObject("form:RangeCondition_ValueUpper1:Value")),
new TagParameter("name",getObject("form:RangeCondition_Attribute1:Value")),
new TagParameter("localized",getObject("form:RangeCondition_Localized1:Value")),
new TagParameter("value",getObject("form:RangeCondition_ValueLower1:Value"))}, 424); %>
						<% processOpenTag(response, pageContext, "searchqueryeditorrangeitem", new TagParameter[] {
new TagParameter("number","2"),
new TagParameter("showlocalizedcheckbox",getObject("islocalized")),
new TagParameter("searchindex2",getObject("searchindex")),
new TagParameter("value2",getObject("form:RangeCondition_ValueUpper2:Value")),
new TagParameter("name",getObject("form:RangeCondition_Attribute2:Value")),
new TagParameter("localized",getObject("form:RangeCondition_Localized2:Value")),
new TagParameter("value",getObject("form:RangeCondition_ValueLower2:Value"))}, 430); %>
						<% processOpenTag(response, pageContext, "searchqueryeditorrangeitem", new TagParameter[] {
new TagParameter("number","3"),
new TagParameter("showlocalizedcheckbox",getObject("islocalized")),
new TagParameter("searchindex2",getObject("searchindex")),
new TagParameter("value2",getObject("form:RangeCondition_ValueUpper3:Value")),
new TagParameter("name",getObject("form:RangeCondition_Attribute3:Value")),
new TagParameter("localized",getObject("form:RangeCondition_Localized3:Value")),
new TagParameter("value",getObject("form:RangeCondition_ValueLower3:Value"))}, 436); %>
						<% processOpenTag(response, pageContext, "searchqueryeditorrangeitem", new TagParameter[] {
new TagParameter("number","4"),
new TagParameter("showlocalizedcheckbox",getObject("islocalized")),
new TagParameter("searchindex2",getObject("searchindex")),
new TagParameter("value2",getObject("form:RangeCondition_ValueUpper4:Value")),
new TagParameter("name",getObject("form:RangeCondition_Attribute4:Value")),
new TagParameter("localized",getObject("form:RangeCondition_Localized4:Value")),
new TagParameter("value",getObject("form:RangeCondition_ValueLower4:Value"))}, 442); %>
						<% processOpenTag(response, pageContext, "searchqueryeditorrangeitem", new TagParameter[] {
new TagParameter("number","5"),
new TagParameter("showlocalizedcheckbox",getObject("islocalized")),
new TagParameter("searchindex2",getObject("searchindex")),
new TagParameter("value2",getObject("form:RangeCondition_ValueUpper5:Value")),
new TagParameter("name",getObject("form:RangeCondition_Attribute5:Value")),
new TagParameter("localized",getObject("form:RangeCondition_Localized5:Value")),
new TagParameter("value",getObject("form:RangeCondition_ValueLower5:Value"))}, 448); %>
						<% processOpenTag(response, pageContext, "searchqueryeditorrangeitem", new TagParameter[] {
new TagParameter("number","6"),
new TagParameter("showlocalizedcheckbox",getObject("islocalized")),
new TagParameter("searchindex2",getObject("searchindex")),
new TagParameter("value2",getObject("form:RangeCondition_ValueUpper6:Value")),
new TagParameter("name",getObject("form:RangeCondition_Attribute6:Value")),
new TagParameter("localized",getObject("form:RangeCondition_Localized6:Value")),
new TagParameter("value",getObject("form:RangeCondition_ValueLower6:Value"))}, 454); %>
						<% processOpenTag(response, pageContext, "searchqueryeditorrangeitem", new TagParameter[] {
new TagParameter("number","7"),
new TagParameter("showlocalizedcheckbox",getObject("islocalized")),
new TagParameter("searchindex2",getObject("searchindex")),
new TagParameter("value2",getObject("form:RangeCondition_ValueUpper7:Value")),
new TagParameter("name",getObject("form:RangeCondition_Attribute7:Value")),
new TagParameter("localized",getObject("form:RangeCondition_Localized7:Value")),
new TagParameter("value",getObject("form:RangeCondition_ValueLower7:Value"))}, 460); %>
						<% processOpenTag(response, pageContext, "searchqueryeditorrangeitem", new TagParameter[] {
new TagParameter("number","8"),
new TagParameter("showlocalizedcheckbox",getObject("islocalized")),
new TagParameter("searchindex2",getObject("searchindex")),
new TagParameter("value2",getObject("form:RangeCondition_ValueUpper8:Value")),
new TagParameter("name",getObject("form:RangeCondition_Attribute8:Value")),
new TagParameter("localized",getObject("form:RangeCondition_Localized8:Value")),
new TagParameter("value",getObject("form:RangeCondition_ValueLower8:Value"))}, 466); %>
						<% processOpenTag(response, pageContext, "searchqueryeditorrangeitem", new TagParameter[] {
new TagParameter("number","9"),
new TagParameter("showlocalizedcheckbox",getObject("islocalized")),
new TagParameter("searchindex2",getObject("searchindex")),
new TagParameter("value2",getObject("form:RangeCondition_ValueUpper9:Value")),
new TagParameter("name",getObject("form:RangeCondition_Attribute9:Value")),
new TagParameter("localized",getObject("form:RangeCondition_Localized9:Value")),
new TagParameter("value",getObject("form:RangeCondition_ValueLower9:Value"))}, 472); %>
					<% } else { %>
						<% processOpenTag(response, pageContext, "searchqueryeditorrangeitem", new TagParameter[] {
new TagParameter("number","0"),
new TagParameter("showlocalizedcheckbox",getObject("islocalized")),
new TagParameter("searchindex2",getObject("searchindex")),
new TagParameter("value2",getObject("form:RangeCondition_ValueUpper0:Value")),
new TagParameter("name",getObject("form:RangeCondition_Attribute0:Value")),
new TagParameter("localized",getObject("form:RangeCondition_Localized0:Value")),
new TagParameter("value",getObject("form:RangeCondition_ValueLower0:Value"))}, 479); %>
						<% _boolean_result=false;try {_boolean_result=((Boolean)((((!(context.getFormattedValue(getObject("SQDForm:RangeCondition_Attribute1:Value"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",485,e);}if (_boolean_result) { %>
							<% processOpenTag(response, pageContext, "searchqueryeditorrangeitem", new TagParameter[] {
new TagParameter("number","1"),
new TagParameter("showlocalizedcheckbox",getObject("islocalized")),
new TagParameter("searchindex2",getObject("searchindex")),
new TagParameter("value2",getObject("form:RangeCondition_ValueUpper1:Value")),
new TagParameter("name",getObject("form:RangeCondition_Attribute1:Value")),
new TagParameter("localized",getObject("form:RangeCondition_Localized1:Value")),
new TagParameter("value",getObject("form:RangeCondition_ValueLower1:Value"))}, 486); %>
						<% } %>
						<% _boolean_result=false;try {_boolean_result=((Boolean)((((!(context.getFormattedValue(getObject("SQDForm:RangeCondition_Attribute2:Value"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",493,e);}if (_boolean_result) { %>
							<% processOpenTag(response, pageContext, "searchqueryeditorrangeitem", new TagParameter[] {
new TagParameter("number","2"),
new TagParameter("showlocalizedcheckbox",getObject("islocalized")),
new TagParameter("searchindex2",getObject("searchindex")),
new TagParameter("value2",getObject("form:RangeCondition_ValueUpper2:Value")),
new TagParameter("name",getObject("form:RangeCondition_Attribute2:Value")),
new TagParameter("localized",getObject("form:RangeCondition_Localized2:Value")),
new TagParameter("value",getObject("form:RangeCondition_ValueLower2:Value"))}, 494); %>
						<% } %>
						<% _boolean_result=false;try {_boolean_result=((Boolean)((((!(context.getFormattedValue(getObject("SQDForm:RangeCondition_Attribute3:Value"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",501,e);}if (_boolean_result) { %>
							<% processOpenTag(response, pageContext, "searchqueryeditorrangeitem", new TagParameter[] {
new TagParameter("number","3"),
new TagParameter("showlocalizedcheckbox",getObject("islocalized")),
new TagParameter("searchindex2",getObject("searchindex")),
new TagParameter("value2",getObject("form:RangeCondition_ValueUpper3:Value")),
new TagParameter("name",getObject("form:RangeCondition_Attribute3:Value")),
new TagParameter("localized",getObject("form:RangeCondition_Localized3:Value")),
new TagParameter("value",getObject("form:RangeCondition_ValueLower3:Value"))}, 502); %>
						<% } %>
						<% _boolean_result=false;try {_boolean_result=((Boolean)((((!(context.getFormattedValue(getObject("SQDForm:RangeCondition_Attribute4:Value"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",509,e);}if (_boolean_result) { %>
							<% processOpenTag(response, pageContext, "searchqueryeditorrangeitem", new TagParameter[] {
new TagParameter("number","4"),
new TagParameter("showlocalizedcheckbox",getObject("islocalized")),
new TagParameter("searchindex2",getObject("searchindex")),
new TagParameter("value2",getObject("form:RangeCondition_ValueUpper4:Value")),
new TagParameter("name",getObject("form:RangeCondition_Attribute4:Value")),
new TagParameter("localized",getObject("form:RangeCondition_Localized4:Value")),
new TagParameter("value",getObject("form:RangeCondition_ValueLower4:Value"))}, 510); %>
						<% } %>
						<% _boolean_result=false;try {_boolean_result=((Boolean)((((!(context.getFormattedValue(getObject("SQDForm:RangeCondition_Attribute5:Value"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",517,e);}if (_boolean_result) { %>
							<% processOpenTag(response, pageContext, "searchqueryeditorrangeitem", new TagParameter[] {
new TagParameter("number","5"),
new TagParameter("showlocalizedcheckbox",getObject("islocalized")),
new TagParameter("searchindex2",getObject("searchindex")),
new TagParameter("value2",getObject("form:RangeCondition_ValueUpper5:Value")),
new TagParameter("name",getObject("form:RangeCondition_Attribute4:Value")),
new TagParameter("localized",getObject("form:RangeCondition_Localized5:Value")),
new TagParameter("value",getObject("form:RangeCondition_ValueLower5:Value"))}, 518); %>
						<% } %>
						<% _boolean_result=false;try {_boolean_result=((Boolean)((((!(context.getFormattedValue(getObject("SQDForm:RangeCondition_Attribute6:Value"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",525,e);}if (_boolean_result) { %>
							<% processOpenTag(response, pageContext, "searchqueryeditorrangeitem", new TagParameter[] {
new TagParameter("number","6"),
new TagParameter("showlocalizedcheckbox",getObject("islocalized")),
new TagParameter("searchindex2",getObject("searchindex")),
new TagParameter("value2",getObject("form:RangeCondition_ValueUpper6:Value")),
new TagParameter("name",getObject("form:RangeCondition_Attribute6:Value")),
new TagParameter("localized",getObject("form:RangeCondition_Localized6:Value")),
new TagParameter("value",getObject("form:RangeCondition_ValueLower6:Value"))}, 526); %>
						<% } %>
						<% _boolean_result=false;try {_boolean_result=((Boolean)((((!(context.getFormattedValue(getObject("SQDForm:RangeCondition_Attribute7:Value"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",533,e);}if (_boolean_result) { %>
							<% processOpenTag(response, pageContext, "searchqueryeditorrangeitem", new TagParameter[] {
new TagParameter("number","7"),
new TagParameter("showlocalizedcheckbox",getObject("islocalized")),
new TagParameter("searchindex2",getObject("searchindex")),
new TagParameter("value2",getObject("form:RangeCondition_ValueUpper7:Value")),
new TagParameter("name",getObject("form:RangeCondition_Attribute7:Value")),
new TagParameter("localized",getObject("form:RangeCondition_Localized7:Value")),
new TagParameter("value",getObject("form:RangeCondition_ValueLower7:Value"))}, 534); %>
						<% } %>
						<% _boolean_result=false;try {_boolean_result=((Boolean)((((!(context.getFormattedValue(getObject("SQDForm:RangeCondition_Attribute8:Value"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",541,e);}if (_boolean_result) { %>
							<% processOpenTag(response, pageContext, "searchqueryeditorrangeitem", new TagParameter[] {
new TagParameter("number","8"),
new TagParameter("showlocalizedcheckbox",getObject("islocalized")),
new TagParameter("searchindex2",getObject("searchindex")),
new TagParameter("value2",getObject("form:RangeCondition_ValueUpper8:Value")),
new TagParameter("name",getObject("form:RangeCondition_Attribute8:Value")),
new TagParameter("localized",getObject("form:RangeCondition_Localized8:Value")),
new TagParameter("value",getObject("form:RangeCondition_ValueLower8:Value"))}, 542); %>
						<% } %>
						<% _boolean_result=false;try {_boolean_result=((Boolean)((((!(context.getFormattedValue(getObject("SQDForm:RangeCondition_Attribute9:Value"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",549,e);}if (_boolean_result) { %>
							<% processOpenTag(response, pageContext, "searchqueryeditorrangeitem", new TagParameter[] {
new TagParameter("number","9"),
new TagParameter("showlocalizedcheckbox",getObject("islocalized")),
new TagParameter("searchindex2",getObject("searchindex")),
new TagParameter("value2",getObject("form:RangeCondition_ValueUpper9:Value")),
new TagParameter("name",getObject("form:RangeCondition_Attribute9:Value")),
new TagParameter("localized",getObject("form:RangeCondition_Localized9:Value")),
new TagParameter("value",getObject("form:RangeCondition_ValueLower9:Value"))}, 550); %>
						<% } %>
					<% } %>

					<% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("readonly"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",559,e);}if (_boolean_result) { %>
						<tr id="addRangeAttribute">
							<td colspan="5">
								<table border="0" cellspacing="1" cellpadding="0">
									<tr>
										<td class="button">
											<input type="button"
												name="addRangeAttribute"
												value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("SearchQueryEditor.Add.button",null)),null)%>"
												class="button"
												onClick="controllElements.showRow('rangeCondition'); return false;" />
										</td>
									</tr>
								</table>
							</td>
						</tr>
					<% } %>

					<tr>
						<td colspan="5" class="n">
							<img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" alt="" border="0" width="1" height="3">
						</td>
					</tr>

					<tr>
						<td colspan="5" class="table_title2 left ">
							<% {out.write(localizeISText("SearchQueryEditor.Sorting.table_title2",null,null,null,null,null,null,null,null,null,null,null,null));} %>
						</td>
					</tr>
					<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannel")))).booleanValue() && ((Boolean) ((( ((Number) getObject("CurrentChannel:TypeCode")).doubleValue() ==((Number)(new Double(52))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",588,e);}if (_boolean_result) { %>
						<tr>
							<td class="table_title_description" colspan="5">
								<% {out.write(localizeISText("SearchQueryEditor.SpecifiesTheSortingOfTheRetrievedResultSetTheSorti.table_title_description",null,null,"selection_link",context.getFormattedValue(context.webRoot(),null) + context.getFormattedValue("/help/con_cat.html#con_cat_sort",null),null,null,null,null,null,null,null,null));} %>
							</td>
						</tr>
					<% } %>
					<tr>
						<td class="label" colspan="2">
							<label class="label label_light" for="SQDForm_SortingCondition_Attribute0">
								<% {out.write(localizeISText("SearchQueryEditor.Attribute.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>
							</label>
						</td>
						<td class="label" colspan="4">
							<label class="label label_light" for="SQDForm_SortingCondition_Value0">
								<% {out.write(localizeISText("SearchQueryEditor.Direction.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>
							</label>
						</td>
					</tr>

					<% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("readonly"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",612,e);}if (_boolean_result) { %>
						<% processOpenTag(response, pageContext, "searchqueryeditorsortingitem", new TagParameter[] {
new TagParameter("number","0"),
new TagParameter("searchindex2",getObject("searchindex")),
new TagParameter("name",getObject("form:SortingCondition_Attribute0:Value")),
new TagParameter("value",getObject("form:SortingCondition_Value0:Value"))}, 613); %>
						<% processOpenTag(response, pageContext, "searchqueryeditorsortingitem", new TagParameter[] {
new TagParameter("number","1"),
new TagParameter("searchindex2",getObject("searchindex")),
new TagParameter("name",getObject("form:SortingCondition_Attribute1:Value")),
new TagParameter("value",getObject("form:SortingCondition_Value1:Value"))}, 616); %>
						<% processOpenTag(response, pageContext, "searchqueryeditorsortingitem", new TagParameter[] {
new TagParameter("number","2"),
new TagParameter("searchindex2",getObject("searchindex")),
new TagParameter("name",getObject("form:SortingCondition_Attribute2:Value")),
new TagParameter("value",getObject("form:SortingCondition_Value2:Value"))}, 619); %>
						<% processOpenTag(response, pageContext, "searchqueryeditorsortingitem", new TagParameter[] {
new TagParameter("number","3"),
new TagParameter("searchindex2",getObject("searchindex")),
new TagParameter("name",getObject("form:SortingCondition_Attribute3:Value")),
new TagParameter("value",getObject("form:SortingCondition_Value3:Value"))}, 622); %>
						<% processOpenTag(response, pageContext, "searchqueryeditorsortingitem", new TagParameter[] {
new TagParameter("number","4"),
new TagParameter("searchindex2",getObject("searchindex")),
new TagParameter("name",getObject("form:SortingCondition_Attribute4:Value")),
new TagParameter("value",getObject("form:SortingCondition_Value4:Value"))}, 625); %>
						<% processOpenTag(response, pageContext, "searchqueryeditorsortingitem", new TagParameter[] {
new TagParameter("number","5"),
new TagParameter("searchindex2",getObject("searchindex")),
new TagParameter("name",getObject("form:SortingCondition_Attribute5:Value")),
new TagParameter("value",getObject("form:SortingCondition_Value5:Value"))}, 628); %>
						<% processOpenTag(response, pageContext, "searchqueryeditorsortingitem", new TagParameter[] {
new TagParameter("number","6"),
new TagParameter("searchindex2",getObject("searchindex")),
new TagParameter("name",getObject("form:SortingCondition_Attribute6:Value")),
new TagParameter("value",getObject("form:SortingCondition_Value6:Value"))}, 631); %>
						<% processOpenTag(response, pageContext, "searchqueryeditorsortingitem", new TagParameter[] {
new TagParameter("number","7"),
new TagParameter("searchindex2",getObject("searchindex")),
new TagParameter("name",getObject("form:SortingCondition_Attribute7:Value")),
new TagParameter("value",getObject("form:SortingCondition_Value7:Value"))}, 634); %>
						<% processOpenTag(response, pageContext, "searchqueryeditorsortingitem", new TagParameter[] {
new TagParameter("number","8"),
new TagParameter("searchindex2",getObject("searchindex")),
new TagParameter("name",getObject("form:SortingCondition_Attribute8:Value")),
new TagParameter("value",getObject("form:SortingCondition_Value8:Value"))}, 637); %>
						<% processOpenTag(response, pageContext, "searchqueryeditorsortingitem", new TagParameter[] {
new TagParameter("number","9"),
new TagParameter("searchindex2",getObject("searchindex")),
new TagParameter("name",getObject("form:SortingCondition_Attribute9:Value")),
new TagParameter("value",getObject("form:SortingCondition_Value9:Value"))}, 640); %>
					<% } else { %>
						<% processOpenTag(response, pageContext, "searchqueryeditorsortingitem", new TagParameter[] {
new TagParameter("number","0"),
new TagParameter("searchindex2",getObject("searchindex")),
new TagParameter("name",getObject("form:SortingCondition_Attribute0:Value")),
new TagParameter("value",getObject("form:SortingCondition_Value0:Value"))}, 644); %>
						<% _boolean_result=false;try {_boolean_result=((Boolean)((((!(context.getFormattedValue(getObject("SQDForm:SortingCondition_Attribute1:Value"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",647,e);}if (_boolean_result) { %>
							<% processOpenTag(response, pageContext, "searchqueryeditorsortingitem", new TagParameter[] {
new TagParameter("number","1"),
new TagParameter("searchindex2",getObject("searchindex")),
new TagParameter("name",getObject("form:SortingCondition_Attribute1:Value")),
new TagParameter("value",getObject("form:SortingCondition_Value1:Value"))}, 648); %>
						<% } %>
						<% _boolean_result=false;try {_boolean_result=((Boolean)((((!(context.getFormattedValue(getObject("SQDForm:SortingCondition_Attribute2:Value"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",652,e);}if (_boolean_result) { %>
							<% processOpenTag(response, pageContext, "searchqueryeditorsortingitem", new TagParameter[] {
new TagParameter("number","2"),
new TagParameter("searchindex2",getObject("searchindex")),
new TagParameter("name",getObject("form:SortingCondition_Attribute2:Value")),
new TagParameter("value",getObject("form:SortingCondition_Value2:Value"))}, 653); %>
						<% } %>
						<% _boolean_result=false;try {_boolean_result=((Boolean)((((!(context.getFormattedValue(getObject("SQDForm:SortingCondition_Attribute3:Value"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",657,e);}if (_boolean_result) { %>
							<% processOpenTag(response, pageContext, "searchqueryeditorsortingitem", new TagParameter[] {
new TagParameter("number","3"),
new TagParameter("searchindex2",getObject("searchindex")),
new TagParameter("name",getObject("form:SortingCondition_Attribute3:Value")),
new TagParameter("value",getObject("form:SortingCondition_Value3:Value"))}, 658); %>
						<% } %>
						<% _boolean_result=false;try {_boolean_result=((Boolean)((((!(context.getFormattedValue(getObject("SQDForm:SortingCondition_Attribute4:Value"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",662,e);}if (_boolean_result) { %>
							<% processOpenTag(response, pageContext, "searchqueryeditorsortingitem", new TagParameter[] {
new TagParameter("number","4"),
new TagParameter("searchindex2",getObject("searchindex")),
new TagParameter("name",getObject("form:SortingCondition_Attribute4:Value")),
new TagParameter("value",getObject("form:SortingCondition_Value4:Value"))}, 663); %>
						<% } %>
						<% _boolean_result=false;try {_boolean_result=((Boolean)((((!(context.getFormattedValue(getObject("SQDForm:SortingCondition_Attribute5:Value"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",667,e);}if (_boolean_result) { %>
							<% processOpenTag(response, pageContext, "searchqueryeditorsortingitem", new TagParameter[] {
new TagParameter("number","5"),
new TagParameter("searchindex2",getObject("searchindex")),
new TagParameter("name",getObject("form:SortingCondition_Attribute5:Value")),
new TagParameter("value",getObject("form:SortingCondition_Value5:Value"))}, 668); %>
						<% } %>
						<% _boolean_result=false;try {_boolean_result=((Boolean)((((!(context.getFormattedValue(getObject("SQDForm:SortingCondition_Attribute6:Value"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",672,e);}if (_boolean_result) { %>
							<% processOpenTag(response, pageContext, "searchqueryeditorsortingitem", new TagParameter[] {
new TagParameter("number","6"),
new TagParameter("searchindex2",getObject("searchindex")),
new TagParameter("name",getObject("form:SortingCondition_Attribute6:Value")),
new TagParameter("value",getObject("form:SortingCondition_Value6:Value"))}, 673); %>
						<% } %>
						<% _boolean_result=false;try {_boolean_result=((Boolean)((((!(context.getFormattedValue(getObject("SQDForm:SortingCondition_Attribute7:Value"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",677,e);}if (_boolean_result) { %>
							<% processOpenTag(response, pageContext, "searchqueryeditorsortingitem", new TagParameter[] {
new TagParameter("number","7"),
new TagParameter("searchindex2",getObject("searchindex")),
new TagParameter("name",getObject("form:SortingCondition_Attribute7:Value")),
new TagParameter("value",getObject("form:SortingCondition_Value7:Value"))}, 678); %>
						<% } %>
						<% _boolean_result=false;try {_boolean_result=((Boolean)((((!(context.getFormattedValue(getObject("SQDForm:SortingCondition_Attribute8:Value"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",682,e);}if (_boolean_result) { %>
							<% processOpenTag(response, pageContext, "searchqueryeditorsortingitem", new TagParameter[] {
new TagParameter("number","8"),
new TagParameter("searchindex2",getObject("searchindex")),
new TagParameter("name",getObject("form:SortingCondition_Attribute8:Value")),
new TagParameter("value",getObject("form:SortingCondition_Value8:Value"))}, 683); %>
						<% } %>
						<% _boolean_result=false;try {_boolean_result=((Boolean)((((!(context.getFormattedValue(getObject("SQDForm:SortingCondition_Attribute9:Value"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",687,e);}if (_boolean_result) { %>
							<% processOpenTag(response, pageContext, "searchqueryeditorsortingitem", new TagParameter[] {
new TagParameter("number","9"),
new TagParameter("searchindex2",getObject("searchindex")),
new TagParameter("name",getObject("form:SortingCondition_Attribute9:Value")),
new TagParameter("value",getObject("form:SortingCondition_Value9:Value"))}, 688); %>
						<% } %>
					<% } %>

					<% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("readonly"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",694,e);}if (_boolean_result) { %>
						<tr id="addSortingAttribute">
							<td>
								<table border="0" cellspacing="1" cellpadding="0">
									<tr>
										<td class="button"><input type="button"
											name="addSortingAttribute"
											value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("SearchQueryEditor.Add.button",null)),null)%>"
											class="button"
											onClick="controllElements.showRow('sortingCondition'); return false;" />
										</td>
									</tr>
								</table>
							</td>
						</tr>
					<% } %>

					<tr>
						<td colspan="5" class="n">
							<img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" alt="" border="0" width="1" height="3">
						</td>
					</tr>

					<tr>
						<td class="table_title2 left " colspan="5">
							<% {out.write(localizeISText("SearchQueryEditor.Weighting.table_title2",null,null,null,null,null,null,null,null,null,null,null,null));} %>
						</td>
					</tr>
					<tr>
						<td class="table_title_description" colspan="5">
							<% {out.write(localizeISText("SearchQueryEditor.SpecifiesAWeightingForSpecificAttributeValues.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %>
						</td>
					</tr>
					<tr>
						<td class="label" colspan="2">
							<label class="label label_light" for="SQDForm_RankingCondition_Attribute0">
								<% {out.write(localizeISText("SearchQueryEditor.Attribute.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>
							</label>
						</td>
						<td class="label">
							<label class="label label_light" for="SQDForm_RankingCondition_Value0">
								<% {out.write(localizeISText("SearchQueryEditor.Value.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>
							</label>
						</td>
						<td class="label">
							<label class="label label_light" for="SQDForm_RankingCondition_Factor0">
								<% {out.write(localizeISText("SearchQueryEditor.Weighting.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>
							</label>
						</td>
						
						<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("islocalized"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",746,e);}if (_boolean_result) { %>
							<td class="label">
								<label class="label label_light" for="SQDForm_RankingCondition_Localized0">
									<% {out.write(localizeISText("SearchQueryEditor.Localized.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>
								</label>
							</td>
						<% } else { %>
							<td></td>
						<% } %>
						<td></td>
					</tr>

					<% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("readonly"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",758,e);}if (_boolean_result) { %>
						<% processOpenTag(response, pageContext, "searchqueryeditorrankingitem", new TagParameter[] {
new TagParameter("number","0"),
new TagParameter("showlocalizedcheckbox",getObject("islocalized")),
new TagParameter("searchindex2",getObject("searchindex")),
new TagParameter("value2",getObject("form:RankingCondition_Factor0:Value")),
new TagParameter("name",getObject("form:RankingCondition_Attribute0:Value")),
new TagParameter("localized",getObject("form:RankingCondition_Localized0:Value")),
new TagParameter("value",getObject("form:RankingCondition_Value0:Value"))}, 759); %>
						<% processOpenTag(response, pageContext, "searchqueryeditorrankingitem", new TagParameter[] {
new TagParameter("number","1"),
new TagParameter("showlocalizedcheckbox",getObject("islocalized")),
new TagParameter("searchindex2",getObject("searchindex")),
new TagParameter("value2",getObject("form:RankingCondition_Factor1:Value")),
new TagParameter("name",getObject("form:RankingCondition_Attribute1:Value")),
new TagParameter("localized",getObject("form:RankingCondition_Localized1:Value")),
new TagParameter("value",getObject("form:RankingCondition_Value1:Value"))}, 765); %>
						<% processOpenTag(response, pageContext, "searchqueryeditorrankingitem", new TagParameter[] {
new TagParameter("number","2"),
new TagParameter("showlocalizedcheckbox",getObject("islocalized")),
new TagParameter("searchindex2",getObject("searchindex")),
new TagParameter("value2",getObject("form:RankingCondition_Factor2:Value")),
new TagParameter("name",getObject("form:RankingCondition_Attribute2:Value")),
new TagParameter("localized",getObject("form:RankingCondition_Localized2:Value")),
new TagParameter("value",getObject("form:RankingCondition_Value2:Value"))}, 771); %>
						<% processOpenTag(response, pageContext, "searchqueryeditorrankingitem", new TagParameter[] {
new TagParameter("number","3"),
new TagParameter("showlocalizedcheckbox",getObject("islocalized")),
new TagParameter("searchindex2",getObject("searchindex")),
new TagParameter("value2",getObject("form:RankingCondition_Factor3:Value")),
new TagParameter("name",getObject("form:RankingCondition_Attribute3:Value")),
new TagParameter("localized",getObject("form:RankingCondition_Localized3:Value")),
new TagParameter("value",getObject("form:RankingCondition_Value3:Value"))}, 777); %>
						<% processOpenTag(response, pageContext, "searchqueryeditorrankingitem", new TagParameter[] {
new TagParameter("number","4"),
new TagParameter("showlocalizedcheckbox",getObject("islocalized")),
new TagParameter("searchindex2",getObject("searchindex")),
new TagParameter("value2",getObject("form:RankingCondition_Factor4:Value")),
new TagParameter("name",getObject("form:RankingCondition_Attribute4:Value")),
new TagParameter("localized",getObject("form:RankingCondition_Localized4:Value")),
new TagParameter("value",getObject("form:RankingCondition_Value4:Value"))}, 783); %>
						<% processOpenTag(response, pageContext, "searchqueryeditorrankingitem", new TagParameter[] {
new TagParameter("number","5"),
new TagParameter("showlocalizedcheckbox",getObject("islocalized")),
new TagParameter("searchindex2",getObject("searchindex")),
new TagParameter("value2",getObject("form:RankingCondition_Factor5:Value")),
new TagParameter("name",getObject("form:RankingCondition_Attribute5:Value")),
new TagParameter("localized",getObject("form:RankingCondition_Localized5:Value")),
new TagParameter("value",getObject("form:RankingCondition_Value5:Value"))}, 789); %>
						<% processOpenTag(response, pageContext, "searchqueryeditorrankingitem", new TagParameter[] {
new TagParameter("number","6"),
new TagParameter("showlocalizedcheckbox",getObject("islocalized")),
new TagParameter("searchindex2",getObject("searchindex")),
new TagParameter("value2",getObject("form:RankingCondition_Factor6:Value")),
new TagParameter("name",getObject("form:RankingCondition_Attribute6:Value")),
new TagParameter("localized",getObject("form:RankingCondition_Localized6:Value")),
new TagParameter("value",getObject("form:RankingCondition_Value6:Value"))}, 795); %>
						<% processOpenTag(response, pageContext, "searchqueryeditorrankingitem", new TagParameter[] {
new TagParameter("number","7"),
new TagParameter("showlocalizedcheckbox",getObject("islocalized")),
new TagParameter("searchindex2",getObject("searchindex")),
new TagParameter("value2",getObject("form:RankingCondition_Factor7:Value")),
new TagParameter("name",getObject("form:RankingCondition_Attribute7:Value")),
new TagParameter("localized",getObject("form:RankingCondition_Localized7:Value")),
new TagParameter("value",getObject("form:RankingCondition_Value7:Value"))}, 801); %>
						<% processOpenTag(response, pageContext, "searchqueryeditorrankingitem", new TagParameter[] {
new TagParameter("number","8"),
new TagParameter("showlocalizedcheckbox",getObject("islocalized")),
new TagParameter("searchindex2",getObject("searchindex")),
new TagParameter("value2",getObject("form:RankingCondition_Factor8:Value")),
new TagParameter("name",getObject("form:RankingCondition_Attribute8:Value")),
new TagParameter("localized",getObject("form:RankingCondition_Localized8:Value")),
new TagParameter("value",getObject("form:RankingCondition_Value8:Value"))}, 807); %>
						<% processOpenTag(response, pageContext, "searchqueryeditorrankingitem", new TagParameter[] {
new TagParameter("number","9"),
new TagParameter("showlocalizedcheckbox",getObject("islocalized")),
new TagParameter("searchindex2",getObject("searchindex")),
new TagParameter("value2",getObject("form:RankingCondition_Factor9:Value")),
new TagParameter("name",getObject("form:RankingCondition_Attribute9:Value")),
new TagParameter("localized",getObject("form:RankingCondition_Localized9:Value")),
new TagParameter("value",getObject("form:RankingCondition_Value9:Value"))}, 813); %>
						<% } else { %>
						<% processOpenTag(response, pageContext, "searchqueryeditorrankingitem", new TagParameter[] {
new TagParameter("number","0"),
new TagParameter("showlocalizedcheckbox",getObject("islocalized")),
new TagParameter("searchindex2",getObject("searchindex")),
new TagParameter("value2",getObject("form:RankingCondition_Factor0:Value")),
new TagParameter("name",getObject("form:RankingCondition_Attribute0:Value")),
new TagParameter("localized",getObject("form:RankingCondition_Localized0:Value")),
new TagParameter("value",getObject("form:RankingCondition_Value0:Value"))}, 820); %>
						<% _boolean_result=false;try {_boolean_result=((Boolean)((((!(context.getFormattedValue(getObject("SQDForm:RankingCondition_Attribute1:Value"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",826,e);}if (_boolean_result) { %>
							<% processOpenTag(response, pageContext, "searchqueryeditorrankingitem", new TagParameter[] {
new TagParameter("number","1"),
new TagParameter("showlocalizedcheckbox",getObject("islocalized")),
new TagParameter("searchindex2",getObject("searchindex")),
new TagParameter("value2",getObject("form:RankingCondition_Factor1:Value")),
new TagParameter("name",getObject("form:RankingCondition_Attribute1:Value")),
new TagParameter("localized",getObject("form:RankingCondition_Localized1:Value")),
new TagParameter("value",getObject("form:RankingCondition_Value1:Value"))}, 827); %>
						<% } %>
						<% _boolean_result=false;try {_boolean_result=((Boolean)((((!(context.getFormattedValue(getObject("SQDForm:RankingCondition_Attribute2:Value"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",834,e);}if (_boolean_result) { %>
							<% processOpenTag(response, pageContext, "searchqueryeditorrankingitem", new TagParameter[] {
new TagParameter("number","2"),
new TagParameter("showlocalizedcheckbox",getObject("islocalized")),
new TagParameter("searchindex2",getObject("searchindex")),
new TagParameter("value2",getObject("form:RankingCondition_Factor2:Value")),
new TagParameter("name",getObject("form:RankingCondition_Attribute2:Value")),
new TagParameter("localized",getObject("form:RankingCondition_Localized2:Value")),
new TagParameter("value",getObject("form:RankingCondition_Value2:Value"))}, 835); %>
						<% } %>
						<% _boolean_result=false;try {_boolean_result=((Boolean)((((!(context.getFormattedValue(getObject("SQDForm:RankingCondition_Attribute3:Value"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",842,e);}if (_boolean_result) { %>
							<% processOpenTag(response, pageContext, "searchqueryeditorrankingitem", new TagParameter[] {
new TagParameter("number","3"),
new TagParameter("showlocalizedcheckbox",getObject("islocalized")),
new TagParameter("searchindex2",getObject("searchindex")),
new TagParameter("value2",getObject("form:RankingCondition_Factor3:Value")),
new TagParameter("name",getObject("form:RankingCondition_Attribute3:Value")),
new TagParameter("localized",getObject("form:RankingCondition_Localized3:Value")),
new TagParameter("value",getObject("form:RankingCondition_Value3:Value"))}, 843); %>
						<% } %>
						<% _boolean_result=false;try {_boolean_result=((Boolean)((((!(context.getFormattedValue(getObject("SQDForm:RankingCondition_Attribute4:Value"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",850,e);}if (_boolean_result) { %>
							<% processOpenTag(response, pageContext, "searchqueryeditorrankingitem", new TagParameter[] {
new TagParameter("number","4"),
new TagParameter("searchindex2",getObject("searchindex")),
new TagParameter("value2",getObject("form:RankingCondition_Factor4:Value")),
new TagParameter("name",getObject("form:RankingCondition_Attribute4:Value")),
new TagParameter("localized",getObject("form:RankingCondition_Localized4:Value")),
new TagParameter("value",getObject("form:RankingCondition_Value4:Value"))}, 851); %>
						<% } %>
						<% _boolean_result=false;try {_boolean_result=((Boolean)((((!(context.getFormattedValue(getObject("SQDForm:RankingCondition_Attribute5:Value"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",857,e);}if (_boolean_result) { %>
							<% processOpenTag(response, pageContext, "searchqueryeditorrankingitem", new TagParameter[] {
new TagParameter("number","5"),
new TagParameter("searchindex2",getObject("searchindex")),
new TagParameter("value2",getObject("form:RankingCondition_Factor5:Value")),
new TagParameter("name",getObject("form:RankingCondition_Attribute5:Value")),
new TagParameter("localized",getObject("form:RankingCondition_Localized5:Value")),
new TagParameter("value",getObject("form:RankingCondition_Value5:Value"))}, 858); %>
						<% } %>
						<% _boolean_result=false;try {_boolean_result=((Boolean)((((!(context.getFormattedValue(getObject("SQDForm:RankingCondition_Attribute6:Value"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",864,e);}if (_boolean_result) { %>
							<% processOpenTag(response, pageContext, "searchqueryeditorrankingitem", new TagParameter[] {
new TagParameter("number","6"),
new TagParameter("searchindex2",getObject("searchindex")),
new TagParameter("value2",getObject("form:RankingCondition_Factor6:Value")),
new TagParameter("name",getObject("form:RankingCondition_Attribute6:Value")),
new TagParameter("localized",getObject("form:RankingCondition_Localized6:Value")),
new TagParameter("value",getObject("form:RankingCondition_Value6:Value"))}, 866); %>
						<% } %>
						<% _boolean_result=false;try {_boolean_result=((Boolean)((((!(context.getFormattedValue(getObject("SQDForm:RankingCondition_Attribute7:Value"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",872,e);}if (_boolean_result) { %>
							<% processOpenTag(response, pageContext, "searchqueryeditorrankingitem", new TagParameter[] {
new TagParameter("number","7"),
new TagParameter("searchindex2",getObject("searchindex")),
new TagParameter("value2",getObject("form:RankingCondition_Factor7:Value")),
new TagParameter("name",getObject("form:RankingCondition_Attribute7:Value")),
new TagParameter("localized",getObject("form:RankingCondition_Localized7:Value")),
new TagParameter("value",getObject("form:RankingCondition_Value7:Value"))}, 873); %>
						<% } %>
						<% _boolean_result=false;try {_boolean_result=((Boolean)((((!(context.getFormattedValue(getObject("SQDForm:RankingCondition_Attribute8:Value"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",879,e);}if (_boolean_result) { %>
							<% processOpenTag(response, pageContext, "searchqueryeditorrankingitem", new TagParameter[] {
new TagParameter("number","8"),
new TagParameter("searchindex2",getObject("searchindex")),
new TagParameter("value2",getObject("form:RankingCondition_Factor8:Value")),
new TagParameter("name",getObject("form:RankingCondition_Attribute8:Value")),
new TagParameter("localized",getObject("form:RankingCondition_Localized8:Value")),
new TagParameter("value",getObject("form:RankingCondition_Value8:Value"))}, 880); %>
						<% } %>
						<% _boolean_result=false;try {_boolean_result=((Boolean)((((!(context.getFormattedValue(getObject("SQDForm:RankingCondition_Attribute9:Value"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",886,e);}if (_boolean_result) { %>
							<% processOpenTag(response, pageContext, "searchqueryeditorrankingitem", new TagParameter[] {
new TagParameter("number","9"),
new TagParameter("searchindex2",getObject("searchindex")),
new TagParameter("value2",getObject("form:RankingCondition_Factor9:Value")),
new TagParameter("name",getObject("form:RankingCondition_Attribute9:Value")),
new TagParameter("localized",getObject("form:RankingCondition_Localized9:Value")),
new TagParameter("value",getObject("form:RankingCondition_Value9:Value"))}, 887); %>
						<% } %>
					<% } %>

					<% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("readonly"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",895,e);}if (_boolean_result) { %>
						<tr id="addRankingAttribute">
							<td colspan="5">
								<table border="0" cellspacing="1" cellpadding="0">
									<tr>
										<td class="button">
											<input type="button"
												name="addRankingAttribute"
												value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("SearchQueryEditor.Add.button",null)),null)%>"
												class="button"
												onClick="controllElements.showRow('rankingCondition'); return false;" />
										</td>
									</tr>
								</table>
							</td>
						</tr>
					<% } %>
				</table>
			</td>
		</tr>
	</table>
	<% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("readonly"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",916,e);}if (_boolean_result) { %>
		<script language="JavaScript" type="text/javascript">
	//<![CDATA[
	
	
		
		<% _boolean_result=false;try {_boolean_result=((Boolean)((((!(context.getFormattedValue(getObject("SQDForm:ValueCondition_Attribute9:Value"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",922,e);}if (_boolean_result) { %>
			<% {Object temp_obj = ("9"); getPipelineDictionary().put("rowCount", temp_obj);} %>
		<% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((!(context.getFormattedValue(getObject("SQDForm:ValueCondition_Attribute8:Value"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",924,e);}if (_boolean_result) { %>
			<% {Object temp_obj = ("8"); getPipelineDictionary().put("rowCount", temp_obj);} %>
		<% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((!(context.getFormattedValue(getObject("SQDForm:ValueCondition_Attribute7:Value"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",926,e);}if (_boolean_result) { %>
			<% {Object temp_obj = ("7"); getPipelineDictionary().put("rowCount", temp_obj);} %>
		<% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((!(context.getFormattedValue(getObject("SQDForm:ValueCondition_Attribute6:Value"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",928,e);}if (_boolean_result) { %>
			<% {Object temp_obj = ("6"); getPipelineDictionary().put("rowCount", temp_obj);} %>
		<% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((!(context.getFormattedValue(getObject("SQDForm:ValueCondition_Attribute5:Value"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",930,e);}if (_boolean_result) { %>
			<% {Object temp_obj = ("5"); getPipelineDictionary().put("rowCount", temp_obj);} %>
		<% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((!(context.getFormattedValue(getObject("SQDForm:ValueCondition_Attribute4:Value"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",932,e);}if (_boolean_result) { %>
			<% {Object temp_obj = ("4"); getPipelineDictionary().put("rowCount", temp_obj);} %>
		<% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((!(context.getFormattedValue(getObject("SQDForm:ValueCondition_Attribute3:Value"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",934,e);}if (_boolean_result) { %>
			<% {Object temp_obj = ("3"); getPipelineDictionary().put("rowCount", temp_obj);} %>
		<% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((!(context.getFormattedValue(getObject("SQDForm:ValueCondition_Attribute2:Value"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",936,e);}if (_boolean_result) { %>
			<% {Object temp_obj = ("2"); getPipelineDictionary().put("rowCount", temp_obj);} %>
		<% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((!(context.getFormattedValue(getObject("SQDForm:ValueCondition_Attribute1:Value"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",938,e);}if (_boolean_result) { %>
			<% {Object temp_obj = ("1"); getPipelineDictionary().put("rowCount", temp_obj);} %>
		<% } else { %>
			<% {Object temp_obj = ("0"); getPipelineDictionary().put("rowCount", temp_obj);} %>
		<% }}}}}}}}} %>
		controllElements.initMultipleAttributesSection('valueCondition', {
			 deleteButtonID: 'deleteValueAttribute',
			 addButtonID: 'addValueAttribute',
			 inputID: 'SQDForm_ValueCondition_Value', 
			 negateID: 'SQDForm_ValueCondition_Negated',
			 comboID: 'SQDForm_ValueCondition_Attribute',
			 checkboxID: 'SQDForm_ValueCondition_Localized',
			 rowCount: <% {String value = null;try{value=context.getFormattedValue(getObject("rowCount"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {950}",e);}if (value==null) value="";out.write(value);} %>, 
			 maxVisibleRows: 10
		});
		for(var i=0;i<=<% {String value = null;try{value=context.getFormattedValue(getObject("rowCount"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {953}",e);}if (value==null) value="";out.write(value);} %>;i++){
			 controllElements.setInputToSuggestBox("valueCondition",i);
		}
		
		<% _boolean_result=false;try {_boolean_result=((Boolean)((((!(context.getFormattedValue(getObject("SQDForm:RangeCondition_Attribute9:Value"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",957,e);}if (_boolean_result) { %>
			<% {Object temp_obj = ("9"); getPipelineDictionary().put("rowCount", temp_obj);} %>
		<% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((!(context.getFormattedValue(getObject("SQDForm:RangeCondition_Attribute8:Value"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",959,e);}if (_boolean_result) { %>
			<% {Object temp_obj = ("8"); getPipelineDictionary().put("rowCount", temp_obj);} %>
		<% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((!(context.getFormattedValue(getObject("SQDForm:RangeCondition_Attribute7:Value"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",961,e);}if (_boolean_result) { %>
			<% {Object temp_obj = ("7"); getPipelineDictionary().put("rowCount", temp_obj);} %>
		<% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((!(context.getFormattedValue(getObject("SQDForm:RangeCondition_Attribute6:Value"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",963,e);}if (_boolean_result) { %>
			<% {Object temp_obj = ("6"); getPipelineDictionary().put("rowCount", temp_obj);} %>
		<% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((!(context.getFormattedValue(getObject("SQDForm:RangeCondition_Attribute5:Value"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",965,e);}if (_boolean_result) { %>
			<% {Object temp_obj = ("5"); getPipelineDictionary().put("rowCount", temp_obj);} %>
		<% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((!(context.getFormattedValue(getObject("SQDForm:RangeCondition_Attribute4:Value"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",967,e);}if (_boolean_result) { %>
			<% {Object temp_obj = ("4"); getPipelineDictionary().put("rowCount", temp_obj);} %>
		<% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((!(context.getFormattedValue(getObject("SQDForm:RangeCondition_Attribute3:Value"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",969,e);}if (_boolean_result) { %>
			<% {Object temp_obj = ("3"); getPipelineDictionary().put("rowCount", temp_obj);} %>
		<% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((!(context.getFormattedValue(getObject("SQDForm:RangeCondition_Attribute2:Value"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",971,e);}if (_boolean_result) { %>
			<% {Object temp_obj = ("2"); getPipelineDictionary().put("rowCount", temp_obj);} %>
		<% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((!(context.getFormattedValue(getObject("SQDForm:RangeCondition_Attribute1:Value"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",973,e);}if (_boolean_result) { %>
			<% {Object temp_obj = ("1"); getPipelineDictionary().put("rowCount", temp_obj);} %>
		<% } else { %>
			<% {Object temp_obj = ("0"); getPipelineDictionary().put("rowCount", temp_obj);} %>
		<% }}}}}}}}} %>
		controllElements.initMultipleAttributesSection('rangeCondition', {
			 deleteButtonID: 'deleteRangeAttribute',
			 addButtonID: 'addRangeAttribute',
			 inputID: 'SQDForm_RangeCondition_ValueLower', 
			 input2ID: 'SQDForm_RangeCondition_ValueUpper', 
			 comboID: 'SQDForm_RangeCondition_Attribute',
			 checkboxID: 'SQDForm_RangeCondition_Localized',
			 rowCount: <% {String value = null;try{value=context.getFormattedValue(getObject("rowCount"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {985}",e);}if (value==null) value="";out.write(value);} %>, 
			 maxVisibleRows: 10
		});
		for(var i=0;i<=<% {String value = null;try{value=context.getFormattedValue(getObject("rowCount"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {988}",e);}if (value==null) value="";out.write(value);} %>;i++){
			 controllElements.setInputToSuggestBox("rangeCondition",i);
		}
		
	
		
		<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (((!(context.getFormattedValue(getObject("SQDForm:SortingCondition_Value9:Value"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("SQDForm:SortingCondition_Attribute9:Value"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",994,e);}if (_boolean_result) { %>
			<% {Object temp_obj = ("9"); getPipelineDictionary().put("rowCount", temp_obj);} %>
		<% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (((!(context.getFormattedValue(getObject("SQDForm:SortingCondition_Value8:Value"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("SQDForm:SortingCondition_Attribute8:Value"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",996,e);}if (_boolean_result) { %>
			<% {Object temp_obj = ("8"); getPipelineDictionary().put("rowCount", temp_obj);} %>
		<% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (((!(context.getFormattedValue(getObject("SQDForm:SortingCondition_Value7:Value"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("SQDForm:SortingCondition_Attribute7:Value"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",998,e);}if (_boolean_result) { %>
			<% {Object temp_obj = ("7"); getPipelineDictionary().put("rowCount", temp_obj);} %>
		<% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (((!(context.getFormattedValue(getObject("SQDForm:SortingCondition_Value6:Value"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("SQDForm:SortingCondition_Attribute6:Value"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",1000,e);}if (_boolean_result) { %>
			<% {Object temp_obj = ("6"); getPipelineDictionary().put("rowCount", temp_obj);} %>
		<% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (((!(context.getFormattedValue(getObject("SQDForm:SortingCondition_Value5:Value"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("SQDForm:SortingCondition_Attribute5:Value"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",1002,e);}if (_boolean_result) { %>
			<% {Object temp_obj = ("5"); getPipelineDictionary().put("rowCount", temp_obj);} %>
		<% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (((!(context.getFormattedValue(getObject("SQDForm:SortingCondition_Value4:Value"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("SQDForm:SortingCondition_Attribute4:Value"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",1004,e);}if (_boolean_result) { %>
			<% {Object temp_obj = ("4"); getPipelineDictionary().put("rowCount", temp_obj);} %>
		<% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (((!(context.getFormattedValue(getObject("SQDForm:SortingCondition_Value3:Value"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("SQDForm:SortingCondition_Attribute3:Value"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",1006,e);}if (_boolean_result) { %>
			<% {Object temp_obj = ("3"); getPipelineDictionary().put("rowCount", temp_obj);} %>
		<% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (((!(context.getFormattedValue(getObject("SQDForm:SortingCondition_Value2:Value"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("SQDForm:SortingCondition_Attribute2:Value"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",1008,e);}if (_boolean_result) { %>
			<% {Object temp_obj = ("2"); getPipelineDictionary().put("rowCount", temp_obj);} %>
		<% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (((!(context.getFormattedValue(getObject("SQDForm:SortingCondition_Value1:Value"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("SQDForm:SortingCondition_Attribute1:Value"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",1010,e);}if (_boolean_result) { %>
			<% {Object temp_obj = ("1"); getPipelineDictionary().put("rowCount", temp_obj);} %>
		<% } else { %>
			<% {Object temp_obj = ("0"); getPipelineDictionary().put("rowCount", temp_obj);} %>
		<% }}}}}}}}} %>
		controllElements.initMultipleAttributesSection('sortingCondition', {
			 deleteButtonID: 'deleteSortingAttribute',
			 addButtonID: 'addSortingAttribute',
			 inputID: 'SQDForm_SortingCondition_Dummy', 
			 comboID: 'SQDForm_SortingCondition_Attribute',
			 combo2ID: 'SQDForm_SortingCondition_Value',
			 rowCount: <% {String value = null;try{value=context.getFormattedValue(getObject("rowCount"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {1021}",e);}if (value==null) value="";out.write(value);} %>, 
			 maxVisibleRows: 10
		});
		for(var i=0;i<=<% {String value = null;try{value=context.getFormattedValue(getObject("rowCount"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {1024}",e);}if (value==null) value="";out.write(value);} %>;i++){
			 controllElements.setInputToSuggestBox("sortingCondition",i);
		}
		
		<% _boolean_result=false;try {_boolean_result=((Boolean)((((!(context.getFormattedValue(getObject("SQDForm:RankingCondition_Attribute9:Value"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",1028,e);}if (_boolean_result) { %>
			<% {Object temp_obj = ("9"); getPipelineDictionary().put("rowCount", temp_obj);} %>
		<% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((!(context.getFormattedValue(getObject("SQDForm:RankingCondition_Attribute8:Value"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",1030,e);}if (_boolean_result) { %>
			<% {Object temp_obj = ("8"); getPipelineDictionary().put("rowCount", temp_obj);} %>
		<% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((!(context.getFormattedValue(getObject("SQDForm:RankingCondition_Attribute7:Value"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",1032,e);}if (_boolean_result) { %>
			<% {Object temp_obj = ("7"); getPipelineDictionary().put("rowCount", temp_obj);} %>
		<% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((!(context.getFormattedValue(getObject("SQDForm:RankingCondition_Attribute6:Value"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",1034,e);}if (_boolean_result) { %>
			<% {Object temp_obj = ("6"); getPipelineDictionary().put("rowCount", temp_obj);} %>
		<% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((!(context.getFormattedValue(getObject("SQDForm:RankingCondition_Attribute5:Value"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",1036,e);}if (_boolean_result) { %>
			<% {Object temp_obj = ("5"); getPipelineDictionary().put("rowCount", temp_obj);} %>
		<% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((!(context.getFormattedValue(getObject("SQDForm:RankingCondition_Attribute4:Value"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",1038,e);}if (_boolean_result) { %>
			<% {Object temp_obj = ("4"); getPipelineDictionary().put("rowCount", temp_obj);} %>
		<% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((!(context.getFormattedValue(getObject("SQDForm:RankingCondition_Attribute3:Value"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",1040,e);}if (_boolean_result) { %>
			<% {Object temp_obj = ("3"); getPipelineDictionary().put("rowCount", temp_obj);} %>
		<% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((!(context.getFormattedValue(getObject("SQDForm:RankingCondition_Attribute2:Value"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",1042,e);}if (_boolean_result) { %>
			<% {Object temp_obj = ("2"); getPipelineDictionary().put("rowCount", temp_obj);} %>
		<% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((!(context.getFormattedValue(getObject("SQDForm:RankingCondition_Attribute1:Value"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",1044,e);}if (_boolean_result) { %>
			<% {Object temp_obj = ("1"); getPipelineDictionary().put("rowCount", temp_obj);} %>
		<% } else { %>
			<% {Object temp_obj = ("0"); getPipelineDictionary().put("rowCount", temp_obj);} %>
		<% }}}}}}}}} %>
		controllElements.initMultipleAttributesSection('rankingCondition', {
			 deleteButtonID: 'deleteRankingAttribute',
			 addButtonID: 'addRankingAttribute',
			 inputID: 'SQDForm_RankingCondition_Value', 
			 input2ID: 'SQDForm_RankingCondition_Factor', 
			 comboID: 'SQDForm_RankingCondition_Attribute',
			 checkboxID: 'SQDForm_RankingCondition_Localized',
			 rowCount: <% {String value = null;try{value=context.getFormattedValue(getObject("rowCount"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {1056}",e);}if (value==null) value="";out.write(value);} %>, 
			 maxVisibleRows: 10
		});	
		for(var i=0;i<=<% {String value = null;try{value=context.getFormattedValue(getObject("rowCount"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {1059}",e);}if (value==null) value="";out.write(value);} %>;i++){
			 controllElements.setInputToSuggestBox("rankingCondition",i);
		}
	
	
	
	//]]>
	</script>
	<% } %>


	<div id="info-placeholder-list" class="js-dialog" width="635"
		height="550" data-title="<% {out.write(localizeISText("SearchQueryEditor.PlaceholderDialog.title",null,null,null,null,null,null,null,null,null,null,null,null));} %>">
		<% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("ProductFilter:SearchQuery:AvailableParameterBindings") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",1072,e);}if (_boolean_result) { %>
			<div class="dialog-content">
				<p><% {out.write(localizeISText("SearchQueryEditor.PlaceholderDialog.description",null,null,null,null,null,null,null,null,null,null,null,null));} %></p>
				<table class="placeholder-list-details">
					<thead>
						<tr>
							<td class="table_header" width="33%"><% {out.write(localizeISText("SearchQueryEditor.PlaceholderDialog.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
							<td class="table_header" width="66%"><% {out.write(localizeISText("SearchQueryEditor.PlaceholderDialog.table_title2",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
						</tr>
					</thead>
					<tbody>
						<% while (loop("ProductFilter:SearchQuery:AvailableParameterBindings","ParameterBinding",null)) { %>
							<tr>
								<td class="table_detail2  s ">{<% {String value = null;try{value=context.getFormattedValue(getObject("ParameterBinding:Alias"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {1086}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>}
								</td>
								<td class="table_detail2  s "><% {String value = null;try{value=context.getFormattedValue(getObject("ParameterBinding:Description(Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {1089}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
							</tr>
						<% } %>
					</tbody>
				</table>
			</div>
			<div class="dialog-buttons">
				<input type="button" class="button" name="cancel" value="Close"
					data-action="dialog-close">
			</div>
		<% } %>
	</div>

	<% } else { %>

	<table class="searchbox" border="0" cellspacing="7" cellpadding="0" width="50%">
		<tr>
			<td class="infobox_item" colspan="2">
				<% {out.write(localizeISText("SearchQueryEditor.NoSearchIndexFoundPleaseCreateASearchIndexOfTypeSF.infobox_item",null,null,null,null,null,null,null,null,null,null,null,null));} %>
			</td>
		</tr>
	</table>

<% } %>
<% printFooter(out); %>