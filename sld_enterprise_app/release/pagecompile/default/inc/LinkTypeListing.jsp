<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %>

<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("TypeCodesToEdit"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",7,e);}if (_boolean_result) { %>
	<tr>
		<td>
			<table class="w e s" width="100%" border="0" cellspacing="0" cellpadding="0">
				<tr>
					<td class="fielditem2" width="10%" nowrap="nowrap"><% {out.write(localizeISText("LinkTypeListing.LinkType.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
					<td>
						<table width="100%" border="0" cellspacing="0" cellpadding="0">
							<% {Object temp_obj = ("True"); getPipelineDictionary().put("FirstLine", temp_obj);} %>
							<% while (loop("TypeCodesToEdit","TypeCode",null)) { %>
								<tr>
									
		
									<% {Object temp_obj = ("False"); getPipelineDictionary().put("ItemChecked", temp_obj);} %>
									<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("SelectedLinkType")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SelectedLinkType"),null).equals(context.getFormattedValue(getObject("TypeCode"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) (((((Boolean) (((((Boolean) ((((Boolean) (disableErrorMessages().isDefined(getObject("SelectedLinkType")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("SelectedLinkType"),null).equals(context.getFormattedValue("0",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("FirstLine"),null).equals(context.getFormattedValue("True",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",21,e);}if (_boolean_result) { %>
										<% {Object temp_obj = ("True"); getPipelineDictionary().put("ItemChecked", temp_obj);} %>
									<% } %>
									
									
									<td>
										<input type="radio" name="SelectedLinkType" value="<% {String value = null;try{value=context.getFormattedValue(getObject("TypeCode"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {27}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"		<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ItemChecked"),null).equals(context.getFormattedValue("True",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",27,e);}if (_boolean_result) { %> checked="checked" <% } %>	/>
									</td>
									<td class="fielditem" nowrap="nowrap"><% {out.write(localizeISText(context.getFormattedValue(context.getFormattedValue("typeCodeDefinition.",null) + context.getFormattedValue(getObject("TypeCodeGroup"),null) + context.getFormattedValue(".",null) + context.getFormattedValue(getObject("TypeCode"),null) + context.getFormattedValue(".displayName",null),null),"",null,null,null,null,null,null,null,null,null,null,null));} %></td>
									<td class="catalog_description" width="100%"><% {out.write(localizeISText(context.getFormattedValue(context.getFormattedValue("typeCodeDefinition.",null) + context.getFormattedValue(getObject("TypeCodeGroup"),null) + context.getFormattedValue(".",null) + context.getFormattedValue(getObject("TypeCode"),null) + context.getFormattedValue(".description",null),null),"",null,null,null,null,null,null,null,null,null,null,null));} %></td>
								</tr>
								<% {Object temp_obj = ("False"); getPipelineDictionary().put("FirstLine", temp_obj);} %>
							<% } %>						
	
						</table>
					</td>
				</tr>
			</table>
		</td>
	</tr>
<% } %>
		<% printFooter(out); %>