<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- Page Navigation --><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("text1",context.getFormattedValue(" - ",null) + context.getFormattedValue(localizeText(context.getFormattedValue("CategoryClassificationAttributes_32.ClassificationAttributes.text1",null)),null)),
new TagParameter("listview","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelCategoryClassificationAttributes_32-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("CatalogCategoryID",null),context.getFormattedValue(getObject("CatalogCategoryID"),null))).addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null)))),
new TagParameter("id",getObject("Category:UUID")),
new TagParameter("text",getObject("Category:DisplayName"))}, 3); %><!-- EO Page Navigation --><%getPipelineDictionary().put("SelectedTab", "Classification");%><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/CatalogTabs_32", null, "7");} %><% URLPipelineAction action154 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelCategoryClassificationAttributes_32-Dispatch",null)))),null));String site154 = null;String serverGroup154 = null;String actionValue154 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelCategoryClassificationAttributes_32-Dispatch",null)))),null);if (site154 == null){  site154 = action154.getDomain();  if (site154 == null)  {      site154 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup154 == null){  serverGroup154 = action154.getServerGroup();  if (serverGroup154 == null)  {      serverGroup154 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelCategoryClassificationAttributes_32-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("formMask");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue154, site154, serverGroup154,true)); %><table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" class="w e s table_title"><% {String value = null;try{value=context.getFormattedValue(getObject("Category:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {11}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> - <% {out.write(localizeISText("CategoryClassificationAttributes_32.ClassificationAttributes.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_CATALOGS")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("ConfirmDeleteClassificationAttributes")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",13,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("SelectedProductTypeAttributeNames")))).booleanValue() && ((Boolean) (hasLoopElements("SelectedProductTypeAttributeNames") ? Boolean.TRUE : Boolean.FALSE)).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",14,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("subject","classification attribute"),
new TagParameter("cancelbtnname","ChangeLocaleInList"),
new TagParameter("okbtnname","DeleteClassificationAttributes"),
new TagParameter("type","mdc")}, 15); %><% } else { %><tr>
<td>
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s"> 
<tr>
<td class="error_icon e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error" width="100%"><% {out.write(localizeISText("CategoryClassificationAttributes_32.YouHaveNotSelectedAnyClassificationAttributesUseTh.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
</td>
</tr><% } %><% } %><tr>
<td class="table_title_description w e s">
<input type="hidden" name="CatalogCategoryID" value="<%=context.getFormattedValue(getObject("Category:UUID"),null)%>"/>
<input type="hidden" name="CatalogID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Catalog:Id"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {38}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="ChannelID" value="<%=context.getFormattedValue(getObject("CurrentChannel:UUID"),null)%>"/><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Catalog:isProxy"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",40,e);}if (_boolean_result) { %><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/status_shared_product_from.gif" alt="<%=context.getFormattedValue(localizeText(context.getFormattedValue("CategoryClassificationAttributes_32.SharedFromAnother.alt",null)),null)%>" title="<%=context.getFormattedValue(localizeText(context.getFormattedValue("CategoryClassificationAttributes_32.SharedFromAnother.title",null)),null)%>" border="0"/> 
<% {out.write(localizeISText("CategoryClassificationAttributes_32.ThisCatalogIsSharedFrom0",null,null,encodeString(context.getFormattedValue(getObject("Catalog:OriginalCatalog:OwningDomain:DomainInformation:DomainName"),null)),null,null,null,null,null,null,null,null,null));} %><br><% } %> 
<% {out.write(localizeISText("CategoryClassificationAttributes_32.TheAttributesListedHereAreAutomaticallyAssignedToA",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ProductType")))).booleanValue() && ((Boolean) (hasLoopElements("ProductType:CustomProductAttributes") ? Boolean.TRUE : Boolean.FALSE)).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",47,e);}if (_boolean_result) { %><tr>
<td>
<table border="0" cellpadding="4" cellspacing="0" width="100%" class="infobox_locale w e s ">
<tr> 
<td class="infobox_item" nowrap="nowrap"><% {out.write(localizeISText("CategoryClassificationAttributes_32.SelectLanguage.infobox_item",null,null,null,null,null,null,null,null,null,null,null,null));} %>:&nbsp;</td>
<td>
<select name="LocaleId" class="select"><% while (loop("Locales","Locales",null)) { %><option value="<% {String value = null;try{value=context.getFormattedValue(getObject("Locales:LocaleID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {57}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Locales:LocaleID"),null).equals(context.getFormattedValue(getObject("Locale:LocaleID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",57,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {String value = null;try{value=context.getFormattedValue(getObject("Locales:getDisplayName(CurrentSession:Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {57}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</option><% } %></select>
</td>
<td width="100%"><% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("Catalog:ClassificationSystem:Name"),null).equals(context.getFormattedValue("System",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",62,e);}if (_boolean_result) { %><table border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="button"><input type="submit" name="ChangeLocaleInList" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("CategoryClassificationAttributes_32.Apply.button",null)),null)%>" class="button"/></td>
</tr>
</table><% } %></td>
</tr>
</table> 
</td>
</tr>
<tr>
<td class="w e s"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="2" alt="" border="0"/></td>
</tr>
<tr>
<td>
<table border="0" cellpadding="0" cellspacing="0" width="100%" class="w">
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_CATALOGS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",82,e);}if (_boolean_result) { %><td class="table_header e s center" nowrap="nowrap" width="80">
<div id="A">
<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
<tr>
<td nowrap="nowrap"><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (getObject("Catalog:isProxy"))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",88,e);}if (_boolean_result) { %><a href="javascript:selectAll('formMask','SelectedProductTypeAttributeName','A','B');" class="tableheader"><% {out.write(localizeISText("CategoryClassificationAttributes_32.SelectAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a><% } else { %><% {out.write(localizeISText("CategoryClassificationAttributes_32.SelectAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %></td>
</tr>
</table>
</div>
<div id="B" style="display:none">
<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
<tr>
<td nowrap="nowrap">
<a href="javascript:selectAll('formMask','SelectedProductTypeAttributeName','A','B');" class="tableheader"><% {out.write(localizeISText("CategoryClassificationAttributes_32.ClearAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
</td>
</tr>
</table>
</div>
</td><% } %><td class="table_header e s left" nowrap="nowrap"><% {out.write(localizeISText("CategoryClassificationAttributes_32.ClassificationAttributeName.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s left" nowrap="nowrap"><% {out.write(localizeISText("CategoryClassificationAttributes_32.ID.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s left" nowrap="nowrap"><% {out.write(localizeISText("CategoryClassificationAttributes_32.AttributeGroup.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s left" nowrap="nowrap"><% {out.write(localizeISText("CategoryClassificationAttributes_32.DataType.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s center" nowrap="nowrap"><% {out.write(localizeISText("CategoryClassificationAttributes_32.ValueRange.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s center" nowrap="nowrap"><% {out.write(localizeISText("CategoryClassificationAttributes_32.Localizable.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% while (loop("ProductType:CustomProductAttributes","PTA",null)) { %><tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_CATALOGS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",117,e);}if (_boolean_result) { %><td class="e s center top"><input type="checkbox" name="SelectedProductTypeAttributeName" value="<% {String value = null;try{value=context.getFormattedValue(getObject("PTA:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {118}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" <% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("SelectedProductTypeAttributeNames"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",118,e);}if (_boolean_result) { %><% while (loop("SelectedProductTypeAttributeNames","SPTA",null)) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PTA:Name"),null).equals(context.getFormattedValue(getObject("SPTA"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",118,e);}if (_boolean_result) { %>checked="checked"<% if (getLoopStack().isEmpty()) {Logger.error(this,"ISBREAK occured outside ISLOOP. Line: {}",118);}else{getLoopStack().pop();break;} %><% } %><% } %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((getObject("Catalog:isProxy")))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",119,e);}if (_boolean_result) { %>disabled="disabled"<% } %>/>
</td><% } %><td class="table_detail e s top"><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (getObject("Catalog:isProxy"))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",124,e);}if (_boolean_result) { %><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelCategoryClassificationAttributes_32-Edit",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null))).addURLParameter(context.getFormattedValue("LocaleId",null),context.getFormattedValue(getObject("LocaleId"),null)).addURLParameter(context.getFormattedValue("CatalogCategoryID",null),context.getFormattedValue(getObject("Category:UUID"),null)).addURLParameter(context.getFormattedValue("ProductTypeAttributeName",null),context.getFormattedValue(getObject("PTA:Name"),null))),null)%>" class="table_detail_link"><% {String value = null;try{value=context.getFormattedValue(getObject("PTA:DisplayName(Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {125}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></a>&nbsp;
<% } else { %><% {String value = null;try{value=context.getFormattedValue(getObject("PTA:DisplayName(Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {127}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %></td>
<td class="table_detail e s top"><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (getObject("Catalog:isProxy"))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",132,e);}if (_boolean_result) { %><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelCategoryClassificationAttributes_32-Edit",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null))).addURLParameter(context.getFormattedValue("LocaleId",null),context.getFormattedValue(getObject("LocaleId"),null)).addURLParameter(context.getFormattedValue("CatalogCategoryID",null),context.getFormattedValue(getObject("Category:UUID"),null)).addURLParameter(context.getFormattedValue("ProductTypeAttributeName",null),context.getFormattedValue(getObject("PTA:Name"),null))),null)%>" class="table_detail_link"><% {String value = null;try{value=context.getFormattedValue(getObject("PTA:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {133}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></a>&nbsp;
<% } else { %><% {String value = null;try{value=context.getFormattedValue(getObject("PTA:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {135}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %></td>
<td class="table_detail e s top">&nbsp;</td>
<td class="table_detail e s top"><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PTA:ValueType"),null).equals(context.getFormattedValue("4",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",141,e);}if (_boolean_result) { %><% {out.write(localizeISText("CategoryClassificationAttributes_32.MultipleIntegers.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PTA:ValueType"),null).equals(context.getFormattedValue("5",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",143,e);}if (_boolean_result) { %><% {out.write(localizeISText("CategoryClassificationAttributes_32.MultipleDoubles.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PTA:ValueType"),null).equals(context.getFormattedValue("6",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",145,e);}if (_boolean_result) { %><% {out.write(localizeISText("CategoryClassificationAttributes_32.MultipleStrings.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PTA:ValueType"),null).equals(context.getFormattedValue("1",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",147,e);}if (_boolean_result) { %><% {out.write(localizeISText("CategoryClassificationAttributes_32.Integer.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PTA:ValueType"),null).equals(context.getFormattedValue("2",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",149,e);}if (_boolean_result) { %><% {out.write(localizeISText("CategoryClassificationAttributes_32.Double.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else { %><% {out.write(localizeISText("CategoryClassificationAttributes_32.String.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><% }}}}} %></td>
<td class="table_detail e s top center"><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("PTA:isEnumeration"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",155,e);}if (_boolean_result) { %><% {out.write(localizeISText("CategoryClassificationAttributes_32.Yes.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else { %><% {out.write(localizeISText("CategoryClassificationAttributes_32.No.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %></td>
<td class="table_detail e s top center"><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("PTA:isLocalized"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",156,e);}if (_boolean_result) { %><% {out.write(localizeISText("CategoryClassificationAttributes_32.Yes.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else { %><% {out.write(localizeISText("CategoryClassificationAttributes_32.No.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %></td>
</tr><% } %></table>
</td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_CATALOGS")))).booleanValue() && ((Boolean) (((((Boolean) (((!(context.getFormattedValue(getObject("Catalog:ClassificationSystem:Name"),null).equals(context.getFormattedValue("System",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && !((Boolean) (getObject("Catalog:isProxy"))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",162,e);}if (_boolean_result) { %> 
<tr>
<td align="right" class="w e s">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><input type="submit" name="NewClassificationAttribute" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("CategoryClassificationAttributes_32.New.button",null)),null)%>" class="button"/></td>
<td class="button"><input type="submit" name="ConfirmDeleteClassificationAttributes" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("CategoryClassificationAttributes_32.Delete.button",null)),null)%>" class="button"/></td>
</tr>
</table>
</td>
</tr><% } %><% } else { %><tr>
<td class="table_detail w e s"><% {out.write(localizeISText("CategoryClassificationAttributes_32.ThisCategoryDoesNotDefineAnyClassificationAttribut.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_CATALOGS")))).booleanValue() && ((Boolean) (((((Boolean) (((!(context.getFormattedValue(getObject("Catalog:ClassificationSystem:Name"),null).equals(context.getFormattedValue("System",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && !((Boolean) (getObject("Catalog:isProxy"))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",178,e);}if (_boolean_result) { %><tr>
<td align="right" class="w e s">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><input type="submit" name="NewClassificationAttribute" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("CategoryClassificationAttributes_32.New.button",null)),null)%>" class="button"/></td>
</tr>
</table>
</td>
</tr><% } %><% } %></table><% out.print("</form>"); %> 
<% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/BackToList", null, "192");} %><!-- EO Working Area --><% printFooter(out); %>