<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- Page Navigator --><% processOpenTag(response, pageContext, "categorydisplayname", new TagParameter[] {
new TagParameter("CatDisplayNameResult","CatDisplayName"),
new TagParameter("Category",getObject("Category")),
new TagParameter("UseIDFallback","true"),
new TagParameter("SkipPrint","true")}, 4); %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("text1",context.getFormattedValue(" - ",null) + context.getFormattedValue(localizeText(context.getFormattedValue("ChannelCategoryCustomAttributes_32.Attributes.text1",null)),null)),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelCategory_32-ManageCA",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("CatalogID",null),context.getFormattedValue(getObject("CatalogID"),null))).addURLParameter(context.getFormattedValue("CatalogCategoryID",null),context.getFormattedValue(getObject("CatalogCategoryID"),null)).addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null)))),
new TagParameter("id",getObject("Category:UUID")),
new TagParameter("text",getObject("CatDisplayName"))}, 5); %><!-- EO Page Navigator --><% URLPipelineAction action157 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelCategory_32-DispatchCA",null)))),null));String site157 = null;String serverGroup157 = null;String actionValue157 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelCategory_32-DispatchCA",null)))),null);if (site157 == null){  site157 = action157.getDomain();  if (site157 == null)  {      site157 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup157 == null){  serverGroup157 = action157.getServerGroup();  if (serverGroup157 == null)  {      serverGroup157 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelCategory_32-DispatchCA",null)))),null));out.print("\"");out.print(" name=\"");out.print("formMask");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue157, site157, serverGroup157,true)); %><table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td><%getPipelineDictionary().put("SelectedTab", "Attributes");%><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/CatalogTabs_32", null, "13");} %></td>
</tr>
<tr>
<td width="100%" class="w e s table_title"><% {String value = null;try{value=context.getFormattedValue(getObject("CatDisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {18}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> - <% {out.write(localizeISText("ChannelCategoryCustomAttributes_32.Attributes.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %><input type="hidden" name="ChannelID" value="<%=context.getFormattedValue(getObject("CurrentChannel:UUID"),null)%>"/>
<input type="hidden" name="CatalogCategoryID" value="<%=context.getFormattedValue(getObject("Category:UUID"),null)%>"/>
<input type="hidden" name="ParentCategoryID" value="<%=context.getFormattedValue(getObject("Category:Parent:UUID"),null)%>"/>
<input type="hidden" name="CatalogID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Catalog:Id"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {22}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
</td>
</tr>
</table><% processOpenTag(response, pageContext, "customattributes", new TagParameter[] {
new TagParameter("ReadOnly",(((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_CATALOGS")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) ),
new TagParameter("LocalizableFlag","true"),
new TagParameter("CustomAttributesIterator",getObject("AttributeValues")),
new TagParameter("FormName","formMask")}, 26); %><div><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></div><% processOpenTag(response, pageContext, "pagingbar", new TagParameter[] {
new TagParameter("pageable","AttributeValues")}, 28); %> 
<% out.print("</form>"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/BackToList", null, "30");} %><!-- EO Working Area --><% printFooter(out); %>