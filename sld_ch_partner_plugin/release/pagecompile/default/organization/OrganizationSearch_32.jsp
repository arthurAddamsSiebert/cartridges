<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("SearchType")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SearchType"),null).equals(context.getFormattedValue("parametric",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",2,e);}if (_boolean_result) { %><table border="0" cellpadding="4" cellspacing="0" width="100%" class="infobox w e s">
<tr valign="top">
<td class="infobox_title" colspan="2">
<input type="hidden" name="SearchType" value="parametric"/><% {out.write(localizeISText("OrganizationSearch_32.AdvancedSearchForPartners.input",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="right" width="100%">
<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewOrganizationList_32-Refresh",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("OrganizationType",null),context.getFormattedValue("30",null))).addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null)).addURLParameter(context.getFormattedValue("SearchType",null),context.getFormattedValue("simple",null))),null)%>" class="switch_link"><% {out.write(localizeISText("OrganizationSearch_32.SwitchToSimpleSearch.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
</td>
</tr>
<!-- Main Content -->
<tr> 
<td class="infobox_subtitle" colspan="2"><% {out.write(localizeISText("OrganizationSearch_32.GeneralOrganizationAttributes.infobox_subtitle",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="10" height="1" alt="" border="0"/>
<input type="hidden" name="OrganizationType" value="30"/>
<input name="ChannelID" type="hidden" value="<%=context.getFormattedValue(getObject("CurrentChannel:UUID"),null)%>"/>
</td>
</tr>
<tr>
<td nowrap="nowrap" class="label"><label class="label" for="focusOrganizationID"><% {out.write(localizeISText("OrganizationSearch_32.ID.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td>
<input type="text" name="OrganizationID" size="35" maxlength="250" class="inputfield_en" id="focusOrganizationID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("OrganizationID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {23}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<script language="JavaScript" type="text/javascript">
<!--
document.getElementById("focusOrganizationID").focus();
-->
</script>
</td> 
<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="10" height="1" alt="" border="0"/></td>
</tr>
<tr>
<td nowrap="nowrap" class="label"><label class="label" for="OrganizationDisplayName"><% {out.write(localizeISText("OrganizationSearch_32.Name.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td>
<input type="text" name="OrganizationDisplayName" id="OrganizationDisplayName" size="35" maxlength="250" class="inputfield_en" value="<% {String value = null;try{value=context.getFormattedValue(getObject("OrganizationDisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {35}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
</td>
<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="10" height="1" alt="" border="0"/></td>
</tr>
<tr>
<td nowrap="nowrap" class="label"><label class="label" for="OrganizationDescription"><% {out.write(localizeISText("OrganizationSearch_32.Description.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td class="infobox_item">
<input type="text" name="OrganizationDescription" id="OrganizationDescription" size="35" maxlength="250" class="inputfield_en" value="<% {String value = null;try{value=context.getFormattedValue(getObject("OrganizationDescription"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {42}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
</td>
<td width="100%" align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button">
<input type="submit" name="parametricsearch" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("OrganizationSearch_32.Find.button",null)),null)%>" class="button"/>
</td>
</tr>
</table>
</td>
</tr>
<!-- Main Content -->
</table><% } else { %><table border="0" cellpadding="4" cellspacing="0" width="100%" class="infobox w e s">
<tr valign="top">
<td class="infobox_title" colspan="2"><% {out.write(localizeISText("OrganizationSearch_32.FindPartners.infobox_title",null,null,null,null,null,null,null,null,null,null,null,null));} %>...</td>
<td class="right" width="100%">
<input type="hidden" name="DefaultButton" value="simplesearch"/>
<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewOrganizationList_32-Refresh",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("OrganizationType",null),context.getFormattedValue("30",null))).addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null)).addURLParameter(context.getFormattedValue("SearchType",null),context.getFormattedValue("parametric",null))),null)%>" class="switch_link"><% {out.write(localizeISText("OrganizationSearch_32.SwitchToAdvancedSearch.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
</td>
</tr>
<tr>
<td nowrap="nowrap" class="label"><label class="label label_light" for="SearchTerm"><% {out.write(localizeISText("OrganizationSearch_32.NameOrID.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td class="infobox_item">
<input type="hidden" name="SearchType" value="simple"/>
<input type="hidden" name="OrganizationType" value="30"/>
<input name="ChannelID" type="hidden" value="<%=context.getFormattedValue(getObject("CurrentChannel:UUID"),null)%>"/>
<input type="text" name="SearchTerm" id="SearchTerm" size="35" maxlength="250" class="inputfield_en" value="<% {String value = null;try{value=context.getFormattedValue(getObject("SearchTerm"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {71}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
</td>
<td width="100%">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button">
<input type="submit" name="simplesearch" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("OrganizationSearch_32.Find.button",null)),null)%>" class="button"/>
</td>
</tr>
</table>
</td>
</tr>
</table><% } %> 
<% printFooter(out); %>