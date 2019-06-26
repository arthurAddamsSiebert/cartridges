<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- Working Area --><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotionTargetGroupUserSelection_52-ShowAll",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("PromotionUUID",null),context.getFormattedValue(getObject("Promotion:UUID"),null))))),
new TagParameter("text",localizeText(context.getFormattedValue("PromotionTargetGroupSelectCustomers_52.AssignCustomers.text",null)))}, 4); %><% URLPipelineAction action548 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotionTargetGroupUserSelection_52-Dispatch",null)))),null));String site548 = null;String serverGroup548 = null;String actionValue548 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotionTargetGroupUserSelection_52-Dispatch",null)))),null);if (site548 == null){  site548 = action548.getDomain();  if (site548 == null)  {      site548 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup548 == null){  serverGroup548 = action548.getServerGroup();  if (serverGroup548 == null)  {      serverGroup548 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotionTargetGroupUserSelection_52-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("CustomerSelectionForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue548, site548, serverGroup548,true)); %><input type="hidden" name="PromotionUUID" value="<%=context.getFormattedValue(getObject("Promotion:UUID"),null)%>"/>
<input type="hidden" name="ChannelID" value="<%=context.getFormattedValue(getObject("CurrentChannel:UUID"),null)%>"/>
<input type="hidden" name="DefaultButton" value="simpleSearch"/>
<table cellpadding="0" cellspacing="0" border="0" width="100%">
<tr>
<td class="table_title aldi" colspan="2" nowrap="nowrap"><% {out.write(localizeISText("PromotionTargetGroupSelectCustomers_52.AssignCustomers.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td> 
</tr> 
<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("assign"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",14,e);}if (_boolean_result) { %><tr>
<td>
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr valign="top">
<td class="error_icon top e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error top" width="100%"><% {out.write(localizeISText("PromotionTargetGroupSelectCustomers_52.YouHaveNotSelectedAnyCustomersSelectAtLeastOneCustomer.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
</td>
</tr><% } %></table><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (hasLoopElements("SearchResult") ? Boolean.TRUE : Boolean.FALSE)).booleanValue() || ((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("SearchTerm")))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("SearchTerm"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",30,e);}if (_boolean_result) { %><table cellpadding="0" cellspacing="0" border="0" width="100%">
<tr>
<td class="table_title_description w e s" colspan="2" width="100%"><% {out.write(localizeISText("PromotionTargetGroupSelectCustomers_52.TheListShowsAllRegisteredCustomersCustomersWhichAre.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<table border="0" cellpadding="4" cellspacing="0" width="100%" class="infobox s e w">
<tr>
<td class="infobox_title" nowrap="nowrap"><% {out.write(localizeISText("PromotionTargetGroupSelectCustomers_52.FindCustomers.infobox_title",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
</tr>
<tr>
<td colspan="2">
<table cellSpacing=0 cellPadding=0 border=0>
<tr>
<td class="infobox_item" nowrap="nowrap"><% {out.write(localizeISText("PromotionTargetGroupSelectCustomers_52.NameOrID.infobox_item",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td>
<input type="text" name="SearchTerm" maxlength="350" size="35" value="<% {String value = null;try{value=context.getFormattedValue(getObject("SearchTerm"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {48}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="inputfield_en"/>
</td>
<td>&nbsp;</td>
<td>
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><input type="submit" name="simpleSearch" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PromotionTargetGroupSelectCustomers_52.Find.button",null)),null)%>" class="button"/></td> 
</tr>
</table>
</td>
</tr>
</table>
</td>
</tr>
</table><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) ((hasLoopElements("SearchResult") ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",63,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("SearchTerm")))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("SearchTerm"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",64,e);}if (_boolean_result) { %><table cellpadding="0" cellspacing="0" border="0" width="100%">
<tr>
<td width="100%" class="table_detail w e s"><% {out.write(localizeISText("PromotionTargetGroupSelectCustomers_52.NoResultsFoundForYourSearchNameOrIDCheckTheSpelling.table_detail",null,null,encodeString(context.getFormattedValue(getObject("SearchTerm"),null)),null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% } %><% } %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("SearchResult") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",74,e);}if (_boolean_result) { %><table cellpadding="0" cellspacing="0" border="0" width="100%">
<tr>
<td class="table_header w e s" nowrap="nowrap" width="80">
<div id="A">
<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
<tr>
<td nowrap="nowrap">
<a href="javascript:selectAll('CustomerSelectionForm','SelectedObjectUUID','A','B');" class="tableheader"><% {out.write(localizeISText("PromotionTargetGroupSelectCustomers_52.SelectAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
</td>
</tr>
</table>
</div>
<div id="B" style="display:none">
<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
<tr>
<td nowrap="nowrap">
<a href="javascript:selectAll('CustomerSelectionForm','SelectedObjectUUID','A','B');" class="tableheader"><% {out.write(localizeISText("PromotionTargetGroupSelectCustomers_52.ClearAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
</td>
</tr>
</table>
</div>
</td>
<td class="table_header e s" nowrap="nowrap"><% {out.write(localizeISText("PromotionTargetGroupSelectCustomers_52.Type.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s" nowrap="nowrap" width="50%"><% {out.write(localizeISText("PromotionTargetGroupSelectCustomers_52.Customer.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s" nowrap="nowrap"><% {out.write(localizeISText("PromotionTargetGroupSelectCustomers_52.ID.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s" nowrap="nowrap" width="70"><% {out.write(localizeISText("PromotionTargetGroupSelectCustomers_52.Status.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s" nowrap="nowrap"><% {out.write(localizeISText("PromotionTargetGroupSelectCustomers_52.CreationDate.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr> 
<% while (loop("SearchResult","CustomerBO",null)) { %><tr><% {Object temp_obj = (getObject("CustomerBO:Extension(\"CompanyCustomer\")")); getPipelineDictionary().put("CustomerDetails", temp_obj);} %><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("CustomerDetails")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",106,e);}if (_boolean_result) { %><% {Object temp_obj = (getObject("CustomerBO:Extension(\"PrivateCustomer\")")); getPipelineDictionary().put("CustomerDetails", temp_obj);} %><% } %><td class="w e s center">
<input type="hidden" name="ObjectUUID" value="<%=context.getFormattedValue(getObject("CustomerBO:ID"),null)%>"/>
<input type="checkbox" name="SelectedObjectUUID" value="<%=context.getFormattedValue(getObject("CustomerBO:ID"),null)%>"
<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Clipboard:contains(CustomerBO:ID)"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",112,e);}if (_boolean_result) { %>checked="checked"<% } %> 
<% while (loop("AssignedCustomerIDs","AssignedCustomerID",null)) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("CustomerBO:ID"),null).equals(context.getFormattedValue(getObject("AssignedCustomerID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",114,e);}if (_boolean_result) { %>
disabled checked="checked"
<% } %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Lookup:isMember(CustomerBO:ID)"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",118,e);}if (_boolean_result) { %>disabled="disabled" checked="checked"<% } %> 
/>
</td>
<td class="table_detail s e ish-customerType-<% {String value = null;try{value=context.getFormattedValue(getObject("CustomerBO:CustomerType:CustomerTypeID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {121}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>-icon" width="1">
<span class="ish-icon"><% {String value = null;try{value=context.getFormattedValue(getObject("CustomerBO:CustomerType:CustomerTypeID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {123}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></span>
</td>
<td class="table_detail e s"><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("CustomerDetails:Name")))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("CustomerDetails:Name"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",127,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("CustomerDetails:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {128}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %><% {String value = null;try{value=context.getFormattedValue(getObject("CustomerBO:CustomerNo"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {130}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %></td>
<td class="table_detail e s"><% {String value = null;try{value=context.getFormattedValue(getObject("CustomerBO:CustomerNo"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {133}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
<td class="table_detail e s"><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("CustomerDetails:Active")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("CustomerDetails:Active"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",136,e);}if (_boolean_result) { %><img border="0" title="<% {out.write(localizeISText("customers.list.status.active","",null,null,null,null,null,null,null,null,null,null,null));} %>" alt="<% {out.write(localizeISText("customers.list.status.active","",null,null,null,null,null,null,null,null,null,null,null));} %>" src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/online.png" /><% } else { %><img border="0" title="<% {out.write(localizeISText("customers.list.status.disabled","",null,null,null,null,null,null,null,null,null,null,null));} %>" alt="<% {out.write(localizeISText("customers.list.status.disabled","",null,null,null,null,null,null,null,null,null,null,null));} %>" src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/offline.png" /><% } %></td>
<td class="table_detail e s"><% {String value = null;try{value=context.getFormattedValue(getObject("CustomerDetails:CreationDate"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {143}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
</tr><% } %></table><% } else { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("SearchTerm")))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("SearchTerm"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",148,e);}if (_boolean_result) { %><table cellpadding="0" cellspacing="0" border="0" width="100%">
<tr>
<td class="table_detail w e s" colspan="5"><% {out.write(localizeISText("PromotionTargetGroupSelectCustomers_52.ThereAreCurrentlyNoRegisteredCustomersInThisChannel.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% } %><% } %><table class="w e s" width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("SearchResult") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",163,e);}if (_boolean_result) { %><td class="button"><input type="submit" name="assign" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PromotionTargetGroupSelectCustomers_52.Assign.button",null)),null)%>" class="button"/></td><% } %><td class="button"><input type="submit" name="cancel" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PromotionTargetGroupSelectCustomers_52.Cancel.button",null)),null)%>" class="button"/></td>
</tr>
</table>
</td>
</tr>
</table>
<div><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></div><% processOpenTag(response, pageContext, "pagingbar", new TagParameter[] {
new TagParameter("pageable","SearchResult")}, 173); %><% out.print("</form>"); %><!-- EO Working Area --><% printFooter(out); %>