<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><%@page import = "com.intershop.beehive.core.capi.currency.CurrencyMgr"%>
<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("params:ApplicationCurrencies")))).booleanValue() && !((Boolean) (getObject("params:ApplicationCurrencies:Empty"))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",2,e);}if (_boolean_result) { %>
	
	<select multiple="multiple" id="<% {String value = null;try{value=context.getFormattedValue(getObject("id"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {4}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" name="<% {String value = null;try{value=context.getFormattedValue(getObject("params:ApplicationForm:Currencies:Currency:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {4}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>">
		<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("params:SystemCurrencies"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",5,e);}if (_boolean_result) { %>
			<% while (loop("params:SystemCurrencies","sysCur",null)) { %>
				<option value="<% {String value = null;try{value=context.getFormattedValue(getObject("sysCur:Mnemonic"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {7}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("params:ApplicationCurrencies")))).booleanValue() && ((Boolean) getObject("params:ApplicationCurrencies:Contains(sysCur)")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",7,e);}if (_boolean_result) { %>selected="selected"<% } %> <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("params:ApplicationDefaultCurrency")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("params:ApplicationDefaultCurrency"),null).equals(context.getFormattedValue(getObject("sysCur"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",7,e);}if (_boolean_result) { %>data-default="true"<% } %> ><% {String value = null;try{value=context.getFormattedValue(getObject("sysCur:CurrencyName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {7}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></option>
			<% } %>
		<% } %>
	</select>
<% } else { %>
	<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("params:ApplicationForm:DefaultCurrency:Value"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",12,e);}if (_boolean_result) { %>
		
		<% {Object temp_obj = (getObject("params:ApplicationForm:DefaultCurrency:Value")); getPipelineDictionary().put("LeadCurrencyMnemonic", temp_obj);} %>
		<select multiple="multiple" id="<% {String value = null;try{value=context.getFormattedValue(getObject("id"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {15}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" name="<% {String value = null;try{value=context.getFormattedValue(getObject("params:ApplicationForm:Currencies:Currency:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {15}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>">
			<% while (loop("params:ActiveSystemCurrencies","currency",null)) { %>
				<option value="<% {String value = null;try{value=context.getFormattedValue(getObject("currency:Mnemonic"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {17}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" <% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("params:ApplicationForm:Currencies:Currency:Values:Contains(currency:Mnemonic)"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",17,e);}if (_boolean_result) { %>selected="selected"<% } %> <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("currency:Mnemonic"),null).equals(context.getFormattedValue(getObject("LeadCurrencyMnemonic"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",17,e);}if (_boolean_result) { %>data-default="true"<% } %> ><% {String value = null;try{value=context.getFormattedValue(getObject("currency:CurrencyName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {17}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></option>
			<% } %>
		</select>
	<% } else { %>
		
		<select multiple="multiple" id="<% {String value = null;try{value=context.getFormattedValue(getObject("id"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {22}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" name="<% {String value = null;try{value=context.getFormattedValue(getObject("params:ApplicationForm:Currencies:Currency:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {22}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>">
			<%
			CurrencyMgr mgr = (CurrencyMgr)NamingMgr.getManager(CurrencyMgr.class);
			getPipelineDictionary().put("LeadCurrency", mgr.getLeadCurrency());
			%>
			<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("params:SystemCurrencies"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",27,e);}if (_boolean_result) { %>
				<% while (loop("params:SystemCurrencies","sysCur",null)) { %>
					<option value="<% {String value = null;try{value=context.getFormattedValue(getObject("sysCur:Mnemonic"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {29}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" <% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("params:ActiveSystemCurrencies:Contains(sysCur)"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",29,e);}if (_boolean_result) { %>selected="selected"<% } %> <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("sysCur:Mnemonic"),null).equals(context.getFormattedValue(getObject("LeadCurrency:Mnemonic"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",29,e);}if (_boolean_result) { %>data-default="true"<% } %> ><% {String value = null;try{value=context.getFormattedValue(getObject("sysCur:CurrencyName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {29}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></option>
				<% } %>
			<% } %>
		</select>
	<% } %>
<% } %><% printFooter(out); %>