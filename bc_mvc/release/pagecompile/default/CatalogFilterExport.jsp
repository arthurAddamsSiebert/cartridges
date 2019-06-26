<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%! protected Boolean printTemplateMarker() { return Boolean.FALSE; } %><%%><%@ page contentType="text/xml;charset=utf-8" %><%%><%@ page session="false"%><%setEncodingType("text/xml"); %>
<?xml version="1.0" encoding="UTF-8"?>
<%@ page import = "com.intershop.beehive.core.capi.naming.*,
				   com.intershop.beehive.core.capi.domain.*,
				   com.intershop.beehive.core.capi.user.*,
				   com.intershop.beehive.xcs.capi.product.*,
				   com.intershop.beehive.xcs.capi.catalog.*,
   				   com.intershop.beehive.xcs.common.*,
				   com.intershop.component.mvc.capi.filter.*,
				   com.intershop.component.organization.capi.*,
 				   java.util.*,
				   java.text.*" %>
<%
	OrganizationRoleMgr roleMgr = (OrganizationRoleMgr)NamingMgr.getInstance().lookupManager(OrganizationRoleMgr.REGISTRY_NAME);
%>
<enfinity 
	xsi:schemaLocation="http://www.intershop.com/xml/ns/enfinity/7.0/bc_mvc/impex bc_mvc.xsd"
	xmlns="http://www.intershop.com/xml/ns/enfinity/7.0/bc_mvc/impex" 
	xmlns:xml="http://www.w3.org/XML/1998/namespace" 
	xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Objects"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",21,e);}if (_boolean_result) { %>
<%
	Iterator filters = (Iterator)getObject("Objects");
	while (filters instanceof com.intershop.beehive.foundation.util.ResettableIterator)
	{
		filters = ((com.intershop.beehive.foundation.util.ResettableIterator)filters).toSequence();
	}
	
	while (filters.hasNext())
	{
		CatalogFilter filter = (CatalogFilter)filters.next();
		getPipelineDictionary().put("filter", filter);
		out.print("<catalog-filter id=\"");
		out.print(stringToXml(filter.getID()));
		out.println("\" state=\"" + filter.getState()+ "\" update-interval=\"" + filter.getUpdateInterval() +"\">");
		out.print("<scope id=\"");
		out.print(stringToXml(filter.getScopeID()));
		out.println("\" type=\"\"/>");
	
		//  Name and description.
	
		Iterator attributes = filter.createAttributeValuesIterator("name");
		while (attributes.hasNext())
		{
			AttributeValue attribute = (AttributeValue) attributes.next();
			String locale = attribute.getXMLLocaleID();
			out.print("<name xml:lang=\"" +locale+ "\">");
			out.print(stringToXml(attribute.getStringValue()));
			out.println("</name>");
		}   // while attributes
		
		attributes = filter.createAttributeValuesIterator("description");
		while (attributes.hasNext())
		{
			AttributeValue attribute = (AttributeValue) attributes.next();
			String locale = attribute.getXMLLocaleID();
			out.print("<description xml:lang=\"" +locale+ "\">");
			out.print(stringToXml(attribute.getStringValue()));
			out.println("</description>");
		}   // while attributes

	
		//add included categories and products
		Iterator inclCategories = filter.createIncludedCategoriesIterator();
		Iterator inclProducts = filter.createIncludedProductsIterator();
	
		if (inclCategories.hasNext() || inclProducts.hasNext())
		{
			out.println("<included-objects>");
			if (inclProducts.hasNext())
			{
				out.println("<products>");
				while (inclProducts.hasNext())
				{
					ProductRef productRef = (ProductRef)inclProducts.next();
					out.print("<product sku=\"");
					out.print(stringToXml(productRef.getProductSKU()));
					out.print("\" domain=\"");
					out.print(stringToXml(productRef.getDomainName()));
					out.println("\"/>");
				}
				out.println("</products>");
			}			
			if (inclCategories.hasNext())
			{
				out.println("<categories>");
				while (inclCategories.hasNext())
				{
					CatalogCategory cat = (CatalogCategory)inclCategories.next();
					out.print("<category name=\"");
					out.print(stringToXml(cat.getName()));
					out.print("\" domain=\"");
					out.print(stringToXml(cat.getDomain().getDomainName()));
					out.println("\"/>");
				}
				out.println("</categories>");
			}
			out.println("</included-objects>");
		}
	
		//add excluded categories and products
		Iterator exclCategories = filter.createExcludedCategoriesIterator();
		Iterator exclProducts = filter.createExcludedProductsIterator();
	
		if (exclCategories.hasNext() || exclProducts.hasNext())
		{
			out.println("<excluded-objects>");
			if (exclProducts.hasNext())
			{
				out.println("<products>");
				while (exclProducts.hasNext())
				{
					ProductRef productRef = (ProductRef)exclProducts.next();
					out.print("<product sku=\"");
					out.print(stringToXml(productRef.getProductSKU()));
					out.print("\" domain=\"");
					out.print(stringToXml(productRef.getDomainName()));
					out.println("\"/>");
				}
				out.println("</products>");
			}
			if (exclCategories.hasNext())
			{
				out.println("<categories>");
				while (exclCategories.hasNext())
				{
					CatalogCategory cat = (CatalogCategory)exclCategories.next();
					out.print("<category name=\"");
					out.print(stringToXml(cat.getName()));
					out.print("\" domain=\"");
					out.print(stringToXml(cat.getDomain().getDomainName()));
					out.println("\"/>");
				}
				out.println("</categories>");
			}
			out.println("</excluded-objects>");
		}
		
		out.println("<filter-targets>");
		
		//add filter targets - department roles and costcenter roles
		Iterator assignedGroups =filter.createAssignedUserGroupsIterator();
			
		//sort user groups into 2 groups
		StringBuffer deptGroups = new StringBuffer();
		StringBuffer ccGroups = new StringBuffer();

		while (assignedGroups.hasNext())
		{
			UserGroup ug = (UserGroup)assignedGroups.next();
			Department dept = roleMgr.getDepartmentByRole(ug);
				
			//ID of user groups may start with "DR", but user group is not attached to a department
			//thats why we check for the department
			if (dept!=null)
			{
				String roleID = ug.getID();
				//is the user group a department master role
				if (roleID.startsWith("DMRI_"))
				{
					String prefix = "DMRI_"+dept.getUUID()+"_";
					roleID = "DMR_" + roleID.substring(prefix.length());
				}
				//or is it an instance of a department  role
				else
				{
					String prefix = "DR_"+dept.getUUID()+"_";
					roleID = roleID.substring(prefix.length());
				}
				deptGroups.append("<department-role role-id=\"" + stringToXml(roleID) + "\" department-id=\"" + stringToXml(dept.getID()) + "\" domain=\"" + stringToXml(ug.getDomain().getDomainName())+ "\"/>\n");
			}
			else
			{
				CostCenter cc = roleMgr.getCostCenterByRole(ug);
				if (cc!=null)
				{
					String roleID = ug.getID();
					//is the user group a costcenter master role
					if (roleID.startsWith("CMRI_"))
					{
						String prefix = "CMRI_"+cc.getUUID()+"_";
						roleID = "CMR_" + roleID.substring(prefix.length());
					}
					//or is it an instance of a costcenter  role
					else
					{
						String prefix = "CR_"+cc.getUUID()+"_";
						roleID = roleID.substring(prefix.length());
					}
					ccGroups.append("<costcenter-role role-id=\"" + stringToXml(roleID) + "\" costcenter-id=\"" + stringToXml(cc.getID()) + "\" domain=\"" + stringToXml(ug.getDomain().getDomainName())+ "\"/>\n");
				}
			}
		}
			
		%>
		<% {out.flush();processExtensionPoint((com.intershop.beehive.core.capi.request.ServletResponse)response,"CatalogFilterTargetsExportXMLExtensions", null, "196");} %>
		<%
		if (deptGroups.length()>0)
		{
			out.println("<department-roles>");
			out.print(deptGroups.toString());
			out.println("</department-roles>");
		}
		if (ccGroups.length()>0)
		{
			out.println("<costcenter-roles>");
			out.print(ccGroups.toString());
			out.println("</costcenter-roles>");
		}
		out.println("</filter-targets>");
		
		out.println("</catalog-filter>");
	}
%>
<% } %>
</enfinity>
<% printFooter(out); %>