<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %>

<!-- Working Area  -->
<% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("text1",context.getFormattedValue(" - ",null) + context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.ChangeTracking.text1",null)),null)),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewSharedProductChanges-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ProductID",null),context.getFormattedValue(getObject("Product:UUID"),null))))),
new TagParameter("id",getObject("Product:UUID")),
new TagParameter("text",getObject("Product:Name"))}, 4); %>
<!-- Main Content -->
<% {Object temp_obj = ("ChangeTracking"); getPipelineDictionary().put("SelectedTab", temp_obj);} %>
<% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/ProductTabs", null, "7");} %>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
	<tr>
		<td width="100%" class="table_title w e s"><% {String value = null;try{value=context.getFormattedValue(getObject("Product:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {10}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
	</tr>
</table>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
	<!-- product locking information -->
	<% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/ProductLockInformation", null, "15");} %>
	<!-- end product locking information -->
	<!-- product sharing information -->
	<% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/ProductSharingInformation", null, "18");} %>
	<!-- end product sharing information -->
	<tr>
		<td class="table_title_description w e s"><% {out.write(localizeISText("sld_enterprise_app.TheListShowsCurrentDifferencesBetweenThisSharedPro.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
	</tr>
</table>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
	<tr>
		<td>
			<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e">
				<tr>
					<td class="table_header e s left" nowrap="nowrap" ><% {out.write(localizeISText("sld_enterprise_app.AttributeName.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
					<td class="table_header e s left" nowrap="nowrap"><% {out.write(localizeISText("sld_enterprise_app.Value.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
					<td class="table_header s left" nowrap="nowrap"><% {out.write(localizeISText("sld_enterprise_app.OriginalValue.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
				</tr>
				<tr>
					<td class="table_detail2 e s left">
						<% {out.write(localizeISText("sld_enterprise_app.Name.table_detail2",null,null,null,null,null,null,null,null,null,null,null,null));} %>
					</td>
					<td class="table_detail2 e s left">
						<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Product:Name"),null).equals(context.getFormattedValue(getObject("Product:BaseProduct:Name"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",38,e);}if (_boolean_result) { %>
							<% {String value = null;try{value=context.getFormattedValue(getObject("Product:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {39}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;
						<% } else { %>
							<b><% {String value = null;try{value=context.getFormattedValue(getObject("Product:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {41}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</b>
						<% } %>
					</td>
					<td class="table_detail2 s left">
						<% {String value = null;try{value=context.getFormattedValue(getObject("Product:BaseProduct:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {45}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;
					</td>
				</tr>
				<tr>
					<td class="table_detail2 e s left">
						<% {out.write(localizeISText("sld_enterprise_app.ID.table_detail2",null,null,null,null,null,null,null,null,null,null,null,null));} %>
					</td>
					<td class="table_detail2 e s left">
						<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Product:SKU"),null).equals(context.getFormattedValue(getObject("Product:BaseProduct:SKU"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",53,e);}if (_boolean_result) { %>
							<% {String value = null;try{value=context.getFormattedValue(getObject("Product:SKU"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {54}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;
						<% } else { %>
							<b><% {String value = null;try{value=context.getFormattedValue(getObject("Product:SKU"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {56}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</b>
						<% } %>
					</td>
					<td class="table_detail2 s left">
						<% {String value = null;try{value=context.getFormattedValue(getObject("Product:BaseProduct:SKU"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {60}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;
					</td>
				</tr>
				<tr>
					<td class="table_detail2 e s left">
						<% {out.write(localizeISText("sld_enterprise_app.ShortDescription.table_detail2",null,null,null,null,null,null,null,null,null,null,null,null));} %>
					</td>
					<td class="table_detail2 e s left">
						<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Product:ShortDescription"),null).equals(context.getFormattedValue(getObject("Product:BaseProduct:ShortDescription"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",68,e);}if (_boolean_result) { %>
							<% {String value = null;try{value=context.getFormattedValue(getObject("Product:ShortDescription"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {69}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;
						<% } else { %>
							<b><% {String value = null;try{value=context.getFormattedValue(getObject("Product:ShortDescription"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {71}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</b>
						<% } %>
					</td>
					<td class="table_detail2 s left">
						<% {String value = null;try{value=context.getFormattedValue(getObject("Product:BaseProduct:ShortDescription"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {75}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;
					</td>
				</tr>
				<tr>
					<td class="table_detail2 e s left">
						<% {out.write(localizeISText("sld_enterprise_app.LongDescription.table_detail2",null,null,null,null,null,null,null,null,null,null,null,null));} %>
					</td>
					<td class="table_detail2 e s left">
						<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Product:LongDescription"),null).equals(context.getFormattedValue(getObject("Product:BaseProduct:LongDescription"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",83,e);}if (_boolean_result) { %>
							<% {String value = null;try{value=context.getFormattedValue(getObject("Product:LongDescription"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {84}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;
						<% } else { %>
							<b><% {String value = null;try{value=context.getFormattedValue(getObject("Product:LongDescription"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {86}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</b>
						<% } %>
					</td>
					<td class="table_detail2 s left">
						<% {String value = null;try{value=context.getFormattedValue(getObject("Product:BaseProduct:LongDescription"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {90}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;
					</td>
				</tr>
				<tr>
					<td class="table_detail2 e s left">
						<% {out.write(localizeISText("sld_enterprise_app.Supplier.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>
					</td>
					<td class="table_detail2 e s left">
						<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Product:SupplierName"),null).equals(context.getFormattedValue(getObject("Product:BaseProduct:SupplierName"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",98,e);}if (_boolean_result) { %>
							<% {String value = null;try{value=context.getFormattedValue(getObject("Product:SupplierName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {99}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;
						<% } else { %>
							<b><% {String value = null;try{value=context.getFormattedValue(getObject("Product:SupplierName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {101}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</b>
						<% } %>
					</td>
					<td class="table_detail2 s left">
						<% {String value = null;try{value=context.getFormattedValue(getObject("Product:BaseProduct:SupplierName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {105}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;
					</td>
				</tr>
				<tr>
					<td class="table_detail2 e s left">
						<% {out.write(localizeISText("sld_enterprise_app.SupplierProductID.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>
					</td>
					<td class="table_detail2 e s left">
						<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Product:SupplierSKU"),null).equals(context.getFormattedValue(getObject("Product:BaseProduct:SupplierSKU"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",113,e);}if (_boolean_result) { %>
							<% {String value = null;try{value=context.getFormattedValue(getObject("Product:SupplierSKU"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {114}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;
						<% } else { %>
							<b><% {String value = null;try{value=context.getFormattedValue(getObject("Product:SupplierSKU"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {116}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</b>
						<% } %>
					</td>
					<td class="table_detail2 s left">
						<% {String value = null;try{value=context.getFormattedValue(getObject("Product:BaseProduct:SupplierSKU"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {120}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;
					</td>
				</tr>
				<tr>
					<td class="table_detail2 e s left">
						<% {out.write(localizeISText("sld_enterprise_app.Manufacturer.table_detail2",null,null,null,null,null,null,null,null,null,null,null,null));} %>
					</td>
					<td class="table_detail2 e s left">
						<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Product:ManufacturerName"),null).equals(context.getFormattedValue(getObject("Product:BaseProduct:ManufacturerName"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",128,e);}if (_boolean_result) { %>
							<% {String value = null;try{value=context.getFormattedValue(getObject("Product:ManufacturerName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {129}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;
						<% } else { %>
							<b><% {String value = null;try{value=context.getFormattedValue(getObject("Product:ManufacturerName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {131}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</b>
						<% } %>
					</td>
					<td class="table_detail2 s left">
						<% {String value = null;try{value=context.getFormattedValue(getObject("Product:BaseProduct:ManufacturerName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {135}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;
					</td>
				</tr>
				<tr>
					<td class="table_detail2 e s left">
						<% {out.write(localizeISText("sld_enterprise_app.ManufacturerProductID.table_detail2",null,null,null,null,null,null,null,null,null,null,null,null));} %>
					</td>
					<td class="table_detail2 e s left">
						<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Product:ManufacturerSKU"),null).equals(context.getFormattedValue(getObject("Product:BaseProduct:ManufacturerSKU"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",143,e);}if (_boolean_result) { %>
							<% {String value = null;try{value=context.getFormattedValue(getObject("Product:ManufacturerSKU"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {144}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;
						<% } else { %>
							<b><% {String value = null;try{value=context.getFormattedValue(getObject("Product:ManufacturerSKU"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {146}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</b>
						<% } %>
					</td>
					<td class="table_detail2 s left">
						<% {String value = null;try{value=context.getFormattedValue(getObject("Product:BaseProduct:ManufacturerSKU"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {150}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;
					</td>
				</tr>
		
				<% while (loop("AttributeValues","attribute",null)) { %>	
					<tr>
						<td class="table_detail2 e s left">
							<% {String value = null;try{value=context.getFormattedValue(getObject("attribute:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {157}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>
						</td>
						<td class="table_detail2 e s left">
							<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((( ((Number) getObject("attribute:Type")).doubleValue() ==((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((( ((Number) getObject("attribute:Type")).doubleValue() ==((Number)(new Double(2))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((( ((Number) getObject("attribute:Type")).doubleValue() ==((Number)(new Double(3))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",160,e);}if (_boolean_result) { %>
								<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("attribute:Object"),null).equals(context.getFormattedValue(getObject("Product:BaseProduct:getAttribute(attribute:Name)"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",161,e);}if (_boolean_result) { %>
									<% {String value = null;try{value=context.getFormattedValue(getObject("attribute:Object"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {162}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;
								<% } else { %>
									<b><% {String value = null;try{value=context.getFormattedValue(getObject("attribute:Object"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {164}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</b>
								<% } %>
							<% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((( ((Number) getObject("attribute:Type")).doubleValue() ==((Number)(new Double(4))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((( ((Number) getObject("attribute:Type")).doubleValue() ==((Number)(new Double(5))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((( ((Number) getObject("attribute:Type")).doubleValue() ==((Number)(new Double(6))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",166,e);}if (_boolean_result) { %>
								<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("attribute:StringValue"),null).equals(context.getFormattedValue(getObject("Product:BaseProduct:getAttribute(attribute:Name):StringValue"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",167,e);}if (_boolean_result) { %>
									<% {String value = null;try{value=context.getFormattedValue(getObject("attribute:StringValue"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {168}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;
								<% } else { %>
									<b><% {String value = null;try{value=context.getFormattedValue(getObject("attribute:StringValue"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {170}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</b>
								<% } %>
							<% } else {_boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("attribute:Type")).doubleValue() ==((Number)(new Double(7))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",172,e);}if (_boolean_result) { %>
								<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("attribute:ObjectValue"),null).equals(context.getFormattedValue(getObject("Product:BaseProduct:getAttribute(attribute:Name):ObjectValue"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",173,e);}if (_boolean_result) { %>
									<% {String value = null;try{value=context.getFormattedValue(getObject("attribute:ObjectValue"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {174}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;
								<% } else { %>
									<b><% {String value = null;try{value=context.getFormattedValue(getObject("attribute:ObjectValue"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {176}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</b>
								<% } %>
							<% }}} %>
						</td>
						<td class="table_detail2 s left">
							<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((( ((Number) getObject("attribute:Type")).doubleValue() ==((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((( ((Number) getObject("attribute:Type")).doubleValue() ==((Number)(new Double(2))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((( ((Number) getObject("attribute:Type")).doubleValue() ==((Number)(new Double(3))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",181,e);}if (_boolean_result) { %>
								<% {String value = null;try{value=context.getFormattedValue(getObject("Product:BaseProduct:getAttribute(attribute:Name)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {182}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;
							<% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((( ((Number) getObject("attribute:Type")).doubleValue() ==((Number)(new Double(4))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((( ((Number) getObject("attribute:Type")).doubleValue() ==((Number)(new Double(5))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((( ((Number) getObject("attribute:Type")).doubleValue() ==((Number)(new Double(6))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",183,e);}if (_boolean_result) { %>
								<% {String value = null;try{value=context.getFormattedValue(getObject("Product:BaseProduct:getAttribute(attribute:Name):StringValue"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {184}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;
							<% } else {_boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("attribute:Type")).doubleValue() ==((Number)(new Double(7))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",185,e);}if (_boolean_result) { %>
								<% {String value = null;try{value=context.getFormattedValue(getObject("Product:BaseProduct:getAttribute(attribute:Name):ObjectValue"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {186}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;
							<% }}} %>
						</td>
					</tr>
				<% } %>
			</table>
		</td>
	</tr>
</table>
<% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/BackToList", null, "195");} %>
<!-- EO Main Content -->
<!-- EO Working Area -->

<% printFooter(out); %>