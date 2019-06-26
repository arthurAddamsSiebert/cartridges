<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% out.print(context.prepareWAPlacement("CSSWebLibraries")); %>pageselection.css<% out.print("</waplacement>"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"webcontrols/Modules", null, "3");} %><!-- Page Navigator --><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("id",context.getFormattedValue("SelectPage-",null) + context.getFormattedValue(getObject("ConfigurationParameterCtnr:UUID"),null)),
new TagParameter("text",localizeText(context.getFormattedValue("ConfigurationParameterSelectPage.SelectMenuRootPage.text",null)))}, 6); %><!-- EO Page Navigator --><% {Object temp_obj = (getObject("ConfigurationParameterCtnr:ConfigurationParameter(SelectedConfigurationParameterQualifiedName)")); getPipelineDictionary().put("SelectedConfigurationParameter", temp_obj);} %><!-- Main Content --><% URLPipelineAction action371 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewConfigurationParameterSelectPage-Dispatch",null)))),null));String site371 = null;String serverGroup371 = null;String actionValue371 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewConfigurationParameterSelectPage-Dispatch",null)))),null);if (site371 == null){  site371 = action371.getDomain();  if (site371 == null)  {      site371 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup371 == null){  serverGroup371 = action371.getServerGroup();  if (serverGroup371 == null)  {      serverGroup371 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewConfigurationParameterSelectPage-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("detailForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue371, site371, serverGroup371,true)); %><input type="hidden" name="ContentRepositoryUUID" value="<%=context.getFormattedValue(encodeString(context.getFormattedValue(getObject("ContentRepositoryUUID"),null)),null)%>" />
<table class="e w s" border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" class="table_title n s"><% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("ConfigurationParameterCtnr:DisplayName"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",20,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("ConfigurationParameterCtnr:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {20}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %><% {String value = null;try{value=context.getFormattedValue(getObject("ConfigurationParameterCtnr:ConfigurationParameterDefinitionCtnr:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {20}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %> - <% {out.write(localizeISText("ConfigurationParameterSelectPage.SelectPage.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("SetPage"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",22,e);}if (_boolean_result) { %><tr>
<td>
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box s">
<tr>
<td class="error_icon e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error" width="100%"><% {out.write(localizeISText("ConfigurationParameterSelectPage.YouHaveNotSelectedAPageUseTheCheckboxesToSelectAnd.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
</td>
</tr><% } %><tr>
<td class="table_title_description s"><% {out.write(localizeISText("ConfigurationParameterSelectPage.TheListShowsAllPagesInTheMasterRepository.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td>
<div id="PageSelection"><% processOpenTag(response, pageContext, "tree", new TagParameter[] {
new TagParameter("configtemplate","content/ConfigurationParameterSelectPageTreeConfig.isml"),
new TagParameter("datatemplate","content/ConfigurationParameterSelectPageTreeData.isml"),
new TagParameter("id","pageSelectionTree"),
new TagParameter("params",((new ParameterMap().addParameter(new ParameterEntry("PageTree",getObject("PageTree")))).addParameter(new ParameterEntry("ContentRepository",getObject("ContentRepository"))).addParameter(new ParameterEntry("PageletModelRepository",getObject("ApplicationBO:Extension(\"(Class)com.intershop.sellside.pmc.capi.modelrepository.ApplicationBOPageletModelRepository\")")))))}, 42); %></div>
</td>
</tr>
</table> 
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td>
<table class="w e s" width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button">
<input name="ConfigurationParameterCtnrUUID" type="hidden" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ConfigurationParameterCtnr:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {64}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="submit" name="SetPage" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ConfigurationParameterSelectPage.OK.button",null)),null)%>" class="button"/>
</td>
<td class="button">
<input name="SelectedConfigurationParameterName" type="hidden" value="<% {String value = null;try{value=context.getFormattedValue(getObject("SelectedConfigurationParameterName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {68}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="submit" name="CancelSelection" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ConfigurationParameterSelectPage.Cancel.button",null)),null)%>" class="button"/>
</td>
</tr>
</table>
</td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></td>
</tr>
</table>
</td>
</tr>
</table><% out.print("</form>"); %><!-- EO Main Content -->
<!-- EO Working Area --><% printFooter(out); %>