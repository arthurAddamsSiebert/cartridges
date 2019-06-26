<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %>
<table border="0" width="100%" cellpadding="0" cellspacing="0">
	<tr>
		<% while (loop("linktypes","LinkType",null)) { %>
			
			<% {Object temp_obj = (getObject("linkboctnr:LinkBOsCnt(categorygroup,direction,LinkType)")); getPipelineDictionary().put("CatLinkCnt", temp_obj);} %>
			<% {Object temp_obj = (getObject("linkboctnr:LinkBOsCnt(productgroup,direction,LinkType)")); getPipelineDictionary().put("ProdLinkCnt", temp_obj);} %>

			<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("LinkType:Applicable(categorygroup)")).booleanValue() || ((Boolean) getObject("LinkType:Applicable(productgroup)")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",11,e);}if (_boolean_result) { %>
				

				
				<td class="input_checkbox">
					
					<% {Object temp_obj = (context.getFormattedValue("select_",null) + context.getFormattedValue(getObject("LinkType:ID"),null) + context.getFormattedValue("_",null) + context.getFormattedValue(getObject("direction"),null)); getPipelineDictionary().put("CheckBoxID", temp_obj);} %>
					
					
					<%getPipelineDictionary().put("CheckBoxUserSelected", getPipelineDictionary().get("selected_" + getPipelineDictionary().get("CheckBoxID"))); %>
					<input class="product_check"
						type="checkbox"
						id="<% {String value = null;try{value=context.getFormattedValue(getObject("CheckBoxID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {24}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" 
						name="<% {String value = null;try{value=context.getFormattedValue(getObject("CheckBoxID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {25}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
							<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("CheckBoxUserSelected")))).booleanValue() || ((Boolean) (((((Boolean) ((((Boolean) (disableErrorMessages().isDefined(getObject("user_selection")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() && ((Boolean) ((( ((Number) ((new Double( ((Number) getObject("CatLinkCnt")).doubleValue() +((Number) getObject("ProdLinkCnt")).doubleValue())))).doubleValue() >((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",26,e);}if (_boolean_result) { %>
								checked="checked"
							<% } %> 
					/>
				</td>
				

				
				<td class="label_checkbox_text">
					
					<label class="label label_checkbox_text group-of-types"
					for="select_<% {String value = null;try{value=context.getFormattedValue(getObject("LinkType:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {37}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>_outgoing_category_links">
						
						<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("direction:Incoming"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",39,e);}if (_boolean_result) { %><% {out.write(localizeISText("CategoryLinkList.Is.label","",null,null,null,null,null,null,null,null,null,null,null));} %><% } %>
							<% {out.write(localizeISText(context.getFormattedValue(context.getFormattedValue("typeCodeDefinition.CatalogCategoryLink.",null) + context.getFormattedValue(getObject("LinkType:ID"),null) + context.getFormattedValue(".displayName",null),null),"",null,null,null,null,null,null,null,null,null,null,null));} %>
						<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("direction:Incoming"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",41,e);}if (_boolean_result) { %><% {out.write(localizeISText("CategoryLinkList.Of.label","",null,null,null,null,null,null,null,null,null,null,null));} %><% } %>		
					</label>
				</td>
				

				
				<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("LinkType:Applicable(productgroup)"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",47,e);}if (_boolean_result) { %>
					<td class="label_checkbox_text"><label
						class="label label_checkbox_text label_light"
						for="select_<% {String value = null;try{value=context.getFormattedValue(getObject("LinkType:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {51}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>_outgoing_category_links">
							<% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("ProdLinkCnt")).doubleValue() >((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",52,e);}if (_boolean_result) { %>
								<strong><% {String value = null;try{value=context.getFormattedValue(getObject("ProdLinkCnt"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {53}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></strong>&nbsp;
														<% } else { %>
															0&nbsp;
														<% } %>

							<% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("ProdLinkCnt")).doubleValue() !=((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",58,e);}if (_boolean_result) { %>
								<% {out.write(localizeISText("sld_enterprise_app.Products","",null,null,null,null,null,null,null,null,null,null,null));} %>
								<% } else { %>
								<% {out.write(localizeISText("sld_enterprise_app.Product","",null,null,null,null,null,null,null,null,null,null,null));} %>
							<% } %>
					</label></td>
					<% } else { %>
					<td>&nbsp;</td>
				<% } %>
				

				
				<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("LinkType:Applicable(categorygroup)"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",70,e);}if (_boolean_result) { %>
					<td class="label_checkbox_text"><label
						class="label label_checkbox_text label_light"
						for="select_<% {String value = null;try{value=context.getFormattedValue(getObject("LinkType:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {74}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>_outgoing_category_links">
							<% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("CatLinkCnt")).doubleValue() >((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",75,e);}if (_boolean_result) { %>
								<strong><% {String value = null;try{value=context.getFormattedValue(getObject("CatLinkCnt"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {76}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></strong>&nbsp;
														<% } else { %>
															0&nbsp;
														<% } %>

							<% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("CatLinkCnt")).doubleValue() !=((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",81,e);}if (_boolean_result) { %>
								<% {out.write(localizeISText("CategoryLinkList.Categories","",null,null,null,null,null,null,null,null,null,null,null));} %>
								<% } else { %>
								<% {out.write(localizeISText("CategoryLinkList.Category","",null,null,null,null,null,null,null,null,null,null,null));} %>
							<% } %>
					</label></td>
					<% } else { %>
					<td>&nbsp;</td>
				<% } %>
				

				<% } else { %>
				
				<td class="label_checkbox_text" colspan="4">
					<label class="label label_checkbox_text group-of-types" for="empty">&nbsp;</label>
				</td>
			<% } %>
				<td width="80%">&nbsp;</td>
			<% _boolean_result=false;try {_boolean_result=((Boolean)((hasNext("LinkType") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",99,e);}if (_boolean_result) { %>
				</tr>
				<tr>
			<% } %>
		<% } %>
	</tr>
</table><% printFooter(out); %>