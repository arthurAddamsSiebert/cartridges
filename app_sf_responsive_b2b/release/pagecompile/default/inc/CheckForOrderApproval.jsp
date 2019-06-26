<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><%@page import = "com.intershop.beehive.core.capi.user.User"%><%@page import = "com.intershop.beehive.core.capi.app.AppContextUtil"%><%@page import = "com.intershop.component.application.capi.ApplicationBO"%><%@page import = "com.intershop.component.user.capi.UserBORepository"%><%@page import = "com.intershop.component.user.capi.UserBO"%><%@page import = "com.intershop.component.customer.capi.CustomerBORepository"%><%@page import = "com.intershop.component.customer.capi.CustomerBO"%><%@page import = "com.intershop.component.customer.capi.CustomerBODetailsExtension"%><%@page import = "com.intershop.component.customer.capi.CustomerBOCompanyCustomerExtension"%><%@page import="com.intershop.component.approval.capi.user.UserBOOrderApprovalExtension"%><%
	// set default value in pipeline dictionary
	getPipelineDictionary().put("isOrderApprovalRequired", Boolean.FALSE);

	User user = (User) getObject("CurrentUser");
	if (user != null)
	{
	    ApplicationBO applicationBO = AppContextUtil.getCurrentAppContext().getVariable(ApplicationBO.CURRENT);

		UserBORepository userBORepository = applicationBO.getRepository("UserBORepository");
		CustomerBORepository customerBORepository = applicationBO.getRepository("CustomerBORepository");

		UserBO userBO = userBORepository.getUserBOByID(user.getID());
		if ((userBO != null) && (userBO.isRegistered()))
		{
		    CustomerBO customerBO = customerBORepository.getCustomerBO(userBO);
			if (customerBO != null)
			{
			    // verify that customer is a company customer
				CustomerBODetailsExtension companyCustomerExtension = customerBO.getExtension("CompanyCustomer");
				if (companyCustomerExtension != null)
				{
					UserBOOrderApprovalExtension orderApprovalExtension = userBO.getExtension("UserBOOrderApprovalExtension");
					if (orderApprovalExtension.isApprovalRequired())
					{
						getPipelineDictionary().put("isOrderApprovalRequired", Boolean.TRUE);
					}
				}
			}
		}
	}
%><% printFooter(out); %>