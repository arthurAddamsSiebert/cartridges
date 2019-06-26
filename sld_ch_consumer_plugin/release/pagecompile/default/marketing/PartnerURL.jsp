<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><!-- TemplateName : marketing/PartnerURL.isml -->

<%
		String url = null;
		try
		{
			url = url((new Boolean("false")).booleanValue(),new com.intershop.beehive.core.internal.url.URLPipelineAction(
										"AffiliatePrefix-Start","",((String)getPipelineDictionary().get("ChannelRepository:Domain:Site:DomainName")),"-","-"),
										 new com.intershop.beehive.core.internal.url.URLParameterSet().addURLParameter("PartnerUUID",((String)getPipelineDictionary().get("AffiliatePartner:UUID"))));
			int start = url.indexOf(";pgid=");
			if(start<0)
			{
				start = url.indexOf(";sid=");
			}
			if(start>0)
			{
				int end   = url.indexOf("?",start);
				String s1 = url.substring(0,start);
				String s2 = url.substring(end,url.length());
				url = s1+s2;
			}
			getPipelineDictionary().put("URLString",url);
		}
		catch(Exception e)
		{
		}
%>

<% %><%@ page contentType="text/html;charset=utf-8" %><%%><%@ page session="false"%><%setEncodingType("text/html"); %>

<td class="fielditem2"><% {out.write(localizeISText("PartnerURL.URL.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td class="table_detail" id="url">
	<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("URLString"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",33,e);}if (_boolean_result) { %>
		<% {String value = null;try{value=context.getFormattedValue(getObject("URLString"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {34}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>
	<% } else { %>
		<% {String value = null;try{value=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("AffiliatePrefix-Start",null),context.getFormattedValue("",null),context.getFormattedValue(getObject("ChannelRepository:Domain:Site:DomainName"),null),context.getFormattedValue("",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("PartnerUUID",null),context.getFormattedValue(getObject("AffiliatePartner:UUID"),null)))),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {36}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>
	<% } %>
</td>
<% printFooter(out); %>