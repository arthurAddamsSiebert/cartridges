<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% {try{executePipeline("ViewDisplayOptions-GetDisplayOption",((java.util.Map)(((new ParameterMap().addParameter(new ParameterEntry("DisplayOptionContainerID","ProductSimpleSearchMask_DisplayOptions"))).addParameter(new ParameterEntry("DisplayOptionKey","Expand"))))),"DisplayOption");}catch(Exception e){Logger.error(this,"ISPIPELINE failed. Line: 2.",e);}} %><tr>
<td colspan="2">
<table border="0" cellpadding="0" cellspacing="0">
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("DisplayOption:Value"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",7,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("WFSimpleSearch:NameOrID:isInvalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",8,e);}if (_boolean_result) { %><td nowrap="nowrap" class="label_textarea"><label class="label label_textarea label_light label_error" for="WFSimpleSearch_NameOrID"><% {out.write(localizeISText("PageletEntryPointSearchMask.NameOrID.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td><% } else { %><td nowrap="nowrap" class="label_textarea"><label class="label label_textarea label_light" for="WFSimpleSearch_NameOrID"><% {out.write(localizeISText("PageletEntryPointSearchMask.NameOrID.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td><% } %><% } else { %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("WFSimpleSearch:NameOrID:isInvalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",14,e);}if (_boolean_result) { %><td nowrap="nowrap" class="label"><label class="label label_error" for="WFSimpleSearch_NameOrID"><% {out.write(localizeISText("PageletEntryPointSearchMask.NameOrID.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td><% } else { %><td nowrap="nowrap" class="label"><label class="label label_light" for="WFSimpleSearch_NameOrID"><% {out.write(localizeISText("PageletEntryPointSearchMask.NameOrID.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td><% } %><% } %><td>
<input type="hidden" name="DefaultButton" value="findSimple"/><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("DisplayOption:Value"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",22,e);}if (_boolean_result) { %><textarea rows="8" cols="35" class="inputfield_en" id="WFSimpleSearch_NameOrID" name="WFSimpleSearch_NameOrID"><% {String value = null;try{value=context.getFormattedValue(getObject("WFSimpleSearch_NameOrID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {23}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></textarea><% } else { %><input type="text" name="WFSimpleSearch_NameOrID" id="WFSimpleSearch_NameOrID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("WFSimpleSearch_NameOrID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {25}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" maxlength="255" size="35" class="inputfield_en"/><% } %></td>
<td>&nbsp;</td>
<td>
<table border="0" cellspacing="<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Expand"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",30,e);}if (_boolean_result) { %>1<% } else { %>0<% } %>" cellpadding="0">
<tr>
<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="4" height="1" alt="" border="0"/></td>
<td class="button">
<input type="submit" name="findSimple" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PageletEntryPointSearchMask.Find.button",null)),null)%>" class="button"/>
</td>
</tr>
</table>
</td>
</tr>
<tr>
<td>&nbsp;</td>
<td colspan="3"><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("DisplayOption:Value"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",43,e);}if (_boolean_result) { %><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewDisplayOptions-SetDisplayOption",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("DisplayOptionContainerID",null),context.getFormattedValue("ProductSimpleSearchMask_DisplayOptions",null))).addURLParameter(context.getFormattedValue("DisplayOptionKey",null),context.getFormattedValue("Expand",null)).addURLParameter(context.getFormattedValue("DisplayOptionValue",null),context.getFormattedValue("false",null)).addURLParameter(context.getFormattedValue("ContextPipeline",null),context.getFormattedValue(getObject("pagingpipeline"),null)).addURLParameter(context.getFormattedValue("ContextPipeline_Collapse",null),context.getFormattedValue("Collapse",null)).addURLParameter(context.getFormattedValue("ContextPipeline_ClassificationSearchEnabled",null),context.getFormattedValue(getObject("ClassificationSearchEnabled"),null)).addURLParameter(context.getFormattedValue(context.getFormattedValue("ContextPipeline_",null) + context.getFormattedValue(getObject("parametername1"),null),null),context.getFormattedValue(getObject("parametervalue1"),null)).addURLParameter(context.getFormattedValue(context.getFormattedValue("ContextPipeline_",null) + context.getFormattedValue(getObject("parametername2"),null),null),context.getFormattedValue(getObject("parametervalue2"),null)).addURLParameter(context.getFormattedValue(context.getFormattedValue("ContextPipeline_",null) + context.getFormattedValue(getObject("parametername3"),null),null),context.getFormattedValue(getObject("parametervalue3"),null)).addURLParameter(context.getFormattedValue(context.getFormattedValue("ContextPipeline_",null) + context.getFormattedValue(getObject("parametername4"),null),null),context.getFormattedValue(getObject("parametervalue4"),null)).addURLParameter(context.getFormattedValue(context.getFormattedValue("ContextPipeline_",null) + context.getFormattedValue(getObject("parametername5"),null),null),context.getFormattedValue(getObject("parametervalue5"),null)).addURLParameter(context.getFormattedValue(context.getFormattedValue("ContextPipeline_",null) + context.getFormattedValue(getObject("parametername6"),null),null),context.getFormattedValue(getObject("parametervalue6"),null)).addURLParameter(context.getFormattedValue(context.getFormattedValue("ContextPipeline_",null) + context.getFormattedValue(getObject("parametername7"),null),null),context.getFormattedValue(getObject("parametervalue7"),null)).addURLParameter(context.getFormattedValue(context.getFormattedValue("ContextPipeline_",null) + context.getFormattedValue(getObject("parametername8"),null),null),context.getFormattedValue(getObject("parametervalue8"),null)).addURLParameter(context.getFormattedValue(context.getFormattedValue("ContextPipeline_",null) + context.getFormattedValue(getObject("parametername9"),null),null),context.getFormattedValue(getObject("parametervalue9"),null)).addURLParameter(context.getFormattedValue(context.getFormattedValue("ContextPipeline_",null) + context.getFormattedValue(getObject("parametername10"),null),null),context.getFormattedValue(getObject("parametervalue10"),null))),null)%><% _boolean_result=false;try {_boolean_result=((Boolean)((((((Boolean) (disableErrorMessages().isDefined(getObject("InitializingSearch")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("InitializingSearch"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",60,e);}if (_boolean_result) { %>&ContextPipeline_jumpToListInitial=TRUE<% } %>" class="switch_link"><% {out.write(localizeISText("CategorySimpleSearchMask.CollapseField.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a><% } else { %><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewDisplayOptions-SetDisplayOption",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("DisplayOptionContainerID",null),context.getFormattedValue("ProductSimpleSearchMask_DisplayOptions",null))).addURLParameter(context.getFormattedValue("DisplayOptionKey",null),context.getFormattedValue("Expand",null)).addURLParameter(context.getFormattedValue("DisplayOptionValue",null),context.getFormattedValue("true",null)).addURLParameter(context.getFormattedValue("ContextPipeline",null),context.getFormattedValue(getObject("pagingpipeline"),null)).addURLParameter(context.getFormattedValue("ContextPipeline_Expand",null),context.getFormattedValue("Expand",null)).addURLParameter(context.getFormattedValue("ContextPipeline_ClassificationSearchEnabled",null),context.getFormattedValue(getObject("ClassificationSearchEnabled"),null)).addURLParameter(context.getFormattedValue(context.getFormattedValue("ContextPipeline_",null) + context.getFormattedValue(getObject("parametername1"),null),null),context.getFormattedValue(getObject("parametervalue1"),null)).addURLParameter(context.getFormattedValue(context.getFormattedValue("ContextPipeline_",null) + context.getFormattedValue(getObject("parametername2"),null),null),context.getFormattedValue(getObject("parametervalue2"),null)).addURLParameter(context.getFormattedValue(context.getFormattedValue("ContextPipeline_",null) + context.getFormattedValue(getObject("parametername3"),null),null),context.getFormattedValue(getObject("parametervalue3"),null)).addURLParameter(context.getFormattedValue(context.getFormattedValue("ContextPipeline_",null) + context.getFormattedValue(getObject("parametername4"),null),null),context.getFormattedValue(getObject("parametervalue4"),null)).addURLParameter(context.getFormattedValue(context.getFormattedValue("ContextPipeline_",null) + context.getFormattedValue(getObject("parametername5"),null),null),context.getFormattedValue(getObject("parametervalue5"),null)).addURLParameter(context.getFormattedValue(context.getFormattedValue("ContextPipeline_",null) + context.getFormattedValue(getObject("parametername6"),null),null),context.getFormattedValue(getObject("parametervalue6"),null)).addURLParameter(context.getFormattedValue(context.getFormattedValue("ContextPipeline_",null) + context.getFormattedValue(getObject("parametername7"),null),null),context.getFormattedValue(getObject("parametervalue7"),null)).addURLParameter(context.getFormattedValue(context.getFormattedValue("ContextPipeline_",null) + context.getFormattedValue(getObject("parametername8"),null),null),context.getFormattedValue(getObject("parametervalue8"),null)).addURLParameter(context.getFormattedValue(context.getFormattedValue("ContextPipeline_",null) + context.getFormattedValue(getObject("parametername9"),null),null),context.getFormattedValue(getObject("parametervalue9"),null)).addURLParameter(context.getFormattedValue(context.getFormattedValue("ContextPipeline_",null) + context.getFormattedValue(getObject("parametername10"),null),null),context.getFormattedValue(getObject("parametervalue10"),null))),null)%><% _boolean_result=false;try {_boolean_result=((Boolean)((((((Boolean) (disableErrorMessages().isDefined(getObject("InitializingSearch")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("InitializingSearch"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",78,e);}if (_boolean_result) { %>&ContextPipeline_jumpToListInitial=TRUE<% } %>" class="switch_link"><% {out.write(localizeISText("CategorySimpleSearchMask.ExpandField.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a><% } %></td>
</tr>
</table>
</td>
</tr><% printFooter(out); %>