<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><table border="0" cellspacing="0" cellpadding="4" width="100%"
class="error_box w e s">
<tr>
<td class="error_icon top e">
<img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0" />
</td>
<td class="error top" width="100%"><% {out.write(localizeISText("OverwriteExportFileConfirmation.TheFile0AlreadyExists.error",null,null,encodeString(context.getFormattedValue(getObject("ExportFileName"),null)),null,null,null,null,null,null,null,null,null));} %></td>
<td>
<table border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="button">
<input type="submit" name="Overwrite" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("SelectCategory.OK.button",null)),null)%>" class="button" />
</td>
<td>
<img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="4" height="0" alt="" border="0" />
</td>
<td class="button">
<input type="submit" name="CancelOverwrite" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PageletEntryPointSetParent.Cancel.button",null)),null)%>" class="button" />
</td>
</tr>
</table>
</td>
</tr>
</table><% printFooter(out); %>