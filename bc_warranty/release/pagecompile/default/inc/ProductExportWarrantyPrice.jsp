<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %>
<%@page import="com.intershop.beehive.core.capi.pipeline.PipelineDictionary"%>
<%@page import="com.intershop.component.mvc.capi.product.ServiceTypeBO"%>
<%@page import="com.intershop.component.product.capi.ProductBO"%>
<%@page import="com.intershop.component.product.capi.ProductBORepositoryExtension"%>
<%@page import="com.intershop.component.product.capi.ProductBORepository"%>
<%@page import="com.intershop.component.warranty.capi.WarrantyBO"%>
<%@page import="com.intershop.beehive.xcs.capi.product.Product"%>
<%@page import="com.intershop.component.warranty.capi.WarrantyBORepositoryExtension"%>
<%@page import="com.intershop.component.warranty.capi.WarrantyBORepository"%>
<%@page import="com.intershop.component.repository.capi.BusinessObjectRepositoryContext"%>
<%@page import="com.intershop.beehive.businessobject.capi.BusinessObjectContext"%>
<%@page import="com.intershop.component.application.capi.ApplicationBO"%>
<%@page import="com.intershop.beehive.core.capi.app.AppContextUtil"%>
<% %><%! protected Boolean printTemplateMarker() { return Boolean.FALSE; } %><%%><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %>

<%
PipelineDictionary dictionary = getPipelineDictionary();
Product product = dictionary.get("product");

BusinessObjectRepositoryContext repositoryContext = AppContextUtil.getCurrentAppContext().getVariable(BusinessObjectRepositoryContext.CURRENT);

ProductBORepository productRepository = repositoryContext.getRepository(ProductBORepositoryExtension.EXTENSION_ID);
ProductBO productBO = productRepository.getProductBOByID(product.getUUID());

if(productBO != null)
{
	ServiceTypeBO serviceTypeBO = productBO.getServiceTypeBO();
	
	if(serviceTypeBO != null && serviceTypeBO.isWarranty())
	{
	    WarrantyBORepository warrantyRepository = repositoryContext.getRepository(WarrantyBORepositoryExtension.EXTENSION_ID);
		WarrantyBO warrantyBO = warrantyRepository.getWarrantyBOBySKU(product.getSKU());
		
		if(warrantyBO != null)
		{
		    dictionary.put("WarrantyPriceConfiguration", warrantyBO.getPriceConfiguration());
		    dictionary.put("WarrantyPriceProvider", warrantyBO.getPriceProviderName());
%>
            <% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("WarrantyPriceConfiguration:KeySet") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",40,e);}if (_boolean_result) { %>
                <warranty-prices>
		            <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("WarrantyPriceProvider"),null).equals(context.getFormattedValue("WarrantyPriceProvider.FixedPrice",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",42,e);}if (_boolean_result) { %>
		                <% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/ProductExportWarrantyFixedPrice", null, "43");} %>
		            <% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("WarrantyPriceProvider"),null).equals(context.getFormattedValue("WarrantyPriceProvider.Percentage",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",44,e);}if (_boolean_result) { %>
		                <% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/ProductExportWarrantyPercentagePrice", null, "45");} %>
		            <% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("WarrantyPriceProvider"),null).equals(context.getFormattedValue("WarrantyPriceProvider.PriceRange",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",46,e);}if (_boolean_result) { %>
		                <% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/ProductExportWarrantyScaledPrice", null, "47");} %>
		            <% } else { %>
		                <%Logger.error(this, "Unknown warranty price provider name: {}.", warrantyBO.getPriceProviderName()); %>
		            <% }}} %>
	            </warranty-prices>
	        <% } %>
<%
		}
	}
}
%><% printFooter(out); %>