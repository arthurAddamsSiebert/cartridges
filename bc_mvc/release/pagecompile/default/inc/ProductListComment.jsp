<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%! protected Boolean printTemplateMarker() { return Boolean.FALSE; } %><%%><%@ page contentType="text/xml;charset=utf-8" %><%%><%@ page session="false"%><%setEncodingType("text/xml"); %>
<%@page import="com.intershop.beehive.core.capi.naming.*, 
	com.intershop.beehive.core.capi.profile.*, 
	com.intershop.component.foundation.capi.comment.*"%>

<% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"impex/Modules", null, "6");} %>

<%!
	ProfileMgr profileMgr = (ProfileMgr)NamingMgr.getInstance().lookupManager(ProfileMgr.REGISTRY_NAME);
%>

<%
	Comment comment = (Comment)getObject("comment");

	Profile profile = profileMgr.getProfile(comment.getAuthor());
	getPipelineDictionary().put("commentUser", profile);
%>

<comment>

	<% while (loop("comment:AttributeValues","av",null)) { %>
		<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("av:Name"),null).equals(context.getFormattedValue("text",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",22,e);}if (_boolean_result) { %>
			<text xml:lang="<% {String value = null;try{value=context.getFormattedValue(getObject("av:XMLLocaleID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {23}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% {String value = null;try{value=context.getFormattedValue(getObject("av:StringValue"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {23}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></text>
		<% } %>
	<% } %>	

	<creation-date><% processOpenTag(response, pageContext, "datetime", new TagParameter[] {
new TagParameter("date",getObject("comment:CreationTime"))}, 27); %></creation-date>

	<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("commentUser"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",29,e);}if (_boolean_result) { %><author business-partner-no="<% {String value = null;try{value=context.getFormattedValue(getObject("commentUser:DataSheet:BusinessPartnerNo"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {29}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" domain="<% {String value = null;try{value=context.getFormattedValue(getObject("commentUser:Domain:DomainName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {29}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><% } %>

	<visibility>	
	<%
		if ((CommentsConstants.PRC_SCOPE_BUYER & comment.getTypeCode()) != 0)
		{
			%>
			<visible-to name="BUYER"/>
			<%
		}
		if ((CommentsConstants.PRC_SCOPE_APPROVER & comment.getTypeCode()) != 0)
		{
			%>
			<visible-to name="APPROVER"/>
			<%
		}
		if ((CommentsConstants.PRC_SCOPE_ORDERMGR & comment.getTypeCode()) != 0)
		{
			%>
			<visible-to name="ORDER_MANAGER"/>
			<%
		}
		if ((CommentsConstants.PRC_SCOPE_SUPPLIER & comment.getTypeCode()) != 0)
		{
			%>
			<visible-to name="SUPPLIER"/>
			<%
		}
		if ((CommentsConstants.PRC_SCOPE_SELLER & comment.getTypeCode()) != 0)
		{
			%>
			<visible-to name="SELLER"/>
			<%
		}
		if ((CommentsConstants.PRC_SCOPE_SOURCINGMGR & comment.getTypeCode()) != 0)
		{
			%>
			<visible-to name="SOURCING_MANAGER"/>
			<%
		}
	%>
	</visibility>

</comment>
<% printFooter(out); %>