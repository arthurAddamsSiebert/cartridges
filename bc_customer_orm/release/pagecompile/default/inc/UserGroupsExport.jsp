<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%! protected Boolean printTemplateMarker() { return Boolean.FALSE; } %><%%><%@ page contentType="text/xml;charset=utf-8" %><%%><%@ page session="false"%><%setEncodingType("text/xml"); %>
<%@page import="com.intershop.beehive.core.capi.app.AppContextUtil,
				com.intershop.beehive.app.capi.AppContext,
				com.intershop.component.repository.capi.BusinessObjectRepositoryContext,
				com.intershop.component.customer.capi.RepositoryBOCustomerSegmentExtension,
				com.intershop.component.customer.capi.CustomerSegmentBORepository,
				com.intershop.beehive.core.capi.user.UserGroup" %>


<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("CustomerBO:CustomerType:CustomerTypeID"),null).equals(context.getFormattedValue("PRIVATE",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",10,e);}if (_boolean_result) { %>
	<% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("UserGroups") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",11,e);}if (_boolean_result) { %>
		<user-groups>
			<% while (loop("UserGroups","UserGroup",null)) { %>
				<user-group id="<%=context.getFormattedValue(stringToXml(context.getFormattedValue(getObject("UserGroup:ID"),null)),null)%>"<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ExportDomainRefs"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",14,e);}if (_boolean_result) { %> domain="<%=context.getFormattedValue(stringToXml(context.getFormattedValue(getObject("UserGroup:Domain:DomainName"),null)),null)%>"<% } %>/>
			<% } %>
		</user-groups>
	<% } %>
<% } else { %>
	<% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("UserGroups") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",19,e);}if (_boolean_result) { %>
		<% 
			AppContext appContext = AppContextUtil.getCurrentAppContext();
			BusinessObjectRepositoryContext businessObjectRepositorycontext = appContext.getVariable(BusinessObjectRepositoryContext.CURRENT);
			CustomerSegmentBORepository customerSegmentBORepository = businessObjectRepositorycontext.getRepository(RepositoryBOCustomerSegmentExtension.EXTENSION_ID);
			
			boolean containerElementPrinted = false;
		%>
		
		<% while (loop("UserGroups","UserGroup",null)) { %>
		<%
			UserGroup userGroup = (UserGroup) getObject("UserGroup");
			if (customerSegmentBORepository.getCustomerSegmentBOByID(userGroup.getID()) == null)
			{ // user group which is not a customer segment - then export it
				if (!containerElementPrinted)
				{
					containerElementPrinted = true;
					%><user-groups><%
				}
				%><user-group id="<%=context.getFormattedValue(stringToXml(context.getFormattedValue(getObject("UserGroup:ID"),null)),null)%>"<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ExportDomainRefs"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",38,e);}if (_boolean_result) { %> domain="<%=context.getFormattedValue(stringToXml(context.getFormattedValue(getObject("UserGroup:Domain:DomainName"),null)),null)%>"<% } %>/><%
			}
		%>
		<% } %>
		<%
			if (containerElementPrinted)
			{
				%></user-groups><%
			}
		%>
	<% } %>
<% } %><% printFooter(out); %>