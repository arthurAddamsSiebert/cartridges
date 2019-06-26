<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- Working Area -->
<!-- start page navigator --><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("hide","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelCatalogOverview_32-Show",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null))))),
new TagParameter("start","true"),
new TagParameter("text",localizeText(context.getFormattedValue("NewManufacturerAlias_32.ChannelCatalogs.text",null)))}, 4); %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("hide","true"),
new TagParameter("listview","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewManufacturerAliasList_32-ListAll",null))))),
new TagParameter("text",localizeText(context.getFormattedValue("NewManufacturerAlias_32.ManufacturerAliases.text",null)))}, 5); %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("text",localizeText(context.getFormattedValue("NewManufacturerAlias_32.NewManufacturerAlias.text",null)))}, 6); %><!-- end page navigator --><% URLPipelineAction action294 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewManufacturerAlias_32-Dispatch",null)))),null));String site294 = null;String serverGroup294 = null;String actionValue294 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewManufacturerAlias_32-Dispatch",null)))),null);if (site294 == null){  site294 = action294.getDomain();  if (site294 == null)  {      site294 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup294 == null){  serverGroup294 = action294.getServerGroup();  if (serverGroup294 == null)  {      serverGroup294 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewManufacturerAlias_32-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("formMask");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue294, site294, serverGroup294,true)); %><!-- Tabs --><% {Object temp_obj = ("New"); getPipelineDictionary().put("SelectedTab", temp_obj);} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"manufacturer/alias/ManufacturerAliasTabs_32", null, "11");} %><!-- EO Tabs -->
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" class="table_title w e s"><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ManufacturerNameAlias:NameAlias")))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("ManufacturerNameAlias:NameAlias"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",16,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("ManufacturerNameAlias:NameAlias"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {17}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %><% {out.write(localizeISText("NewManufacturerAlias_32.NewManufacturerAlias.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %></td>
</tr>
<!-- start error handling --><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("Error_Name")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("Error_Name_Assigned")))).booleanValue() || ((Boolean) getObject("ManufacturerNameAliasForm:ManufacturerNameAliasName:isMissing")).booleanValue() || ((Boolean) getObject("ManufacturerNameAliasForm:ManufacturerNameAliasName:isInvalid")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",24,e);}if (_boolean_result) { %><tr>
<td>
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr valign="top">
<td class="error_icon top e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error top" width="100%"><% {out.write(localizeISText("NewManufacturerAlias_32.ManufacturerAliasCouldNotBeCreated.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Error_Name"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",32,e);}if (_boolean_result) { %><br/> <% {out.write(localizeISText("NewManufacturerAlias_32.SpecifiedAliasNameIsAlreadyInUsePleaseProvideA.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Error_Name_Assigned"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",35,e);}if (_boolean_result) { %><br/><% {out.write(localizeISText("NewManufacturerAlias_32.SpecifiedAliasNameIsAlreadyAssignedToAlias.error",null,null,null,null,null,null,null,null,null,null,null,null));} %> <% {String value = null;try{value=context.getFormattedValue(getObject("OldAlias:NameAlias"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {36}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>.
<% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("ManufacturerNameAliasForm:ManufacturerNameAliasName:isMissing")).booleanValue() || ((Boolean) getObject("ManufacturerNameAliasForm:ManufacturerNameAliasName:isInvalid")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",38,e);}if (_boolean_result) { %><br/><% {out.write(localizeISText("NewManufacturerAlias_32.PleaseProvideAValidNameForTheManufacturerAlias.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %></td>
</tr>
</table>
</td>
</tr><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("Error_Name_Assigned")))).booleanValue() && !((Boolean) (disableErrorMessages().isDefined(getObject("Error_Name")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",47,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("subject","manufacturer alias"),
new TagParameter("cancelbtnname","CancelCreateAndReassign"),
new TagParameter("okbtnname","CreateAndReassign"),
new TagParameter("message",localizeText(context.getFormattedValue("NewManufacturerAlias_32.ClickOnOKToReassignTheNameToTheNewAliasOrCancelTo.message",null))),
new TagParameter("type","sdc")}, 48); %><% } %><!-- end error handling -->
<tr>
<td class="table_title_description w e s" nowrap="nowrap"><% {out.write(localizeISText("NewManufacturerAlias_32.FieldsWithARedAsterisk.table_title_description",null,null,"star",null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<table cellspacing="0" cellpadding="0" border="0" width="100%" class="w e s">
<tr>
<td colspan="4"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="4" alt="" border="0"/></td>
</tr>
<tr>
<td class="fielditem3" nowrap="nowrap"><% {out.write(localizeISText("NewManufacturerAlias_32.Name.fielditem3",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></td>
<td class="table_detail" width="100%">
<input type="text" name="ManufacturerNameAliasForm_ManufacturerNameAliasName" class="inputfield_en" maxlength="2048" size="70" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ManufacturerNameAliasName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {65}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
</td>
</tr>
<tr>
<td colspan="4"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></td>
</tr>
</table>
<table class="w e s" width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button">
<input name="webform-id" type="hidden" value="ManufacturerNameAliasForm"/>
<input type="hidden" name="DefaultActionCreate" value="true" />
<input class="button" type="submit" name="Create" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("NewManufacturerAlias_32.Apply.button",null)),null)%>"/>
</td>
<td class="button">
<input class="button" type="submit" name="CancelCreate" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("NewManufacturerAlias_32.Cancel.button",null)),null)%>"/>
</td>
</tr>
</table>
</td>
</tr>
</table><% out.print("</form>"); %><!-- EO Main Content -->
<!-- EO Working Area --> <% printFooter(out); %>