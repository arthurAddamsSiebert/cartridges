<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- Working Area -->
<!-- Page Navigator --><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("text1",context.getFormattedValue(" - ",null) + context.getFormattedValue(localizeText(context.getFormattedValue("OrderExportLineItems.LineItems.text1",null)),null)),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewOrderExportLineItems-Edit",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null))).addURLParameter(context.getFormattedValue("ConfigID",null),context.getFormattedValue(getObject("Config:ID"),null)))),
new TagParameter("id",getObject("Config:ID")),
new TagParameter("text",getObject("Config:Name"))}, 5); %><% {Object temp_obj = ("LineItems"); getPipelineDictionary().put("SelectedTab", temp_obj);} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"order/OrderExportTabs", null, "7");} %><!-- EO Page Navigator -->
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" class="table_title w e s"><% {String value = null;try{value=context.getFormattedValue(getObject("Config:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {12}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
</tr>
<tr>
<td class="table_title_description w e s"><% {out.write(localizeISText("OrderExportLineItems.SpecifyWhichLineItemsShouldBeIncludedInOrderExport.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<!-- Main Content --><% URLPipelineAction action653 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewOrderExportLineItems-Dispatch",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null))).addURLParameter(context.getFormattedValue("ConfigID",null),context.getFormattedValue(getObject("Config:ID"),null))),null));String site653 = null;String serverGroup653 = null;String actionValue653 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewOrderExportLineItems-Dispatch",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null))).addURLParameter(context.getFormattedValue("ConfigID",null),context.getFormattedValue(getObject("Config:ID"),null))),null);if (site653 == null){  site653 = action653.getDomain();  if (site653 == null)  {      site653 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup653 == null){  serverGroup653 = action653.getServerGroup();  if (serverGroup653 == null)  {      serverGroup653 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewOrderExportLineItems-Dispatch",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null))).addURLParameter(context.getFormattedValue("ConfigID",null),context.getFormattedValue(getObject("Config:ID"),null))),null));out.print("\"");out.print(" name=\"");out.print("OrderExportLineItemsForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue653, site653, serverGroup653,true)); %> 
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e">
<tr>
<td class="s">
<table border="0" cellspacing="4" cellpadding="0" >
<tr>
<td class="fielditem2" nowrap="nowrap" ><% {out.write(localizeISText("OrderExportLineItems.ProductIDs.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>: </td>
<td><textarea size="4" name="<% {String value = null;try{value=context.getFormattedValue(getObject("Form:SKUs:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {27}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% {String value = null;try{value=context.getFormattedValue(getObject("Form:SKUs:FormattedValue"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {27}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></textarea></td>
</tr>
<tr>
<td class="fielditem2" nowrap="nowrap" ><% {out.write(localizeISText("OrderExportLineItems.Supplier.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>: </td>
<td><textarea size="4" name="<% {String value = null;try{value=context.getFormattedValue(getObject("Form:SupplierNames:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {31}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% {String value = null;try{value=context.getFormattedValue(getObject("Form:SupplierNames:FormattedValue"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {31}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></textarea></td>
</tr><% {Object temp_obj = ("false"); getPipelineDictionary().put("orderRequriedAttrHeaderShown", temp_obj);} %><% while (loop("Form:Parameters","orderRequiredAttrParam",null)) { %><% {Object temp_obj = (getObject("orderRequiredAttrParam:ID")); getPipelineDictionary().put("attrID", temp_obj);} %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(pad(context.getFormattedValue(getObject("attrID"),null),((Number)((new Double(context.getFormattedValue("orderRequiredAV_",null).length())))).intValue()),null).equals(context.getFormattedValue("orderRequiredAV_",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",36,e);}if (_boolean_result) { %> 
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("orderRequriedAttrHeaderShown"),null).equals(context.getFormattedValue("false",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",37,e);}if (_boolean_result) { %><tr>
<td class="fielditem2" nowrap="nowrap" colspan="2"><% {String value = null;try{value=context.getFormattedValue(getObject("AttributeGroup:getAttributeDescriptor(attrID):DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {39}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
</tr><% } %><% {Object temp_obj = (replace(context.getFormattedValue(getObject("attrID"),null),(String)("^orderRequiredAV_"),(String)(""))); getPipelineDictionary().put("attrID", temp_obj);} %><tr>
<td class="fielditem2" nowrap="nowrap" ><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("AttributeGroup:getAttributeDescriptor(attrID):DisplayName")))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("AttributeGroup:getAttributeDescriptor(attrID):DisplayName"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",45,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("AttributeGroup:getAttributeDescriptor(attrID):DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {46}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>:
<% } else { %><% {String value = null;try{value=context.getFormattedValue(getObject("attrID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {48}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>:
<% } %></td>
<td class="table_detail">
<input type="text" name="<% {String value = null;try{value=context.getFormattedValue(getObject("orderRequiredAttrParam:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {52}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" value="<% {String value = null;try{value=context.getFormattedValue(getObject("orderRequiredAttrParam:FormattedValue"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {52}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" size="50" class="inputfield_en" />
</td>
</tr><% } %><% } %></table>
</td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><input type="submit" class="button" name="update" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("OrderExportLineItems.Apply.button",null)),null)%>"/></td>
<td class="button"><input type="submit" class="button" name="reset" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("OrderExportLineItems.Reset.button",null)),null)%>"/></td>
</tr>
</table>
</td>
</tr>
</table><% out.print("</form>"); %><!-- EO Main Content --><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/BackToList", null, "77");} %><!-- EO Working Area --><% printFooter(out); %>