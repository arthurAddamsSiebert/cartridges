<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><%@ page import="com.intershop.beehive.core.capi.util.Positionable,
				java.util.Collection,
				java.util.Iterator,
				java.util.Map,
				java.util.LinkedHashMap,
				java.util.ArrayList" %><%
    String indexStr = (String)getPipelineDictionary().get("SelectedIndex");
    int index = 0;
	if (indexStr != null)
	{
	    try
	    {
	        index = Integer.parseInt(indexStr);
	    }
	    catch(NumberFormatException nfe)
	    {
	        throw new RuntimeException("Expecting .", nfe);
	    }
	}
    Number currentPosition = (Number)getPipelineDictionary().get("CurrentPosition");
    Number start = (Number)getPipelineDictionary().get("Start");
    Number end = (Number)getPipelineDictionary().get("End");
    Collection<Positionable> positionables = (Collection<Positionable>) getPipelineDictionary().get("Positionables");
    
    if (positionables == null)
    	positionables = new ArrayList<Positionable>(0);
    
    Map<Double,Integer> numbers = new LinkedHashMap<Double,Integer>();
    if(start != null && end != null)
    {
	    for(double i = start.doubleValue(), max = end.doubleValue(); i <= max; i++)
	    {
	        numbers.put(i, new Double(i).intValue());
	    }
    }
    else
    {
	    if (start == null)
	    {
	    	getPipelineDictionary().put("Start", 1);
	    	start = 1;
	    }

		Positionable max = null;
		Iterator<Positionable> positionablesItr = positionables.iterator();
		for(int i = start.intValue(); positionablesItr.hasNext(); i++)
		{
			Positionable current = max = positionablesItr.next();
			numbers.put(current.getPosition(), i);
			if ((currentPosition != null && current.getPosition() == currentPosition.doubleValue()) || (indexStr != null && i==index))
			{
				getPipelineDictionary().put("CurrentPosition", current.getPosition());
			}
		}
	    
	    if (end == null)
	    {
	    	getPipelineDictionary().put("End", numbers.size());
	    }
	    else
	    {
	    	for(double k=(max != null)?max.getPosition():end.doubleValue(), 
	    		v=(max != null)?numbers.size():end.doubleValue(); v<=end.doubleValue(); k++,v++)
	    	{
	    		numbers.put(k, new Double(v).intValue());
	    		if ((currentPosition != null && k == currentPosition.doubleValue()) || (indexStr != null && v==index))
	    		{
	    			getPipelineDictionary().put("CurrentPosition", k);
	    		}
	    		getPipelineDictionary().put("End", numbers.get(k));
	    	}
	    }
    }
    getPipelineDictionary().put("Map", numbers);
%><select name="<% {String value = null;try{value=context.getFormattedValue(getObject("SelectName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {78}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" id="<% {String value = null;try{value=context.getFormattedValue(getObject("SelectName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {78}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("SelectClass"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",79,e);}if (_boolean_result) { %>class="<% {String value = null;try{value=context.getFormattedValue(getObject("SelectClass"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {79}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"<% } %> 
<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ReadOnly")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ReadOnly"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",80,e);}if (_boolean_result) { %>disabled="disabled"<% } %> 
<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("OnChange"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",81,e);}if (_boolean_result) { %>onchange="<% {String value = null;try{value=context.getFormattedValue(getObject("OnChange"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {81}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"<% } %>><% while (loop("Map:EntrySet","Entry",null)) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Entry:Key"),null).equals(context.getFormattedValue(getObject("CurrentPosition"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",83,e);}if (_boolean_result) { %><option value="<% {String value = null;try{value=context.getFormattedValue(getObject("Entry:Value"),new Integer(INTEGER),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {84}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" selected="selected"><% {String value = null;try{value=context.getFormattedValue(getObject("Entry:Value"),new Integer(INTEGER),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {84}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Start"),null).equals(context.getFormattedValue(getObject("Entry:Value"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",84,e);}if (_boolean_result) { %> (<% {out.write(localizeISText("PositionSelect.Highest.option",null,null,null,null,null,null,null,null,null,null,null,null));} %>)<% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("End"),null).equals(context.getFormattedValue(getObject("Entry:Value"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",85,e);}if (_boolean_result) { %> (<% {out.write(localizeISText("PositionSelect.Lowest.option",null,null,null,null,null,null,null,null,null,null,null,null));} %>)<% }} %></option><% } else { %><option value="<% {String value = null;try{value=context.getFormattedValue(getObject("Entry:Value"),new Integer(INTEGER),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {88}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% {String value = null;try{value=context.getFormattedValue(getObject("Entry:Value"),new Integer(INTEGER),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {88}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Start"),null).equals(context.getFormattedValue(getObject("Entry:Value"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",88,e);}if (_boolean_result) { %> (<% {out.write(localizeISText("PositionSelect.Highest.option1",null,null,null,null,null,null,null,null,null,null,null,null));} %>)<% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("End"),null).equals(context.getFormattedValue(getObject("Entry:Value"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",89,e);}if (_boolean_result) { %> (<% {out.write(localizeISText("PositionSelect.Lowest.option1",null,null,null,null,null,null,null,null,null,null,null,null));} %>)<% }} %></option><% } %><% } %></select><% printFooter(out); %>