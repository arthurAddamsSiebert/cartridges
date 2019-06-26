<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %>
<tr>
	<td>
		<table border="0" cellpadding="4" cellspacing="0" width="100%" class="infobox n e w">
			<tr>
				<td class="infobox_title"><% {out.write(localizeISText("sld_enterprise_app.Taxation.infobox_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
			</tr>
			<tr>
				<td>
					<table border="0" cellspacing="0" cellpadding="0" >
						<tr>
							<td class="label_select" nowrap="nowrap"><label class="label label_select label_light" for="TaxClasses_Code"><% {out.write(localizeISText("sld_enterprise_app.Class.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
							<td>								
								<select name="TaxClasses_Code" id="TaxClasses_Code" class="select inputfield_en" <% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("PermissionMap:SLD_MANAGE_PRICES")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",14,e);}if (_boolean_result) { %>disabled="disabled"<% } %>>
									<% while (loop("TaxClasses",null,null)) { %>
										<option value="<% {String value = null;try{value=context.getFormattedValue(getObject("TaxClasses:TaxCode"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {16}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Product:TaxClassID"),null).equals(context.getFormattedValue(getObject("TaxClasses:TaxCode"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",16,e);}if (_boolean_result) { %>selected="selected"<% } %>>
											<% {String value = null;try{value=context.getFormattedValue(getObject("TaxClasses:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {17}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>
										</option>
									<% } %>
									<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Product:TaxClassID"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",20,e);}if (_boolean_result) { %>
										<option value="" selected="selected"><% {out.write(localizeISText("sld_enterprise_app.NotDefined.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
									<% } %>
								</select>
							</td>
							<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("showpricetype")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("showpricetype"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",25,e);}if (_boolean_result) { %>
								<td nowrap="nowrap" class="label_text"><label class="label label_text label_light label_horizontal_align"><% {out.write(localizeISText("sld_enterprise_app.PriceType.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
								<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PriceType"),null).equals(context.getFormattedValue("net",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",27,e);}if (_boolean_result) { %>
									<td class="table_detail"><% {out.write(localizeISText("sld_enterprise_app.Net.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
								<% } else { %>
									<td class="table_detail"><% {out.write(localizeISText("sld_enterprise_app.Gross.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
								<% } %>
							<% } %>
						</tr>
					</table>
				</td>
			</tr>
		</table>
	</td>
</tr><% printFooter(out); %>