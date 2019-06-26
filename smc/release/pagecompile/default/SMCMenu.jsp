<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><table border="0" cellspacing="0" cellpadding="0" width="100%">
<tr>
<td>
<table cellpadding="0" cellspacing="0" border="0" width="100%">
<tr>
<td class="table_title n e w"><% {out.write(localizeISText("SMCMenu.ProductOverview.table_title","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<table border="0" cellspacing="0" cellpadding="0" width="100%" class="aldi">
<tr><td colspan="2"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/spacer.gif" width="1" height="5" border="0" alt=""/></td></tr>
<tr>
<td class="table_detail3" nowrap="nowrap"><% {out.write(localizeISText("SMCMenu.ProductName.table_detail3","",null,null,null,null,null,null,null,null,null,null,null));} %>:&nbsp;</td>
<td class="table_detail w100"><%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("ProductName"),null)),null)%></td>
</tr>
<tr>
<td class="table_detail3" nowrap="nowrap"><% {out.write(localizeISText("SMCMenu.ProductID.table_detail3","",null,null,null,null,null,null,null,null,null,null,null));} %>:&nbsp;</td>
<td class="table_detail w100"><%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("ProductId"),null)),null)%></td>
</tr>
<tr>
<td class="table_detail3" nowrap="nowrap"><% {out.write(localizeISText("SMCMenu.ProductVersion.table_detail3","",null,null,null,null,null,null,null,null,null,null,null));} %>:&nbsp;</td>
<td class="table_detail w100"><%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("ProductVersion"),null)),null)%></td>
</tr>
<tr>
<td colspan="2"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="5" alt="" border="0"/></td>
</tr>
</table>
<div><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="10" alt="" border="0"/></div>
<table cellpadding="0" cellspacing="0" border="0" width="100%" class="aldi">
<tr>
<td colspan="4" class="table_title s"><% {out.write(localizeISText("SMCMenu.DetailedVersionInformation.table_title","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td class="table_header e s" nowrap="nowrap"><% {out.write(localizeISText("smc.Instance.table_header","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s" nowrap="nowrap"><% {out.write(localizeISText("SMCMenu.ProductID.table_header","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s" nowrap="nowrap"><% {out.write(localizeISText("SMCMenu.Version.table_header","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header s" nowrap="nowrap"><% {out.write(localizeISText("SMCMenu.InstallationDate.table_header","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td class="table_detail e s" nowrap="nowrap"><% {out.write(localizeISText("SMCMenu.SharedFileSystem.table_detail","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_detail e s" nowrap="nowrap"><% {String value = null;try{value=context.getFormattedValue(getObject("SFSVersionInfo:ProductId"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {42}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
<td class="table_detail e s" nowrap="nowrap"><% {String value = null;try{value=context.getFormattedValue(getObject("SFSVersionInfo:Version"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {43}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
<td class="table_detail s" nowrap="nowrap"><% {String value = null;try{value=context.getFormattedValue(getObject("SFSVersionInfo:InstallationDate"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {44}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
</tr><% while (loop("AdminServerInfos","AdminServerInfo",null)) { %><tr>
<td class="table_detail e" nowrap="nowrap"><% {String value = null;try{value=context.getFormattedValue(getObject("AdminServerInfo:InstallationID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {48}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>@<% {String value = null;try{value=context.getFormattedValue(getObject("AdminServerInfo:Host"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {48}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
<td class="table_detail e" nowrap="nowrap"><% {String value = null;try{value=context.getFormattedValue(getObject("AdminServerInfo:ExtendedVersionInformation:ProductId"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {49}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;&nbsp;</td>
<td class="table_detail e" nowrap="nowrap"><% {String value = null;try{value=context.getFormattedValue(getObject("AdminServerInfo:ExtendedVersionInformation:Version"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {50}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
<td class="table_detail" nowrap="nowrap"><% {String value = null;try{value=context.getFormattedValue(getObject("AdminServerInfo:ExtendedVersionInformation:InstallationDate"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {51}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
</tr><% } %></table>
</td>
</tr>
</table><% printFooter(out); %>