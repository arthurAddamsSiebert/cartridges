<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- Working Area -->
<!-- Page Navigation --><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewOrderStatusImport_52-New",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null))))),
new TagParameter("id","newOrderStatusImport"),
new TagParameter("text",localizeText(context.getFormattedValue("NewOrderStatusImport_52.NewImportScenarioGeneral.text",null)))}, 5); %><% {Object temp_obj = ("General"); getPipelineDictionary().put("SelectedTab", temp_obj);} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"order/OrderStatusImportTabs_52", null, "8");} %><!-- EO Page Navigation -->
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" class="table_title w e s"><% {out.write(localizeISText("NewOrderStatusImport_52.NewImportScenario.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Form:isSubmitted"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",15,e);}if (_boolean_result) { %><tr>
<td>
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr valign="top">
<td class="error_icon top e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error top" width="100%"><% {out.write(localizeISText("NewOrderStatusImport_52.TheImportScenarioCouldNotBeCreated.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Form:Name:isInvalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",22,e);}if (_boolean_result) { %><% {out.write(localizeISText("NewOrderStatusImport_52.PleaseProvideAValidNameForTheScenario.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Form:ServiceID:isInvalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",25,e);}if (_boolean_result) { %><% {out.write(localizeISText("NewOrderStatusImport_52.PleaseSelectAValidImportServiceForTheScenario.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/><% } %></td>
</tr>
</table>
</td>
</tr><% } %><tr>
<td class="table_title_description w e s"><% {out.write(localizeISText("NewOrderStatusImport_52.FieldsWithARedAsteriskSpanClassStarSpanA.table_title_description",null,null,"star",null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<!-- Main Content --><% URLPipelineAction action637 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewOrderStatusImport_52-Dispatch",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null)))),null));String site637 = null;String serverGroup637 = null;String actionValue637 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewOrderStatusImport_52-Dispatch",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null)))),null);if (site637 == null){  site637 = action637.getDomain();  if (site637 == null)  {      site637 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup637 == null){  serverGroup637 = action637.getServerGroup();  if (serverGroup637 == null)  {      serverGroup637 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewOrderStatusImport_52-Dispatch",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null)))),null));out.print("\"");out.print(" name=\"");out.print("OrderStatusImport");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue637, site637, serverGroup637,true)); %> 
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td class="s">
<table border="0" cellspacing="4" cellpadding="0">
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Form:Name:isInvalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",70,e);}if (_boolean_result) { %><td class="fielditem2_error" nowrap="nowrap"><% {out.write(localizeISText("NewOrderStatusImport_52.Name.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></td><% } else { %><td class="fielditem2" nowrap="nowrap"><% {out.write(localizeISText("NewOrderStatusImport_52.Name.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></td><% } %><td class="table_detail">
<input type="text" id="<% {String value = null;try{value=context.getFormattedValue(getObject("Form:Name:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {76}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" name="<% {String value = null;try{value=context.getFormattedValue(getObject("Form:Name:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {76}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Form:Name:FormattedValue"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {76}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" size="50" class="inputfield_en" />
</td>
</tr>
<tr>
<td class="fielditem2" nowrap="nowrap"><% {out.write(localizeISText("NewOrderStatusImport_52.Description.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td class="table_detail">
<textarea rows="5" cols="48" id="<% {String value = null;try{value=context.getFormattedValue(getObject("Form:Description:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {82}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" name="<% {String value = null;try{value=context.getFormattedValue(getObject("Form:Description:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {82}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="inputfield_en"><% {String value = null;try{value=context.getFormattedValue(getObject("Form:Description:FormattedValue"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {83}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></textarea>
</td>
</tr>
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Form:ServiceID:isInvalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",88,e);}if (_boolean_result) { %><td class="fielditem_error" nowrap="nowrap"><% {out.write(localizeISText("NewOrderStatusImport_52.ConfigurationType.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></td><% } else { %><td class="fielditem" nowrap="nowrap"><% {out.write(localizeISText("NewOrderStatusImport_52.ConfigurationType.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></td><% } %><td class="table_detail"><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("ServiceInstances") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",94,e);}if (_boolean_result) { %><select name="<% {String value = null;try{value=context.getFormattedValue(getObject("Form:ServiceID:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {95}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% while (loop("ServiceInstances","service",null)) { %><option value="<% {String value = null;try{value=context.getFormattedValue(getObject("service:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {97}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Form:ServiceID:FormattedValue"),null).equals(context.getFormattedValue(getObject("service:ID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",98,e);}if (_boolean_result) { %>
selected="selected"
<% } %>
><% {String value = null;try{value=context.getFormattedValue(getObject("service:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {102}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> <% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) getObject("service:isRunnable")).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",102,e);}if (_boolean_result) { %>(<% {out.write(localizeISText("NewOrderStatusImport_52.Disabled.option",null,null,null,null,null,null,null,null,null,null,null,null));} %>)<% } %></option><% } %></select><% } else { %><input type="hidden" name="<% {String value = null;try{value=context.getFormattedValue(getObject("Form:ServiceID:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {107}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" value=""/><% {out.write(localizeISText("NewOrderStatusImport_52.NoActiveServiceAvailable.input",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %></td>
</tr> 
</table>
</td> 
</tr>
<tr>
<td align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><input type="submit" class="button" name="create" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("NewOrderStatusImport_52.Apply.button",null)),null)%>"/></td>
<td class="button"><input type="submit" class="button" name="cancelCreate" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("NewOrderStatusImport_52.Cancel.button",null)),null)%>"/></td>
</tr>
</table>
</td>
</tr>
</table><% out.print("</form>"); %><!-- EO Main Content -->
<!-- EO Working Area --><% printFooter(out); %>