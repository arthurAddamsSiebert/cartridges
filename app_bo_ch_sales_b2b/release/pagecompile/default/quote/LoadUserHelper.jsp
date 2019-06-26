<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><%@page import="com.intershop.component.user.capi.UserBO"%>
<%@page import="com.intershop.beehive.core.capi.user.User"%>
<%@page import="com.intershop.beehive.core.capi.profile.ProfileMgr"%>
<%@page import="com.intershop.beehive.core.internal.bos.user.BasicProfileMgr"%>
<%@page import="com.intershop.beehive.core.capi.naming.NamingMgr"%>
<%@page import="com.intershop.beehive.core.capi.user.UserMgr"%>
<%@page import="com.intershop.beehive.core.capi.app.AppContextUtil"%>
<%@page import = "com.intershop.component.application.capi.ApplicationBO"%>
<%@page import = "com.intershop.component.customer.capi.CustomerBORepository"%>
<%@page import = "com.intershop.component.customer.capi.CustomerBO"%>
<%@page import = "com.intershop.component.customer.capi.CustomerBODetailsExtension"%>
<%@page import = "com.intershop.component.customer.capi.CustomerBOCompanyCustomerExtension"%>
<%@page import = "com.intershop.component.customer.capi.CustomerBOPrivateCustomerExtension"%>

<%
	String customerID = (String) getObject("quote:ScopeUUID");
	User u = new User(customerID);
	getPipelineDictionary().put("User", u);
%>

<% {try{executePipeline("BusinessObjectUtils-GetUserBO",((java.util.Map)(((new ParameterMap().addParameter(new ParameterEntry("User",getObject("User"))))))),"dict");}catch(Exception e){Logger.error(this,"ISPIPELINE failed. Line: 21.",e);}} %>
<% {Object temp_obj = (getObject("dict:UserBO")); getPipelineDictionary().put("UserBO", temp_obj);} %>
 <%
	UserBO userBO = (UserBO) getObject("UserBO");
	
	
		ApplicationBO applicationBO = AppContextUtil.getCurrentAppContext().getVariable(ApplicationBO.CURRENT);
		CustomerBORepository repository = applicationBO.getRepository("CustomerBORepository");
	
		CustomerBO customer = repository.getCustomerBO(userBO);
		

		if (customer != null)
		{
			CustomerBODetailsExtension customerDetails = customer.getExtension("CompanyCustomer");
			if (customerDetails == null)
			{
				customerDetails = customer.getExtension("PrivateCustomer");
			}
	
			getPipelineDictionary().put("customer_name", customerDetails.getName());
		}
		
		getPipelineDictionary().put("Customer", customer);
		
	
%><% printFooter(out); %>