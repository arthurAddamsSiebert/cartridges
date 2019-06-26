<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- Working Area --><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("listview","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewABTestAssignments_52-SelectObjectType",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null))).addURLParameter(context.getFormattedValue("ABTestUUID",null),context.getFormattedValue(getObject("ABTest:UUID"),null)).addURLParameter(context.getFormattedValue("SelectedABTestGroupID",null),context.getFormattedValue(getObject("ABTestGroup:UUID"),null)).addURLParameter(context.getFormattedValue("SelectedTestGroupID",null),context.getFormattedValue(getObject("UserGroup:ID"),null)))),
new TagParameter("id","ABTestObjectTypeSelection"),
new TagParameter("text",localizeText(context.getFormattedValue("ABTestAssignmentObjectTypeSelection_52.AssignTestContentStep1Of2.text",null)))}, 4); %><table border="0" cellpadding="0" cellspacing="0" width="100%" class="aldi">
<tr>
<td width="100%" class="table_title"><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","marketing.abtest.content.assign.step1.title")}, 7); %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("selectedObject"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",9,e);}if (_boolean_result) { %><tr>
<td>
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box">
<tr>
<td class="error_icon middle n e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error middle n" width="100%"><% {out.write(localizeISText("ABTestAssignmentObjectTypeSelection_52.YouHaveNotSelectedAnyObjectType.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/>
</td>
</tr>
</table>
</td>
</tr><% } %><tr>
<td class="table_title_description n"><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","marketing.abtest.content.assign.step1.message")}, 25); %></td>
</tr>
</table><% URLPipelineAction action573 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewABTestAssignments_52-Dispatch",null)))),null));String site573 = null;String serverGroup573 = null;String actionValue573 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewABTestAssignments_52-Dispatch",null)))),null);if (site573 == null){  site573 = action573.getDomain();  if (site573 == null)  {      site573 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup573 == null){  serverGroup573 = action573.getServerGroup();  if (serverGroup573 == null)  {      serverGroup573 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewABTestAssignments_52-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("ABTestObjectSelectionForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue573, site573, serverGroup573,true)); %><input type="hidden" name="ABTestUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ABTest:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {31}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="ChannelID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("CurrentChannel:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {32}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="SelectedTestGroupID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("UserGroup:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {33}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="SelectedABTestGroupID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ABTestGroup:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {34}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<table border="0" cellpadding="5" cellspacing="0" width="100%" class="w e"> 
<tr>
<td class="table_header e s center" width="75"><% {out.write(localizeISText("ABTestAssignmentObjectTypeSelection_52.Select.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header s" width="100%"><% {out.write(localizeISText("ABTestAssignmentObjectTypeSelection_52.ObjectType.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_ASSIGN_MARKETING_AND_CONTENT"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",40,e);}if (_boolean_result) { %><tr>
<td class="e s center top" width="70">
<input type="radio" name="selectedType" value="typePromotions" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("selectedType"),null).equals(context.getFormattedValue("typePromotions",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",43,e);}if (_boolean_result) { %>checked="checked"<% } %>/>
</td>
<td class="table_detail s"><% {out.write(localizeISText("ABTestAssignmentObjectTypeSelection_52.Promotions.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td class="e s center top" width="70">
<input type="radio" name="selectedType" value="typeComponentVariants" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("selectedType"),null).equals(context.getFormattedValue("typeComponentVariants",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",49,e);}if (_boolean_result) { %>checked="checked"<% } %>/>
</td>
<td class="table_detail s"><% {out.write(localizeISText("ABTestAssignmentObjectTypeSelection_52.Components.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td class="e s center top" width="70">
<input type="radio" name="selectedType" value="typePageVariants" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("selectedType"),null).equals(context.getFormattedValue("typePageVariants",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",55,e);}if (_boolean_result) { %>checked="checked"<% } %>/>
</td>
<td class="table_detail s"><% {out.write(localizeISText("ABTestAssignmentObjectTypeSelection_52.PageVariants.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% } %></table>
<table class="w e s" width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><input type="submit" name="selectedObject" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ABTestAssignmentObjectTypeSelection_52.Next.button",null)),null)%>&nbsp;&gt;&gt;" class="button"/></td>
<td class="button"><input type="submit" name="cancel" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ABTestAssignmentObjectTypeSelection_52.Cancel.button",null)),null)%>" class="button"/></td>
</tr>
</table>
</td>
</tr>
</table> 
<% out.print("</form>"); %><!-- EO Working Area --><% printFooter(out); %>