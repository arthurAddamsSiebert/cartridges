<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"modules/Modules", null, "2");} %><script type="text/javascript">
var _cms = new Object();
_cms.webRoot = "<%=context.getFormattedValue(context.webRoot(),null)%>";
_cms.contentURL = "<%=context.getFormattedValue(contentURL(context.getFormattedValue(getObject("CurrentChannel:Domain"),null)),null)%>";
</script><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("PageletConfigurationParameters:JSReferencesHead") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",19,e);}if (_boolean_result) { %><% while (loop("PageletConfigurationParameters:JSReferencesHead","Reference",null)) { %><% out.print(context.prepareWAPlacement("JS_head")); %><script type="text/javascript" src="<%=context.getFormattedValue(contentURL(context.getFormattedValue(getObject("Reference"),null)),null)%>"></script><% out.print("</waplacement>"); %><% } %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("PageletConfigurationParameters:JSReferencesEnd") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",26,e);}if (_boolean_result) { %><% while (loop("PageletConfigurationParameters:JSReferencesEnd","Reference",null)) { %><% out.print(context.prepareWAPlacement("JS_end")); %><script type="text/javascript" src="<%=context.getFormattedValue(contentURL(context.getFormattedValue(getObject("Reference"),null)),null)%>"></script><% out.print("</waplacement>"); %><% } %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("PageletConfigurationParameters:CSSReferences") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",31,e);}if (_boolean_result) { %><% while (loop("PageletConfigurationParameters:CSSReferences","Reference",null)) { %><% out.print(context.prepareWAPlacement("CSS")); %><link rel="stylesheet" type="text/css" href="<%=context.getFormattedValue(contentURL(context.getFormattedValue(getObject("Reference"),null)),null)%>" /><% out.print("</waplacement>"); %><% } %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("PageletConfigurationParameters:CSSInternal"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",36,e);}if (_boolean_result) { %><% out.print(context.prepareWAPlacement("STYLE")); %><style type="text/css"><% {String value = null;try{value=context.getFormattedValue(getObject("PageletConfigurationParameters:CSSInternal"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {37}",e);}if (value==null) value="";out.write(value);} %></style><% out.print("</waplacement>"); %><% } %><div class="UDPC"><% processOpenTag(response, pageContext, "htmlprint", new TagParameter[] {
new TagParameter("value",getObject("PageletConfigurationParameters:HTML"))}, 41); %><% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("PageletConfigurationParameters:JSInternal"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",43,e);}if (_boolean_result) { %><script type="text/javascript"><% {String value = null;try{value=context.getFormattedValue(getObject("PageletConfigurationParameters:JSInternal"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {45}",e);}if (value==null) value="";out.write(value);} %></script><% } %></div><% printFooter(out); %>