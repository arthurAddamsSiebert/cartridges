<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("previewConfigurationAttribute:Visible"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",2,e);}if (_boolean_result) { %><div class="sfe-preview-summary-parameter<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (getObject("previewConfigurationAttribute:Default"))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",3,e);}if (_boolean_result) { %> sfe-preview-summary-parameter-nondefault<% } %>" id="sfe-preview-summary-parameter-<% {String value = null;try{value=context.getFormattedValue(getObject("previewConfigurationAttribute:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {3}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>">
<label id="sfe-preview-summary-parameter-<% {String value = null;try{value=context.getFormattedValue(getObject("previewConfigurationAttribute:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {4}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>-label"><% {out.write(localizeISText("PreviewDisplayDeviceSummary.DisplaySize.label","",null,null,null,null,null,null,null,null,null,null,null));} %>:</label>
<span id="sfe-preview-summary-parameter-<% {String value = null;try{value=context.getFormattedValue(getObject("previewConfigurationAttribute:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {5}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>-value" class="viewable-area-display" nowrap="nowrap"><% {String value = null;try{value=context.getFormattedValue(getObject("previewConfigurationAttribute:SelectedValue:ValueObject:Width"),"#",null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {5}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> x <% {String value = null;try{value=context.getFormattedValue(getObject("previewConfigurationAttribute:SelectedValue:ValueObject:Height"),"#",null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {5}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></span>
<span id="sfe-preview-summary-parameter-<% {String value = null;try{value=context.getFormattedValue(getObject("previewConfigurationAttribute:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {6}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>-value-suffix-dynamic" <% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("previewConfigurationAttribute:SelectedValue:ValueObject:Id"),null).equals(context.getFormattedValue("BROWSER",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",6,e);}if (_boolean_result) { %>style="display:none"<% } %>>
(<% {out.write(localizeISText("PreviewDisplayDeviceSummary.DisplaySizeVariable.label","",null,null,null,null,null,null,null,null,null,null,null));} %>)
</span>
<span id="sfe-preview-summary-parameter-<% {String value = null;try{value=context.getFormattedValue(getObject("previewConfigurationAttribute:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {9}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>-value-suffix-static" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("previewConfigurationAttribute:SelectedValue:ValueObject:Id"),null).equals(context.getFormattedValue("BROWSER",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",9,e);}if (_boolean_result) { %>style="display:none"<% } %>>
(<% {out.write(localizeISText("PreviewDisplayDeviceSummary.DisplaySizeFixed.label","",null,null,null,null,null,null,null,null,null,null,null));} %>)
</span>
</div><% } %><% printFooter(out); %>