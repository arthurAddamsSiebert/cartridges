<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% processOpenTag(response, pageContext, "additionalparametervaluecontext", new TagParameter[] {
new TagParameter("ValueContext","ValueContext"),
new TagParameter("PageletModelRepository",getObject("PageletModelRepository")),
new TagParameter("ConfigurationParameterDefinition",getObject("ConfigurationParameterDefinition"))}, 2); %><% processOpenTag(response, pageContext, "createmap", new TagParameter[] {
new TagParameter("key1","UnitDomain"),
new TagParameter("key2","FileExtension"),
new TagParameter("key0","Locale"),
new TagParameter("value2",getObject("ValueContext:ValueOf(ConfigurationParameterDefinition:ParameterValueBindingsAsMap:FileExtension)")),
new TagParameter("value1",getObject("CurrentChannel:Domain")),
new TagParameter("value0",getObject("Locale")),
new TagParameter("mapname","PipelineParams")}, 3); %><% {try{executePipeline("ProcessConfigurationParameter-GetFileReferences",((java.util.Map)(getObject("PipelineParams"))),"Result");}catch(Exception e){Logger.error(this,"ISPIPELINE failed. Line: 7.",e);}} %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("IsPageletEditable"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",8,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Result:Files") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",9,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ConfigurationParameterDefinition:Multiple"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",10,e);}if (_boolean_result) { %><table style="margin-left: -3px;">
<tr>
<td><% {out.write(localizeISText("ChannelFileReferenceParameterInc.AvailableFiles",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td>&nbsp;</td>
<td><% {out.write(localizeISText("ChannelFileReferenceParameterInc.SelectedFile",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td>&nbsp;</td>
</tr>
<tr>
<td>
<select multiple="multiple" size="5" class="inputfield_en" style="width: 300px;" id="allRefs_<% {String value = null;try{value=context.getFormattedValue(getObject("ConfigurationParameterDefinition:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {20}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% while (loop("Result:Files","File",null)) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (getObject("ConfigurationParameterWebForm:getParameter(ConfigurationParameterDefinition:Name):Value:Contains(File:ContentDescriptor)"))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",22,e);}if (_boolean_result) { %><option value="<% {String value = null;try{value=context.getFormattedValue(getObject("File:ContentDescriptor"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {23}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% {String value = null;try{value=context.getFormattedValue(replace(context.getFormattedValue(getObject("File:ContentDescriptor"),null),(String)(".*:"),(String)("")),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {24}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></option><% } %> 
<% } %></select>
</td>
<td>
<input type="image" src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/sort_right.gif" alt="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ChannelFileReferenceParameterInc.Add.alt",null)),null)%>" title="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ChannelFileReferenceParameterInc.Add.input",null)),null)%>" onclick="moveOptionsAcross('allRefs_<% {String value = null;try{value=context.getFormattedValue(getObject("ConfigurationParameterDefinition:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {31}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>', 'selectedRefs_<% {String value = null;try{value=context.getFormattedValue(getObject("ConfigurationParameterDefinition:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {31}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>'); return false;"/>
<div style="height: 5px;"></div>
<input type="image" src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/sort_left.gif" alt="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ChannelFileReferenceParameterInc.Remove.alt",null)),null)%>" title="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ChannelFileReferenceParameterInc.Remove.input",null)),null)%>" onclick="moveOptionsAcross('selectedRefs_<% {String value = null;try{value=context.getFormattedValue(getObject("ConfigurationParameterDefinition:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {33}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>', 'allRefs_<% {String value = null;try{value=context.getFormattedValue(getObject("ConfigurationParameterDefinition:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {33}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>'); return false;"/>
</td>
<td>
<select multiple="multiple" size="5" class="submitAllValues inputfield_en" style="width: 300px;"
name="ConfigurationParameter_<% {String value = null;try{value=context.getFormattedValue(getObject("ConfigurationParameterDefinition:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {37}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" 
id="selectedRefs_<% {String value = null;try{value=context.getFormattedValue(getObject("ConfigurationParameterDefinition:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {38}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" 
><% while (loop("ConfigurationParameterWebForm:getParameter(ConfigurationParameterDefinition:Name):Value:Iterator","ParameterValue",null)) { %><option value="<% {String value = null;try{value=context.getFormattedValue(getObject("ParameterValue"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {41}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% {String value = null;try{value=context.getFormattedValue(replace(context.getFormattedValue(getObject("ParameterValue"),null),(String)(".*:"),(String)("")),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {41}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></option><% } %> 
</select>
</td>
<td>
<input type="image" src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/sort_up.gif" alt="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ChannelFileReferenceParameterInc.MoveUp.alt",null)),null)%>" title="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ChannelFileReferenceParameterInc.MoveUp.input",null)),null)%>" onclick="moveOptionsUp('selectedRefs_<% {String value = null;try{value=context.getFormattedValue(getObject("ConfigurationParameterDefinition:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {46}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>'); return false;"/>
<div style="height: 5px;"></div>
<input type="image" src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/sort_down.gif" alt="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ChannelFileReferenceParameterInc.MoveDown.alt",null)),null)%>" title="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ChannelFileReferenceParameterInc.MoveDown.input",null)),null)%>" onclick="moveOptionsDown('selectedRefs_<% {String value = null;try{value=context.getFormattedValue(getObject("ConfigurationParameterDefinition:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {48}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>'); return false;"/>
</td>
</tr> 
</table> 
<% } else { %><select class="inputfield_en" style="width: 300px;" name="ConfigurationParameter_<% {String value = null;try{value=context.getFormattedValue(getObject("ConfigurationParameterDefinition:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {53}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>">
<option value=""></option><% while (loop("Result:Files","File",null)) { %><option value="<% {String value = null;try{value=context.getFormattedValue(getObject("File:ContentDescriptor"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {56}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("File:ContentDescriptor"),null).equals(context.getFormattedValue(getObject("ConfigurationParameterWebForm:getParameter(ConfigurationParameterDefinition:Name):Value"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",56,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {String value = null;try{value=context.getFormattedValue(replace(context.getFormattedValue(getObject("File:ContentDescriptor"),null),(String)(".*:"),(String)("")),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {57}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></option><% } %></select><% } %><% } else { %><% {out.write(localizeISText("ChannelFileReferenceParameterInc.NoFilesAvailableFilesNeedToBeUploaded",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %><% } else { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ConfigurationParameterDefinition:Multiple"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",66,e);}if (_boolean_result) { %><select multiple="multiple" size="5" class="inputfield_en" style="width: 300px;" disabled="disabled"
name="ConfigurationParameter_<% {String value = null;try{value=context.getFormattedValue(getObject("ConfigurationParameterDefinition:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {68}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% while (loop("ConfigurationParameterWebForm:getParameter(ConfigurationParameterDefinition:Name):Value:Iterator","ParameterValue",null)) { %><option value="<% {String value = null;try{value=context.getFormattedValue(getObject("ParameterValue"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {70}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% {String value = null;try{value=context.getFormattedValue(replace(context.getFormattedValue(getObject("ParameterValue"),null),(String)(".*:"),(String)("")),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {70}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></option><% } %> 
</select><% } else { %><input type="text" class="inputfield_en" size="50" disabled="disabled"
name="ConfigurationParameter_<% {String value = null;try{value=context.getFormattedValue(getObject("ConfigurationParameterDefinition:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {75}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" 
value="<% {String value = null;try{value=context.getFormattedValue(getObject("ConfigurationParameterWebForm:getParameter(ConfigurationParameterDefinition:Name):Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {76}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><% } %><% } %><% printFooter(out); %>