<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- Working Area -->
<!-- Page Navigator --><% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("ProvidingRepository:TypeCode")).doubleValue() ==((Number)(new Double(21))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",6,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductCategoryMapping-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ProviderID",null),context.getFormattedValue(getObject("ProviderID"),null))))),
new TagParameter("id",getObject("ProviderID")),
new TagParameter("text",localizeText(context.getFormattedValue("ProductCategoryMapping.MasterRepositoryMappingRulesCategory.text",null)))}, 7); %><% } else { %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductCategoryMapping-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ProviderID",null),context.getFormattedValue(getObject("ProviderID"),null))))),
new TagParameter("id",getObject("ProviderID")),
new TagParameter("text",localizeText(context.getFormattedValue("ProductCategoryMapping.ChannelRepositoryMappingRulesCategory.text",null)))}, 9); %><% } %><!-- EO Page Navigator -->
<table border="0" cellspacing="0" cellpadding="0" width="100%">
<tr>
<td>
<!-- Tabs --> 
<% {Object temp_obj = ("Category"); getPipelineDictionary().put("SelectedTab", temp_obj);} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"syndication/ProductMappingTabs", null, "18");} %><!-- EO Tabs -->
<!-- Main Content -->
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" class="table_title w e s"><% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("ProvidingRepository:TypeCode")).doubleValue() ==((Number)(new Double(21))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",24,e);}if (_boolean_result) { %><% {out.write(localizeISText("sld_enterprise_app.MasterRepository.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else { %><% {out.write(localizeISText("sld_enterprise_app.ChannelRepository.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %> - <% {out.write(localizeISText("ProductCategoryMapping.MappingRulesCategory.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td class="table_title_description w e"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_SYNDICATE_CATALOGS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",28,e);}if (_boolean_result) { %><% {out.write(localizeISText("ProductCategoryMapping.ActivateTheCheckboxToPreserveCategoryAssignmentsWh.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/><% } else { %><% {out.write(localizeISText("ProductCategoryMapping.TheCheckboxIsActivatedIfCategoryAssignmentsArePres.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/><% } %><br/><% {out.write(localizeISText("ProductCategoryMapping.AssignmentsCanOnlyBePreservedWhenTheOriginalMaster.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% URLPipelineAction action559 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductCategoryMapping-Update",null)))),null));String site559 = null;String serverGroup559 = null;String actionValue559 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductCategoryMapping-Update",null)))),null);if (site559 == null){  site559 = action559.getDomain();  if (site559 == null)  {      site559 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup559 == null){  serverGroup559 = action559.getServerGroup();  if (serverGroup559 == null)  {      serverGroup559 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductCategoryMapping-Update",null)))),null));out.print("\"");out.print(" name=\"");out.print("productAttr");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue559, site559, serverGroup559,true)); %><table width="100%" border="0" cellspacing="0" cellpadding="0" class="aldi">
<tr>
<td class="table_detail left" width="100%"><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("ProductDataMappingRules") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",43,e);}if (_boolean_result) { %><% while (loop("ProductDataMappingRules",null,null)) { %><input type="hidden" name="ProductDataMappingRuleID" value="<%=context.getFormattedValue(getObject("ProductDataMappingRules:UUID"),null)%>"/><% if (getLoopStack().isEmpty()) {Logger.error(this,"ISBREAK occured outside ISLOOP. Line: {}",46);}else{getLoopStack().pop();break;} %><% } %><% } %><input type="checkbox" name="mappingEnabled" 
<% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("ProductDataMappingRules") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",50,e);}if (_boolean_result) { %>checked="checked"<% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_SYNDICATE_CATALOGS")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",51,e);}if (_boolean_result) { %>disabled="disabled"<% } %>
/>&nbsp;&nbsp;<% {out.write(localizeISText("ProductCategoryMapping.PreserveCategoryAssignments.input",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_SYNDICATE_CATALOGS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",55,e);}if (_boolean_result) { %><tr>
<td class="n" align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button">
<input type="hidden" name="ChannelID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ChannelID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {61}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="ProviderID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ProviderID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {62}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="TypeCode" value="3"/>
<input type="hidden" name="FunctionClassName" value="com.intershop.component.mvc.capi.mapping.ProductCategoryMappingRule"/>
<input type="submit" name="apply" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.Apply.button",null)),null)%>" class="button"/>
</td> 
</tr>
</table>
</td>
</tr><% } %></table><% out.print("</form>"); %></td>
</tr>
</table><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/Back", null, "77");} %><!-- EO Main Content -->
<!-- EO Working Area --><% printFooter(out); %>