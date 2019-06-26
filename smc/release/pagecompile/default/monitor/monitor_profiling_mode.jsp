<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- TemplateName : monitor_threads.isml -->
<table cellpadding="0" cellspacing="0" border="0" class="w100">
	<!-- Navigation and Content Area -->
	<tr>
		<td class="breadcrumb"><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("Monitor-Start",null),context.getFormattedValue("",null),context.getFormattedValue("SMC",null)))),null)%>" class="breadcrumb"><% {out.write(localizeISText("monitor.Monitoring.link","",null,null,null,null,null,null,null,null,null,null,null));} %></a>&nbsp;&gt;&nbsp;<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("Monitor-PerformanceMonitoring",null),context.getFormattedValue("",null),context.getFormattedValue("SMC",null)))),null)%>" class="breadcrumb"><% {out.write(localizeISText("monitor.Performance.link","",null,null,null,null,null,null,null,null,null,null,null));} %></a>&nbsp;&gt;&nbsp;<% {out.write(localizeISText("monitor.Configuration.link","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
	</tr>
	<tr>
		<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></td>
	</tr>
	<tr>
		<td><% {out.flush();%><%@page import="com.intershop.beehive.core.capi.url.*"%><%URLRewriteHandler handler = getTemplateExecutionConfig().getURLRewriteHandler();
try
{
getTemplateExecutionConfig().setURLRewriteHandler(NullURLRewriteHandler.getInstance());
processRemoteIncludeAutomatic((com.intershop.beehive.core.capi.request.ServletResponse)response,context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewServerSelection-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("TargetPipeline",null),context.getFormattedValue("ViewProfilingMode-Start",null))).addURLParameter(context.getFormattedValue("TargetServerID",null),context.getFormattedValue(getObject("TargetServerID"),null))),null), null, null, "11");}
finally
{
    getTemplateExecutionConfig().setURLRewriteHandler(handler);
}} %></td>
	</tr>
	<tr>
		<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/spacer.gif" width="1" height="5" border="0" alt=""/></td> <!-- blank line, separates server select from content -->
	</tr>
	<!-- Content Area -->
	<tr>
		<td class="table_title aldi"><% {out.write(localizeISText("monitor_profiling_mode.PerformanceConfiguration.table_title","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
	</tr>
	<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ErrorMessage"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",20,e);}if (_boolean_result) { %>
		<tr>
			<td>
				<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
					<tr>
						<td class="error_icon e middle"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
						<td class="error"><% {String value = null;try{value=context.getFormattedValue(getObject("ErrorMessage"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {26}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
					</tr>
				</table>
			</td>
		</tr>
	<% } %>
	<tr>
		<td class="table_title_description w e">
		  <% {out.write(localizeISText("monitor_profiling_mode.PageDisplaysMonitoringStatus.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %> <%= com.intershop.beehive.core.capi.naming.NamingMgr.getManager(com.intershop.beehive.core.capi.performance.PerformanceMgr.class).getPerformanceSensors().size() %> <% {out.write(localizeISText("monitor_profiling_mode.PerformanceSensorsAreActive.table_title_description","",null,null,null,null,null,null,null,null,null,null,null));} %>
		</td>
	</tr>
	<!-- Main Table -->
	<tr>
		 <!-- Main Content -->
		<td>
			<% URLPipelineAction action40 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProfilingMode-Update",null)))),null));String site40 = null;String serverGroup40 = null;String actionValue40 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProfilingMode-Update",null)))),null);if (site40 == null){  site40 = action40.getDomain();  if (site40 == null)  {      site40 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup40 == null){  serverGroup40 = action40.getServerGroup();  if (serverGroup40 == null)  {      serverGroup40 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProfilingMode-Update",null)))),null));out.print("\"");out.print(" name=\"");out.print("Profiling");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue40, site40, serverGroup40,true)); %>
				<table cellpadding="0" cellspacing="0" border="0" width="100%">
                    <tr>
						<td colspan="2" class="table_subtitle aldi" nowrap="nowrap"><% {out.write(localizeISText("monitor_profiling_mode.MonitoringConfiguration.table_subtitle","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
                    </tr>
                    <tr>
						<td colspan="2" class="table_title_description w e s" nowrap="nowrap"><% {out.write(localizeISText("monitor_profiling_mode.SelectTheSensorTypes.table_title_description","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
					</tr>
                    <tr>
						<td class="table_header w e s" nowrap="nowrap" width="75">
							<div id="A">
								<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="75">
									<tr>
										<td nowrap="nowrap">
											<a href="javascript:selectAllWithName('Profiling','SensorType','A','B');" class="tableheader"><% {out.write(localizeISText("monitor_profiling_mode.SelectAll.link","",null,null,null,null,null,null,null,null,null,null,null));} %></a>
										</td>
									</tr>
								</table>
							</div>
							<div id="B" style="display:none">
								<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="75">
									<tr>
										<td nowrap="nowrap">
											<a href="javascript:selectAllWithName('Profiling','SensorType','A','B');" class="tableheader"><% {out.write(localizeISText("monitor_profiling_mode.ClearAll.link","",null,null,null,null,null,null,null,null,null,null,null));} %></a>
										</td>
									</tr>
								</table>
							</div>
						</td>
						<td class="table_header e s"><% {out.write(localizeISText("monitor_profiling_mode.Type.table_header","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
                    </tr>
					<% while (loop("SensorTypes","SensorType",null)) { %>
                    <tr>
                        <% {Object temp_obj = (getObject("SensorTypesStatus:get(SensorType)")); getPipelineDictionary().put("Enabled", temp_obj);} %>
                        <td class="table_detail center w e s" width="75">
                           <input type="checkbox" name="SensorType_<%=context.getFormattedValue(encodeString(context.getFormattedValue(getObject("SensorType"),null)),null)%>" <% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Enabled"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",76,e);}if (_boolean_result) { %>checked="checked"<% } %>/>
                        </td>
                        <td class="table_detail e s"><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"monitor/inc/monitor_sensor_type", null, "78");} %></td>
                    </tr>
                    <% } %>
                </table>
				<table cellpadding="0" cellspacing="0" border="0" class="w e w100">
					<tr>
						<td colspan="2" align="right"><input type="hidden" name="TargetServerID" value="<%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("LocalServer:ServerID"),null)),null)%>"/>
							<table cellpadding="0" cellspacing="4" border="0">
								<tr>
									<td class="button"><input type="submit" class="button" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("monitor.Apply.button",null)),null)%>"/></td>
								</tr>
							</table>
						</td>
					</tr>
				</table>
				<table cellpadding="0" cellspacing="0" border="0" width="100%">
                    <tr>
						<td colspan="2" class="table_subtitle aldi" nowrap="nowrap"><% {out.write(localizeISText("monitor_profiling_mode.ProfilingContext.table_subtitle","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
                    </tr>
					<tr>
						<td class="table_title_description w e s"><% {out.write(localizeISText("monitor_profiling_mode.SetAProfilingContext.table_title_description","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
					</tr>
                    <tr>
                    	<td>
                    		<table border="0" cellpadding="3" cellspacing="0" width="100%">
			                   	<tr>
									<td class="infobox_item w right" nowrap="nowrap" width="125"><% {out.write(localizeISText("monitor_profiling_mode.ApplicationContext.infobox_item","",null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
									<td class="table_detail e" nowrap="nowrap">
										<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Applications"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",106,e);}if (_boolean_result) { %>
											<select name="ProfilingApplicationUUID" size="1" class="select inputfield_en">
												<option value="none"
													<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((Boolean) (disableErrorMessages().isDefined(getObject("ProfilingApplicationUUID")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("ProfilingApplicationUUID"),null).equals(context.getFormattedValue("none",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",109,e);}if (_boolean_result) { %> selected="selected"<% } %>
												>(<% {out.write(localizeISText("monitor_profiling_mode.None.option","",null,null,null,null,null,null,null,null,null,null,null));} %>)</option>
											<% while (loop("Applications","app",null)) { %>
												<option value="<%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("app:UUID"),null)),null)%>"
													<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("app:UUID"),null).equals(context.getFormattedValue(getObject("ProfilingApplicationUUID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",113,e);}if (_boolean_result) { %> selected="selected"<% } %>
												><% {String value = null;try{value=context.getFormattedValue(getObject("app:Site:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {114}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;/&nbsp;<% {String value = null;try{value=context.getFormattedValue(getObject("app:Id"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {114}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("app:Default"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",114,e);}if (_boolean_result) { %>&nbsp;(<% {out.write(localizeISText("monitor.Default.option","",null,null,null,null,null,null,null,null,null,null,null));} %>)<% } %></option>
											<% } %>
										</select>
										<% } %>
									</td>
								</tr>
								<tr>
									<td class="infobox_item w s right" nowrap="nowrap"><% {out.write(localizeISText("monitor_profiling_mode.NameContext.infobox_item","",null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
									<td class="table_detail e s" nowrap="nowrap">
										<input type="text" name="ProfilingContext" maxlength="85" size="25" value="<%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("ProfilingContext"),null)),null)%>" class="inputfield_en" style="width: 200px;"/>
									</td>
								</tr>
							</table>
						</td>
					</tr>
                </table>
				<table cellpadding="0" cellspacing="0" border="0" class="w e w100">
					<tr>
						<td colspan="2" align="right"><input type="hidden" name="TargetServerID" value="<%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("LocalServer:ServerID"),null)),null)%>"/>
							<table cellpadding="0" cellspacing="4" border="0">
								<tr>
									<td class="button"><input type="submit" class="button" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("monitor.Apply.button",null)),null)%>"/></td>
								</tr>
							</table>
						</td>
					</tr>
				</table>
                <table cellpadding="0" cellspacing="0" border="0" width="100%">
                    <tr>
						<td colspan="2" class="table_subtitle aldi" nowrap="nowrap"><% {out.write(localizeISText("monitor_profiling_mode.LoggingConfiguration.table_subtitle","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
                    </tr>
					<tr>
						<td class="w e s center" nowrap="nowrap" width="87" valign="middle">
                            <input type="checkbox" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("LoggingMode"),null).equals(context.getFormattedValue("On",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",147,e);}if (_boolean_result) { %>checked="checked"<% } %> name="LoggingMode"/>
						</td>
						<td class="table_detail e s"><% {out.write(localizeISText("monitor_profiling_mode.LogMeasuredValuesToFile.table_detail","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
					</tr>
				</table>
				<table cellpadding="0" cellspacing="0" border="0" class="w e w100">
					<tr>
						<td colspan="2" align="right"><input type="hidden" name="TargetServerID" value="<%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("LocalServer:ServerID"),null)),null)%>"/>
							<table cellpadding="0" cellspacing="4" border="0">
								<tr>
									<td class="button"><input type="submit" class="button" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("monitor.Apply.button",null)),null)%>"/></td>
								</tr>
							</table>
						</td>
					</tr>
				</table>
                <table cellpadding="0" cellspacing="0" border="0" width="100%">
                    <tr>
						<td colspan="2" class="table_subtitle aldi" nowrap="nowrap"><% {out.write(localizeISText("monitor_profiling_mode.AdditionalMonitoringOptions.table_subtitle","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
                    </tr>
                    <tr>
                        <td class="w e s center" nowrap="nowrap" width="87" valign="middle">
                            <% {String value = null;try{value=context.getFormattedValue(getObject("TraceStructureMode"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {169}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>
                            <input type="checkbox" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("StructureTracingMode"),null).equals(context.getFormattedValue("On",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",170,e);}if (_boolean_result) { %>checked="checked"<% } %> name="StructureTracingMode"/>
                        </td>
                        <td class="table_detail e s"><% {out.write(localizeISText("monitor_profiling_mode.TraceArtifactStructureForActivatedSensors.table_detail","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
                    </tr>
                </table>
                <table cellpadding="0" cellspacing="0" border="0" class="w e w100">
                    <tr>
                        <td colspan="2" align="right"><input type="hidden" name="TargetServerID" value="<%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("LocalServer:ServerID"),null)),null)%>"/>
                            <table cellpadding="0" cellspacing="4" border="0">
                                <tr>
                                    <td class="button"><input type="submit" class="button" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("monitor.Apply.button",null)),null)%>"/></td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
			<% out.print("</form>"); %>
			<% URLPipelineAction action41 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ResetPerformanceSensors-Start",null)))),null));String site41 = null;String serverGroup41 = null;String actionValue41 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ResetPerformanceSensors-Start",null)))),null);if (site41 == null){  site41 = action41.getDomain();  if (site41 == null)  {      site41 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup41 == null){  serverGroup41 = action41.getServerGroup();  if (serverGroup41 == null)  {      serverGroup41 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ResetPerformanceSensors-Start",null)))),null));out.print("\"");out.print(" name=\"");out.print("sensors");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue41, site41, serverGroup41,true)); %>
				<table cellpadding="0" cellspacing="0" border="0" width="100%">
                    <tr>
						<td class="table_subtitle aldi" nowrap="nowrap"><% {out.write(localizeISText("monitor_profiling_mode.ResetPerformanceSensors.table_subtitle","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
                    </tr>
					<tr>
						<td class="table_title_description w e s"><% {out.write(localizeISText("monitor_profiling_mode.CleansUpAllPerformanceSensors.table_title_description","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
					</tr>
					<tr>
						<td class="w e s" align="right"><input type="hidden" name="TargetServerID" value="<%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("LocalServer:ServerID"),null)),null)%>"/>
							<table cellpadding="0" cellspacing="4" border="0">
								<tr>
									<td class="button"><input type="hidden" name="TargetServerID" value="<%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("LocalServer:ServerID"),null)),null)%>"/><input type="submit" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("monitor.Reset.button",null)),null)%>" class="button"/>
									</td>
								</tr>
							</table>
						</td>
					</tr>
				</table>
			<% out.print("</form>"); %>
		</td>
	</tr>
</table>

<% printFooter(out); %>