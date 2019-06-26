<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><%@page import="com.intershop.component.customer.capi.CustomerBOCustomerApprovalExtension"%>
<% %><%! protected Boolean printTemplateMarker() { return Boolean.FALSE; } %><%%><%@ page contentType="text/xml;charset=utf-8" %><%%><%@ page session="false"%><%setEncodingType("text/xml"); %>

<%@page import="java.util.Iterator,
				com.intershop.component.customer.capi.CustomerBO,
			    com.intershop.component.customer.capi.CustomerBOCompanyCustomerExtension,
			    com.intershop.component.customer.capi.CustomerBOGroupCustomerExtension,
			    com.intershop.component.customer.capi.CustomerBOPrivateCustomerExtension,
			    com.intershop.component.user.capi.UserBO,
			    com.intershop.beehive.core.capi.impex.AttributeValueIterator,
			    com.intershop.beehive.core.capi.profile.Profile,
			    com.intershop.beehive.core.capi.profile.ProfileMgr,
			    com.intershop.beehive.core.capi.domain.PersistentObjectBOExtension,
			    com.intershop.component.customer.orm.internal.orm.CustomerPO,
			    com.intershop.component.customer.orm.internal.orm.CustomerBasicProfileAssignmentPO,
			    com.intershop.component.customer.orm.internal.ProfileFilter,
			    com.intershop.beehive.orm.capi.common.ORMHelper,
			    com.intershop.beehive.foundation.util.FilterIterator,
			    com.intershop.beehive.core.capi.paging.PageableIterator,
			    com.intershop.beehive.core.capi.query.Row"%>

<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((Boolean) (disableErrorMessages().isDefined(getObject("MultiThreadingEnabled")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() || ((Boolean) ((((Boolean) getObject("MultiThreadingEnabled")).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",22,e);}if (_boolean_result) { %>
	<% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"CustomerExportHeader", null, "23");} %>
<% } %>

	<% context.setCustomTagTemplateName("user","inc/FNDUser",false,new String[]{"user","iscustomerprofile"},null); %>
	<% context.setCustomTagTemplateName("addresses","inc/CustomerAddresses",false,new String[]{"customerprofile"},null); %>
	<% context.setCustomTagTemplateName("customattributes","inc/CustomAttributes",false,new String[]{"attributes"},null); %>
	<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Objects"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",29,e);}if (_boolean_result) { %>
		<%
			ProfileMgr profileMgr = (ProfileMgr) NamingMgr.getInstance().lookupManager(ProfileMgr.REGISTRY_NAME);
			Iterator objects = (Iterator)getObject("Objects");
			
			if (objects instanceof PageableIterator)
			{
			    objects = ((PageableIterator) objects).toSequence();
			}

			while(objects.hasNext())
			{
			    Object object = objects.next();
			    CustomerBO customerBO;
			    if (object instanceof Row)
			    {
			        Row row = (Row)object;
			        customerBO = (CustomerBO)row.get("CustomerBO");
			    }
			    else
			    {
			        customerBO = (CustomerBO)object;
			    }

			    if (null != customerBO)
				{
			        CustomerBOCompanyCustomerExtension companyCustomerExtension = customerBO.getExtension("CompanyCustomer");
				    if (null != companyCustomerExtension)
				    {
				    	getPipelineDictionary().put("CompanyCustomerExtension", companyCustomerExtension);
				    }
				    
				    CustomerBOCustomerApprovalExtension customerApprovalExtension = customerBO.getExtension("CustomerApproval");
				    if (null != customerApprovalExtension)
				    {
				        getPipelineDictionary().put("CustomerApprovalExtension", customerApprovalExtension);
				    }
				    
			        getPipelineDictionary().put("CustomerBO", customerBO);
			        PersistentObjectBOExtension ex = customerBO.getExtension(PersistentObjectBOExtension.class);
					CustomerPO customerPO = (CustomerPO)ex.getPersistentObject();
					if (null != customerPO)
					{
						getPipelineDictionary().put("CustomerCustomAttributes", new AttributeValueIterator(customerPO.createAttributeValuesIterator(), customerPO));%>

					    <customer id="<% {String value = null;try{value=context.getFormattedValue(getObject("CustomerBO:CustomerNo"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {74}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>">
					    	<customer-type><% {String value = null;try{value=context.getFormattedValue(getObject("CustomerBO:CustomerType:CustomerTypeID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {75}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></customer-type>
					    	<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CompanyCustomerExtension"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",76,e);}if (_boolean_result) { %>
								<% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("CompanyCustomerExtension:CompanyName"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",77,e);}if (_boolean_result) { %><company-name><% {String value = null;try{value=context.getFormattedValue(getObject("CompanyCustomerExtension:CompanyName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {77}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></company-name><% } %>
								<% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("CompanyCustomerExtension:CompanyName2"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",78,e);}if (_boolean_result) { %><company-name2><% {String value = null;try{value=context.getFormattedValue(getObject("CompanyCustomerExtension:CompanyName2"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {78}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></company-name2><% } %>
								<% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("CompanyCustomerExtension:Description"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",79,e);}if (_boolean_result) { %><description><% {String value = null;try{value=context.getFormattedValue(getObject("CompanyCustomerExtension:Description"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {79}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></description><% } %>
								<% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("CompanyCustomerExtension:TaxationID"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",80,e);}if (_boolean_result) { %><taxation-id><% {String value = null;try{value=context.getFormattedValue(getObject("CompanyCustomerExtension:TaxationID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {80}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></taxation-id><% } %>
								<% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("CompanyCustomerExtension:Industry"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",81,e);}if (_boolean_result) { %><industry><% {String value = null;try{value=context.getFormattedValue(getObject("CompanyCustomerExtension:Industry"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {81}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></industry><% } %>
								<enabled><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("CompanyCustomerExtension:Active"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",82,e);}if (_boolean_result) { %>1<% } else { %>0<% } %></enabled>
					    	<% } %>
					    	<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CustomerApprovalExtension"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",84,e);}if (_boolean_result) { %>
								<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("CustomerApprovalExtension:Rejected"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",85,e);}if (_boolean_result) { %>
									<approval-status>2</approval-status>
								<% } else {_boolean_result=false;try {_boolean_result=((Boolean)(getObject("CustomerApprovalExtension:Approved"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",87,e);}if (_boolean_result) { %>
									<approval-status>1</approval-status>
								<% } else { %>
									<approval-status>0</approval-status>
								<% }} %>
					    	<% } %>
					    	<% processOpenTag(response, pageContext, "customattributes", new TagParameter[] {
new TagParameter("attributes",getObject("CustomerCustomAttributes"))}, 93); %>
					    	<users><%
					    		CustomerBOGroupCustomerExtension groupCustomerExtension = customerBO.getExtension("GroupCustomer");
					    		if (null == groupCustomerExtension)
							    {
						    	    CustomerBOPrivateCustomerExtension privateCustomerExtension = customerBO.getExtension("PrivateCustomer");
						    	    if (null != privateCustomerExtension)
						    	    {
						    	        UserBO customerUser = privateCustomerExtension.getUserBO();
						    	        Profile customerUserProfile = profileMgr.resolveProfileFromID(customerUser.getID());
						    	    	getPipelineDictionary().put("CustomerUserProfile", customerUserProfile);
						    	    	%><% processOpenTag(response, pageContext, "user", new TagParameter[] {
new TagParameter("iscustomerprofile","true"),
new TagParameter("user",getObject("CustomerUserProfile"))}, 104); %><%
						    	    }
							    }
						    	else
						    	{
									Iterator<CustomerBasicProfileAssignmentPO> assignments = new FilterIterator<CustomerBasicProfileAssignmentPO>(
							                        customerPO.createCustomerBasicProfileAssignmentsIterator(),
							                        ProfileFilter.CUSTOMER.getCondition());
									Profile customerProfile = assignments.next().getProfile();
							        ORMHelper.closeIterator(assignments);
							        getPipelineDictionary().put("CustomerProfile", customerProfile);
									%><% processOpenTag(response, pageContext, "addresses", new TagParameter[] {
new TagParameter("customerprofile",getObject("CustomerProfile"))}, 115); %><%
									Collection<UserBO> users = groupCustomerExtension.getAllUserBOs();
								    for(UserBO customerUser : users)
								    {
								        Profile customerUserProfile = profileMgr.resolveProfileFromID(customerUser.getID());
								        getPipelineDictionary().put("CustomerUserProfile", customerUserProfile);
								        %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CompanyCustomerExtension"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",121,e);}if (_boolean_result) { %>
								        	<% processOpenTag(response, pageContext, "user", new TagParameter[] {
new TagParameter("iscustomerprofile","false"),
new TagParameter("user",getObject("CustomerUserProfile"))}, 122); %>
								        <% } else { %>
								        	<% processOpenTag(response, pageContext, "user", new TagParameter[] {
new TagParameter("iscustomerprofile","false"),
new TagParameter("user",getObject("CustomerUserProfile")),
new TagParameter("exportaddresses","false")}, 124); %>
								        <% } %><%
								    }
								}%>
							</users>
							
							
							<% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("CustomerBO:PreferredInvoiceToAddressBO"),null).equals(context.getFormattedValue(getObject("null"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",131,e);}if (_boolean_result) { %>
								<% {Object temp_obj = (getObject("CustomerBO:PreferredInvoiceToAddressBO")); getPipelineDictionary().put("addressBO", temp_obj);} %>				
								<% {Object temp_obj = (getObject("addressBO:Extension(\"PersistentObjectBOExtension\"):PersistentObject")); getPipelineDictionary().put("address", temp_obj);} %>								
								<preferred-invoice-to-address name="<% {String value = null;try{value=context.getFormattedValue(getObject("address:AddressName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {134}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>">
									<% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"export/AddressDataExport", null, "135");} %>
								</preferred-invoice-to-address>
							<% } %>
							
							<% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("CustomerBO:PreferredShipToAddressBO"),null).equals(context.getFormattedValue(getObject("null"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",139,e);}if (_boolean_result) { %>
								<% {Object temp_obj = (getObject("CustomerBO:PreferredShipToAddressBO")); getPipelineDictionary().put("addressBO", temp_obj);} %>				
								<% {Object temp_obj = (getObject("addressBO:Extension(\"PersistentObjectBOExtension\"):PersistentObject")); getPipelineDictionary().put("address", temp_obj);} %>								
								<preferred-ship-to-address name="<% {String value = null;try{value=context.getFormattedValue(getObject("address:AddressName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {142}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>">
									<% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"export/AddressDataExport", null, "143");} %>
								</preferred-ship-to-address>
							<% } %>
							
							
							
							<% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("CustomerBO:AddressBOs") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",149,e);}if (_boolean_result) { %>
								<addresses>
									<% while (loop("CustomerBO:AddressBOs","addressBO",null)) { %>
										<% {Object temp_obj = (getObject("addressBO:Extension(\"PersistentObjectBOExtension\"):PersistentObject")); getPipelineDictionary().put("address", temp_obj);} %>
										<address name="<% {String value = null;try{value=context.getFormattedValue(getObject("address:AddressName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {153}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>">
											<% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"export/AddressDataExport", null, "154");} %>
										</address>
									<% } %>
								</addresses>
							<% } %>
						</customer><%

						getPipelineDictionary().remove("CompanyCustomerExtension");
						getPipelineDictionary().remove("CustomerCustomAttributes");
						getPipelineDictionary().remove("CustomerProfile");
						getPipelineDictionary().remove("CustomerUserProfile");
					}
				}
			}
		%>
	<% } %>
<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((Boolean) (disableErrorMessages().isDefined(getObject("MultiThreadingEnabled")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() || ((Boolean) ((((Boolean) getObject("MultiThreadingEnabled")).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",170,e);}if (_boolean_result) { %>
	<% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"DefaultExportFooter", null, "171");} %>
<% } %>
<% printFooter(out); %>