<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"preview/Modules.isml", null, "2");} %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((context.getFormattedValue(getObject("previewConfigurationAttribute:Visible"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("previewConfigurationAttribute:SelectedValue:ValueObject")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",4,e);}if (_boolean_result) { %><script language="JavaScript">
var fixedTimeValue = new Date(<% {String value = null;try{value=context.getFormattedValue(getObject("previewConfigurationAttribute:SelectedValue:ValueObject:Time"),"#",null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {6}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>);
</script><% } %><div class="sfe-preview-summary-parameter" id="sfe-preview-summary-parameter-ServerTime">
<label id="sfe-preview-summary-parameter-ServerTime-label"><% {out.write(localizeISText("PreviewDateSummary.ServerTime.label","",null,null,null,null,null,null,null,null,null,null,null));} %>:</label>
<span id="sfe-preview-summary-parameter-ServerTime-value"><% processOpenTag(response, pageContext, "servertime", new TagParameter[] {
new TagParameter("EnablePastDateCheck",getObject("EnablePastDateCheck")),
new TagParameter("locale",getObject("CurrentRequest:Session:Locale"))}, 13); %>&nbsp;
</span>
</div><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((context.getFormattedValue(getObject("previewConfigurationAttribute:Visible"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("previewConfigurationAttribute:SelectedValue:ValueObject")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",16,e);}if (_boolean_result) { %><div class="sfe-preview-summary-parameter<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (getObject("previewConfigurationAttribute:Default"))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",17,e);}if (_boolean_result) { %> sfe-preview-summary-parameter-nondefault<% } %>" id="sfe-preview-summary-parameter-<% {String value = null;try{value=context.getFormattedValue(getObject("previewConfigurationAttribute:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {17}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>">
<label id="sfe-preview-summary-parameter-<% {String value = null;try{value=context.getFormattedValue(getObject("previewConfigurationAttribute:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {18}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>-label"><% {out.write(localizeISText("PreviewDateSummary.DateTime.label","",null,null,null,null,null,null,null,null,null,null,null));} %>:</label>
<span id="sfe-preview-summary-parameter-<% {String value = null;try{value=context.getFormattedValue(getObject("previewConfigurationAttribute:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {19}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>-value"><% {String value = null;try{value=context.getFormattedValue(getObject("previewConfigurationAttribute:SelectedValue:ValueObject"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {20}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> <% {String value = null;try{value=context.getFormattedValue(getObject("previewConfigurationAttribute:SelectedValue:ValueObject"),new Integer(DATE_TIME),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {20}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></span>
</div><% } %><% printFooter(out); %>