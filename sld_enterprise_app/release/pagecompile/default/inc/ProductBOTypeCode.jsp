<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><%@ page import = "com.intershop.component.mvc.capi.product.ServiceTypeBO" %><%@ page import = "com.intershop.component.product.capi.ProductBO" %><%
	ProductBO productBO = (ProductBO)getObject("ProductBO");
	
  	boolean typeFound = false;
  	if (productBO.isBundled()) {
		%><% {out.write(localizeISText("sld_enterprise_app.BundledProduct.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><%typeFound = true;
  	}
  	if (productBO.isMastered()) {
		if(typeFound){ %><br/><%} %><% {out.write(localizeISText("sld_enterprise_app.VariationProduct.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><% typeFound = true;
  	}
  	if (productBO.isProductBundle()) {
		if(typeFound){ %><br/><%}%><% {out.write(localizeISText("sld_enterprise_app.ProductBundle.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><%     typeFound = true;
  	}
 	if (productBO.isProductMaster()) {
		if(typeFound){ %><br/><%}%><% {out.write(localizeISText("sld_enterprise_app.VariationMaster.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><%   typeFound = true;
	}
	if ((productBO.getTypeCode() & 128) == 128) {
		if(typeFound){ %><br/><%}%><% {out.write(localizeISText("ProductBOTypeCode.RetailSet",null,null,null,null,null,null,null,null,null,null,null,null));} %> <% typeFound = true;
	}
	if ((productBO.getTypeCode() & 256) == 256) {
		if(typeFound){ %><br/><%}%><% {out.write(localizeISText("ProductBOTypeCode.PartOfRetailSet",null,null,null,null,null,null,null,null,null,null,null,null));} %> <% typeFound = true;
	}
	
	ServiceTypeBO serviceTypeBO = productBO.getServiceTypeBO();
	if (serviceTypeBO!=null)
	{
		if(typeFound) 
		{ 
		    out.print("<br/>"); 
		} 
		else 
		{ 
		    typeFound = true; 
		}
		out.print(serviceTypeBO.getDisplayName());		
	}
	
	if (!typeFound && (productBO.isProductItem() || productBO.isOffer())) {
		%><% {out.write(localizeISText("BrowseClassificationCatalog.Product.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><%
	}
%><% printFooter(out); %>