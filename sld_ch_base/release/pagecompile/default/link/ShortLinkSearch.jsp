<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% _boolean_result=false;try {_boolean_result=((Boolean)(((!((Boolean) ((disableErrorMessages().isDefined(getObject("SearchType"))))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("SearchType"),null).equals(context.getFormattedValue("simple",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",5,e);}if (_boolean_result) { %><table border="0" cellpadding="4" cellspacing="0" width="100%" class="infobox">
<tr>
<td class="infobox_title" nowrap="nowrap"><% {out.write(localizeISText("ShortLinkSearch.SimpleURLSearch.infobox_title",null,null,null,null,null,null,null,null,null,null,null,null));} %> ...</td>
<td class="right"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("LinkGroupUUID"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",10,e);}if (_boolean_result) { %><!-- search link in group -->
<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue(context.getFormattedValue(getObject("SearchPipeline"),null) + context.getFormattedValue("-ListAll",null),null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("LinkGroupUUID",null),context.getFormattedValue(getObject("LinkGroupUUID"),null))).addURLParameter(context.getFormattedValue("ChannelUUID",null),context.getFormattedValue(getObject("ChannelUUID"),null)).addURLParameter(context.getFormattedValue("OrganizationUUID",null),context.getFormattedValue(getObject("OrganizationUUID"),null)).addURLParameter(context.getFormattedValue("SearchType",null),context.getFormattedValue("parametric",null))),null)%>" class="switch_link"><% } else { %><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue(context.getFormattedValue(getObject("SearchPipeline"),null) + context.getFormattedValue("-ListAll",null),null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null))).addURLParameter(context.getFormattedValue("SearchType",null),context.getFormattedValue("parametric",null))),null)%>" class="switch_link"><% } %><% {out.write(localizeISText("ShortLinkSearch.SwitchToAdvancedSearch.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a></td>
</tr>
<tr>
<td colspan="2">
<table cellSpacing=0 cellPadding=0 border=0>
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("SearchTermError"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",22,e);}if (_boolean_result) { %><td class="fielditem2_error" nowrap="nowrap"><% {out.write(localizeISText("ShortLinkSearch.URL.fielditem2_error",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td><% } else { %><td class="infobox_item" nowrap="nowrap"><% {out.write(localizeISText("ShortLinkSearch.URL.infobox_item",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td><% } %><td><input type="text" name="SearchTerm" maxlength="350" size="35" value="<% {String value = null;try{value=context.getFormattedValue(getObject("SearchTerm"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {27}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="inputfield_en"/></td>
<td>&nbsp;</td>
<td>
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button">
<input type="hidden" name="SearchType" value="simple"/>
<input type="hidden" name="DefaultButton" value="simpleSearch"/> 
<input type="submit" name="simpleSearch" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ShortLinkSearch.Find.button",null)),null)%>" class="button"/>
</td>
</tr>
</table> 
</td> 
</tr>
</table>
</td>
</tr>
</table><% } else { %> 
<table border="0" cellpadding="4" cellspacing="0" width="100%" class="infobox">
<colgroup>
<col width="15%"/>
<col width="35%"/>
<col width="50%"/>
</colgroup>
<tr>
<td class="infobox_title" colspan="2"><% {out.write(localizeISText("ShortLinkSearch.AdvancedURLSearch.infobox_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="right" colspan="2"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("LinkGroupUUID"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",55,e);}if (_boolean_result) { %><!-- search link in group -->
<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue(context.getFormattedValue(getObject("SearchPipeline"),null) + context.getFormattedValue("-ListAll",null),null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("LinkGroupUUID",null),context.getFormattedValue(getObject("LinkGroupUUID"),null))).addURLParameter(context.getFormattedValue("ChannelUUID",null),context.getFormattedValue(getObject("ChannelUUID"),null)).addURLParameter(context.getFormattedValue("OrganizationUUID",null),context.getFormattedValue(getObject("OrganizationUUID"),null)).addURLParameter(context.getFormattedValue("SearchType",null),context.getFormattedValue("simple",null))),null)%>" class="switch_link"><% } else { %><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue(context.getFormattedValue(getObject("SearchPipeline"),null) + context.getFormattedValue("-ListAll",null),null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null))).addURLParameter(context.getFormattedValue("SearchType",null),context.getFormattedValue("simple",null))),null)%>" class="switch_link"><% } %><% {out.write(localizeISText("ShortLinkSearch.SwitchToSimpleSearch.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a></td>
</tr> 
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("SourceURLError"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",64,e);}if (_boolean_result) { %><td class="fielditem2_error" nowrap="nowrap"><% {out.write(localizeISText("ShortLinkSearch.SourceURL.fielditem2_error",null,null,null,null,null,null,null,null,null,null,null,null));} %>:&nbsp;</td><% } else { %><td class="infobox_item" nowrap="nowrap"><% {out.write(localizeISText("ShortLinkSearch.SourceURL.infobox_item",null,null,null,null,null,null,null,null,null,null,null,null));} %>:&nbsp;</td><% } %><td><input type="text" name="SourceURL" maxlength="350" style="width:100%" class="inputfield_en" value="<% {String value = null;try{value=context.getFormattedValue(getObject("SourceURL"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {69}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/></td>
<td colspan="2">&#160;</td>
</tr>
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("TargetURLError"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",73,e);}if (_boolean_result) { %><td class="fielditem2_error" nowrap="nowrap"><% {out.write(localizeISText("ShortLinkSearch.TargetURL.fielditem2_error",null,null,null,null,null,null,null,null,null,null,null,null));} %>:&nbsp;</td><% } else { %><td class="infobox_item" nowrap="nowrap"><% {out.write(localizeISText("ShortLinkSearch.TargetURL.infobox_item",null,null,null,null,null,null,null,null,null,null,null,null));} %>:&nbsp;</td><% } %><td><input type="text" name="TargetURL" maxlength="350" style="width:100%" class="inputfield_en" value="<% {String value = null;try{value=context.getFormattedValue(getObject("TargetURL"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {78}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/></td>
<td colspan="2">&#160;</td>
</tr>
<tr>
<td class="infobox_item"><% {out.write(localizeISText("ShortLinkSearch.Redirect.infobox_item",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td colspan="2">
<input type="radio" name="ServerHeader" value="All" 
<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((Boolean) (disableErrorMessages().isDefined(getObject("ServerHeader")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("ServerHeader"),null).equals(context.getFormattedValue("All",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",85,e);}if (_boolean_result) { %>
checked="checked"
<% } %>
/><span class="infobox_item"><% {out.write(localizeISText("ShortLinkSearch.All.input",null,null,null,null,null,null,null,null,null,null,null,null));} %>&nbsp;</span>
<input type="radio" name="ServerHeader" value="default"
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ServerHeader"),null).equals(context.getFormattedValue("default",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",90,e);}if (_boolean_result) { %>
checked="checked"
<% } %>
/><span class="infobox_item"><% {out.write(localizeISText("ShortLinkSearch.Default.input",null,null,null,null,null,null,null,null,null,null,null,null));} %>&nbsp;</span>
<input type="radio" name="ServerHeader" value="200"
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ServerHeader"),null).equals(context.getFormattedValue("200",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",95,e);}if (_boolean_result) { %>
checked="checked"
<% } %>
/><span class="infobox_item"><% {out.write(localizeISText("ShortLinkSearch.None.input",null,null,null,null,null,null,null,null,null,null,null,null));} %>&nbsp;</span>
<input type="radio" name="ServerHeader" value="301"
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ServerHeader"),null).equals(context.getFormattedValue("301",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",100,e);}if (_boolean_result) { %>
checked="checked"
<% } %>
/><span class="infobox_item">301&nbsp;</span>
<input type="radio" name="ServerHeader" value="302"
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ServerHeader"),null).equals(context.getFormattedValue("302",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",105,e);}if (_boolean_result) { %>
checked="checked"
<% } %>
/><span class="infobox_item">302&nbsp;</span>
</td>
<td colspan="2">&#160;</td>
</tr> 
<tr>
<td class="infobox_item"><% {out.write(localizeISText("ShortLinkSearch.Default.infobox_item",null,null,null,null,null,null,null,null,null,null,null,null));} %>:&nbsp;</td>
<td colspan="2">
<input type="radio" name="DefaultFlag" value="All" 
<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((Boolean) (disableErrorMessages().isDefined(getObject("DefaultFlag")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("DefaultFlag"),null).equals(context.getFormattedValue("All",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",116,e);}if (_boolean_result) { %>
checked="checked"
<% } %>
/><span class="infobox_item"><% {out.write(localizeISText("ShortLinkSearch.All.input",null,null,null,null,null,null,null,null,null,null,null,null));} %>&nbsp;</span>
<input type="radio" name="DefaultFlag" value="1"
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("DefaultFlag"),null).equals(context.getFormattedValue("1",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",121,e);}if (_boolean_result) { %>
checked="checked"
<% } %>
/><span class="infobox_item"><% {out.write(localizeISText("ShortLinkSearch.Yes.input",null,null,null,null,null,null,null,null,null,null,null,null));} %>&nbsp;&nbsp;&nbsp;</span>
<input type="radio" name="DefaultFlag" value="0"
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("DefaultFlag"),null).equals(context.getFormattedValue("0",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",126,e);}if (_boolean_result) { %>
checked="checked"
<% } %>
/><span class="infobox_item"><% {out.write(localizeISText("ShortLinkSearch.No.input",null,null,null,null,null,null,null,null,null,null,null,null));} %>&nbsp;</span>
</td>
<td colspan="2">&#160;</td>
</tr> 
<tr>
<td class="infobox_item"><% {out.write(localizeISText("ShortLinkSearch.Enabled.infobox_item",null,null,null,null,null,null,null,null,null,null,null,null));} %>:&nbsp;</td>
<td colspan="2">
<input type="radio" name="EnabledFlag" value="All" 
<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((Boolean) (disableErrorMessages().isDefined(getObject("EnabledFlag")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("EnabledFlag"),null).equals(context.getFormattedValue("All",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",138,e);}if (_boolean_result) { %>
checked="checked"
<% } %>
/><span class="infobox_item"><% {out.write(localizeISText("ShortLinkSearch.All.input",null,null,null,null,null,null,null,null,null,null,null,null));} %>&nbsp;</span>
<input type="radio" name="EnabledFlag" value="1"
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("EnabledFlag"),null).equals(context.getFormattedValue("1",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",143,e);}if (_boolean_result) { %>
checked="checked"
<% } %>
/><span class="infobox_item"><% {out.write(localizeISText("ShortLinkSearch.Yes.input",null,null,null,null,null,null,null,null,null,null,null,null));} %>&nbsp;&nbsp;&nbsp;</span>
<input type="radio" name="EnabledFlag" value="0"
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("EnabledFlag"),null).equals(context.getFormattedValue("0",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",148,e);}if (_boolean_result) { %>
checked="checked"
<% } %>
/><span class="infobox_item"><% {out.write(localizeISText("ShortLinkSearch.No.input",null,null,null,null,null,null,null,null,null,null,null,null));} %>&nbsp;</span>
</td>
</tr> 
<tr>
<td>
<table border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="infobox_item" nowrap="nowrap"><% {out.write(localizeISText("ShortLinkSearch.StartDate.infobox_item",null,null,null,null,null,null,null,null,null,null,null,null));} %></td> 
</tr> 
<tr>
<td class="infobox_item"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="16" alt="" border="0"/></td>
</tr>
</table>
</td> 
<td align="left" > 
<table border="0" cellpadding="0" cellspacing="0">
<tr><% processOpenTag(response, pageContext, "dateinput", new TagParameter[] {
new TagParameter("InputFieldName","StartDateFrom_Date"),
new TagParameter("InputFieldLabel","between"),
new TagParameter("DateString",getObject("StartDateFrom_Date")),
new TagParameter("InputFieldLabelClass","infobox_item"),
new TagParameter("Invalid",((disableErrorMessages().isDefined(getObject("StartDateFromError")))))}, 168); %><% processOpenTag(response, pageContext, "dateinput", new TagParameter[] {
new TagParameter("InputFieldName","StartDateTo_Date"),
new TagParameter("InputFieldLabel","and"),
new TagParameter("DateString",getObject("StartDateTo_Date")),
new TagParameter("InputFieldLabelClass","infobox_item"),
new TagParameter("Invalid",((disableErrorMessages().isDefined(getObject("StartDateToError")))))}, 175); %></tr>
</table>
</td>
</tr>
<tr>
<td>
<table border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="infobox_item" nowrap="nowrap"><% {out.write(localizeISText("ShortLinkSearch.EndDate.infobox_item",null,null,null,null,null,null,null,null,null,null,null,null));} %></td> 
</tr> 
<tr>
<td class="infobox_item"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="16" alt="" border="0"/></td>
</tr>
</table>
</td> 
<td align="left" > 
<table border="0" cellpadding="0" cellspacing="0">
<tr><% processOpenTag(response, pageContext, "dateinput", new TagParameter[] {
new TagParameter("InputFieldName","EndDateFrom_Date"),
new TagParameter("InputFieldLabel","between"),
new TagParameter("DateString",getObject("EndDateFrom_Date")),
new TagParameter("InputFieldLabelClass","infobox_item"),
new TagParameter("Invalid",((disableErrorMessages().isDefined(getObject("EndDateFromError")))))}, 200); %><% processOpenTag(response, pageContext, "dateinput", new TagParameter[] {
new TagParameter("InputFieldName","EndDateTo_Date"),
new TagParameter("InputFieldLabel","and"),
new TagParameter("DateString",getObject("EndDateTo_Date")),
new TagParameter("InputFieldLabelClass","infobox_item"),
new TagParameter("Invalid",((disableErrorMessages().isDefined(getObject("EndDateToError")))))}, 207); %></tr>
</table>
</td>
<td align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button">
<input type="hidden" name="SearchType" value="parametric"/>
<input type="hidden" name="DefaultButton" value="parametricSearch"/>
<input type="submit" name="parametricSearch" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ShortLinkSearch.Find.button",null)),null)%>" class="button"/>
</td> 
</tr>
</table> 
</td> 
</tr>
</table> 
<% } %><% printFooter(out); %>