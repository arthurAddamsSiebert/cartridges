<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SelectedTab"),null).equals(context.getFormattedValue("New",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",3,e);}if (_boolean_result) { %><table border="0" cellspacing="0" cellpadding="0" class="w100">
<tr>
<td class="w e n table_tabs_en_background" nowrap="nowrap"><% {out.write(localizeISText("UserTabs.General.table_tabs_en_background",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="e n s table_tabs_dis_background" nowrap="nowrap"><% {out.write(localizeISText("UserTabs.Attributes.table_tabs_dis_background",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="e n s table_tabs_dis_background" nowrap="nowrap"><% {out.write(localizeISText("UserTabs.AccessPrivileges.table_tabs_dis_background",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="e n s table_tabs_dis_background" nowrap="nowrap"><% {out.write(localizeISText("UserTabs.Addresses.table_tabs_dis_background",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="s" width="100%"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="1" border="0" alt=""/></td>
</tr>
</table><% } else { %><table border="0" cellspacing="0" cellpadding="0" class="w100">
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SelectedTab"),null).equals(context.getFormattedValue("General",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",16,e);}if (_boolean_result) { %><td class="w e n table_tabs_en_background" nowrap="nowrap"><% {out.write(localizeISText("UserTabs.General.table_tabs_en_background",null,null,null,null,null,null,null,null,null,null,null,null));} %></td><% } else { %><td class="w e n s table_tabs_dis_background" nowrap="nowrap">
<a class="table_tabs_dis" href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewUser-Show",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("USER_UUID",null),context.getFormattedValue(getObject("Profile:UUID"),null)))),null)%>"><% {out.write(localizeISText("UserTabs.General.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
</td><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SelectedTab"),null).equals(context.getFormattedValue("Attributes",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",23,e);}if (_boolean_result) { %><td class="e n table_tabs_en_background" nowrap="nowrap"><% {out.write(localizeISText("UserTabs.Attributes.table_tabs_en_background",null,null,null,null,null,null,null,null,null,null,null,null));} %></td><% } else { %><td class="e n s table_tabs_dis_background" nowrap="nowrap">
<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewUser-ManageCA",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("USER_UUID",null),context.getFormattedValue(getObject("Profile:UUID"),null)))),null)%>" class="table_tabs_dis"><% {out.write(localizeISText("UserTabs.Attributes.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
</td><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SelectedTab"),null).equals(context.getFormattedValue("AccessPrivileges",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",30,e);}if (_boolean_result) { %><td class="e n table_tabs_en_background" nowrap="nowrap"><% {out.write(localizeISText("UserTabs.AccessPrivileges.table_tabs_en_background",null,null,null,null,null,null,null,null,null,null,null,null));} %></td><% } else { %><td class="e n s table_tabs_dis_background" nowrap="nowrap">
<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewUserAccessRoles-Show",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("USER_UUID",null),context.getFormattedValue(getObject("Profile:UUID"),null)))),null)%>" class="table_tabs_dis"><% {out.write(localizeISText("UserTabs.AccessPrivileges.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
</td><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SelectedTab"),null).equals(context.getFormattedValue("Addresses",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",37,e);}if (_boolean_result) { %><td class="e n table_tabs_en_background" nowrap="nowrap"><% {out.write(localizeISText("UserTabs.Addresses.table_tabs_en_background",null,null,null,null,null,null,null,null,null,null,null,null));} %></td><% } else { %><td class="e n s table_tabs_dis_background" nowrap="nowrap">
<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewUserAddressList-List",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("USER_UUID",null),context.getFormattedValue(getObject("Profile:UUID"),null)))),null)%>" class="table_tabs_dis"><% {out.write(localizeISText("UserTabs.Addresses.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
</td><% } %><td class="s" width="100%"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="1" border="0" alt=""/></td>
</tr>
</table><% } %><% printFooter(out); %>