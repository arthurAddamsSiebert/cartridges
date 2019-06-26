<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"content/assignment/Modules", null, "3");} %><% processOpenTag(response, pageContext, "createmap", new TagParameter[] {
new TagParameter("key0","PageletUUID"),
new TagParameter("value0",getObject("Pagelet:UUID")),
new TagParameter("mapname","Parameters")}, 4); %><% {try{executePipeline("ViewPagelet-IsTabSwitched",((java.util.Map)(getObject("Parameters"))),"TabStatus");}catch(Exception e){Logger.error(this,"ISPIPELINE failed. Line: 5.",e);}} %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Pagelet:Page"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",6,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "pageletpageletentrypointassignments", new TagParameter[] {
new TagParameter("Locale",getObject("Locale")),
new TagParameter("Assignment",getObject("Assignment")),
new TagParameter("PageLocatorName",getObject("PageLocatorName")),
new TagParameter("AssignmentTargetsAvailable","AssignmentTargetsAvailable1"),
new TagParameter("AssignmentType","Page"),
new TagParameter("ContentRepository",getObject("Repository")),
new TagParameter("Pagelet",getObject("Pagelet")),
new TagParameter("StartFlag",getObject("TabStatus:Flag"))}, 7); %><% processOpenTag(response, pageContext, "pageletpageletentrypointassignments", new TagParameter[] {
new TagParameter("Locale",getObject("Locale")),
new TagParameter("Assignment",getObject("Assignment")),
new TagParameter("PageLocatorName",getObject("PageLocatorName")),
new TagParameter("AssignmentTargetsAvailable","AssignmentTargetsAvailable2"),
new TagParameter("AssignmentType","CategoryPage"),
new TagParameter("ContentRepository",getObject("Repository")),
new TagParameter("Pagelet",getObject("Pagelet")),
new TagParameter("StartFlag",getObject("TabStatus:Flag"))}, 17); %><% processOpenTag(response, pageContext, "pageletproductassignments", new TagParameter[] {
new TagParameter("Locale",getObject("Locale")),
new TagParameter("Assignment",getObject("Assignment")),
new TagParameter("PageLocatorName",getObject("PageLocatorName")),
new TagParameter("AssignmentTargetsAvailable","AssignmentTargetsAvailable3"),
new TagParameter("AssignmentType","ProductPage"),
new TagParameter("ContentRepository",getObject("Repository")),
new TagParameter("Pagelet",getObject("Pagelet")),
new TagParameter("StartFlag",getObject("TabStatus:Flag"))}, 27); %><% {Object temp_obj = (((((Boolean) getObject("AssignmentTargetsAvailable1")).booleanValue() || ((Boolean) getObject("AssignmentTargetsAvailable2")).booleanValue() || ((Boolean) getObject("AssignmentTargetsAvailable3")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE)); getPipelineDictionary().put("AssignmentTargetsAvailable", temp_obj);} %><% } else { %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Pagelet:Template"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",39,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "pageletpageletassignments", new TagParameter[] {
new TagParameter("Locale",getObject("Locale")),
new TagParameter("Assignment",getObject("Assignment")),
new TagParameter("PageLocatorName",getObject("PageLocatorName")),
new TagParameter("AssignmentTargetsAvailable","AssignmentTargetsAvailable1"),
new TagParameter("AssignmentType","PageTemplate"),
new TagParameter("ContentRepository",getObject("Repository")),
new TagParameter("Pagelet",getObject("Pagelet")),
new TagParameter("StartFlag",getObject("TabStatus:Flag"))}, 40); %><% processOpenTag(response, pageContext, "pageletpageletassignments", new TagParameter[] {
new TagParameter("Locale",getObject("Locale")),
new TagParameter("Assignment",getObject("Assignment")),
new TagParameter("PageLocatorName",getObject("PageLocatorName")),
new TagParameter("AssignmentTargetsAvailable","AssignmentTargetsAvailable2"),
new TagParameter("AssignmentType","ComponentTemplate"),
new TagParameter("ContentRepository",getObject("Repository")),
new TagParameter("Pagelet",getObject("Pagelet")),
new TagParameter("StartFlag",getObject("TabStatus:Flag"))}, 50); %> 
<% {Object temp_obj = (((((Boolean) getObject("AssignmentTargetsAvailable1")).booleanValue() || ((Boolean) getObject("AssignmentTargetsAvailable2")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE)); getPipelineDictionary().put("AssignmentTargetsAvailable", temp_obj);} %><% } else { %><% processOpenTag(response, pageContext, "pageletpageletassignments", new TagParameter[] {
new TagParameter("Locale",getObject("Locale")),
new TagParameter("Assignment",getObject("Assignment")),
new TagParameter("PageLocatorName",getObject("PageLocatorName")),
new TagParameter("AssignmentTargetsAvailable","AssignmentTargetsAvailable1"),
new TagParameter("AssignmentType","PageVariant"),
new TagParameter("ContentRepository",getObject("Repository")),
new TagParameter("Pagelet",getObject("Pagelet")),
new TagParameter("StartFlag",getObject("TabStatus:Flag"))}, 62); %><% processOpenTag(response, pageContext, "pageletpageletassignments", new TagParameter[] {
new TagParameter("Locale",getObject("Locale")),
new TagParameter("Assignment",getObject("Assignment")),
new TagParameter("PageLocatorName",getObject("PageLocatorName")),
new TagParameter("AssignmentTargetsAvailable","AssignmentTargetsAvailable2"),
new TagParameter("AssignmentType","Component"),
new TagParameter("ContentRepository",getObject("Repository")),
new TagParameter("Pagelet",getObject("Pagelet")),
new TagParameter("StartFlag",getObject("TabStatus:Flag"))}, 72); %><% processOpenTag(response, pageContext, "pageletpageletentrypointassignments", new TagParameter[] {
new TagParameter("Locale",getObject("Locale")),
new TagParameter("Assignment",getObject("Assignment")),
new TagParameter("PageLocatorName",getObject("PageLocatorName")),
new TagParameter("AssignmentTargetsAvailable","AssignmentTargetsAvailable3"),
new TagParameter("AssignmentType","Include"),
new TagParameter("ContentRepository",getObject("Repository")),
new TagParameter("Pagelet",getObject("Pagelet")),
new TagParameter("StartFlag",getObject("TabStatus:Flag"))}, 82); %><% processOpenTag(response, pageContext, "pageletpageletentrypointassignments", new TagParameter[] {
new TagParameter("Locale",getObject("Locale")),
new TagParameter("Assignment",getObject("Assignment")),
new TagParameter("PageLocatorName",getObject("PageLocatorName")),
new TagParameter("AssignmentTargetsAvailable","AssignmentTargetsAvailable4"),
new TagParameter("AssignmentType","CategoryInclude"),
new TagParameter("ContentRepository",getObject("Repository")),
new TagParameter("Pagelet",getObject("Pagelet")),
new TagParameter("StartFlag",getObject("TabStatus:Flag"))}, 92); %><% processOpenTag(response, pageContext, "pageletproductassignments", new TagParameter[] {
new TagParameter("Locale",getObject("Locale")),
new TagParameter("Assignment",getObject("Assignment")),
new TagParameter("PageLocatorName",getObject("PageLocatorName")),
new TagParameter("AssignmentTargetsAvailable","AssignmentTargetsAvailable5"),
new TagParameter("AssignmentType","ProductInclude"),
new TagParameter("ContentRepository",getObject("Repository")),
new TagParameter("Pagelet",getObject("Pagelet")),
new TagParameter("StartFlag",getObject("TabStatus:Flag"))}, 102); %><% processOpenTag(response, pageContext, "pageletpageletassignments", new TagParameter[] {
new TagParameter("Locale",getObject("Locale")),
new TagParameter("Assignment",getObject("Assignment")),
new TagParameter("PageLocatorName",getObject("PageLocatorName")),
new TagParameter("AssignmentTargetsAvailable","AssignmentTargetsAvailable6"),
new TagParameter("AssignmentType","PageTemplate"),
new TagParameter("ContentRepository",getObject("Repository")),
new TagParameter("Pagelet",getObject("Pagelet")),
new TagParameter("StartFlag",getObject("TabStatus:Flag"))}, 112); %><% processOpenTag(response, pageContext, "pageletpageletassignments", new TagParameter[] {
new TagParameter("Locale",getObject("Locale")),
new TagParameter("Assignment",getObject("Assignment")),
new TagParameter("PageLocatorName",getObject("PageLocatorName")),
new TagParameter("AssignmentTargetsAvailable","AssignmentTargetsAvailable7"),
new TagParameter("AssignmentType","ComponentTemplate"),
new TagParameter("ContentRepository",getObject("Repository")),
new TagParameter("Pagelet",getObject("Pagelet")),
new TagParameter("StartFlag",getObject("TabStatus:Flag"))}, 122); %><% {Object temp_obj = (((((Boolean) getObject("AssignmentTargetsAvailable1")).booleanValue() || ((Boolean) getObject("AssignmentTargetsAvailable2")).booleanValue() || ((Boolean) getObject("AssignmentTargetsAvailable3")).booleanValue() || ((Boolean) getObject("AssignmentTargetsAvailable4")).booleanValue() || ((Boolean) getObject("AssignmentTargetsAvailable5")).booleanValue() || ((Boolean) getObject("AssignmentTargetsAvailable6")).booleanValue() || ((Boolean) getObject("AssignmentTargetsAvailable7")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE)); getPipelineDictionary().put("AssignmentTargetsAvailable", temp_obj);} %><% } %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (getObject("AssignmentTargetsAvailable"))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",135,e);}if (_boolean_result) { %><table cellspacing="0" cellpadding="0" border="0" width="100%">
<tr>
<td class="table_detail w e s"><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Pagelet:Page"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",139,e);}if (_boolean_result) { %><% {out.write(localizeISText("PageletTabAssignments.ThereAreCurrentlyNoTargetsThePageVariantCanBeAssig.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else { %><% {out.write(localizeISText("PageletTabAssignments.ThereAreCurrentlyNoTargetsTheComponentCanBeAssigne.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %></td>
</tr>
</table><% } %><% printFooter(out); %>