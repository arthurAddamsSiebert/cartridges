<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><%@page import="com.intershop.component.warranty.capi.WarrantyBO"%><%@page import="com.intershop.beehive.foundation.quantity.Money"%><%@page import="com.intershop.beehive.core.capi.app.AppContextUtil"%><%@page import="com.intershop.component.product.capi.ProductBO"%><%@page import="com.intershop.component.warranty.capi.product.ProductBOWarrantyExtension"%><%@page import="com.intershop.beehive.app.capi.AppContext"%><%@page import="com.intershop.beehive.businessobject.capi.BusinessObjectContext"%><%@page import="com.intershop.beehive.businessobject.capi.BusinessObjectRepositoryFactory"%><%@page import="com.intershop.component.repository.capi.RepositoryBO"%><%@page import="com.intershop.component.repository.capi.RepositoryBORepository"%><%@page import="com.intershop.component.warranty.capi.WarrantyBORepository"%><%@page import="com.intershop.component.product.capi.ProductBORepository"%><%
    // init default value
    Money price = Money.NOT_AVAILABLE;

    //get product from PD
    ProductBO productBO = (ProductBO)getObject("ProductBO");
    if (productBO != null)
    {
        ProductBORepository productBORepository = productBO.getRepository();

        AppContext appContext = AppContextUtil.getCurrentAppContext();
        BusinessObjectContext boContext = (BusinessObjectContext)appContext
                        .getVariable(BusinessObjectContext.NAME);
        BusinessObjectRepositoryFactory<RepositoryBORepository> repositoryFactory = boContext.getEngine()
                        .getRepositoryFactory(RepositoryBORepository.class);
        RepositoryBORepository repositoryBORepository = repositoryFactory.createRepository(boContext);
        RepositoryBO repository = repositoryBORepository.getRepositoryByID(productBORepository
                        .getRepositoryID());

        WarrantyBORepository warrantyBORepository = repository.getExtension(WarrantyBORepository.class);
        ProductBOWarrantyExtension productBOWarrantyExt = (ProductBOWarrantyExtension)productBO
                        .getExtension("Warranty");
        if (productBOWarrantyExt != null && productBOWarrantyExt.isWarranty())
        {
            WarrantyBO warranty = warrantyBORepository.getWarrantyBOBySKU(productBO.getSKU());
            if (warranty != null && warranty.hasPrice())
            {
                // get curency from PD
                String currency = (String)getObject("Currency");
                if (currency != null)
                {
                    price = warranty.getPrice(null, currency);
                }
                else
                {
                    price = warranty.getPrice(null);
                }

                getPipelineDictionary()
                                .put("WarrantyPrice", price.isAvailable() ? price : "depends on product");
            }
            else
            {
                getPipelineDictionary().put("WarrantyPrice", "N/A");
            }
        }
    }
%><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("WarrantyPrice"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",65,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("WarrantyPrice"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {66}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Currency"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",68,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("ProductBO:ListPrice(Currency):Amount"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {69}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %><% {String value = null;try{value=context.getFormattedValue(getObject("ProductBO:Price"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {71}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %><% } %><% printFooter(out); %>