<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%! protected Boolean printTemplateMarker() { return Boolean.FALSE; } %><%%><%@ page contentType="text/xml;charset=utf-8" %><%%><%@ page session="false"%><%setEncodingType("text/xml"); %>

<% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"impex/Modules", null, "3");} %>
<% context.setCustomTagTemplateName("customattributes","inc/CustomAttributes",false,new String[]{"attributes"},null); %>
<price-scale-table currency="<% {String value = null;try{value=context.getFormattedValue(getObject("table:CurrencyCode"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {7}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("exporttypecode"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",7,e);}if (_boolean_result) { %> type-code="<% {String value = null;try{value=context.getFormattedValue(getObject("table:TypeCode"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {7}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"<% } %>>
	<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (getObject("table:ValidFromNull"))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",8,e);}if (_boolean_result) { %><valid-from><% processOpenTag(response, pageContext, "datetime", new TagParameter[] {
new TagParameter("date",getObject("table:ValidFrom"))}, 8); %></valid-from><% } %>
	<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (getObject("table:ValidToNull"))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",9,e);}if (_boolean_result) { %><valid-to><% processOpenTag(response, pageContext, "datetime", new TagParameter[] {
new TagParameter("date",getObject("table:ValidTo"))}, 9); %></valid-to><% } %>
	<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("table:UserGroupBased"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",10,e);}if (_boolean_result) { %><group id="<% {String value = null;try{value=context.getFormattedValue(getObject("table:UserGroup:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {10}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" domain="<% {String value = null;try{value=context.getFormattedValue(getObject("table:UserGroup:Domain:DomainName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {10}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><% } %>
	<price-scale-entries>
		<% while (loop("table:PriceScales","PriceScale",null)) { %>
			<% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("PriceScale:TypeCode")).doubleValue() ==((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",13,e);}if (_boolean_result) { %>
				<fixed-price-entry quantity="<% {String value = null;try{value=context.getFormattedValue(getObject("PriceScale:QuantityLevel:Value"),"#0.0#","DecimalSeparator=.");}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {14}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" unit="<% {String value = null;try{value=context.getFormattedValue(getObject("PriceScale:QuantityLevel:Unit"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {14}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>">
					<value><% {String value = null;try{value=context.getFormattedValue(getObject("PriceScale:SingleBasePrice:Value"),"#0.0#","DecimalSeparator=.");}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {15}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></value>
					<% processOpenTag(response, pageContext, "customattributes", new TagParameter[] {
new TagParameter("attributes",getObject("PriceScale:AttributeValues"))}, 16); %>
				</fixed-price-entry>
			<% } else {_boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("PriceScale:TypeCode")).doubleValue() ==((Number)(new Double(2))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",18,e);}if (_boolean_result) { %>
				<relative-price-entry quantity="<% {String value = null;try{value=context.getFormattedValue(getObject("PriceScale:QuantityLevel:Value"),"#0.0#","DecimalSeparator=.");}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {19}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" unit="<% {String value = null;try{value=context.getFormattedValue(getObject("PriceScale:QuantityLevel:Unit"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {19}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>">
					<value><% {String value = null;try{value=context.getFormattedValue(getObject("PriceScale:Percentage"),"#0.0#","DecimalSeparator=.");}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {20}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></value>
					<% processOpenTag(response, pageContext, "customattributes", new TagParameter[] {
new TagParameter("attributes",getObject("PriceScale:AttributeValues"))}, 21); %>
				</relative-price-entry>
			<% } else { %>
				<price-scale-entry quantity="<% {String value = null;try{value=context.getFormattedValue(getObject("PriceScale:QuantityLevel:Value"),"#0.0#","DecimalSeparator=.");}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {24}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" unit="<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("PriceScale:QuantityLevel:Unit")))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("PriceScale:QuantityLevel:Unit"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",24,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("PriceScale:QuantityLevel:Unit"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {24}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %>n/a<% } %>"<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (getObject("PriceScale:TaxRateNull"))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",24,e);}if (_boolean_result) { %> tax-rate="<% {String value = null;try{value=context.getFormattedValue(getObject("PriceScale:TaxRate"),"#0.0#",null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {24}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"<% } %> type-code="<% {String value = null;try{value=context.getFormattedValue(getObject("PriceScale:TypeCode"),new Integer(INTEGER),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {24}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>">
					<value><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (getObject("PriceScale:SingleBasePriceNull"))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",25,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("PriceScale:SingleBasePrice:Value"),"#0.0#","DecimalSeparator=.");}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {25}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (getObject("PriceScale:PercentageNull"))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",25,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("PriceScale:Percentage"),"#0.0#","DecimalSeparator=.");}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {25}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% }} %></value>
					<% processOpenTag(response, pageContext, "customattributes", new TagParameter[] {
new TagParameter("attributes",getObject("PriceScale:AttributeValues"))}, 26); %>
				</price-scale-entry>
			<% }} %>
		<% } %>
	</price-scale-entries>
	<% processOpenTag(response, pageContext, "customattributes", new TagParameter[] {
new TagParameter("attributes",getObject("table:AttributeValues"))}, 31); %>
</price-scale-table><% printFooter(out); %>