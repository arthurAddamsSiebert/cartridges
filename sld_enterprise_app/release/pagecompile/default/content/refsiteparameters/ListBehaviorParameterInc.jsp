<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><select 
class="select inputfield_en" 
id="ConfigurationParameter_<% {String value = null;try{value=context.getFormattedValue(getObject("ConfigurationParameterDefinition:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {6}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" 
name="ConfigurationParameter_<% {String value = null;try{value=context.getFormattedValue(getObject("ConfigurationParameterDefinition:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {7}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" 
<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (getObject("IsPageletEditable"))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",8,e);}if (_boolean_result) { %>disabled="disabled"<% } %>
>
<option 
value="none"
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ConfigurationParameterWebForm:getParameter(ConfigurationParameterDefinition:Name):Value"),null).equals(context.getFormattedValue("none",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",12,e);}if (_boolean_result) { %> selected="selected"<% } %>><% {out.write(localizeISText("ListBehaviorParameterInc.None.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option 
value="carousel"
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ConfigurationParameterWebForm:getParameter(ConfigurationParameterDefinition:Name):Value"),null).equals(context.getFormattedValue("carousel",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",17,e);}if (_boolean_result) { %> selected="selected"<% } %>><% {out.write(localizeISText("ListBehaviorParameterInc.Carousel2D.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
</select><% printFooter(out); %>