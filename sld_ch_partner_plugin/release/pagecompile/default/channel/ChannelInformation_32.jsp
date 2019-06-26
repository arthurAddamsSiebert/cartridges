<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelInformation_32-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ApplicationState:ChannelID"),null))))),
new TagParameter("start","true"),
new TagParameter("text",localizeText(context.getFormattedValue("ChannelInformation_32.PartnerBackOffice.text",null)))}, 3); %><table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td class="table_title aldi"><% {String value = null;try{value=context.getFormattedValue(getObject("Repository:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {7}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
</tr> 
</table>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td class="w e s">
<table border="0" cellpadding="0" cellspacing="0">
<tr><td colspan="2"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="4" border="0" alt=""/></td></tr>
<tr>
<td nowrap="nowrap" class="label_text"><label class="label label_text"><% {out.write(localizeISText("ChannelInformation_32.Type.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:&nbsp;</label></td>
<td class="table_detail"><% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("RepositoryType:DisplayName"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",18,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("RepositoryType:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {18}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %><% {String value = null;try{value=context.getFormattedValue(getObject("RepositoryType:ChannelTypeCode"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {18}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %></td>
</tr>
<tr>
<td nowrap="nowrap" class="label_text"><label class="label label_text"><% {out.write(localizeISText("ChannelInformation_32.Created.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:&nbsp;</label></td>
<td class="table_detail"><% {String value = null;try{value=context.getFormattedValue(getObject("Repository:LastModified"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {23}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
</tr>
<tr>
<td nowrap="nowrap" class="label_text"><label class="label label_text"><% {out.write(localizeISText("ChannelInformation_32.Login.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:&nbsp;</label></td>
<td class="table_detail">
<a href="<%=context.getFormattedValue(url(false,context.getFormattedValue("https",null), context.getFormattedValue("",null), (new URLPipelineAction(context.getFormattedValue("Default-Start",null),context.getFormattedValue("-",null),context.getFormattedValue(getObject("Repository:RepositoryDomain:Site:DomainName"),null))), (new URLParameterSet().addURLParameter(context.getFormattedValue("RedirectedFromSite",null),context.getFormattedValue(getObject("CurrentDomain:DomainName"),null)))),null)%>" class="form_link" target="_blank"><% {out.write(localizeISText("ChannelInformation_32.LoginAsPartner.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
</td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Repository:OwningDomain:UUID"),null).equals(context.getFormattedValue(getObject("CurrentOrganization:OrganizationDomain:UUID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",31,e);}if (_boolean_result) { %><tr>
<td class="fielditem2" nowrap="nowrap"><% {out.write(localizeISText("ChannelInformation_32.Administrators.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:&nbsp;</td>
<td class="table_detail"><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Users") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",35,e);}if (_boolean_result) { %><% {Object temp_obj = ("0"); getPipelineDictionary().put("temp", temp_obj);} %><% while (loop("Users","User",null)) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("temp"),null).equals(context.getFormattedValue("1",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",38,e);}if (_boolean_result) { %>, <% } else { %><% {Object temp_obj = ("1"); getPipelineDictionary().put("temp", temp_obj);} %><% } %><% {String value = null;try{value=context.getFormattedValue(getObject("User:DataSheet:FirstName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {39}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;<% {String value = null;try{value=context.getFormattedValue(getObject("User:DataSheet:LastName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {39}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %><% } %></td>
</tr><% } %><tr>
<td class="fielditem2" nowrap="nowrap"><% {out.write(localizeISText("ChannelInformation_32.Partners.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:&nbsp;</td>
<td class="table_detail"><% {String value = null;try{value=context.getFormattedValue(getObject("Organizations:ElementCount"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {47}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
</tr>
<tr>
<td class="fielditem2" nowrap="nowrap"><% {out.write(localizeISText("ChannelInformation_32.Description.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:&nbsp;</td>
<td class="table_detail"><% {String value = null;try{value=context.getFormattedValue(getObject("Repository:ShortDescription"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {52}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
</tr>
<tr><td colspan="2"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="4" border="0" alt=""/></td></tr>
</table>
</td>
</tr>
</table><% printFooter(out); %>