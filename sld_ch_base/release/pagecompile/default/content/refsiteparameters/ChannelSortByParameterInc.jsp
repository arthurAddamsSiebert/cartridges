<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% processOpenTag(response, pageContext, "createmap", new TagParameter[] {
new TagParameter("key1","Domain"),
new TagParameter("key0","Locale"),
new TagParameter("value1",getObject("CurrentChannel:Domain")),
new TagParameter("value0",getObject("Locale")),
new TagParameter("mapname","PipelineParams")}, 2); %><% {try{executePipeline("ProcessSearchIndex-GetSortings",((java.util.Map)(getObject("PipelineParams"))),"Result");}catch(Exception e){Logger.error(this,"ISPIPELINE failed. Line: 5.",e);}} %><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Result:SortableAttributes") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",7,e);}if (_boolean_result) { %><table style="margin-left: -3px;">
<tr>
<td><% {out.write(localizeISText("ChannelSortByParameterInc.AvailableSortings",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td>&nbsp;</td>
<td><% {out.write(localizeISText("ChannelSortByParameterInc.SelectedSortings",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td>&nbsp;</td>
</tr>
<tr>
<td> 
<select multiple="multiple" size="5" class="inputfield_en" style="width: 300px;" id="allRefs_<% {String value = null;try{value=context.getFormattedValue(getObject("ConfigurationParameterDefinition:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {17}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% while (loop("Result:SortableAttributes","Sorting",null)) { %><% {Object temp_obj = (context.getFormattedValue(getObject("Sorting:Name"),null) + context.getFormattedValue("-asc",null)); getPipelineDictionary().put("sortingName_asc", temp_obj);} %><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (getObject("ConfigurationParameterWebForm:getParameter(ConfigurationParameterDefinition:Name):Value:Contains(sortingName_asc)"))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",20,e);}if (_boolean_result) { %> 
<option value="<% {String value = null;try{value=context.getFormattedValue(getObject("Sorting:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {21}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>-asc"><% {String value = null;try{value=context.getFormattedValue(getObject("Sorting:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {22}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> - <% {out.write(localizeISText("ChannelSortByParameterInc.Ascending.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option><% } %><% {Object temp_obj = (context.getFormattedValue(getObject("Sorting:Name"),null) + context.getFormattedValue("-desc",null)); getPipelineDictionary().put("sortingName_desc", temp_obj);} %><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (getObject("ConfigurationParameterWebForm:getParameter(ConfigurationParameterDefinition:Name):Value:Contains(sortingName_desc)"))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",26,e);}if (_boolean_result) { %><option value="<% {String value = null;try{value=context.getFormattedValue(getObject("Sorting:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {27}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>-desc"><% {String value = null;try{value=context.getFormattedValue(getObject("Sorting:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {28}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> - <% {out.write(localizeISText("ChannelSortByParameterInc.Descending.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option><% } %> 
<% } %><!-- Gross/Net integration --><% {Object temp_obj = ("SalePrice-asc"); getPipelineDictionary().put("sortingName_asc", temp_obj);} %><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (getObject("ConfigurationParameterWebForm:getParameter(ConfigurationParameterDefinition:Name):Value:Contains(sortingName_asc)"))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",34,e);}if (_boolean_result) { %> 
<option value="SalePrice-asc"><% {out.write(localizeISText("ChannelSortByParameterInc.SalePriceAscending.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option><% } %><% {Object temp_obj = ("SalePrice-desc"); getPipelineDictionary().put("sortingName_desc", temp_obj);} %><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (getObject("ConfigurationParameterWebForm:getParameter(ConfigurationParameterDefinition:Name):Value:Contains(sortingName_desc)"))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",40,e);}if (_boolean_result) { %><option value="SalePrice-desc"><% {out.write(localizeISText("ChannelSortByParameterInc.SalePriceDescending.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option><% } %> 
</select>
</td>
<td>
<input type="image" src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/sort_right.gif" alt="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ChannelSortByParameterInc.Add.alt",null)),null)%>" title="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ChannelSortByParameterInc.Add.input",null)),null)%>" onclick="moveOptionsAcross('allRefs_<% {String value = null;try{value=context.getFormattedValue(getObject("ConfigurationParameterDefinition:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {48}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>', 'selectedRefs_<% {String value = null;try{value=context.getFormattedValue(getObject("ConfigurationParameterDefinition:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {48}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>'); return false;"/>
<div style="height: 5px;"></div>
<input type="image" src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/sort_left.gif" alt="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ChannelSortByParameterInc.Remove.alt",null)),null)%>" title="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ChannelSortByParameterInc.Remove.input",null)),null)%>" onclick="moveOptionsAcross('selectedRefs_<% {String value = null;try{value=context.getFormattedValue(getObject("ConfigurationParameterDefinition:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {50}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>', 'allRefs_<% {String value = null;try{value=context.getFormattedValue(getObject("ConfigurationParameterDefinition:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {50}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>'); return false;"/>
</td>
<td>
<select multiple="multiple" size="5" class="submitAllValues inputfield_en" style="width: 300px;"
name="ConfigurationParameter_<% {String value = null;try{value=context.getFormattedValue(getObject("ConfigurationParameterDefinition:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {54}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" 
id="selectedRefs_<% {String value = null;try{value=context.getFormattedValue(getObject("ConfigurationParameterDefinition:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {55}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" 
> 
<% while (loop("ConfigurationParameterWebForm:getParameter(ConfigurationParameterDefinition:Name):Value:Iterator","ParameterValue",null)) { %><% while (loop("Result:SortableAttributes","availableValue",null)) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue((getObject("ParameterValue")),null).equals(context.getFormattedValue((context.getFormattedValue(getObject("availableValue:Name"),null) + context.getFormattedValue("-asc",null)),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",60,e);}if (_boolean_result) { %><option value="<% {String value = null;try{value=context.getFormattedValue(getObject("ParameterValue"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {61}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% {String value = null;try{value=context.getFormattedValue(getObject("availableValue:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {62}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> - <% {out.write(localizeISText("ChannelSortByParameterInc.Ascending.option",null,null,null,null,null,null,null,null,null,null,null,null));} %> 
</option> 
<% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue((getObject("ParameterValue")),null).equals(context.getFormattedValue((context.getFormattedValue(getObject("availableValue:Name"),null) + context.getFormattedValue("-desc",null)),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",64,e);}if (_boolean_result) { %><option value="<% {String value = null;try{value=context.getFormattedValue(getObject("ParameterValue"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {65}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% {String value = null;try{value=context.getFormattedValue(getObject("availableValue:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {66}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> - <% {out.write(localizeISText("ChannelSortByParameterInc.Descending.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option> 
<% }} %><% } %><!-- Gross/Net integration --><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue((getObject("ParameterValue")),null).equals(context.getFormattedValue(("SalePrice-asc"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",72,e);}if (_boolean_result) { %><option value="<% {String value = null;try{value=context.getFormattedValue(getObject("ParameterValue"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {73}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% {out.write(localizeISText("ChannelSortByParameterInc.SalePriceAscending.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option> 
<% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue((getObject("ParameterValue")),null).equals(context.getFormattedValue(("SalePrice-desc"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",76,e);}if (_boolean_result) { %><option value="<% {String value = null;try{value=context.getFormattedValue(getObject("ParameterValue"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {77}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% {out.write(localizeISText("ChannelSortByParameterInc.SalePriceDescending.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option> 
<% }} %> 
<% } %> 
</select>
</td>
<td>
<input type="image" src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/sort_up.gif" alt="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ChannelSortByParameterInc.MoveUp.alt",null)),null)%>" title="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ChannelSortByParameterInc.MoveUp.input",null)),null)%>" onclick="moveOptionsUp('selectedRefs_<% {String value = null;try{value=context.getFormattedValue(getObject("ConfigurationParameterDefinition:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {85}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>'); return false;"/>
<div style="height: 5px;"></div>
<input type="image" src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/sort_down.gif" alt="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ChannelSortByParameterInc.MoveDown.alt",null)),null)%>" title="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ChannelSortByParameterInc.MoveDown.input",null)),null)%>" onclick="moveOptionsDown('selectedRefs_<% {String value = null;try{value=context.getFormattedValue(getObject("ConfigurationParameterDefinition:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {87}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>'); return false;"/>
</td>
</tr> 
</table> 
<% } else { %><% {out.write(localizeISText("ChannelSortByParameterInc.NoSortableAttributesAvailable",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %><% printFooter(out); %>