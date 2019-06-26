<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>

<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %>
<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("linkTypes"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",9,e);}if (_boolean_result) { %>

	<table border="0" cellpadding="4" cellspacing="0" width="100%" class="infobox w e s">
		<tr>
			<td colspan="3" class="infobox_title" nowrap="nowrap">
				<% {out.write(localizeISText("FilterLinkList.FilterLinkList.infobox_title",null,null,null,null,null,null,null,null,null,null,null,null));} %>
			</td>
		</tr>
		<tr>
			<td class="infobox_item" nowrap="nowrap"><% {out.write(localizeISText("FilterLinkList.LinkType.infobox_item",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>

			<td>
				<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("selectedLinkTypeFieldName")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",21,e);}if (_boolean_result) { %>
					<% {Object temp_obj = ("SelectedLinkType"); getPipelineDictionary().put("selectedLinkTypeFieldName", temp_obj);} %>
				<% } %>
				<select name="<% {String value = null;try{value=context.getFormattedValue(getObject("selectedLinkTypeFieldName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {24}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="dropdown inputfield_en">
					<option value="0" <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("selectedLinkType")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("selectedLinkType"),null).equals(context.getFormattedValue("0",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",25,e);}if (_boolean_result) { %> selected="selected"<% } %>><% {out.write(localizeISText("ViewContextSearch.All.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
					<% while (loop("linkTypes","TypeCode",null)) { %>
						<option value="<% {String value = null;try{value=context.getFormattedValue(getObject("TypeCode"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {27}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("selectedLinkType")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("selectedLinkType"),null).equals(context.getFormattedValue(getObject("TypeCode"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",27,e);}if (_boolean_result) { %> selected="selected"<% } %>><% {out.write(localizeISText(context.getFormattedValue(context.getFormattedValue("typeCodeDefinition.",null) + context.getFormattedValue(getObject("typeCodeGroup"),null) + context.getFormattedValue(".",null) + context.getFormattedValue(getObject("TypeCode"),null) + context.getFormattedValue(".displayName",null),null),"",null,null,null,null,null,null,null,null,null,null,null));} %></option>
					<% } %>						
				</select>
			</td>

			<td width="100%">
				<table border="0" cellspacing="2" cellpadding="0">
					<tr>
						<td class="button">
							<input type="submit" name="filterLinkTypes" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("NewProductSet.Apply.input1",null)),null)%>" class="button"/>
						</td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
<% } %>
<% printFooter(out); %>