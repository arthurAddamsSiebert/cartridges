<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- search mask -->
<table border="0" cellpadding="5" cellspacing="0" width="100%" class="infobox w e n">
<tr>
<td class="infobox_title" nowrap="nowrap"><% {out.write(localizeISText("PromotionCodeSearchMask.SearchPanel.infobox_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td align="right">&nbsp; <%-- switch to advanced search --%></td>
</tr>
<tr>
<td colspan="4"><% URLPipelineAction action16 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue(context.getFormattedValue(getObject("ViewPipeline"),null) + context.getFormattedValue("-ParametricSearch",null),null)))),null));String site16 = null;String serverGroup16 = null;String actionValue16 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue(context.getFormattedValue(getObject("ViewPipeline"),null) + context.getFormattedValue("-ParametricSearch",null),null)))),null);if (site16 == null){  site16 = action16.getDomain();  if (site16 == null)  {      site16 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup16 == null){  serverGroup16 = action16.getServerGroup();  if (serverGroup16 == null)  {      serverGroup16 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue(context.getFormattedValue(getObject("ViewPipeline"),null) + context.getFormattedValue("-ParametricSearch",null),null)))),null));out.print("\"");out.print(" name=\"");out.print(context.getFormattedValue(getObject("PromotionCodeSearchForm:ID"),null));out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue16, site16, serverGroup16,true)); %><input type="hidden" name="ChannelID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("CurrentChannel:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {13}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="PromotionCodeGroupID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("PromotionCodeGroup:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {14}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<table>
<colgroup>
<col width="15%"/>
<col width="35%"/>
<col width="15%"/>
<!-- to prevent to wide infobox in Firefox <col width="35%"/>-->
</colgroup>
<tr>
<td colspan="2">
<table border="0" cellpadding="0" cellspacing="0">
<tr>
<td class="infobox_item<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("PromotionCodeSearchForm:Code:isError(\"error.maxlength\")"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",26,e);}if (_boolean_result) { %>_error<% } %>" nowrap="nowrap"><% {out.write(localizeISText("PromotionCodeSearchMask.PromotionCodes.infobox_item",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td>
<input type="hidden" name="DefaultButton" value="findSimple"/>
<input type="text" name="<% {String value = null;try{value=context.getFormattedValue(getObject("PromotionCodeSearchForm:Code:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {29}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" value="<% {String value = null;try{value=context.getFormattedValue(getObject("PromotionCodeSearchForm:Code:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {29}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" maxlength="255" size="35" class="inputfield_en"/>
</td>
<td width="20">&nbsp;</td>
<td class="infobox_item<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("PromotionCodeSearchForm:Redeemed:isError(\"error.intrange\")"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",32,e);}if (_boolean_result) { %>_error<% } %>" nowrap="nowrap"><% {out.write(localizeISText("PromotionCodeSearchMask.Redeemed.infobox_item",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td>
<select name="<% {String value = null;try{value=context.getFormattedValue(getObject("PromotionCodeSearchForm:Redeemed:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {34}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="inputfield_en">
<option value="1" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PromotionCodeSearchForm:Redeemed:Value"),null).equals(context.getFormattedValue("1",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",35,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("PromotionCodeSearchMask.All.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="2" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PromotionCodeSearchForm:Redeemed:Value"),null).equals(context.getFormattedValue("2",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",36,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("PromotionCodeSearchMask.Yes.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="3" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PromotionCodeSearchForm:Redeemed:Value"),null).equals(context.getFormattedValue("3",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",37,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("PromotionCodeSearchMask.No.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="4" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PromotionCodeSearchForm:Redeemed:Value"),null).equals(context.getFormattedValue("4",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",38,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("PromotionCodeSearchMask.Deactivated.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
</select>
</td>
<td>&nbsp;</td>
<td>
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button">
<input type="submit" name="findSimple" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PromotionCodeSearchMask.Find.button",null)),null)%>" class="button"/>
</td>
</tr>
</table>
</td>
</tr>
</table>
</td>
</tr>
</table><% out.print("</form>"); %></td>
</tr>
</table>
<!-- EO search mask --><% printFooter(out); %>