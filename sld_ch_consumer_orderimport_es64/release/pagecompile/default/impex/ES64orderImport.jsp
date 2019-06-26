<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% {Object temp_obj = (getObject("ApplicationBO:Configuration:Boolean(\"intershop.cartridges.sld_ch_consumer_orderimport_es64.isOrderImpexSectionEnabled\")")); getPipelineDictionary().put("isOrderImpexSectionEnabled", temp_obj);} %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_IMPEX_ORDERS")))).booleanValue() && ((Boolean) getObject("isOrderImpexSectionEnabled")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",2,e);}if (_boolean_result) { %>
	<table class="w100" border="0" cellspacing="0" cellpadding="0">
		<tr>
			<td class="table_title w100 w e n s" nowrap="nowrap"><% {out.write(localizeISText("ES64orderImport.OrderImport.table_title","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
		</tr>
	</table>
	<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
		<tr>
			<td width="100%" class="table_title_description">
				<% {out.write(localizeISText("ES64orderImport.UploadAndImport.table_title_description",null,null,url(true,(new URLPipelineAction(context.getFormattedValue("ViewOrderImportFiles_52-BrowseDirectory",null)))),url(true,(new URLPipelineAction(context.getFormattedValue("ViewOrderImport_52-SelectFile",null)))),url(true,(new URLPipelineAction(context.getFormattedValue("ViewOrderImpex_52-Status",null)))),"table_detail_link",null,null,null,null,null,null));} %>
			</td>
		</tr>
	</table>
<% } %><% printFooter(out); %>