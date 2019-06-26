<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%! protected Boolean printTemplateMarker() { return Boolean.FALSE; } %><%%><%@ page contentType="text/plain;charset=utf-8" %><%%><%@ page session="false"%><%setEncodingType("text/plain"); %><% context.setCustomTagTemplateName("datetime","impex/DateTime",false,new String[]{"date"},null); %><%@page import="com.intershop.beehive.core.capi.impex.binding.ConversionUtils, 
                 com.intershop.component.foundation.capi.link.ShortLinkMgr,
                 com.intershop.beehive.core.capi.naming.NamingMgr, 
                 com.intershop.component.foundation.capi.link.ShortLink,
                 com.intershop.component.foundation.internal.link.LinkLinkGroupAssignmentPO,
                 java.util.Iterator
                 " %><%!
	ShortLinkMgr mgr = (ShortLinkMgr)NamingMgr.getInstance().lookupManager(ShortLinkMgr.REGISTRY_NAME);
%>ShortURL;TargetURL;StatusCode;ValidFrom;ValidTo;Enabled;Default;Description;LinkGroupIDs

<% while (loop("Objects","sl",null)) { %><% {String value = null;try{value=context.getFormattedValue(getObject("sl:ShortURL"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {13}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>;<% {String value = null;try{value=context.getFormattedValue(getObject("sl:TargetURL"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {14}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>;<% {String value = null;try{value=context.getFormattedValue(getObject("sl:StatusCode"),"0",null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {15}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>;<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("sl:StartDate"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",16,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "datetime", new TagParameter[] {
new TagParameter("date",getObject("sl:StartDate"))}, 16); %><% } else { %><% } %>;<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("sl:EndDate"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",17,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "datetime", new TagParameter[] {
new TagParameter("date",getObject("sl:EndDate"))}, 17); %><% } else { %><% } %>;<% {String value = null;try{value=context.getFormattedValue(getObject("sl:Enabled"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {18}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>;<% {String value = null;try{value=context.getFormattedValue(getObject("sl:Default"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {19}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>;<% {String value = null;try{value=context.getFormattedValue(getObject("sl:Description"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {20}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% 
   Iterator it = mgr.getLinkGroupsForShortLink((ShortLink)getObject("sl"));
   if(it.hasNext())    {  
   		out.print(";");  	
    	while(it.hasNext())
    	{
    		out.print(((LinkLinkGroupAssignmentPO)it.next()).getLinkGroupPO().getID());
    		
    		if(it.hasNext())
    		{
    			out.print("|");
    		}
		}    	
   }
%>
<% } %><% printFooter(out); %>