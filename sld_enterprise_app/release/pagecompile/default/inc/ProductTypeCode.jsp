<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%! protected Boolean printTemplateMarker() { return Boolean.FALSE; } %><%%><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><%@page import="com.intershop.component.product.capi.ProductBORepository"%><%@page import="com.intershop.component.repository.capi.RepositoryBO"%><%@page import="com.intershop.component.repository.capi.RepositoryBORepository"%><%@page import="com.intershop.beehive.businessobject.capi.BusinessObjectRepositoryFactory"%><%@page import="com.intershop.beehive.businessobject.capi.BusinessObjectContext"%><%@page import="com.intershop.beehive.app.capi.AppContext"%><%@ page import = "java.util.*,com.intershop.beehive.xcs.capi.product.*" %><%@ page import = "com.intershop.component.mvc.capi.product.ServiceTypeBO" %><%@ page import = "com.intershop.beehive.core.capi.domain.Domain" %><%@ page import = "com.intershop.beehive.core.capi.naming.NamingMgr" %><%@ page import = "com.intershop.beehive.core.capi.app.AppContextUtil" %><%@ page import = "com.intershop.component.product.capi.ProductBO" %><%
	Product product = (Product)getObject("Product");
	
  	boolean typeFound = false;
  	if (product.isBundled()) {
		%><% {out.write(localizeISText("sld_enterprise_app.BundledProduct.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><%typeFound = true;
  	}
  	if (product.isMastered()) {
		if(typeFound){ %><br/><%} %><% {out.write(localizeISText("sld_enterprise_app.VariationProduct.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><% typeFound = true;
  	}
  	if (product.isProductBundle()) {
		if(typeFound){ %><br/><%}%><% {out.write(localizeISText("sld_enterprise_app.ProductBundle.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><%     typeFound = true;
  	}
 	if (product.isProductMaster()) {
		if(typeFound){ %><br/><%}%><% {out.write(localizeISText("sld_enterprise_app.VariationMaster.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><%   typeFound = true;
	}
	if ((product.getTypeCode() & 128) == 128) {
		if(typeFound){ %><br/><%}%><% {out.write(localizeISText("ProductTypeCode.RetailSet",null,null,null,null,null,null,null,null,null,null,null,null));} %> <% typeFound = true;
	}
	if ((product.getTypeCode() & 256) == 256) {
		if(typeFound){ %><br/><%}%><% {out.write(localizeISText("ProductTypeCode.PartOfRetailSet",null,null,null,null,null,null,null,null,null,null,null,null));} %> <% typeFound = true;
	}

    AppContext appContext = AppContextUtil.getCurrentAppContext();
    BusinessObjectContext boContext = (BusinessObjectContext)appContext.getVariable(BusinessObjectContext.NAME);
    BusinessObjectRepositoryFactory<RepositoryBORepository> repositoryFactory = boContext.getEngine().getRepositoryFactory(RepositoryBORepository.class);
    RepositoryBORepository repositoryBORepository = repositoryFactory.createRepository(boContext);
    RepositoryBO repository = repositoryBORepository.getRepositoryByID(product.getDomainID());
    ProductBORepository productBORepository = repository.getExtension(ProductBORepository.class);

	ProductBO productBO = productBORepository.getProductByID(product.getUUID());
	
	if ( productBO != null )
	{
		ServiceTypeBO serviceTypeBO = productBO.getServiceType();
		if (serviceTypeBO!=null)
		{
			if(typeFound) { out.print("<br/>"); } 
			else { typeFound = true; }
			out.print(serviceTypeBO.getDisplayName());		
		}
	}
	if (!typeFound && (product.isProductItem() || product.isOffer())) {
		%><% {out.write(localizeISText("BrowseClassificationCatalog.Product.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><%
	}
%><% printFooter(out); %>