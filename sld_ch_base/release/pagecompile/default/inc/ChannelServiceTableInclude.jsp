<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><!-- TEMPLATENAME: ChannelServiceTableInclude.isml -->
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %>

<table border="0" cellpadding="0" cellspacing="0" width="100%">
	<tr>
		<td class="table_header aldi center" nowrap="nowrap" width="80">
			<div id="A">
				<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
					<tr>
						<td nowrap="nowrap">
							<a href="javascript:selectAll('ServicesForm', 'SelectedObjectUUID','A','B');" class="tableheader"><% {out.write(localizeISText("ChannelServiceTableInclude.SelectAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
						</td>
					</tr>
				</table>
			</div>
			<div id="B" style="display:none">
				<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
					<tr>
						<td nowrap="nowrap">
							<a href="javascript:selectAll('ServicesForm', 'SelectedObjectUUID','A','B');" class="tableheader"><% {out.write(localizeISText("ChannelServiceTableInclude.ClearAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
						</td>
					</tr>
				</table>
			</div>
		</td>
		<th class="table_header n e s left" nowrap="nowrap"><% {out.write(localizeISText("ChannelServiceTableInclude.ID.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></th>
		<th class="table_header n e s left" nowrap="nowrap"><% {out.write(localizeISText("ChannelServiceTableInclude.Name.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></th>
		<th class="table_header n e s left" nowrap="nowrap"><% {out.write(localizeISText("ChannelServiceTableInclude.Description.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></th>
		<th class="table_header n e s left" nowrap="nowrap"><% {out.write(localizeISText("ChannelServiceTableInclude.Configuration.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></th>
		<th class="table_header n e s left" nowrap="nowrap"><% {out.write(localizeISText("ChannelServiceTableInclude.Sorting.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></th>
	</tr>
	<% {Object temp_obj = ("True"); getPipelineDictionary().put("DisplayRowSpan", temp_obj);} %>
	<% {Object temp_obj = (new Double(0)); getPipelineDictionary().put("ServicesCount", temp_obj);} %>
	<% while (loop("Services","Service",null)) { %>
		<% {Object temp_obj = ((new Double( ((Number) getObject("ServicesCount")).doubleValue() +((Number) new Double(1)).doubleValue()))); getPipelineDictionary().put("ServicesCount", temp_obj);} %>
	<% } %>		
	
		<% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("ServicesCount")).doubleValue() ==((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",38,e);}if (_boolean_result) { %>
			<% {Object temp_obj = ("False"); getPipelineDictionary().put("DisplayMoveArrows", temp_obj);} %>
		<% } else { %>
			<% {Object temp_obj = ("True"); getPipelineDictionary().put("DisplayMoveArrows", temp_obj);} %>
		<% } %>			
	
	<% while (loop("Services","Service",null)) { %>
		<% {Object temp_obj = (getObject("Service:ServiceID")); getPipelineDictionary().put("ServiceID", temp_obj);} %>
		<tr>
			<td class="table_detail w e s center" nowrap="nowrap">
				<input type="hidden" name="ObjectUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ServiceID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {48}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
				<input id="<% {String value = null;try{value=context.getFormattedValue(context.getFormattedValue("ServicesForm",null) + context.getFormattedValue(getObject("ServiceID"),null) + context.getFormattedValue("_Enabled",null),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {49}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" type="checkbox" name="SelectedObjectUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ServiceID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {49}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
					<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ServicesActivatedAtChannel"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",50,e);}if (_boolean_result) { %>
						<% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("ServicesActivatedAtChannel:get(Service:ServiceID)"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",51,e);}if (_boolean_result) { %>checked="checked"<% } %>
					<% } %>
				/>
		  		</td>
			<td class="table_detail e s left" nowrap="nowrap"><% {String value = null;try{value=context.getFormattedValue(getObject("Service:ServiceID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {55}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
			<td class="table_detail e s left" nowrap="nowrap">
				<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Service:DisplayNameTemplate"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",57,e);}if (_boolean_result) { %>
					<% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,context.getFormattedValue(getObject("Service:DisplayNameTemplate"),null), null, "58");} %>
			 	<% } else { %>&nbsp;
				<% } %>
			</td>
			<td class="table_detail e s left" width="90%">
				<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Service:BODescriptionTemplate"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",63,e);}if (_boolean_result) { %>
			 	<% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,context.getFormattedValue(getObject("Service:BODescriptionTemplate"),null), null, "64");} %>
			 	<% } else { %>&nbsp;
				<% } %>
			</td>
			<td class="table_detail e s left">
				<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Service:ConfigurationLinkChannel"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",69,e);}if (_boolean_result) { %>
					<% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,context.getFormattedValue(getObject("Service:ConfigurationLinkChannel"),null), null, "70");} %>
			 	<% } else { %>&nbsp;
				<% } %>								
			</td>  
			<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("DisplayRowSpan"),null).equals(context.getFormattedValue("True",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",74,e);}if (_boolean_result) { %>
				<td class="table_detail e s top center sort" nowrap="nowrap" rowspan="<% {String value = null;try{value=context.getFormattedValue(getObject("ServicesCount"),"#",null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {75}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>">
					<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("DisplayMoveArrows"),null).equals(context.getFormattedValue("True",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",76,e);}if (_boolean_result) { %>
			 			<table border="0" cellpadding="0" cellspacing="0" align="center">
							<tr>
								<td><input type="hidden" name="ServiceID" value="" /><input type="image" name="moveUp" src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/sort_up.gif" alt=""/></td>
							</tr>
							<tr>
								<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="4" alt="" border="0"/></td>
							</tr>
							<tr>
								<td><input type="hidden" name="ServiceID" value="" /><input type="image" name="moveDown" src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/sort_down.gif" alt=""/></td>
							</tr>
						</table>
			 		<% } else { %>&nbsp;
					<% } %>
				</td>
				<% {Object temp_obj = ("False"); getPipelineDictionary().put("DisplayRowSpan", temp_obj);} %>
			<% } %>					   
		</tr>
	<% } %>
</table>
		
<table border="0" cellspacing="0" cellpadding="0" width="100%" class="w e s">
	<tr>
		<td align="right" width="100%">
			<table border="0" cellspacing="4" cellpadding="0">
				<tr>
					<td class="button"><input class="button" type="submit" name="Update" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ChannelServiceTableInclude.Apply.button",null)),null)%>"/></td>
					<td class="button"><input class="button" type="reset" name="CancelChanges" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ChannelServiceTableInclude.Reset.button",null)),null)%>"/></td>
				</tr>
			</table>
		</td>
	</tr>
</table>
<!-- END OF: ChannelServiceTableInclude.isml --><% printFooter(out); %>