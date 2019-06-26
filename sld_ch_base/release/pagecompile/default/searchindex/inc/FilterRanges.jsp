<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><%@page import="java.util.List"%><%@page import="com.intershop.component.search.capi.FilterRange"%><%@page import="com.intershop.component.search.capi.FilterOptions"%><%@page import="com.intershop.beehive.core.capi.webform.Form"%><% {Object temp_obj = (((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_SEARCH_INDEXES")))).booleanValue() && !((Boolean) (getObject("SearchIndex:Shared"))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE)); getPipelineDictionary().put("SearchIndexEditable", temp_obj);} %><% URLPipelineAction action152 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewSearchIndexFilters-Dispatch",null)))),null));String site152 = null;String serverGroup152 = null;String actionValue152 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewSearchIndexFilters-Dispatch",null)))),null);if (site152 == null){  site152 = action152.getDomain();  if (site152 == null)  {      site152 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup152 == null){  serverGroup152 = action152.getServerGroup();  if (serverGroup152 == null)  {      serverGroup152 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewSearchIndexFilters-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("FilterRanges");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue152, site152, serverGroup152,true)); %><table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="table_title2 w e s"><% {out.write(localizeISText("FilterRanges.FilterRanges.table_title2",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% while (loop("FilterRangesForm:Instances","RangeFormInstance",null)) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("RangeFormInstance:LowerBound:isError(\"error.double\")")).booleanValue() || ((Boolean) getObject("RangeFormInstance:UpperBound:isError(\"error.double\")")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",21,e);}if (_boolean_result) { %><% {Object temp_obj = ("true"); getPipelineDictionary().put("ERROR_DOUBLE", temp_obj);} %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("RangeFormInstance:LowerBound:isError(\"error.integer\")")).booleanValue() || ((Boolean) getObject("RangeFormInstance:UpperBound:isError(\"error.integer\")")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",24,e);}if (_boolean_result) { %><% {Object temp_obj = ("true"); getPipelineDictionary().put("ERROR_INTEGER", temp_obj);} %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("RangeFormInstance:LowerBound:isError(\"error.long\")")).booleanValue() || ((Boolean) getObject("RangeFormInstance:UpperBound:isError(\"error.long\")")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",27,e);}if (_boolean_result) { %><% {Object temp_obj = ("true"); getPipelineDictionary().put("ERROR_LONG", temp_obj);} %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("RangeFormInstance:LowerBound:isError(\"error.regexp\")")).booleanValue() || ((Boolean) getObject("RangeFormInstance:UpperBound:isError(\"error.regexp\")")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",30,e);}if (_boolean_result) { %><% {Object temp_obj = ("true"); getPipelineDictionary().put("ERROR_REGEXP", temp_obj);} %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("RangeFormInstance:FormatString:isError(\"error.maxlength\")"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",33,e);}if (_boolean_result) { %><% {Object temp_obj = ("true"); getPipelineDictionary().put("ERROR_FORMAT_STRING_TOO_LONG", temp_obj);} %><% } %><% } %> 
<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ERROR_DOUBLE")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("ERROR_INTEGER")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("ERROR_FILTER_RANGE")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("ERROR_INVALID_RANGE")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("ERROR_FORMAT_STRING_TOO_LONG")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("ERROR_REGEXP")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("ERROR_LONG")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",38,e);}if (_boolean_result) { %><tr>
<td>
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ERROR_DOUBLE"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",43,e);}if (_boolean_result) { %><tr>
<td class="error w e s" width="100%"><% {out.write(localizeISText("FilterRanges.FilterRangesCouldNotBeUpdatedErrorDouble.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ERROR_INTEGER"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",50,e);}if (_boolean_result) { %><tr>
<td class="error w e s" width="100%"><% {out.write(localizeISText("FilterRanges.FilterRangesCouldNotBeUpdatedErrorInteger.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ERROR_REGEXP"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",57,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((( ((Number) getObject("FilterAttribute:DataType")).doubleValue() ==((Number)(new Double(10))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((( ((Number) getObject("FilterAttribute:DataType")).doubleValue() ==((Number)(new Double(18))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",58,e);}if (_boolean_result) { %><tr>
<td class="error w e s" width="100%"><% {out.write(localizeISText("FilterRanges.FilterRangesCouldNotBeUpdatedErrorRegExp.error",null,null,null,null,null,null,null,null,null,null,null,null));} %> 
</td>
</tr><% } else { %><tr>
<td class="error w e s" width="100%"><% {out.write(localizeISText("FilterRanges.FilterRangesCouldNotBeUpdatedErrorInvalidValues.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% } %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ERROR_LONG"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",72,e);}if (_boolean_result) { %><tr>
<td class="error w e s" width="100%"><% {out.write(localizeISText("FilterRanges.FilterRangesCouldNotBeUpdatedErrorLong.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ERROR_FORMAT_STRING_TOO_LONG"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",79,e);}if (_boolean_result) { %><tr>
<td class="error w e s" width="100%"><% {out.write(localizeISText("FilterRanges.FilterRangesCouldNotBeUpdatedErrorFormatString.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ERROR_INVALID_RANGE"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",86,e);}if (_boolean_result) { %><tr>
<td class="error w e s" width="100%"><% {out.write(localizeISText("FilterRanges.FilterRangesCouldNotBeUpdatedErrorInvalidRange.error",null,null,context.getFormattedValue((new Double( ((Number) getObject("ERROR_FILTER_RANGE")).doubleValue() +((Number) new Double(1)).doubleValue())),new Integer(INTEGER)),null,null,null,null,null,null,null,null,null));} %></td>
</tr><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ERROR_DUPLICATE_RANGE"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",92,e);}if (_boolean_result) { %><tr>
<td class="error w e s" width="100%"><% {out.write(localizeISText("FilterRanges.FilterRangesCouldNotBeUpdatedErrorDuplicateRange.error",null,null,context.getFormattedValue((new Double( ((Number) getObject("ERROR_FILTER_RANGE")).doubleValue() +((Number) new Double(1)).doubleValue())),new Integer(INTEGER)),null,null,null,null,null,null,null,null,null));} %> 
</td>
</tr><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ERROR_DUPLICATE_FORMAT_STRING"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",98,e);}if (_boolean_result) { %><tr>
<td class="error w e s" width="100%"><% {out.write(localizeISText("FilterRanges.FilterRangesCouldNotBeUpdatedErrorDuplicateFormatString.error",null,null,context.getFormattedValue((new Double( ((Number) getObject("ERROR_FILTER_RANGE")).doubleValue() +((Number) new Double(1)).doubleValue())),new Integer(INTEGER)),null,null,null,null,null,null,null,null,null));} %></td>
</tr><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ERROR_FILTER_RANGE"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",104,e);}if (_boolean_result) { %><tr>
<td class="error w e s" width="100%"><% {out.write(localizeISText("FilterRanges.FilterRangesCouldNotBeUpdatedErrorFilterRange.error",null,null,context.getFormattedValue((new Double( ((Number) getObject("ERROR_FILTER_RANGE")).doubleValue() +((Number) new Double(1)).doubleValue())),new Integer(INTEGER)),null,null,null,null,null,null,null,null,null));} %> 
</td>
</tr><% }}}} %></table>
</td>
</tr><% } %> 
<tr>
<td class="table_title_description w e s"><% {out.write(localizeISText("FilterRanges.HereYouCanDefineFilterRangesForTheFilterAttribute.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td class="w e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></td>
</tr>
<tr><td class="w e"><table width="100%" border="0" cellspacing="0" cellpadding="0" class="searchbox">
<input type="hidden" name="SearchIndexID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("SearchIndex:IndexID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {128}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="AttributeName" value="<% {String value = null;try{value=context.getFormattedValue(getObject("FilterAttribute:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {129}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><% {Object temp_obj = ("true"); getPipelineDictionary().put("FirstRangeRow", temp_obj);} %><%!
				/**
			     * Put the given value in the pipeline dictionary with the given value type
			     * as key. The value is casted or converted to the given data type
			     * 
			     * @param dataType
			     *            the data type, Integer, Long and Double is casted or converted
			     * @param valueType
			     *            the dictionary key for the value to put
			     * @param value
			     *            the value
			     * @param cast
			     *            true if object is casted for data type Integer, Long and
			     *            Double, false if object is converted
			     */
			    public void putFormattedBoundValue(Integer dataType, String valueType, Object value, boolean cast)
			    {
			        if (value == null || (!cast && ((String)value).isEmpty()))
			        {
			            getPipelineDictionary().put(valueType, "");
			        }
			        else
			        {
			            if (1 == dataType || 4 == dataType)
			            {
			                if (cast)
			                {
			                    getPipelineDictionary().put(valueType, getFormattedValue((Integer)value, null));
			                }
			                else 
			                {
			                    getPipelineDictionary().put(valueType, getFormattedValue(Integer.valueOf((String)value), null));
			                }
			            }
			            else if (8 == dataType || 15 == dataType)
			            {
			                if (cast)
			                {
			                    getPipelineDictionary().put(valueType, getFormattedValue((Long)value, null));
			                }
			                else
			                {
			                    getPipelineDictionary().put(valueType, getFormattedValue(Long.valueOf((String)value), null));
			                }
			            }
			            else if (2 == dataType || 11 == dataType || 12 == dataType || 13 == dataType || 14 == dataType || 18 == dataType)
			            {
			                if (cast)
			                {
			                    getPipelineDictionary().put(valueType, getFormattedValue((Double)value, null));
			                }
			                else
			                {
			                    getPipelineDictionary().put(valueType, getFormattedValue(Double.valueOf((String)value), null));
			                }
			            }
			            else
			            {
			                getPipelineDictionary().put(valueType, value);
			            }
			        }
			    }
			%><%
				Form rangeForm = (Form)getPipelineDictionary().get("FilterRangesForm");
				FilterOptions filterOptions = (FilterOptions)getPipelineDictionary().get("FilterAttribute:FilterOptions");
				List<FilterRange> filterRanges = null;
				
				if (filterOptions != null) {
				 	filterRanges = filterOptions.getRanges();
				}
				
				if (filterRanges != null && filterRanges.size() > 0) {
					getPipelineDictionary().put("RangeRowsInitialCount", filterRanges.size());
				} else {
					getPipelineDictionary().put("RangeRowsInitialCount", 1);
				} 					
					
				for (int i = 0; i < 20; i++) {
					Form subForm = rangeForm.getSubForm(String.valueOf(i));
					getPipelineDictionary().put("RangeFormInstance", subForm);
					
					if (filterRanges != null && i < filterRanges.size()) {
						FilterRange filterRange = filterRanges.get(i);		
						getPipelineDictionary().put("FilterRange", filterRange);
					} else {
						getPipelineDictionary().put("FilterRange", null);
					}
			%><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("FilterRangesForm:isSubmitted"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",224,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("RangeFormInstance:LowerBound:isError(\"error.double\")")).booleanValue() || ((Boolean) getObject("RangeFormInstance:LowerBound:isError(\"error.integer\")")).booleanValue() || ((Boolean) getObject("RangeFormInstance:LowerBound:isError(\"error.regexp\")")).booleanValue() || ((Boolean) getObject("RangeFormInstance:LowerBound:isError(\"error.long\")")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",225,e);}if (_boolean_result) { %><% {Object temp_obj = (getObject("RangeFormInstance:LowerBound:Value")); getPipelineDictionary().put("LowerBoundValue", temp_obj);} %><% } else { %><%
					int dataType = (Integer)getPipelineDictionary().get("FilterAttribute:DataType");
					putFormattedBoundValue(dataType, "LowerBoundValue", getPipelineDictionary().get("RangeFormInstance:LowerBound:Value"), true);
				 %> 
<% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("RangeFormInstance:UpperBound:isError(\"error.double\")")).booleanValue() || ((Boolean) getObject("RangeFormInstance:UpperBound:isError(\"error.integer\")")).booleanValue() || ((Boolean) getObject("RangeFormInstance:UpperBound:isError(\"error.regexp\")")).booleanValue() || ((Boolean) getObject("RangeFormInstance:UpperBound:isError(\"error.long\")")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",235,e);}if (_boolean_result) { %><% {Object temp_obj = (getObject("RangeFormInstance:UpperBound:Value")); getPipelineDictionary().put("UpperBoundValue", temp_obj);} %> 
<% } else { %><%
					int dataType = (Integer)getPipelineDictionary().get("FilterAttribute:DataType");
					putFormattedBoundValue(dataType, "UpperBoundValue", getPipelineDictionary().get("RangeFormInstance:UpperBound:Value"), true);
				 %> 
<% } %><% {Object temp_obj = (getObject("RangeFormInstance:FormatString:Value")); getPipelineDictionary().put("FormatStringValue", temp_obj);} %><% } else { %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("FilterRange"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",246,e);}if (_boolean_result) { %><%
					int dataType = (Integer)getPipelineDictionary().get("FilterAttribute:DataType");
					putFormattedBoundValue(dataType, "LowerBoundValue", getPipelineDictionary().get("FilterRange:Low"), false);
					putFormattedBoundValue(dataType, "UpperBoundValue", getPipelineDictionary().get("FilterRange:High"), false);
				 %> 
<% {Object temp_obj = (getObject("FilterRange:Format")); getPipelineDictionary().put("FormatStringValue", temp_obj);} %><% } else { %><% {Object temp_obj = (""); getPipelineDictionary().put("LowerBoundValue", temp_obj);} %><% {Object temp_obj = (""); getPipelineDictionary().put("UpperBoundValue", temp_obj);} %><% {Object temp_obj = (""); getPipelineDictionary().put("FormatStringValue", temp_obj);} %><% } %><% } %><tr id="RangeRow_<% {String value = null;try{value=context.getFormattedValue(getObject("RangeFormInstance:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {261}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" 
<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((context.getFormattedValue(getObject("FirstRangeRow"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("FilterRange")))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("RangeFormInstance:isInvalid"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("RangeFormInstance:LowerBound:isValueMissing"),null).equals(context.getFormattedValue("false",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("RangeFormInstance:UpperBound:isValueMissing"),null).equals(context.getFormattedValue("false",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("RangeFormInstance:FormatString:isValueMissing"),null).equals(context.getFormattedValue("false",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",262,e);}if (_boolean_result) { %>
class="displayTableRow"
<% } else { %>
class="hideTableRow"
<% } %>
><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("RangeFormInstance:LowerBound:isError(\"error.double\")")).booleanValue() || ((Boolean) getObject("RangeFormInstance:LowerBound:isError(\"error.integer\")")).booleanValue() || ((Boolean) getObject("RangeFormInstance:LowerBound:isError(\"error.regexp\")")).booleanValue() || ((Boolean) getObject("RangeFormInstance:LowerBound:isError(\"error.long\")")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",268,e);}if (_boolean_result) { %><td class="fielditem2_error" nowrap="nowrap"><% {out.write(localizeISText("FilterRanges.LowerBound.fielditem2_error",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td><% } else { %><td class="fielditem2" nowrap="nowrap"><% {out.write(localizeISText("FilterRanges.LowerBound.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td><% } %><td><input type="text" name="<% {String value = null;try{value=context.getFormattedValue(getObject("RangeFormInstance:LowerBound:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {273}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" value="<% {String value = null;try{value=context.getFormattedValue(getObject("LowerBoundValue"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {273}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" id="InputLowerBound_<% {String value = null;try{value=context.getFormattedValue(getObject("RangeFormInstance:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {273}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" /></td><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("RangeFormInstance:UpperBound:isError(\"error.double\")")).booleanValue() || ((Boolean) getObject("RangeFormInstance:UpperBound:isError(\"error.integer\")")).booleanValue() || ((Boolean) getObject("RangeFormInstance:UpperBound:isError(\"error.regexp\")")).booleanValue() || ((Boolean) getObject("RangeFormInstance:UpperBound:isError(\"error.long\")")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",274,e);}if (_boolean_result) { %><td class="fielditem2_error" nowrap="nowrap"><% {out.write(localizeISText("FilterRanges.UpperBound.fielditem2_error",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td><% } else { %><td class="fielditem2" nowrap="nowrap"><% {out.write(localizeISText("FilterRanges.UpperBound.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td><% } %><td><input type="text" name="<% {String value = null;try{value=context.getFormattedValue(getObject("RangeFormInstance:UpperBound:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {279}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" value="<% {String value = null;try{value=context.getFormattedValue(getObject("UpperBoundValue"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {279}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" id="InputUpperBound_<% {String value = null;try{value=context.getFormattedValue(getObject("RangeFormInstance:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {279}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" /></td>
<td class="fielditem2" nowrap="nowrap"><% {out.write(localizeISText("FilterRanges.FormatString.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td><input type="text" maxlength="50" name="<% {String value = null;try{value=context.getFormattedValue(getObject("RangeFormInstance:FormatString:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {281}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" value="<% {String value = null;try{value=context.getFormattedValue(getObject("FormatStringValue"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {281}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" id="InputFormatString_<% {String value = null;try{value=context.getFormattedValue(getObject("RangeFormInstance:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {281}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" /></td>
<td id="deleteAttributeNA<% {String value = null;try{value=context.getFormattedValue(getObject("RangeFormInstance:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {282}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" width="1%" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("FirstRangeRow"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",282,e);}if (_boolean_result) { %>style="visibility: hidden;"<% } %> >
<table border="0" cellpadding="0" cellspacing="4">
<tr><td class="button"><% _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("SearchIndexEditable"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",285,e);}if (_boolean_result) { %><input type="button" name="removeRange" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("FilterRanges.RemoveRow.button",null)),null)%>" class="button" onClick="<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("FirstRangeRow"),null).equals(context.getFormattedValue("false",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",286,e);}if (_boolean_result) { %>hideRow(<% {String value = null;try{value=context.getFormattedValue(getObject("RangeFormInstance:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {286}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>); <% } %>return false;"/><% } else { %>&nbsp;
<% } %></td></tr>
</table>
</td> 
</tr> 
<% {Object temp_obj = ("false"); getPipelineDictionary().put("FirstRangeRow", temp_obj);} %> 
<%		
			}
		 %></table></td></tr>
<tr><td class="w e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></td></tr>
</table><% _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("SearchIndexEditable"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",305,e);}if (_boolean_result) { %><table cellpadding="0" cellspacing="0" border="0" width="100%">
<tr>
<td class="w"/>
<td align="left">
<table cellpadding="0" cellspacing="4" border="0">
<tr>
<td class="button">
<input type="button" class="button" name="addRange" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("FilterRanges.AddRow.button",null)),null)%>" class="button" onClick="showRow(); return false;"/>
</td>
</tr>
</table>
</td>
<td class="e"/>
</tr> 
</table><% } %> 
<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("RangeRowsCount"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",325,e);}if (_boolean_result) { %><input type="hidden" name="RangeRowsCount" id="RangeRowsCount" value="<% {String value = null;try{value=context.getFormattedValue(getObject("RangeRowsCount"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {326}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" /> 
<% } else { %><input type="hidden" name="RangeRowsCount" id="RangeRowsCount" value="<% {String value = null;try{value=context.getFormattedValue(getObject("RangeRowsInitialCount"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {328}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" /><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("SearchIndexEditable"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",332,e);}if (_boolean_result) { %><table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr><td class="w e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></td></tr>
<tr>
<td align="right" class="aldi">
<table cellpadding="0" cellspacing="4" border="0">
<tr>
<td class="button">
<input type="submit" class="button" name="applyFilterRanges" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("FilterRanges.Apply.button",null)),null)%>"/>
</td> 
<td class="button">
<input type="submit" name="resetFilterRanges" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("FilterRanges.Reset.button",null)),null)%>" class="button"/>
</td> 
</tr>
</table>
</td>
</tr>
</table><% } else { %><table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr><td class="w e s"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="1" alt="" border="0"/></td></tr>
</table><% } %><% out.print("</form>"); %><script language="JavaScript" type="text/javascript">
//<![CDATA[ 
var maxRangeRows = 20;
var rangeRowsCount = <% {String value = null;try{value=context.getFormattedValue(getObject("RangeRowsInitialCount"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {361}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>;
function showRow() {
if (rangeRowsCount < maxRangeRows) {
setRangeRowClassName(rangeRowsCount++, "displayTableRow");
setRangeRowsCountParameter(rangeRowsCount);
}
}
function hideRow(rowNumber) {
if (rangeRowsCount > 1) {
for (i = rowNumber+1; i < rangeRowsCount; i++) {
moveOneRowInputValuesUp(i);
}
rangeRowsCount--;
setRangeRowClassName(rangeRowsCount, "hideTableRow");
setRangeRowsCountParameter(rangeRowsCount);
clearLastRowInputValues();
}
}
function setRangeRowClassName(rowNumber, className) {
document.getElementById("RangeRow_" + rowNumber).className = className; 
}
function moveOneRowInputValuesUp(rowNumber) {
document.getElementById("InputLowerBound_" + (rowNumber-1)).value = document.getElementById("InputLowerBound_" + rowNumber).value;
document.getElementById("InputUpperBound_" + (rowNumber-1)).value = document.getElementById("InputUpperBound_" + rowNumber).value;
document.getElementById("InputFormatString_" + (rowNumber-1)).value = document.getElementById("InputFormatString_" + rowNumber).value;
}
function clearLastRowInputValues() {
document.getElementById("InputLowerBound_" + rangeRowsCount).value = "";
document.getElementById("InputUpperBound_" + rangeRowsCount).value = "";
document.getElementById("InputFormatString_" + rangeRowsCount).value = ""; 
}
function setRangeRowsCountParameter(count) {
document.getElementById("RangeRowsCount").value = rangeRowsCount;
}
$('form[name="FilterRanges"]').submit(function onSubmit() {
hideEmptyRow();
});
function hideEmptyRow(){
var count=rangeRowsCount;
for (i =0; i <count; i++){ 
if(!checkEmptyRow(i))
{
hideRow(i); 
}
} 
}
function checkEmptyRow(rowNumber){
var inputLowerBound=document.getElementById("InputLowerBound_" + (rowNumber)).value;
var inputUpperBound=document.getElementById("InputUpperBound_" + (rowNumber)).value;
var inputFormatString=document.getElementById("InputFormatString_" + (rowNumber)).value;
return !!inputLowerBound || !!inputUpperBound || !!inputFormatString;
}
//]]>
</script><% printFooter(out); %>