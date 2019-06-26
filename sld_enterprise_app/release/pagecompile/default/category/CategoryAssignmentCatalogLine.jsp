<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %>


<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("IsFirstLine"),null).equals(context.getFormattedValue("True",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",9,e);}if (_boolean_result) { %>
	<tr>
		<td class="table_header w s" width="75">&nbsp;</td>
		<td class="table_header w s" nowrap="nowrap"><% {out.write(localizeISText("CategoryAssignmentCatalogLine.Name.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
		<td class="table_header w s" nowrap="nowrap"><% {out.write(localizeISText("CategoryAssignmentCatalogLine.Type.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
		<td class="table_header w s" nowrap="nowrap"><% {out.write(localizeISText("CategoryAssignmentCatalogLine.Status.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
		<td class="table_header w e s" nowrap="nowrap"><% {out.write(localizeISText("CategoryAssignmentCatalogLine.Description.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
	</tr>
	<% {Object temp_obj = ("False"); getPipelineDictionary().put("IsFirstLine", temp_obj);} %>
<% } %>


<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ShowSubHeader"),null).equals(context.getFormattedValue("True",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",21,e);}if (_boolean_result) { %>
	<tr>
		<td class="table_title2 w e s" colspan="5"><% {String value = null;try{value=context.getFormattedValue(getObject("SubHeaderDisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {23}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
	</tr>
	<% {Object temp_obj = ("False"); getPipelineDictionary().put("ShowSubHeader", temp_obj);} %>
<% } %>

<tr>
	<td class="w s center">
		<input type="radio" name="CatalogUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("catalog:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {30}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("catalog:UUID"),null).equals(context.getFormattedValue(getObject("CatalogUUID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",30,e);}if (_boolean_result) { %>checked="checked"<% } %> />
	</td>	
	<td class="table_detail w s top" nowrap="nowrap">
		<a href="<% {String value = null;try{value=context.getFormattedValue(getObject("CatalogDetailLink"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {33}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="table_detail_link"><% {String value = null;try{value=context.getFormattedValue(getObject("catalog:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {33}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></a>
	</td>
	<td class="table_detail w s top" nowrap="nowrap">
		<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("catalog:isProxy"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",36,e);}if (_boolean_result) { %>
			<% {out.write(localizeISText("CategoryAssignmentCatalogLine.Shared.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %>
		<% } else { %>
			<% {out.write(localizeISText("CategoryAssignmentCatalogLine.Local.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %>
		<% } %>
	</td>
	<td class="table_detail w s top">
		<% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("catalog:Status")).doubleValue() ==((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",43,e);}if (_boolean_result) { %>
			<% {out.write(localizeISText("CategoryAssignmentCatalogLine.Online.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %>
		<% } else { %>
			<% {out.write(localizeISText("CategoryAssignmentCatalogLine.Offline.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %>
		<% } %>
	</td>
	<td class="table_detail w e s top">
		<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("catalog:shortDescription")))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("catalog:shortDescription"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",50,e);}if (_boolean_result) { %>
			<% {String value = null;try{value=context.getFormattedValue(getObject("catalog:shortDescription"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {51}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>
		<% } else { %>
			<% {out.write(localizeISText("CategoryAssignmentCatalogLine.NoDescriptionAvailable.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %>
		<% } %>
	</td>
</tr>
<% printFooter(out); %>