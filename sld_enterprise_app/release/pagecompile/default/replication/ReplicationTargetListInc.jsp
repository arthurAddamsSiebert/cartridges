<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %>

<% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("TargetClusters") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",4,e);}if (_boolean_result) { %>
	<table cellpadding="0" cellspacing="0" border="0" width="100%" class="w e">
		<tr>
			<td class="table_header e s" width="70">&nbsp;</td>
			<td class="table_header e s" nowrap="nowrap"><% {out.write(localizeISText("ReplicationTargetListInc.TargetCluster.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
			<td class="table_header e s" nowrap="nowrap"><% {out.write(localizeISText("ReplicationTargetListInc.WebServerURL.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
			<td class="table_header s" nowrap="nowrap"><% {out.write(localizeISText("ReplicationTargetListInc.ServerGroup.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
		</tr>
		<% {Object temp_obj = ("true"); getPipelineDictionary().put("IsFirstTargetCluster", temp_obj);} %>
		<% while (loop("TargetClusters","target",null)) { %>
			<tr>
				<td class="table_detail center e s" width="70">
					<input type="Radio" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("IsFirstTargetCluster"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",16,e);}if (_boolean_result) { %>checked="checked"<% } %> name="TargetClusterID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("target:ClusterID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {16}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
				</td>
				<td class="table_detail e s" nowrap="nowrap">
					<% while (loop("target:TargetSystems","TargetSystem",null)) { %><% {String value = null;try{value=context.getFormattedValue(getObject("TargetSystem:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {19}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% _boolean_result=false;try {_boolean_result=((Boolean)((hasNext("TargetSystem") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",19,e);}if (_boolean_result) { %><br/><% } %><% } %>&nbsp;
				</td>
				<td class="table_detail e s" nowrap="nowrap">
					<% while (loop("target:TargetSystems","TargetSystem",null)) { %><% {String value = null;try{value=context.getFormattedValue(getObject("TargetSystem:WebServerURL"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {22}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% _boolean_result=false;try {_boolean_result=((Boolean)((hasNext("TargetSystem") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",22,e);}if (_boolean_result) { %><br/><% } %><% } %>&nbsp;
				</td>
				<td class="table_detail s" nowrap="nowrap">
					<% while (loop("target:TargetSystems","TargetSystem",null)) { %><% {String value = null;try{value=context.getFormattedValue(getObject("TargetSystem:TargetServerGroup"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {25}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% _boolean_result=false;try {_boolean_result=((Boolean)((hasNext("TargetSystem") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",25,e);}if (_boolean_result) { %><br/><% } %><% } %>&nbsp;
				</td>
			</tr>
			<% {Object temp_obj = ("false"); getPipelineDictionary().put("IsFirstTargetCluster", temp_obj);} %>
		<% } %>
	</table>
	<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("CorrelatedLockingEnabled")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("CorrelatedLockingEnabled"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",31,e);}if (_boolean_result) { %>
		<!-- Locking Conflict Policies-->
		<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("UserLockConflictPolicySelectionDisabled")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("UserLockConflictPolicySelectionDisabled"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",33,e);}if (_boolean_result) { %>
			<input type="hidden" name="UserLockingConflictPolicy" value="ignore"/>
		<% } else { %>
			<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e" >
				<tr>
					<td colspan="2" class="table_title2 left s"><% {out.write(localizeISText("ReplicationTargetListInc.UserLockingConflictResolution.table_title2",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
				</tr>
				<tr>
					<td colspan="2" class="table_title_description s">
						<% {out.write(localizeISText("ReplicationTargetListInc.SelectThePreferredConflictResolutionForThisPublish.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %>
					</td>
				</tr>
				<tr>
					<td class="table_detail center s" width="70">
						<input type="Radio" checked="checked" name="UserLockingConflictPolicy" value="steal"/>
					</td>
					<td class="table_detail s" nowrap="nowrap">
						<% {out.write(localizeISText("ReplicationTargetListInc.StealLocks.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %>
					</td>
				</tr>
				<tr>
					<td class="table_detail center s" width="70">
						<input type="Radio" name="UserLockingConflictPolicy" value="fail"/>
					</td>
					<td class="table_detail s" nowrap="nowrap">
						<% {out.write(localizeISText("ReplicationTargetListInc.Fail.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %>
					</td>
				</tr>
			</table>
		<% } %>
		<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e" >
			<tr>
				<td colspan="3" class="table_title2 left s"><% {out.write(localizeISText("ReplicationTargetListInc.SystemProcessLockingConflictResolution.table_title2",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
			</tr>
			<tr>
				<td colspan="2" class="table_title_description s">
					<% {out.write(localizeISText("ReplicationTargetListInc.SelectThePreferredConflictResolutionForThisPublish.table_title_description1",null,null,context.getFormattedValue(getObject("ReplicationAcquisitionTimeout"),null),context.getFormattedValue(getObject("ReplicationAcquisitionTimeout"),null),context.getFormattedValue(getObject("ReplicationAcquisitionTimeout"),null),null,null,null,null,null,null,null));} %>
					<input type="hidden" name="CorrelatedLockingEnabled" value="true"/>
				</td>
			</tr>
			<tr>
				<td class="table_detail center s" width="70">
					<input type="Radio" checked="checked" name="SystemLockingConflictPolicy" value="wait"/>
				</td>
				<td class="table_detail s" nowrap="nowrap">
					<% {out.write(localizeISText("ReplicationTargetListInc.Wait0S.table_detail",null,null,context.getFormattedValue(getObject("ReplicationAcquisitionTimeout"),null),null,null,null,null,null,null,null,null,null));} %>
				</td>
			</tr>
			<tr>
				<td class="table_detail center s" width="70">
					<input type="Radio" name="SystemLockingConflictPolicy" value="fail"/>
				</td>
				<td class="table_detail s" nowrap="nowrap">
					<% {out.write(localizeISText("ReplicationTargetListInc.Fail.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %>
				</td>
			</tr>
		</table>
	<% } %>
	
	<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("AffectedItems"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",92,e);}if (_boolean_result) { %>
		<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e" >
			<tr>
				<td colspan="3" class="table_title2 left s"><% {out.write(localizeISText("ReplicationTargetListInc.AffectedItems.table_title2",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
			</tr>
			<tr>
				<td colspan="2" class="table_title_description s">
					<% {out.write(localizeISText("ReplicationTargetListInc.AffectedItems.table_title_description",null,null,context.getFormattedValue(getObject("ReplicationAcquisitionTimeout"),null),context.getFormattedValue(getObject("ReplicationAcquisitionTimeout"),null),context.getFormattedValue(getObject("ReplicationAcquisitionTimeout"),null),null,null,null,null,null,null,null));} %>
					<input type="hidden" name="CorrelatedLockingEnabled" value="true"/>
				</td>
			</tr>
		</table>
		
		<% processOpenTag(response, pageContext, "createmap", new TagParameter[] {
new TagParameter("key0","Application"),
new TagParameter("value0",getObject("CurrentApplication")),
new TagParameter("mapname","params")}, 105); %>
		<% processOpenTag(response, pageContext, "grid", new TagParameter[] {
new TagParameter("currentapplication",getObject("CurrentApplication")),
new TagParameter("columnstemplate","grid/AffectedItemsColumns.isml"),
new TagParameter("configuration","affectedItems"),
new TagParameter("sticky","false"),
new TagParameter("datatemplate","grid/ProductData.isml"),
new TagParameter("pageable",getObject("AffectedItems")),
new TagParameter("id","affectedItemsGrid"),
new TagParameter("pageablename","AffectedItems"),
new TagParameter("params",getObject("params"))}, 108); %>
					
		<input type="hidden"  name="AffectedItemsPageableID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("AffectedItems:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {118}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>">
	<% } %>
<% } else { %>
	<table cellpadding="0" cellspacing="0" border="0" width="100%" class="w e">
		<tr>
			<td class="table_detail s"><% {out.write(localizeISText("ReplicationTargetListInc.NoTargetClusterAvailable.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
		</tr>
	</table>
<% } %>
<% printFooter(out); %>