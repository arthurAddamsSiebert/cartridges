<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><div class="content"><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((context.getFormattedValue(getObject("ErrorCode"),null).equals(context.getFormattedValue("APPLICATION_MISSING",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("ErrorCode"),null).equals(context.getFormattedValue("UserHasNotPermission",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",3,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ErrorCode"),null).equals(context.getFormattedValue("APPLICATION_MISSING",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",5,e);}if (_boolean_result) { %><% {out.write(localizeISText("widget.render.error.APPLICATION_MISSING","",null,null,null,null,null,null,null,null,null,null,null));} %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ErrorCode"),null).equals(context.getFormattedValue("UserHasNotPermission",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",7,e);}if (_boolean_result) { %><% {out.write(localizeISText("widget.render.error.UserHasNotPermission","",null,null,null,null,null,null,null,null,null,null,null));} %><% }} %><% {Object temp_obj = ("false"); getPipelineDictionary().put("isWorkingContextSelectable", temp_obj);} %><% while (loop("WidgetBO:WidgetType:ConfigurationParameters","t",null)) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("t:ID"),null).equals(context.getFormattedValue("com.intershop.application.backoffice.dashboard.capi.WidgetExecutionContext",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",12,e);}if (_boolean_result) { %><% {Object temp_obj = ("true"); getPipelineDictionary().put("isWorkingContextSelectable", temp_obj);} %><% if (getLoopStack().isEmpty()) {Logger.error(this,"ISBREAK occured outside ISLOOP. Line: {}",14);}else{getLoopStack().pop();break;} %><% } %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("isWorkingContextSelectable"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",17,e);}if (_boolean_result) { %><br/><br/><% {Object temp_obj = (getObject("WidgetBO:Configuration(\"(Class)com.intershop.application.backoffice.dashboard.capi.WidgetExecutionContext\")")); getPipelineDictionary().put("config", temp_obj);} %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("config"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",20,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("config:ApplicationID")))).booleanValue() && ((Boolean) ((((Boolean) ((((context.getFormattedValue(getObject("config:ApplicationID"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",21,e);}if (_boolean_result) { %><% {out.write(localizeISText("widget.render.error.PleaseChangeContext",null,null,"#","open-widget-configuration",null,null,null,null,null,null,null,null));} %><% } %><% } else { %><% {out.write(localizeISText("widget.render.error.PleaseSelectContext",null,null,"#","open-widget-configuration",null,null,null,null,null,null,null,null));} %><% } %><% out.print(context.prepareWAPlacement("JSWebLibraries")); %>jquery.js<% out.print("</waplacement>"); %><% out.print(context.prepareWAPlacement("WidgetReadyHook")); %>
$('.open-widget-configuration').click(function() {
widget.configure();
});
widget.ready();
<% out.print("</waplacement>"); %><% } %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ErrorCode"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",36,e);}if (_boolean_result) { %><% {out.write(localizeISText("widget.render.error.errorcode","",null,getObject("ErrorCode"),null,null,null,null,null,null,null,null,null));} %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Exception"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",38,e);}if (_boolean_result) { %><%
			Throwable e = (Throwable)getObject("Exception");
			while(e.getCause() != null)
			{
			    e = e.getCause();
			}
			getPipelineDictionary().put("RootCause", e);
		%><% {out.write(localizeISText("widget.render.error.errorcode","",null,getObject("RootCause:Class:SimpleName"),null,null,null,null,null,null,null,null,null));} %><% } else { %><% {out.write(localizeISText("widget.render.error.general","",null,null,null,null,null,null,null,null,null,null,null));} %><% }}} %></div><% printFooter(out); %>