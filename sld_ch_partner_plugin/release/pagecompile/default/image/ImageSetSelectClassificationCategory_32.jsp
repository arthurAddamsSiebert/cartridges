<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><!-- TEMPLATENAME: image/ImageSetSelectClassificationCategory_32.isml -->
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- Page Navigator --><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewImageSetDefinitionClassificationCategoryWizard_32-SelectCategoryStart",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ImageSetDefinitionID",null),context.getFormattedValue(getObject("ImageSet:ID"),null))).addURLParameter(context.getFormattedValue("CatalogID",null),context.getFormattedValue(getObject("Catalog:Id"),null)))),
new TagParameter("wizard","true"),
new TagParameter("text",localizeText(context.getFormattedValue("ImageSetSelectClassificationCategory_32.Step2SelectCategory.text",null)))}, 5); %><!-- Working Area -->
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="table_title aldi" nowrap="nowrap"><% {String value = null;try{value=context.getFormattedValue(getObject("ImageSet:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {11}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> - <% {out.write(localizeISText("ImageSetSelectClassificationCategory_32.AddClassificationCategoryStep2SelectCategory.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td class="table_title_description w e s"><% {out.write(localizeISText("ImageSetSelectClassificationCategory_32.Step2Of2SelectAClassificationCategoryAssignThe.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("ClassificationCategory:isRootCategory")).booleanValue() && ((Boolean) ((( ((Number) getObject("ClassificationCategory:SubCategoriesCount")).doubleValue() ==((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",38,e);}if (_boolean_result) { %><% URLPipelineAction action102 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewImageSetDefinitionClassificationCategoryWizard_32-SelectLevel",null)))),null));String site102 = null;String serverGroup102 = null;String actionValue102 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewImageSetDefinitionClassificationCategoryWizard_32-SelectLevel",null)))),null);if (site102 == null){  site102 = action102.getDomain();  if (site102 == null)  {      site102 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup102 == null){  serverGroup102 = action102.getServerGroup();  if (serverGroup102 == null)  {      serverGroup102 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewImageSetDefinitionClassificationCategoryWizard_32-SelectLevel",null)))),null));out.print("\"");out.print(" name=\"");out.print(context.getFormattedValue(context.getFormattedValue("classification_",null) + context.getFormattedValue(getObject("ClassificationCategory:UUID"),null),null));out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue102, site102, serverGroup102,true)); %><input type="hidden" name="ImageSetDefinitionID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ImageSet:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {40}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="CatalogUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Catalog:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {41}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<table cellpadding="0" cellspacing="0" border="0" class="w e s" width="100%">
<tr>
<td class="table_detail" nowrap="nowrap"> 
<select name="SelectedCategoryID" id="SelectedCategoryID" class="select inputfield_en" 
style="width: 500px;">
<option value="<% {String value = null;try{value=context.getFormattedValue(getObject("ClassificationCategory:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {47}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% {String value = null;try{value=context.getFormattedValue(getObject("ClassificationCategory:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {48}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></option>
</select>
<input type="submit" name="apply" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ImageSetSelectClassificationCategory_32.Select.button",null)),null)%>" class="button" />
</td> 
</tr>
</table><% out.print("</form>"); %><% } else { %><table cellpadding="0" cellspacing="0" border="0" class="w e" width="100%">
<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="4" alt="" border="0"/></td>
<tr>
<td class="table_detail3" nowrap="nowrap"><% {String value = null;try{value=context.getFormattedValue(getObject("Catalog:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {61}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> - <% {out.write(localizeISText("ImageSetSelectClassificationCategory_32.ClassificationCategories.table_detail3",null,null,null,null,null,null,null,null,null,null,null,null));} %>:
</td>
</tr>
<tr><td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="4" alt="" border="0"/></td></tr>
</table>
<table border="0" cellspacing="0" cellpadding="0" width="100%" class="w e s"><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("ParentCategories") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",68,e);}if (_boolean_result) { %><% while (loop("ParentCategories","ParentCategory",null)) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("ParentCategory:SubCategories") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",70,e);}if (_boolean_result) { %><tr>
<td class="table_detail"><% URLPipelineAction action103 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewImageSetDefinitionClassificationCategoryWizard_32-SelectLevel",null)))),null));String site103 = null;String serverGroup103 = null;String actionValue103 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewImageSetDefinitionClassificationCategoryWizard_32-SelectLevel",null)))),null);if (site103 == null){  site103 = action103.getDomain();  if (site103 == null)  {      site103 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup103 == null){  serverGroup103 = action103.getServerGroup();  if (serverGroup103 == null)  {      serverGroup103 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewImageSetDefinitionClassificationCategoryWizard_32-SelectLevel",null)))),null));out.print("\"");out.print(" name=\"");out.print(context.getFormattedValue(context.getFormattedValue("classification_",null) + context.getFormattedValue(getObject("ParentCategory:UUID"),null),null));out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue103, site103, serverGroup103,true)); %><table border="0" cellspacing="0" cellpadding="0">
<tr>
<td>
<input type="hidden" name="ImageSetDefinitionID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ImageSet:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {77}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="CatalogUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Catalog:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {78}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="LocaleId" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Locale:LocaleID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {79}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="ParrentCategoryUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ParentCategory:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {80}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<select name="SelectedCategoryID" class="select" style="width:500px;">
<option value="<% {String value = null;try{value=context.getFormattedValue(getObject("ParentCategory:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {82}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% {out.write(localizeISText("ImageSetSelectClassificationCategory_32.None.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option><% while (loop("ParentCategory:SubCategories","SubCategory",null)) { %><% {Object temp_obj = ("false"); getPipelineDictionary().put("isInCategoriePath", temp_obj);} %><% while (loop("ParentCategories","temp",null)) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SubCategory:UUID"),null).equals(context.getFormattedValue(getObject("temp:UUID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",87,e);}if (_boolean_result) { %><% {Object temp_obj = ("true"); getPipelineDictionary().put("isInCategoriePath", temp_obj);} %><% if (getLoopStack().isEmpty()) {Logger.error(this,"ISBREAK occured outside ISLOOP. Line: {}",89);}else{getLoopStack().pop();break;} %><% } %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("isInCategoriePath"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",92,e);}if (_boolean_result) { %><option value="<% {String value = null;try{value=context.getFormattedValue(getObject("SubCategory:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {93}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" selected="selected"><% {String value = null;try{value=context.getFormattedValue(pad(context.getFormattedValue(getObject("SubCategory:DisplayName"),null),((Number)(new Double(80))).intValue()),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {94}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></option><% } else { %><option value="<% {String value = null;try{value=context.getFormattedValue(getObject("SubCategory:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {97}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% {String value = null;try{value=context.getFormattedValue(pad(context.getFormattedValue(getObject("SubCategory:DisplayName"),null),((Number)(new Double(80))).intValue()),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {98}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></option><% } %><% } %></select>&nbsp;
</td>
<td class="button">
<input type="submit" name="apply" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ImageSetSelectClassificationCategory_32.Select.button",null)),null)%>" class="button"/>
</td>
<td>&nbsp;</td>
</tr>
</table><% out.print("</form>"); %></td>
</tr>
<tr>
<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="4" alt="" border="0"/></td>
</tr><% } %><% } %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("ClassificationCategory:Description"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",120,e);}if (_boolean_result) { %><tr>
<td>
<table border="0" cellspacing="0" cellpadding="0" width="100%" class="n">
<tr>
<td nowrap="nowrap" width="1%" class="table_detail3"><% {out.write(localizeISText("ImageSetSelectClassificationCategory_32.Keywords.table_detail3",null,null,null,null,null,null,null,null,null,null,null,null));} %>:
</td>
<td class="table_detail"><% {String value = null;try{value=context.getFormattedValue(getObject("ClassificationCategory:Description"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {129}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
</tr>
</table>
</td>
</tr><% } %></table><% } %><% URLPipelineAction action104 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewImageSetDefinitionClassificationCategoryWizard_32-Dispatch",null)))),null));String site104 = null;String serverGroup104 = null;String actionValue104 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewImageSetDefinitionClassificationCategoryWizard_32-Dispatch",null)))),null);if (site104 == null){  site104 = action104.getDomain();  if (site104 == null)  {      site104 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup104 == null){  serverGroup104 = action104.getServerGroup();  if (serverGroup104 == null)  {      serverGroup104 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewImageSetDefinitionClassificationCategoryWizard_32-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("CatalogSelectionForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue104, site104, serverGroup104,true)); %><input type="hidden" name="ImageSetDefinitionID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ImageSet:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {140}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="CatalogUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Catalog:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {141}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="SelectedCategoryID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("SelectedCategoryID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {142}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td align="left">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><input type="submit" name="selectCatalog" value="&lt;&lt;&nbsp;<%=context.getFormattedValue(localizeText(context.getFormattedValue("ImageSetSelectClassificationCategory_32.Previous.button",null)),null)%>" class="button"/></td>
</tr>
</table>
</td>
<td align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ClassificationCategory")))).booleanValue() && ((Boolean) ((( ((Number) getObject("ClassificationCategory:SubCategoriesCount")).doubleValue() ==((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",155,e);}if (_boolean_result) { %><td class="button">
<input type="submit" name="finish" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ImageSetSelectClassificationCategory_32.Finish.button",null)),null)%>" class="button"/>
</td><% } %><td class="button">
<input type="submit" name="cancel" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ImageSetSelectClassificationCategory_32.Cancel.button",null)),null)%>" class="button"/>
</td>
</tr>
</table>
</td>
</tr>
</table><% out.print("</form>"); %><!-- EO Working Area --><% printFooter(out); %>