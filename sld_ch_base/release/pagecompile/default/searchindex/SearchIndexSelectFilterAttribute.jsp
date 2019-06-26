<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("text",localizeText(context.getFormattedValue("SearchIndexSelectFilterAttribute.SelectAttribute.text",null)))}, 2); %><% URLPipelineAction action171 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewSearchIndex-Dispatch",null)))),null));String site171 = null;String serverGroup171 = null;String actionValue171 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewSearchIndex-Dispatch",null)))),null);if (site171 == null){  site171 = action171.getDomain();  if (site171 == null)  {      site171 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup171 == null){  serverGroup171 = action171.getServerGroup();  if (serverGroup171 == null)  {      serverGroup171 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewSearchIndex-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("SelectFilterAttribute");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue171, site171, serverGroup171,true)); %><table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="table_title aldi"><% {String value = null;try{value=context.getFormattedValue(getObject("SearchIndex:IndexID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {7}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> - <% {out.write(localizeISText("SearchIndexSelectFilterAttribute.SelectAttribute.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %><input type="hidden" name="SearchIndexID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("SearchIndex:IndexID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {7}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" /></td>
</tr> 
<tr>
<td class="table_title_description w e s"><% {out.write(localizeISText("SearchIndexSelectFilterAttribute.TheListShowsAllProductAttributesDefined.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %> 
</td>
</tr> 
<tr>
<td>
<table class="infobox w e s" width="100%" border="0" cellpadding="4" cellspacing="0">
<tr>
<td colspan="3" class="infobox_title"><% {out.write(localizeISText("SearchIndexSelectFilterAttribute.AttributeSearch.infobox_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td class="infobox_item"><% {out.write(localizeISText("SearchIndexSelectFilterAttribute.AttributeID.infobox_item",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td><input type="text" name="SearchAttributeByName" class="inputfield_en" value="" size="50" /><td> 
<td width="100%"> 
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><input type="submit" class="button" name="findFilterAttribute" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("SearchIndexSelectFilterAttribute.Find.button",null)),null)%>" /></td>
</tr> 
</table> 
</td>
</tr>
</table>
</td>
</tr>
<tr>
<td class="w e s"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="2" alt="" border="0"/></td>
</tr>
<tr>
<td class="table_title2 w e s"><% {out.write(localizeISText("SearchIndexSelectFilterAttribute.Attributes.table_title2",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("SelectableAttributes") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",41,e);}if (_boolean_result) { %><tr>
<td>
<table border="0" cellpadding="0" cellspacing="0" width="100%"><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) ((((context.getFormattedValue(getObject("Attribute:isFilterAttribute"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",45,e);}if (_boolean_result) { %><tr>
<td class="table_header w e s center" width="100"><% {out.write(localizeISText("SearchIndexSelectFilterAttribute.Select.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s"><% {out.write(localizeISText("SearchIndexSelectFilterAttribute.AttributeID.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% while (loop("SelectableAttributes","Attribute",null)) { %> 
<% {Object temp_obj = ("true"); getPipelineDictionary().put("MinOneElement", temp_obj);} %><tr>
<td class="table_detail center w e s">
<input type="radio" name="AttributeName" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Attribute:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {55}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" />&nbsp;
</td>
<td class="table_detail e s"><% {String value = null;try{value=context.getFormattedValue(getObject("Attribute:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {58}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;
</td>
</tr> 
<% } %><% } %></table>
</td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("MinOneElement")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",66,e);}if (_boolean_result) { %><tr>
<td class="table_title_description w e s"><% {out.write(localizeISText("SearchIndexSelectFilterAttribute.CurrentlyThereAreNoIndexedAttributesDefined.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<tr><% } %><% } else { %><tr>
<td class="table_title_description w e s"><% {out.write(localizeISText("SearchIndexSelectFilterAttribute.CurrentlyThereAreNoIndexedAttributesDefined.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<tr><% } %><tr>
<td>
<table class="w e s right" width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td align="right"> 
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><input type="submit" name="editFilterAttribute" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("SearchIndexSelectFilterAttribute.OK.button",null)),null)%>" class="button"/></td>
<td class="button"><input type="submit" name="cancelSelectFilterAttribute" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("SearchIndexSelectFilterAttribute.Cancel.button",null)),null)%>" class="button"/></td> 
</tr> 
</table> 
</td>
</tr>
</table>
</td>
</tr>
</table><% out.print("</form>"); %><% printFooter(out); %>