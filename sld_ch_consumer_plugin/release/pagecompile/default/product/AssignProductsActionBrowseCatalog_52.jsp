<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- Working Area -->
<!-- Page Navigator --><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("hide","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductProcessingWizard_52-SelectNextPageByAction",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ActionID",null),context.getFormattedValue("AssignProductToCatalogCategory",null))).addURLParameter(context.getFormattedValue("PageableID",null),context.getFormattedValue(getObject("PageableID"),null)).addURLParameter(context.getFormattedValue("CatalogUUID",null),context.getFormattedValue(getObject("Catalog:UUID"),null)).addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null)).addURLParameter(context.getFormattedValue("SelectedMenuItem",null),context.getFormattedValue(getObject("SelectedMenuItem"),null)).addURLParameter(context.getFormattedValue("IsSearchFired",null),context.getFormattedValue(getObject("IsSearchFired"),null)))),
new TagParameter("wizard","true"),
new TagParameter("id","AssignProductsToCatregoryActionBreadcrumb"),
new TagParameter("text",localizeText(context.getFormattedValue("AssignProductsActionBrowseCatalog_52.Step2SelectCatalog.text",null)))}, 4); %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductProcessingWizard_52-SelectCategory",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null))).addURLParameter(context.getFormattedValue("PageableID",null),context.getFormattedValue(getObject("PageableID"),null)).addURLParameter(context.getFormattedValue("ActionID",null),context.getFormattedValue(getObject("AssignProductToCatalogCategory"),null)).addURLParameter(context.getFormattedValue("CatalogUUID",null),context.getFormattedValue(getObject("CatalogUUID"),null)).addURLParameter(context.getFormattedValue("SelectedMenuItem",null),context.getFormattedValue(getObject("SelectedMenuItem"),null)).addURLParameter(context.getFormattedValue("IsSearchFired",null),context.getFormattedValue(getObject("IsSearchFired"),null)))),
new TagParameter("wizard","true"),
new TagParameter("text",localizeText(context.getFormattedValue("AssignProductsActionBrowseCatalog_52.Step3SelectCategory.text",null)))}, 5); %><table border="0" cellspacing="0" cellpadding="0" width="100%">
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("Catalog:TypeCode")).doubleValue() ==((Number)(new Double(6))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",9,e);}if (_boolean_result) { %><td class="table_title aldi"><% {out.write(localizeISText("AssignProductsActionBrowseCatalog_52.Step3AssignProductsToAuctionCatalogCategory.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td><% } else { %><td class="table_title aldi"><% {out.write(localizeISText("AssignProductsActionBrowseCatalog_52.Step3AssignProductsToCatalogCategory.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td><% } %></tr>
<tr>
<td class="table_title_description w e s"><% {out.write(localizeISText("AssignProductsActionBrowseCatalog_52.Step3Of4NextStepConfirmSelectedCatalog.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("Category:UUID"),null).equals(context.getFormattedValue(getObject("Catalog:Root:UUID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",20,e);}if (_boolean_result) { %><table width="100%" border="0" cellspacing="0" cellpadding="2" class="infobox w e s"><% {Object temp_obj = (new Double(0)); getPipelineDictionary().put("level", temp_obj);} %><% while (loop("CategoriesPath","Cat",null)) { %><tr>
<td class="infobox_title" width="100%"><% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("level")).doubleValue() >((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",26,e);}if (_boolean_result) { %><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="<% {String value = null;try{value=context.getFormattedValue((val(context.getFormattedValue((new Double( ((Number) getObject("level")).doubleValue() *((Number) new Double(14)).doubleValue())),null))),"#",null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {26}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" height="1" alt="" border="0"/><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("Cat:UUID"),null).equals(context.getFormattedValue(getObject("Category:UUID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",27,e);}if (_boolean_result) { %><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductProcessingWizard_52-BrowseCatalog",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("CatalogCategoryID",null),context.getFormattedValue(getObject("Cat:UUID"),null))).addURLParameter(context.getFormattedValue("PageableID",null),context.getFormattedValue(getObject("PageableID"),null)).addURLParameter(context.getFormattedValue("CatalogUUID",null),context.getFormattedValue(getObject("Catalog:UUID"),null)).addURLParameter(context.getFormattedValue("PageLocatorName",null),context.getFormattedValue(getObject("PageLocatorName"),null)).addURLParameter(context.getFormattedValue("SelectedMenuItem",null),context.getFormattedValue(getObject("SelectedMenuItem"),null)).addURLParameter(context.getFormattedValue("IsSearchFired",null),context.getFormattedValue(getObject("IsSearchFired"),null))),null)%>" class="infobox_link"><% {String value = null;try{value=context.getFormattedValue(getObject("Cat:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {28}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></a><% } else { %><% {String value = null;try{value=context.getFormattedValue(getObject("Cat:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {30}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %></td>
</tr><% {Object temp_obj = ((new Double( ((Number) getObject("level")).doubleValue() +((Number) new Double(1)).doubleValue()))); getPipelineDictionary().put("level", temp_obj);} %><% } %></table><% } %><table border="0" cellpadding="0" cellspacing="0" width="100%" class="w e">
<tr>
<td class="table_header s" colspan="3"><% {out.write(localizeISText("AssignProductsActionBrowseCatalog_52.StandardCategories.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<!-- Assign root category of current catalog -->
<tr>
<td class="s" width="1%"><% URLPipelineAction action78 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductProcessingWizard_52-Dispatch",null)))),null));String site78 = null;String serverGroup78 = null;String actionValue78 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductProcessingWizard_52-Dispatch",null)))),null);if (site78 == null){  site78 = action78.getDomain();  if (site78 == null)  {      site78 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup78 == null){  serverGroup78 = action78.getServerGroup();  if (serverGroup78 == null)  {      serverGroup78 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductProcessingWizard_52-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print(context.getFormattedValue(getObject("Catalog:Root:UUID"),null));out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue78, site78, serverGroup78,true)); %><table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/product/bulkwizard/WizardParams", null, "50");} %><input type="submit" name="confirm" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("AssignProductsActionBrowseCatalog_52.Apply.button",null)),null)%>" class="button"/>
<input type="hidden" name="ProcessDescription" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("AssignProductsActionBrowseCatalog_52.AssignProductsToCatalogCategory.input",null)),null)%>"/>
<input type="hidden" name="ProcessName" value="assignProductsActionConfirmation"/>
<input type="hidden" name="CatalogCategoryID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Catalog:Root:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {54}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="CatalogUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Catalog:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {55}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="ConfirmStep" value="4"/>
<input type="hidden" name="IsSearchFired" value="<% {String value = null;try{value=context.getFormattedValue(getObject("IsSearchFired"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {57}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" /><% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("Catalog:TypeCode")).doubleValue() ==((Number)(new Double(6))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",58,e);}if (_boolean_result) { %><input type="hidden" name="ActionID" value="AssignProductToAuctionCategory"/><% } else { %><input type="hidden" name="ActionID" value="AssignProductToCatalogCategory"/><% } %></td>
</tr>
</table><% out.print("</form>"); %></td><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) ((((context.getFormattedValue(getObject("Catalog:Root:UUID"),null).equals(context.getFormattedValue(getObject("Category:UUID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",68,e);}if (_boolean_result) { %><td class="table_detail w s">
<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductProcessingWizard_52-BrowseCatalog",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("CatalogCategoryID",null),context.getFormattedValue(getObject("Catalog:Root:UUID"),null))).addURLParameter(context.getFormattedValue("PageableID",null),context.getFormattedValue(getObject("PageableID"),null)).addURLParameter(context.getFormattedValue("CatalogUUID",null),context.getFormattedValue(getObject("Catalog:UUID"),null)).addURLParameter(context.getFormattedValue("PageLocatorName",null),context.getFormattedValue(getObject("PageLocatorName"),null)).addURLParameter(context.getFormattedValue("SelectedMenuItem",null),context.getFormattedValue(getObject("SelectedMenuItem"),null)).addURLParameter(context.getFormattedValue("IsSearchFired",null),context.getFormattedValue(getObject("IsSearchFired"),null))),null)%>" class="table_detail_link"><% {String value = null;try{value=context.getFormattedValue(getObject("Catalog:Root:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {70}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></a>
</td><% } else { %><td class="infobox_title infobox-padding w s"><% {String value = null;try{value=context.getFormattedValue(getObject("Catalog:Root:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {74}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td><% } %> 
<td class="table_detail w s"><% {out.write(localizeISText("AssignProductsActionBrowseCatalog_52.AssignProductsToRootCategoryOfCurrentCatalog.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) ((((context.getFormattedValue(getObject("Catalog:Root:UUID"),null).equals(context.getFormattedValue(getObject("Category:UUID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",79,e);}if (_boolean_result) { %><!-- Assign current category -->
<tr>
<td class="s" width="1%">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><% URLPipelineAction action79 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductProcessingWizard_52-Dispatch",null)))),null));String site79 = null;String serverGroup79 = null;String actionValue79 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductProcessingWizard_52-Dispatch",null)))),null);if (site79 == null){  site79 = action79.getDomain();  if (site79 == null)  {      site79 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup79 == null){  serverGroup79 = action79.getServerGroup();  if (serverGroup79 == null)  {      serverGroup79 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductProcessingWizard_52-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print(context.getFormattedValue(getObject("Category:UUID"),null));out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue79, site79, serverGroup79,true)); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/product/bulkwizard/WizardParams", null, "87");} %><input type="hidden" name="ProcessDescription" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("AssignProductsActionBrowseCatalog_52.AssignProductsToCatalogCategory.input",null)),null)%>"/>
<input type="hidden" name="ProcessName" value="assignProductsActionConfirmation"/>
<input type="submit" name="confirm" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("AssignProductsActionBrowseCatalog_52.Apply.button",null)),null)%>" class="button"/>
<input type="hidden" name="CatalogCategoryID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Category:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {91}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="CatalogUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Catalog:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {92}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="ConfirmStep" value="4"/>
<input type="hidden" name="IsSearchFired" value="<% {String value = null;try{value=context.getFormattedValue(getObject("IsSearchFired"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {94}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" /><% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("Catalog:TypeCode")).doubleValue() ==((Number)(new Double(6))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",95,e);}if (_boolean_result) { %><input type="hidden" name="ActionID" value="AssignProductToAuctionCategory"/><% } else { %><input type="hidden" name="ActionID" value="AssignProductToCatalogCategory"/><% } %><% out.print("</form>"); %></td>
</tr>
</table>
</td>
<td class="infobox_title infobox-padding w s"><% {String value = null;try{value=context.getFormattedValue(getObject("Category:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {105}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
<td class="table_detail w s"><% {out.write(localizeISText("AssignProductsActionBrowseCatalog_52.AssignProductsToCurrentCatalogCategory.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% } %><tr>
<td class="table_header s" colspan="3"><% {out.write(localizeISText("AssignProductsActionBrowseCatalog_52.SubCategoriesOfX.table_header",null,null,encodeString(context.getFormattedValue(getObject("Category:DisplayName"),null)),null,null,null,null,null,null,null,null,null));} %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("SubCategories") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",112,e);}if (_boolean_result) { %><% while (loop("SubCategories","SubCategory",null)) { %><tr>
<td class="s" width="1%">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><% URLPipelineAction action80 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductProcessingWizard_52-Dispatch",null)))),null));String site80 = null;String serverGroup80 = null;String actionValue80 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductProcessingWizard_52-Dispatch",null)))),null);if (site80 == null){  site80 = action80.getDomain();  if (site80 == null)  {      site80 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup80 == null){  serverGroup80 = action80.getServerGroup();  if (serverGroup80 == null)  {      serverGroup80 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductProcessingWizard_52-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print(context.getFormattedValue(getObject("SubCategory:UUID"),null));out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue80, site80, serverGroup80,true)); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/product/bulkwizard/WizardParams", null, "120");} %><input type="hidden" name="ProcessDescription" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("AssignProductsActionBrowseCatalog_52.AssignProductsToCatalogCategory.input",null)),null)%>"/>
<input type="hidden" name="ProcessName" value="assignProductsActionConfirmation"/>
<input type="submit" name="confirm" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("AssignProductsActionBrowseCatalog_52.Apply.button",null)),null)%>" class="button"/>
<input type="hidden" name="CatalogCategoryID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("SubCategory:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {124}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="CatalogUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Catalog:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {125}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="ConfirmStep" value="4"/>
<input type="hidden" name="IsSearchFired" value="<% {String value = null;try{value=context.getFormattedValue(getObject("IsSearchFired"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {127}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" /><% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("Catalog:TypeCode")).doubleValue() ==((Number)(new Double(6))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",128,e);}if (_boolean_result) { %><input type="hidden" name="ActionID" value="AssignProductToAuctionCategory"/><% } else { %><input type="hidden" name="ActionID" value="AssignProductToCatalogCategory"/><% } %><% out.print("</form>"); %></td>
</tr>
</table>
</td>
<td class="table_detail w s"><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductProcessingWizard_52-BrowseCatalog",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("CatalogCategoryID",null),context.getFormattedValue(getObject("SubCategory:UUID"),null))).addURLParameter(context.getFormattedValue("PageableID",null),context.getFormattedValue(getObject("PageableID"),null)).addURLParameter(context.getFormattedValue("CatalogUUID",null),context.getFormattedValue(getObject("Catalog:UUID"),null)).addURLParameter(context.getFormattedValue("PageLocatorName",null),context.getFormattedValue(getObject("PageLocatorName"),null)).addURLParameter(context.getFormattedValue("SelectedMenuItem",null),context.getFormattedValue(getObject("SelectedMenuItem"),null)).addURLParameter(context.getFormattedValue("IsSearchFired",null),context.getFormattedValue(getObject("IsSearchFired"),null))),null)%>" class="table_detail_link"><% {String value = null;try{value=context.getFormattedValue(getObject("SubCategory:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {138}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></a></td>
<td class="table_detail w s"><% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("SubCategory:Description"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",140,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("SubCategory:Description"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {141}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %>
&nbsp;
<% } %></td>
</tr><% } %><% } else { %><tr>
<td class="table_detail s" colspan="3"><% {out.write(localizeISText("AssignProductsActionBrowseCatalog_52.ThisCategoryDoesNotContainAnySubCategories.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% } %></table><% URLPipelineAction action81 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductProcessingWizard_52-Dispatch",null)))),null));String site81 = null;String serverGroup81 = null;String actionValue81 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductProcessingWizard_52-Dispatch",null)))),null);if (site81 == null){  site81 = action81.getDomain();  if (site81 == null)  {      site81 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup81 == null){  serverGroup81 = action81.getServerGroup();  if (serverGroup81 == null)  {      serverGroup81 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductProcessingWizard_52-Dispatch",null)))),null));out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue81, site81, serverGroup81,true)); %><table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td align="left" class="w s">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><input type="submit" name="selectAction" value="&lt;&lt;&nbsp;<%=context.getFormattedValue(localizeText(context.getFormattedValue("AssignProductsActionBrowseCatalog_52.Previous.button",null)),null)%>" class="button"/></td>
</tr>
</table>
</td>
<td align="right" class="e s">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/product/bulkwizard/WizardParams", null, "169");} %><input type="hidden" name="ProcessDescription" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("AssignProductsActionBrowseCatalog_52.AssignProductsToCatalogCategory.input",null)),null)%>"/>
<input type="hidden" name="ProcessName" value="assignProductsActionConfirmation"/>
<input type="submit" name="cancel" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("AssignProductsActionBrowseCatalog_52.Cancel.button",null)),null)%>" class="button"/>
<input type="hidden" name="CatalogUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Catalog:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {173}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="ConfirmStep" value="4"/>
<input type="hidden" name="IsSearchFired" value="<% {String value = null;try{value=context.getFormattedValue(getObject("IsSearchFired"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {175}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" /><% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("Catalog:TypeCode")).doubleValue() ==((Number)(new Double(6))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",176,e);}if (_boolean_result) { %><input type="hidden" name="ActionID" value="AssignProductToAuctionCategory"/><% } else { %><input type="hidden" name="ActionID" value="AssignProductToCatalogCategory"/><% } %></td>
</tr>
</table>
</td>
</tr>
</table><% out.print("</form>"); %><div><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></div>
<!-- Start Page Cursor --><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("SubCategories") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",192,e);}if (_boolean_result) { %><table class="pagecursor" width="100%">
<tr><% processOpenTag(response, pageContext, "pagenavigationbar", new TagParameter[] {
new TagParameter("parametervalue",getObject("Category:UUID")),
new TagParameter("parametervalue5",getObject("IsSearchFired")),
new TagParameter("item","Sub-Categories"),
new TagParameter("parametervalue4",getObject("PageLocatorName")),
new TagParameter("parametervalue3",getObject("ChannelID")),
new TagParameter("parametername1","ProductPageableID"),
new TagParameter("parametervalue2",getObject("Catalog:UUID")),
new TagParameter("parametervalue1",getObject("PageableID")),
new TagParameter("parametername2","CatalogUUID"),
new TagParameter("parametername3","ChannelID"),
new TagParameter("pageable","SubCategories"),
new TagParameter("pipeline","ViewProductProcessingWizard_52-CategoryPaging"),
new TagParameter("parametername4","PageLocatorName"),
new TagParameter("parametername5","IsSearchFired"),
new TagParameter("parametername","CatalogCategoryID")}, 195); %></tr>
</table><% } %><!-- EO Main Content -->
<!-- EO Working Area --><% printFooter(out); %>