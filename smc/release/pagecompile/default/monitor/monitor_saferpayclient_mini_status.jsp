<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ERROR_User"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",3,e);}if (_boolean_result) { %><td class="table_detail e error" valign="top"><% {String value = null;try{value=context.getFormattedValue(getObject("LocalServer:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {4}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
<td class="table_detail e" valign="top"><% {out.write(localizeISText("monitor.NA.table_detail","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_detail e" valign="top" align="right"><% {out.write(localizeISText("monitor.NA.table_detail","",null,null,null,null,null,null,null,null,null,null,null));} %>&nbsp;</td>
<td class="table_detail e" valign="top"><% {out.write(localizeISText("monitor.NA.table_detail","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_detail e" valign="top" align="center"><% {out.write(localizeISText("monitor.NA.table_detail","",null,null,null,null,null,null,null,null,null,null,null));} %>&nbsp;</td>
<td class="table_detail e" valign="top" align="center"><% {out.write(localizeISText("monitor.NA.table_detail","",null,null,null,null,null,null,null,null,null,null,null));} %>&nbsp;</td>
<td class="table_detail e" valign="top" align="center"><% {out.write(localizeISText("monitor.NA.table_detail","",null,null,null,null,null,null,null,null,null,null,null));} %>&nbsp;</td><% } else { %><td class="table_detail e" valign="top"><% {String value = null;try{value=context.getFormattedValue(getObject("LocalServer:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {14}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
<td class="table_detail e" valign="top"><% {String value = null;try{value=context.getFormattedValue(getObject("LocalServer:Host"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {16}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
<td class="table_detail e" valign="top" align="right"><% {String value = null;try{value=context.getFormattedValue(getObject("LocalServer:Port"),"#",null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {17}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
<td class="table_detail e" valign="top"><% {String value = null;try{value=context.getFormattedValue(getObject("LocalServer:InstallationID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {18}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
<!-- Test driver --><%
			String paymentMethodName = "SAFERPAY_PAYMENT_CAI";
			Object hashMap = getPipelineDictionary().get(paymentMethodName+"_TestDriver");
			if (hashMap != null)
			{
				getPipelineDictionary().put("TestDriver", hashMap);
			}
		%><% _boolean_result=false;try {_boolean_result=((Boolean)(((disableErrorMessages().isDefined(getObject("TestDriver")))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",29,e);}if (_boolean_result) { %><td class="<% _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("TestDriver:testGetConfigurationPath"),null).equals(context.getFormattedValue("SUCCESS",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",30,e);}if (_boolean_result) { %>table_detail e<% } else { %>error e<% } %>" align="center"><% _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("TestDriver:testGetConfigurationPath"),null).equals(context.getFormattedValue("SUCCESS",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",30,e);}if (_boolean_result) { %><% {out.write(localizeISText("monitor.Ok.isif","",null,null,null,null,null,null,null,null,null,null,null));} %><% } else { %><% {out.write(localizeISText("monitor.Failed.isif","",null,null,null,null,null,null,null,null,null,null,null));} %><% } %>&nbsp;</td>
<td class="<% _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("TestDriver:testConnectionToHostSaferpay"),null).equals(context.getFormattedValue("SUCCESS",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",31,e);}if (_boolean_result) { %>table_detail e<% } else { %>error e<% } %>" align="center"><% _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("TestDriver:testConnectionToHostSaferpay"),null).equals(context.getFormattedValue("SUCCESS",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",31,e);}if (_boolean_result) { %><% {out.write(localizeISText("monitor.Ok.isif","",null,null,null,null,null,null,null,null,null,null,null));} %><% } else { %><% {out.write(localizeISText("monitor.Failed.isif","",null,null,null,null,null,null,null,null,null,null,null));} %><% } %>&nbsp;</td>
<td class="<% _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("TestDriver:testBusinessInterfaceCAI"),null).equals(context.getFormattedValue("SUCCESS",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",32,e);}if (_boolean_result) { %>table_detail e<% } else { %>error e<% } %>" align="center"><% _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("TestDriver:testBusinessInterfaceCAI"),null).equals(context.getFormattedValue("SUCCESS",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",32,e);}if (_boolean_result) { %><% {out.write(localizeISText("monitor.Ok.isif","",null,null,null,null,null,null,null,null,null,null,null));} %><% } else { %><% {out.write(localizeISText("monitor.Failed.isif","",null,null,null,null,null,null,null,null,null,null,null));} %><% } %>&nbsp;</td><% } else { %><td class="table_detail e" valign="top" align="center"><% {out.write(localizeISText("monitor.NA.table_detail","",null,null,null,null,null,null,null,null,null,null,null));} %>&nbsp;</td>
<td class="table_detail e" valign="top" align="center"><% {out.write(localizeISText("monitor.NA.table_detail","",null,null,null,null,null,null,null,null,null,null,null));} %>&nbsp;</td>
<td class="table_detail e" valign="top" align="center"><% {out.write(localizeISText("monitor.NA.table_detail","",null,null,null,null,null,null,null,null,null,null,null));} %>&nbsp;</td><% } %><!-- eo: Test driver --><% } %></tr><% printFooter(out); %>