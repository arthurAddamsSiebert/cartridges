<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><!-- TEMPLATENAME: PageletSearchTitleAndErrors.isml -->
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- Title and Description -->
<table border="0" cellpadding="0" cellspacing="0" width="100%"><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("extendedheadingtemplate")))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("extendedheadingtemplate"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",7,e);}if (_boolean_result) { %><tr>
<td width="100%" class="table_title aldi"><% _boolean_result=false;try {_boolean_result=((Boolean)(((!((Boolean) ((((context.getFormattedValue(getObject("template"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("filtermode")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("filtermode"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",10,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("page"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",11,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","content.pagevariants.new.filter")}, 11); %><% } else { %><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","content.components.new.filter")}, 11); %><% } %><% } else { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("page"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",13,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("template"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",14,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","content.pagetemplates.title")}, 15); %><% } else { %><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","content.pagevariants.title")}, 17); %><% } %><% } else { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("template"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",20,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","content.componenttemplates.title")}, 21); %><% } else { %><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","content.components.title")}, 23); %><% } %><% } %><% } %></td>
</tr><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PermissionMap:SLD_MANAGE_CONTENT"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",30,e);}if (_boolean_result) { %><tr>
<td><% processOpenTag(response, pageContext, "editpageleterror", new TagParameter[] {
}, 32); %></td>
</tr>
<!-- Error Handling --><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"content/search/inc/PageletSearchMaskErrors", null, "35");} %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("confirmdelete"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",37,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("pageletclipboard:ObjectUUIDs") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",38,e);}if (_boolean_result) { %><tr>
<td>
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="confirm_box w e s">
<tr>
<td class="error_icon e">
<img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/confirmation.gif" width="16" height="15" alt="" border="0"/>
</td>
<td class="confirm" width="100%"><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("page"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",47,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("template"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",48,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","content.confirmdelete.pagetemplate.message")}, 49); %><% } else { %><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","content.confirmdelete.pagevariant.message")}, 51); %><% } %><% } else { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("template"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",54,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","content.confirmdelete.componenttemplate.message")}, 55); %><% } else { %><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","content.confirmdelete.component.message")}, 57); %><% } %><% } %></td>
<td>
<table border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="button">
<input type="submit" name="delete" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PageletSearchTitleAndErrors.OK.button",null)),null)%>" class="button"/>
</td>
<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="4" height="0" alt="" border="0"/></td>
<td class="button"><input type="submit" name="cancel" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PageletSearchTitleAndErrors.Cancel.button",null)),null)%>" class="button"/></td>
</tr>
</table>
</td>
</tr>
</table>
</td>
</tr><% } else { %><tr>
<td>
<table class="error_box w e s" width="100%" border="0" cellpadding="4" cellspacing="0">
<tr>
<td class="error_icon e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error" width="100%"><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("page"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",83,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("template"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",84,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","content.confirmdelete.pagetemplate.noselection")}, 85); %><% } else { %><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","content.confirmdelete.pagevariant.noselection")}, 87); %><% } %><% } else { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("template"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",90,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","content.confirmdelete.componenttemplate.noselection")}, 91); %><% } else { %><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","content.confirmdelete.component.noselection")}, 93); %><% } %> 
<% } %></td>
</tr>
</table>
</td>
</tr><% } %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("confirmpreview"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",103,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("page"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",104,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("template"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",105,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "previewmessagebox", new TagParameter[] {
new TagParameter("itemType","pagelet"),
new TagParameter("cmsItemType","pagetemplate"),
new TagParameter("previewMessage",getObject("confirmpreview"))}, 106); %><% } else { %><% processOpenTag(response, pageContext, "previewmessagebox", new TagParameter[] {
new TagParameter("itemType","pagelet"),
new TagParameter("cmsItemType","pagevariant"),
new TagParameter("previewMessage",getObject("confirmpreview"))}, 108); %><% } %><% } else { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("template"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",111,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "previewmessagebox", new TagParameter[] {
new TagParameter("itemType","pagelet"),
new TagParameter("cmsItemType","componenttemplate"),
new TagParameter("previewMessage",getObject("confirmpreview"))}, 112); %><% } else { %><% processOpenTag(response, pageContext, "previewmessagebox", new TagParameter[] {
new TagParameter("itemType","pagelet"),
new TagParameter("cmsItemType","component"),
new TagParameter("previewMessage",getObject("confirmpreview"))}, 114); %><% } %> 
<% } %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("PageletSearchResultDict:ERROR_NOTHING_SELECTED")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("page"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",118,e);}if (_boolean_result) { %><tr>
<td>
<table class="error_box w e s" width="100%" border="0" cellpadding="4" cellspacing="0">
<tr>
<td class="error_icon e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error" width="100%"><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("template"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",125,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","content.batchedit.pagetemplate.noselection")}, 126); %><br/><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","content.batchedit.pagetemplate.noselection.helpmessage")}, 126); %><% } else { %><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","content.batchedit.pagevariant.noselection")}, 128); %><br/><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","content.batchedit.pagevariant.noselection.helpmessage")}, 128); %><% } %></td>
</tr>
</table>
</td>
</tr><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PageletSearchResultDict:ERROR_NOTHING_SELECTED"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",135,e);}if (_boolean_result) { %><tr>
<td>
<table class="error_box w e s" width="100%" border="0" cellpadding="4" cellspacing="0">
<tr>
<td class="error_icon e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error" width="100%"><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("template"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",142,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","content.batchedit.componenttemplate.noselection")}, 143); %><br/><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","content.batchedit.componenttemplate.noselection.helpmessage")}, 143); %></td><% } else { %><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","content.batchedit.component.noselection")}, 145); %><br/><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","content.batchedit.component.noselection.helpmessage")}, 145); %></td><% } %></tr>
</table>
</td>
</tr><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PageletSearchResultDict:ERROR_NOTHING_SELECTED_TO_PUBLISH"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",151,e);}if (_boolean_result) { %><tr>
<td>
<table class="error_box w e s" width="100%" border="0" cellpadding="4" cellspacing="0">
<tr>
<td class="error_icon e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error" width="100%"><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","content.publishing.noselection")}, 158); %><br/><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","content.publishing.noselection.helpmessage")}, 158); %></td>
</tr>
</table>
</td>
</tr><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PageletSearchResultDict:SHARED_OBJECT_ERROR"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",163,e);}if (_boolean_result) { %><tr>
<td>
<table class="error_box w e s" width="100%" border="0" cellpadding="4" cellspacing="0">
<tr>
<td class="error_icon e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error" width="100%"><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","content.publishing.sharedcontentselection")}, 170); %><br/><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","content.publishing.sharedcontentselection.helpmessage")}, 170); %></td>
</tr>
</table>
</td>
</tr><% }}}} %><!-- EO Error Handling --><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("extendedheadingtemplate")))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("extendedheadingtemplate"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",178,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(((!((Boolean) ((((context.getFormattedValue(getObject("template"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("filtermode")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("filtermode"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",179,e);}if (_boolean_result) { %><tr>
<td class="table_title_description w e s"><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("page"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",182,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","content.filter.definition.pagevariant.message")}, 182); %><% } else { %><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","content.filter.definition.component.message")}, 182); %><% } %> 
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("page"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",183,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","content.filter.definition.pagevariant.applying.message")}, 183); %><% } else { %><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","content.filter.definition.component.applying.message")}, 183); %><% } %><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","content.filter.definition.helpmessage")}, 184); %></td>
</tr><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("page"),null).equals(context.getFormattedValue("false",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",187,e);}if (_boolean_result) { %><tr>
<td class="table_title_description w e s"><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("parameter0",url(true,(new URLPipelineAction(context.getFormattedValue("ViewPageletOverview-Start",null))))),
new TagParameter("encoding","off"),
new TagParameter("key","content.components.search.description")}, 190); %></td>
</tr><% }} %> 
<% } %></table>
<!-- EO Title and Description -->
<!-- END: PageletSearchTitleAndErrors.isml --><% printFooter(out); %>