<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ServiceConfigurationID"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",3,e);}if (_boolean_result) { %><% {Object temp_obj = (getObject("ServiceConfigurationID")); getPipelineDictionary().put("ServiceConfigurationID", temp_obj);} %><% } else { %><% {Object temp_obj = (getObject("ServiceConfigurationEditGeneralForm:ServiceConfigurationID:Value")); getPipelineDictionary().put("ServiceConfigurationID", temp_obj);} %><% } %><% {Object temp_obj = (getObject("ApplicationBO:Extension(\"ApplicationSelector\")")); getPipelineDictionary().put("ApplicationSelector", temp_obj);} %><table border="0" cellspacing="0" cellpadding="0" width="100%" data-testing-id="section-service-configuration-tabs">
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SelectedTab"),null).equals(context.getFormattedValue("General",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",12,e);}if (_boolean_result) { %><td class="w n table_tabs_en_background" nowrap="nowrap" data-testing-id="service-configuration-general-tab"><% {out.write(localizeISText("ServicesChannelEditTabs.General.table_tabs_en_background",null,null,null,null,null,null,null,null,null,null,null,null));} %></td><% } else { %><td class="w n s table_tabs_dis_background" nowrap="nowrap" data-testing-id="service-configuration-general-tab">
<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelServiceEdit-General",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ServiceConfigurationID",null),context.getFormattedValue(getObject("ServiceConfigurationID"),null)))),null)%>" class="table_tabs_dis"><% {out.write(localizeISText("ServicesChannelEditTabs.General.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
</td><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SelectedTab"),null).equals(context.getFormattedValue("Configuration",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",20,e);}if (_boolean_result) { %><td class="w n table_tabs_en_background" nowrap="nowrap" data-testing-id="service-configuration-configuration-tab"><% {out.write(localizeISText("ServicesChannelEditTabs.Configuration.table_tabs_en_background",null,null,null,null,null,null,null,null,null,null,null,null));} %></td><% } else { %><td class="w n s table_tabs_dis_background" nowrap="nowrap" data-testing-id="service-configuration-configuration-tab">
<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelServiceEdit-Configuration",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ServiceConfigurationID",null),context.getFormattedValue(getObject("ServiceConfigurationID"),null)))),null)%>" class="table_tabs_dis"><% {out.write(localizeISText("ServicesChannelEditTabs.Configuration.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
</td><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ServiceConfiguration:isShareable"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",28,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SelectedTab"),null).equals(context.getFormattedValue("SharingRules",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",29,e);}if (_boolean_result) { %><td class="w n table_tabs_en_background" nowrap="nowrap" data-testing-id="service-configuration-sharing-tab"><% {out.write(localizeISText("ServicesChannelEditTabs.Sharing.table_tabs_en_background",null,null,null,null,null,null,null,null,null,null,null,null));} %></td><% } else { %><td class="w n s table_tabs_dis_background" nowrap="nowrap" data-testing-id="service-configuration-sharing-tab">
<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelServiceEdit-SharingRules",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ServiceConfigurationID",null),context.getFormattedValue(getObject("ServiceConfigurationID"),null)))),null)%>" class="table_tabs_dis"><% {out.write(localizeISText("ServicesChannelEditTabs.Sharing.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
</td><% } %><% } %><% {out.flush();processExtensionPoint((com.intershop.beehive.core.capi.request.ServletResponse)response,"ServicesChannelEditTabs", null, "37");} %><td class="w s" nowrap="nowrap" width="100%">&nbsp;</td>
</tr>
</table><% printFooter(out); %>