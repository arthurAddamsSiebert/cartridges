<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewCustomer_52-New",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("NewCustomerType",null),context.getFormattedValue(getObject("NewCustomerType"),null))))),
new TagParameter("text",localizeText(context.getFormattedValue("customer.breadcrumb.new-customer.general",null))),
new TagParameter("id","newCustomer")}, 3); %><% {Object temp_obj = (getObject("NewCustomerType")); getPipelineDictionary().put("CustomerTypeID", temp_obj);} %><% {out.flush();processExtensionPoint((com.intershop.beehive.core.capi.request.ServletResponse)response,"CustomerTabs", null, "7");} %><% URLPipelineAction action337 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCustomer_52-Dispatch",null)))),null));String site337 = null;String serverGroup337 = null;String actionValue337 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCustomer_52-Dispatch",null)))),null);if (site337 == null){  site337 = action337.getDomain();  if (site337 == null)  {      site337 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup337 == null){  serverGroup337 = action337.getServerGroup();  if (serverGroup337 == null)  {      serverGroup337 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCustomer_52-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("NewCustomer");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue337, site337, serverGroup337,true)); %><table border="0" cellspacing="0" cellpadding="0" width="100%" class="w e">
<tbody>
<tr>
<td class="table_title s"><% {out.write(localizeISText("customer.create.general.title","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("CustomerForm:Invalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",18,e);}if (_boolean_result) { %><tr>
<td>
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box s">
<tbody>
<tr>
<td class="error_icon e top" width="1%">
<img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/>
</td>
<td class="error top"><% {out.write(localizeISText("customer.form.new.message.general","",null,null,null,null,null,null,null,null,null,null,null));} %><% while (loop("CustomerForm:InvalidParameters","InvalidParameter",null)) { %><br/><% while (loop("InvalidParameter:Errors","Error",null)) { %><% {out.write(localizeISText(context.getFormattedValue(context.getFormattedValue("customer.form.",null) + context.getFormattedValue(getObject("CustomerTypeID"),null) + context.getFormattedValue(".fields.",null) + context.getFormattedValue(getObject("InvalidParameter:ID"),null) + context.getFormattedValue(".",null) + context.getFormattedValue(getObject("Error"),null),null),"",null,null,null,null,null,null,null,null,null,null,null));} %><% } %><% } %></td>
</tr>
</tbody>
</table>
</td>
</tr><% } %><tr>
<td class="table_title_description s"><% {out.write(localizeISText("customer.FieldsWithARedAsteriskAreMandatory.table_title_description",null,null,"star",null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</tbody>
</table><% {out.flush();processExtensionPoint((com.intershop.beehive.core.capi.request.ServletResponse)response,"CustomerForm", null, "52");} %><table border="0" cellspacing="0" cellpadding="0" width="100%" class="w e">
<tbody>
<tr>
<td class="s" colspan="2" align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button">
<input type="hidden" name="NewCustomerType" value="<% {String value = null;try{value=context.getFormattedValue(getObject("NewCustomerType"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {67}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="submit" name="create" value="<% {out.write(localizeISText("customer.form.new.buttons.create","",null,null,null,null,null,null,null,null,null,null,null));} %>" class="button"/>
</td>
<td class="button">
<input type="submit" name="cancel" value="<% {out.write(localizeISText("customer.form.new.buttons.cancel","",null,null,null,null,null,null,null,null,null,null,null));} %>" class="button"/>
</td>
</tr>
</table>
</td>
</tr>
</tbody>
</table> 
<% out.print("</form>"); %><% printFooter(out); %>