<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- Working Area -->
<!-- Page Navigator --><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewSyndicationProductHistory_52-SelectHistorySource",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null))))),
new TagParameter("text",localizeText(context.getFormattedValue("ProductHistorySelectProductSource_52.ChangeTrackingSelectSource.text",null)))}, 4); %><!-- EO Page Navigator --><% URLPipelineAction action425 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewSyndicationProductHistory_52-Dispatch",null)))),null));String site425 = null;String serverGroup425 = null;String actionValue425 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewSyndicationProductHistory_52-Dispatch",null)))),null);if (site425 == null){  site425 = action425.getDomain();  if (site425 == null)  {      site425 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup425 == null){  serverGroup425 = action425.getServerGroup();  if (serverGroup425 == null)  {      serverGroup425 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewSyndicationProductHistory_52-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("selectionForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue425, site425, serverGroup425,true)); %><table border="0" cellspacing="0" cellpadding="0" width="100%">
<tr>
<td>
<!-- Main Content -->
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" class="table_title aldi"><% {out.write(localizeISText("ProductHistorySelectProductSource_52.ChangeTrackingSelectSource.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ErrorCode")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ErrorCode"),null).equals(context.getFormattedValue("NoSourceRepositorySelected",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",16,e);}if (_boolean_result) { %><tr>
<td>
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr valign="top">
<td class="error_icon top e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error top" width="100%"><% {out.write(localizeISText("ProductHistorySelectProductSource_52.HaveNotSelectedASourceRepository.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
</td>
</tr><% } %><tr>
<td class="table_title_description w e s"><% {out.write(localizeISText("ProductHistorySelectProductSource_52.SelectARepositoryAndThenProceedToSearchForProducts.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %> 
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="table_header w e s">&nbsp;</td>
<td class="table_header e s"><% {out.write(localizeISText("ProductHistorySelectProductSource_52.Source.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s"><% {out.write(localizeISText("ProductHistorySelectProductSource_52.Description.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td class="w e s center top"><input type="radio" name="SourceRepository" value="MasterRepository"/>&nbsp;</td>
<td class="table_detail e s" nowrap="nowrap"><b><% {out.write(localizeISText("ProductHistorySelectProductSource_52.MasterRepository.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></b></td>
<td class="table_detail e s"><% {out.write(localizeISText("ProductHistorySelectProductSource_52.MasterProductRepositoryFor0.table_detail",null,null,encodeString(context.getFormattedValue(getObject("Organization:DisplayName"),null)),null,null,null,null,null,null,null,null,null));} %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("Organization:TypeCode")).doubleValue() >=((Number)(new Double(30))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",46,e);}if (_boolean_result) { %><tr>
<td class="w e s center top"><input type="radio" name="SourceRepository" value="ParentRepository"/>&nbsp;</td>
<td class="table_detail e s" nowrap="nowrap"><b><% {out.write(localizeISText("ProductHistorySelectProductSource_52.ParentChannelRepository.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></b></td>
<td class="table_detail e s"><% {out.write(localizeISText("ProductHistorySelectProductSource_52.ChannelRepositoryOfParentOrganization0.table_detail",null,null,encodeString(context.getFormattedValue(getObject("ParentOrganization:DisplayName"),null)),null,null,null,null,null,null,null,null,null));} %></td>
</tr><% } %></table>
<table class="w e s" width="100%" border="0" cellspacing="0" cellpadding="0"> 
<tr>
<td align="right"> 
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button">
<input type="hidden" name="ChannelID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ChannelID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {60}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="submit" name="SelectSourceRepository" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ProductHistorySelectProductSource_52.Next.button",null)),null)%>&nbsp;&gt;&gt;" class="button"/>
</td> 
<td class="button">
<input type="submit" name="Cancel" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ProductHistorySelectProductSource_52.Cancel.button",null)),null)%>" class="button"/>
</td>
</tr>
</table> 
</td> 
</tr>
</table>
</td>
</tr>
</table><% out.print("</form>"); %><% printFooter(out); %>