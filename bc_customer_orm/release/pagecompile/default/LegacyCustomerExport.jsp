<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%! protected Boolean printTemplateMarker() { return Boolean.FALSE; } %><%%><%@ page contentType="text/xml;charset=utf-8" %><%%><%@ page session="false"%><%setEncodingType("text/xml"); %>

<%@page import="java.util.Iterator,
				com.intershop.component.customer.capi.CustomerBO,
			    com.intershop.component.customer.capi.CustomerBOPrivateCustomerExtension,
			    com.intershop.component.user.capi.UserBO,
			    com.intershop.beehive.core.capi.impex.AttributeValueIterator,
			    com.intershop.beehive.core.capi.user.User,
			    com.intershop.beehive.core.capi.profile.Profile,
			    com.intershop.beehive.core.capi.profile.ProfileMgr,
			    com.intershop.beehive.core.capi.paging.PageableIterator,
			    com.intershop.beehive.core.capi.domain.PersistentObjectBOExtension,
			    com.intershop.component.customer.orm.internal.orm.CustomerPO,
			    com.intershop.beehive.core.capi.domain.ExtensibleObject,
			    com.intershop.beehive.core.capi.query.Row,
			    com.intershop.beehive.foundation.util.ConcatenationIterator"%>

<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((Boolean) (disableErrorMessages().isDefined(getObject("MultiThreadingEnabled")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() || ((Boolean) ((((Boolean) getObject("MultiThreadingEnabled")).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",18,e);}if (_boolean_result) { %>
	<% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"UserExportHeader", null, "19");} %>
<% } %>

	<% context.setCustomTagTemplateName("user","inc/FNDUser",false,new String[]{"user","customattributes"},null); %>
	<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Objects"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",23,e);}if (_boolean_result) { %>
		<%
			ProfileMgr profileMgr = (ProfileMgr) NamingMgr.getInstance().lookupManager(ProfileMgr.REGISTRY_NAME);
			Iterator objects = (Iterator)getObject("Objects");

			if (objects instanceof PageableIterator)
			{
			    objects = ((PageableIterator) objects).toSequence();
			}

			while (objects.hasNext())
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
			        CustomerBOPrivateCustomerExtension privateCustomerExtension = customerBO.getExtension("PrivateCustomer");
		    	    if (null != privateCustomerExtension)
		    	    {
		    	        UserBO customerUser = privateCustomerExtension.getUserBO();
		    	        Profile profile = profileMgr.resolveProfileFromID(customerUser.getID());
		    	        User user = new User(profile.getProfileID());
		    	        if (null != user)
		    	        {
		    	            PersistentObjectBOExtension ex = customerBO.getExtension(PersistentObjectBOExtension.class);
							CustomerPO customerPO = (CustomerPO)ex.getPersistentObject();
							if (null != customerPO)
							{
			    	            Iterator customerAttr = new AttributeValueIterator(customerPO.createAttributeValuesIterator(), customerPO);
			    	            Iterator profileAttr = new AttributeValueIterator(((ExtensibleObject)profile).createAttributeValuesIterator(), (ExtensibleObject) profile);
			    	            ConcatenationIterator conIter = new ConcatenationIterator();
	                            conIter.addIterator(customerAttr);
	                            conIter.addIterator(profileAttr);
	                            getPipelineDictionary().put("CustomAttributes", conIter);
			    	            getPipelineDictionary().put("Object", user);
								%><% processOpenTag(response, pageContext, "user", new TagParameter[] {
new TagParameter("user",getObject("Object")),
new TagParameter("customattributes",getObject("CustomAttributes"))}, 68); %><%
							}
		    	        }
		    	    }
			    }
			}
		%>
	<% } %>
<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((Boolean) (disableErrorMessages().isDefined(getObject("MultiThreadingEnabled")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() || ((Boolean) ((((Boolean) getObject("MultiThreadingEnabled")).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",76,e);}if (_boolean_result) { %>
	<% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"DefaultExportFooter", null, "77");} %>
<% } %>
<% printFooter(out); %>