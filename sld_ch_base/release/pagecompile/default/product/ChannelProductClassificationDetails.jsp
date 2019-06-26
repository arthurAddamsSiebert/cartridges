<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
	<tr>
		<td valign="top" class="w e" colspan="5"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="2" alt="" border="0"/></td>
	</tr>
	<tr>
		<td class="table_header aldi" nowrap="nowrap"><% {out.write(localizeISText("ChannelProductClassificationDetails.ClassificationAttributeName.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %>
			<input type="hidden" name="SelectedCategoryID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ClassificationCategory:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {9}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
			<input type="hidden" name="ProductID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Product:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {10}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
			<input type="hidden" name="CatalogUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Catalog:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {11}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
			<input type="hidden" name="LocaleId" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Locale:LocaleID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {12}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
			<input type="hidden" name="SharedAssignment" value="<% {String value = null;try{value=context.getFormattedValue(getObject("SharedAssignment"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {13}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
		</td>
		<td class="table_header n e s" nowrap="nowrap"><% {out.write(localizeISText("ChannelProductClassificationDetails.AttributeGroup.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
		<td class="table_header n e s" nowrap="nowrap"><% {out.write(localizeISText("ChannelProductClassificationDetails.DataType.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
		<td class="table_header n e s" nowrap="nowrap"><% {out.write(localizeISText("ChannelProductClassificationDetails.Value.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
		<td class="table_header center n e s" nowrap="nowrap"><% {out.write(localizeISText("ChannelProductClassificationDetails.Localizable.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
	</tr>
	<% while (loop("ProductType:CustomProductAttributes","av",null)) { %>
		<tr>
			<td class="table_detail2 w e s"><% {String value = null;try{value=context.getFormattedValue(getObject("av:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {22}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>
				<input type="hidden" name="AttributeKey" value="<% {String value = null;try{value=context.getFormattedValue(getObject("av:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {23}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
				<input type="hidden" name="<% {String value = null;try{value=context.getFormattedValue(getObject("av:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {24}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>_AttributeLocalized" value="<% {String value = null;try{value=context.getFormattedValue(getObject("av:isLocalized"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {24}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
				<input type="hidden" name="<% {String value = null;try{value=context.getFormattedValue(getObject("av:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {25}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>_AttributeName" value="<% {String value = null;try{value=context.getFormattedValue(getObject("av:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {25}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
			</td>
			<td class="table_detail e s top">&nbsp;</td>
			<td class="table_detail2 e s">
				<% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("av:ValueType")).doubleValue() ==((Number)(new Double(3))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",29,e);}if (_boolean_result) { %>
					<input type="hidden" name="<% {String value = null;try{value=context.getFormattedValue(getObject("av:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {30}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>_AttributeType" value="String"/><% {out.write(localizeISText("ChannelProductClassificationDetails.String.input",null,null,null,null,null,null,null,null,null,null,null,null));} %>
				<% } else {_boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("av:ValueType")).doubleValue() ==((Number)(new Double(6))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",31,e);}if (_boolean_result) { %>
					<input type="hidden" name="<% {String value = null;try{value=context.getFormattedValue(getObject("av:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {32}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>_AttributeType" value="MultipleString"/><% {out.write(localizeISText("ChannelProductClassificationDetails.MultipleString.input",null,null,null,null,null,null,null,null,null,null,null,null));} %>
				<% } else {_boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("av:ValueType")).doubleValue() ==((Number)(new Double(2))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",33,e);}if (_boolean_result) { %>
					<input type="hidden" name="<% {String value = null;try{value=context.getFormattedValue(getObject("av:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {34}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>_AttributeType" value="Double"/><% {out.write(localizeISText("ChannelProductClassificationDetails.Double.input",null,null,null,null,null,null,null,null,null,null,null,null));} %>
				<% } else {_boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("av:ValueType")).doubleValue() ==((Number)(new Double(5))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",35,e);}if (_boolean_result) { %>
					<input type="hidden" name="<% {String value = null;try{value=context.getFormattedValue(getObject("av:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {36}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>_AttributeType" value="MultipleDouble"/><% {out.write(localizeISText("ChannelProductClassificationDetails.MultipleDouble.input",null,null,null,null,null,null,null,null,null,null,null,null));} %>
				<% } else {_boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("av:ValueType")).doubleValue() ==((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",37,e);}if (_boolean_result) { %>
					<input type="hidden" name="<% {String value = null;try{value=context.getFormattedValue(getObject("av:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {38}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>_AttributeType" value="Integer"/><% {out.write(localizeISText("ChannelProductClassificationDetails.Integer.input",null,null,null,null,null,null,null,null,null,null,null,null));} %>
				<% } else {_boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("av:ValueType")).doubleValue() ==((Number)(new Double(4))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",39,e);}if (_boolean_result) { %>
					<input type="hidden" name="<% {String value = null;try{value=context.getFormattedValue(getObject("av:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {40}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>_AttributeType" value="MultipleInteger"/><% {out.write(localizeISText("ChannelProductClassificationDetails.MultipleInteger.input",null,null,null,null,null,null,null,null,null,null,null,null));} %>
				<% } else { %>&nbsp;
				<% }}}}}} %>
			</td>
			<td class="table_detail2 e s">
				<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (((((Boolean) ((( ((Number) getObject("av:ValueType")).doubleValue() ==((Number)(new Double(4))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((( ((Number) getObject("av:ValueType")).doubleValue() ==((Number)(new Double(5))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((( ((Number) getObject("av:ValueType")).doubleValue() ==((Number)(new Double(6))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && !((Boolean) (getObject("av:isEnumeration"))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",45,e);}if (_boolean_result) { %>
					<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ErrorCode"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",46,e);}if (_boolean_result) { %>
						<% {Object temp_obj = (context.getFormattedValue(getObject("av:Name"),null) + context.getFormattedValue("_AttributeValue",null)); getPipelineDictionary().put("CurrentAttributeName", temp_obj);} %>
						<%
							String attributeName = (String)getObject("CurrentAttributeName");
							if(attributeName != null)
							{
								String attributeValue = (String)getObject(attributeName);
								if(getPipelineDictionary().containsKey("CurrentAttributeValue"))
								{
								    getPipelineDictionary().remove("CurrentAttributeValue");
								}
								getPipelineDictionary().put("CurrentAttributeValue", attributeValue);
							}
						%>
						<input type="text" name="<% {String value = null;try{value=context.getFormattedValue(getObject("av:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {60}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>_AttributeValue" maxlength="1024" style="width:250px;" value="<% {String value = null;try{value=context.getFormattedValue(getObject("CurrentAttributeValue"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {60}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="inputfield_en"/>
					<% } else { %>
						<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("av:isLocalized"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",62,e);}if (_boolean_result) { %>
							<% {Object temp_obj = (getObject("Product:LocalizedAttribute(av:Name,Locale)")); getPipelineDictionary().put("ProductAttributeValues", temp_obj);} %>
						<% } else { %>
							<% {Object temp_obj = (getObject("Product:Attribute(av:Name)")); getPipelineDictionary().put("ProductAttributeValues", temp_obj);} %>
						<% } %>
	                    <%
	                        java.util.Iterator iter = (java.util.Iterator)getObject("ProductAttributeValues");
	                        String attributeValueInDictionary="";
	                        if (iter != null)
	                        {
	                        	StringBuffer attributeValue = new StringBuffer();
	                        	
	                            while (iter.hasNext())
		                        {
		                            attributeValue.append(getFormattedValue(iter.next(), null));
		                            if (iter.hasNext())
		                            {
		                                attributeValue.append("|");
		                            }
		                        }
		                        attributeValueInDictionary = attributeValue.toString();
	                        }
	                        getPipelineDictionary().put("AttributeValue", attributeValueInDictionary);
	                    %>
	                 	<input type="text" name="<% {String value = null;try{value=context.getFormattedValue(getObject("av:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {86}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>_AttributeValue" maxlength="1024" style="width: 250px;" value="<% {String value = null;try{value=context.getFormattedValue(getObject("AttributeValue"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {86}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="inputfield_en" <% _boolean_result=false;try {_boolean_result=((Boolean)(((!((Boolean) (disableErrorMessages().isDefined(getObject("ProductLockedForMe")))).booleanValue() || !((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PRODUCTS")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",86,e);}if (_boolean_result) { %>disabled="disabled"<% } %>/>
	            	<% } %>
				<% } else {_boolean_result=false;try {_boolean_result=((Boolean)(getObject("av:isEnumeration"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",88,e);}if (_boolean_result) { %>
					<% {Object temp_obj = (""); getPipelineDictionary().put("SelectedAttributeValue", temp_obj);} %>
					<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("av:isLocalized"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",90,e);}if (_boolean_result) { %>
						<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Product:LocalizedAttribute(av:Name,Locale)"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",91,e);}if (_boolean_result) { %>
							<% {Object temp_obj = (getObject("Product:LocalizedAttribute(av:Name,Locale)")); getPipelineDictionary().put("SelectedAttributeValue", temp_obj);} %>
						<% } else {_boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("av:DefaultValue(Locale)"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",93,e);}if (_boolean_result) { %>
							<% {Object temp_obj = (getObject("av:DefaultValue(Locale)")); getPipelineDictionary().put("SelectedAttributeValue", temp_obj);} %>
						<% }} %>
					<% } else { %>
						<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Product:Attribute(av:Name)"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",97,e);}if (_boolean_result) { %>
							<% {Object temp_obj = (getObject("Product:Attribute(av:Name)")); getPipelineDictionary().put("SelectedAttributeValue", temp_obj);} %>
						<% } else {_boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("av:DefaultValue"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",99,e);}if (_boolean_result) { %>
							<% {Object temp_obj = (getObject("av:DefaultValue")); getPipelineDictionary().put("SelectedAttributeValue", temp_obj);} %>
						<% }} %>
					<% } %>
					<select name="<% {String value = null;try{value=context.getFormattedValue(getObject("av:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {103}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>_AttributeValue" class="select" style="width: 250px;"
							<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((( ((Number) getObject("av:ValueType")).doubleValue() ==((Number)(new Double(4))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((( ((Number) getObject("av:ValueType")).doubleValue() ==((Number)(new Double(5))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((( ((Number) getObject("av:ValueType")).doubleValue() ==((Number)(new Double(6))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",104,e);}if (_boolean_result) { %>multiple="multiple" size="5"<% } %>
							<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PRODUCTS")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",105,e);}if (_boolean_result) { %>disabled="disabled"<% } %>
					>
						<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("av:isLocalized"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",107,e);}if (_boolean_result) { %>
							<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("av:DefaultValue(Locale)")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",108,e);}if (_boolean_result) { %>
								<option value=""><% {out.write(localizeISText("ChannelProductClassificationDetails.None.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
							<% } %>
							<% while (loop("av:ObjectValues(Locale)","EnumValue",null)) { %>
								<option value="<% {String value = null;try{value=context.getFormattedValue(getObject("EnumValue"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {112}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" 
									<% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Product:LocalizedAttribute(av:Name,Locale)") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",113,e);}if (_boolean_result) { %>
										<% while (loop("Product:LocalizedAttribute(av:Name,Locale)","AttValue",null)) { %>
											<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("AttValue"),null).equals(context.getFormattedValue(getObject("EnumValue"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",115,e);}if (_boolean_result) { %>
												selected="selected"
											<% } %>
										<% } %>
									<% } else { %>
										<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SelectedAttributeValue"),null).equals(context.getFormattedValue(getObject("EnumValue"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",120,e);}if (_boolean_result) { %>selected="selected"<% } %>
									<% } %>
								>
									<% {String value = null;try{value=context.getFormattedValue(getObject("EnumValue"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {123}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>
								</option>
							<% } %>
						<% } else { %>
							<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("av:DefaultValue")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",127,e);}if (_boolean_result) { %>
								<option value=""><% {out.write(localizeISText("ChannelProductClassificationDetails.None.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
							<% } %>
							<% while (loop("av:ObjectValues","EnumValue",null)) { %>
								<option value="<% {String value = null;try{value=context.getFormattedValue(getObject("EnumValue"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {131}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" 
									<% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Product:Attribute(av:Name)") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",132,e);}if (_boolean_result) { %>
										<% while (loop("Product:Attribute(av:Name)","AttValue",null)) { %>
											<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((context.getFormattedValue(getObject("AttValue"),null).equals(context.getFormattedValue(getObject("EnumValue"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("SelectedAttributeValue"),null).equals(context.getFormattedValue(getObject("EnumValue"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",134,e);}if (_boolean_result) { %>
												selected="selected"
											<% } %>
										<% } %>
									<% } else { %>
										<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SelectedAttributeValue"),null).equals(context.getFormattedValue(getObject("EnumValue"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",139,e);}if (_boolean_result) { %>selected="selected"<% } %>
									<% } %>
								>
									<% {String value = null;try{value=context.getFormattedValue(getObject("EnumValue"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {142}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>
								</option>
							<% } %>
						<% } %>
					</select>
				<% } else { %>
					<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ErrorCode"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",148,e);}if (_boolean_result) { %>
						<% {Object temp_obj = (context.getFormattedValue(getObject("av:Name"),null) + context.getFormattedValue("_AttributeValue",null)); getPipelineDictionary().put("CurrentAttributeName", temp_obj);} %>
						<%
							String attributeName = (String)getObject("CurrentAttributeName");
							if(attributeName != null)
							{
								String attributeValue = (String)getObject(attributeName);
								if(getPipelineDictionary().containsKey("CurrentAttributeValue"))
								{
								    getPipelineDictionary().remove("CurrentAttributeValue");
								}
								getPipelineDictionary().put("CurrentAttributeValue", attributeValue);
							}
						%>
						<input type="text" name="<% {String value = null;try{value=context.getFormattedValue(getObject("av:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {162}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>_AttributeValue" maxlength="1024" style="width:250px;" value="<% {String value = null;try{value=context.getFormattedValue(getObject("CurrentAttributeValue"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {162}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="inputfield_en"/>
					<% } else { %>
						<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("av:isLocalized"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",164,e);}if (_boolean_result) { %>
								<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((context.getFormattedValue(getObject("Product:LocalizedAttribute(av:Name,Locale)"),null).equals(context.getFormattedValue(getObject("NULL"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("av:DefaultValue(Locale)"),null).equals(context.getFormattedValue(getObject("NULL"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",165,e);}if (_boolean_result) { %>
									<input type="text" name="<% {String value = null;try{value=context.getFormattedValue(getObject("av:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {166}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>_AttributeValue" maxlength="1024" style="width:250px;" value="<% {String value = null;try{value=context.getFormattedValue(getObject("av:DefaultValue(Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {166}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="inputfield_en" <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((Boolean) (disableErrorMessages().isDefined(getObject("ProductLockedForMe")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() || ((Boolean) ((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PRODUCTS")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",166,e);}if (_boolean_result) { %>disabled="disabled"<% } %>/>																			
								<% } else { %>
									<input type="text" name="<% {String value = null;try{value=context.getFormattedValue(getObject("av:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {168}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>_AttributeValue" maxlength="1024" style="width:250px;" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Product:LocalizedAttribute(av:Name,Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {168}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="inputfield_en" <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((Boolean) (disableErrorMessages().isDefined(getObject("ProductLockedForMe")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() || ((Boolean) ((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PRODUCTS")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",168,e);}if (_boolean_result) { %>disabled="disabled"<% } %>/>												
								<% } %>	
							<% } else { %>
								<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((context.getFormattedValue(getObject("Product:Attribute(av:Name)"),null).equals(context.getFormattedValue(getObject("NULL"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("av:DefaultValue"),null).equals(context.getFormattedValue(getObject("NULL"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",171,e);}if (_boolean_result) { %>
									<input type="text" name="<% {String value = null;try{value=context.getFormattedValue(getObject("av:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {172}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>_AttributeValue" maxlength="1024" style="width:250px;" value="<% {String value = null;try{value=context.getFormattedValue(getObject("av:DefaultValue"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {172}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="inputfield_en" <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((Boolean) (disableErrorMessages().isDefined(getObject("ProductLockedForMe")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() || ((Boolean) ((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PRODUCTS")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",172,e);}if (_boolean_result) { %>disabled="disabled"<% } %>/>
								<% } else { %>
									<input type="text" name="<% {String value = null;try{value=context.getFormattedValue(getObject("av:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {174}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>_AttributeValue" maxlength="1024" style="width:250px;" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Product:Attribute(av:Name)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {174}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="inputfield_en" <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((Boolean) (disableErrorMessages().isDefined(getObject("ProductLockedForMe")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() || ((Boolean) ((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PRODUCTS")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",174,e);}if (_boolean_result) { %>disabled="disabled"<% } %>/>
								<% } %>	
						<% } %>
					<% } %>
				<% }} %>
			</td>
            <td class="table_detail2 s e center" width="80" >
            	<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("av:isLocalized"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",181,e);}if (_boolean_result) { %><% {out.write(localizeISText("ChannelProductClassificationDetails.Yes.table_detail2",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else { %><% {out.write(localizeISText("ChannelProductClassificationDetails.No.table_detail2",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %>
           	</td>
		</tr>
	<% } %>
	<tr>
		<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PRODUCTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",186,e);}if (_boolean_result) { %>
			<td colspan="5" align="right" class="w e s">
				<table border="0" cellspacing="4" cellpadding="0">
					<tr>
						<td class="button">
							<input type="submit" name="update" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ChannelProductClassificationDetails.Apply.button",null)),null)%>" class="button" <% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("ProductLockedForMe")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",191,e);}if (_boolean_result) { %>disabled="disabled"<% } %>/>
						</td>
						<td class="button">
							<input type="hidden" name="ChannelID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("CurrentChannel:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {194}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
							<input type="hidden" name="ClassificationCategoryID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ClassificationCategory:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {195}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
							<input type="submit" name="reset" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ChannelProductClassificationDetails.Reset.button",null)),null)%>" class="button" <% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("ProductLockedForMe")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",196,e);}if (_boolean_result) { %>disabled="disabled"<% } %>/>
						</td>
					</tr>
				</table>
			</td>
		<% } %>
	</tr>
</table>
<% printFooter(out); %>