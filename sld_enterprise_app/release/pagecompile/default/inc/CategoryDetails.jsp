<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %>



<table cellpadding="0" cellspacing="0" border="0" width="100%">
	<tr>
		<td width="100%" class="table_title w e s n">
			<% {String value = null;try{value=context.getFormattedValue(getObject("Category:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {11}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;
		</td>
	</tr>
	<tr>
		<td class="table_title_description w e s"><% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("Category:Description"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",15,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("Category:Description"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {15}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %>&nbsp;<% } %></td>
	</tr>
	<tr>
		<td valign="top" class="e w" width="100%">
			<table width="100%" border="0" cellspacing="0" cellpadding="0">
				
				<tr>
					<td class="fielditem e s" nowrap="nowrap">
						<% {out.write(localizeISText("sld_enterprise_app.ID.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:
					</td>
					<td class="table_detail s w100" nowrap="nowrap">
						<% {String value = null;try{value=context.getFormattedValue(getObject("Category:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {26}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>
					</td>
				</tr>
				
				<tr>
					<td class="fielditem e s" nowrap="nowrap">
						<% {out.write(localizeISText("CategoryAssignmentViewCatalogDetails.Status.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %>:
					</td>
					<td class="table_detail s" nowrap="nowrap">
						<b><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Category:isOnline"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",35,e);}if (_boolean_result) { %>
							<% {out.write(localizeISText("ProductExportSelectProductsColumns.Online",null,null,null,null,null,null,null,null,null,null,null,null));} %>
						<% } else { %>
							<% {out.write(localizeISText("ImageSetSelectClassificationCatalog.Offline.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %>
						<% } %></b>
					</td>
				</tr>
				<tr>
					<td class="fielditem e s" nowrap="nowrap">
						<% {out.write(localizeISText("sld_enterprise_app.ParentCategory.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %>:
					</td>
					<td class="table_detail s" nowrap="nowrap">
						<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Category:Parent"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",47,e);}if (_boolean_result) { %>
							<% {String value = null;try{value=context.getFormattedValue(getObject("Category:Parent:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {48}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>
						<% } else { %>
							<% {out.write(localizeISText("CategoryAssignmentViewCategoryDetails.CategoryHasNoParentCategory.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %>
						<% } %>
					</td>
				</tr>
			</table>
		</td>
	</tr>
</table>
<% printFooter(out); %>