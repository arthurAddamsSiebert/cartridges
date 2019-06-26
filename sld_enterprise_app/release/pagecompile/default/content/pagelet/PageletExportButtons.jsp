<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% processOpenTag(response, pageContext, "createmap", new TagParameter[] {
new TagParameter("key1","PageletType"),
new TagParameter("key0","ContentRepositoryUUID"),
new TagParameter("value1",getObject("targetpageletviewpipelineparams:PageletType")),
new TagParameter("value0",getObject("targetpageletviewpipelineparams:ContentRepositoryUUID")),
new TagParameter("mapname","Parameters")}, 2); %><% {try{executePipeline("ViewPageletExport-GetFormValues",((java.util.Map)(getObject("Parameters"))),"FormValues");}catch(Exception e){Logger.error(this,"ISPIPELINE failed. Line: 6.",e);}} %><table class="w e s" width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td align="right">
<input type="hidden" name="ObjectsID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("PageletSearchResultDict:Pagelets:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {10}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" />
<table border="0" cellspacing="4" cellpadding="0">
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("PageletSearchResultDict:Pagelets")))).booleanValue() && ((Boolean) (hasLoopElements("PageletSearchResultDict:Pagelets") ? Boolean.TRUE : Boolean.FALSE)).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",13,e);}if (_boolean_result) { %><td class="button">
<input type="submit" name="ExportSelectedPagelets" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PageletExportButtons.ExportSelected.button",null)),null)%>" class="button"/>
</td><% } %><td class="button"><input type="submit" name="ExportAllPagelets" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PageletExportButtons.ExportAll.button",null)),null)%>" class="button"/></td>
<td class="button"><input type="submit" name="CancelExport" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PageletExportButtons.Cancel.button",null)),null)%>" class="button"/></td>
</tr>
</table>
</td>
</tr>
</table><% printFooter(out); %>