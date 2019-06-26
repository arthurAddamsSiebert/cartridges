<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%! protected Boolean printTemplateMarker() { return Boolean.FALSE; } %><%%><%@ page contentType="text/xml;charset=utf-8" %><%%><%@ page session="false"%><%setEncodingType("text/xml"); %>
<?xml version="1.0" encoding="UTF-8"?>
<%@page import="com.intershop.beehive.core.capi.naming.NamingMgr,
	com.intershop.beehive.foundation.quantity.*,
	com.intershop.beehive.core.capi.pipeline.*,
	com.intershop.beehive.core.capi.profile.*,
	com.intershop.beehive.core.capi.user.*,
	java.util.*,
	com.intershop.beehive.bts.capi.orderprocess.*,
	com.intershop.beehive.bts.capi.orderprocess.basket.*,
	com.intershop.beehive.bts.capi.orderprocess.fulfillment.*" %>
<enfinity
    xsi:schemaLocation="http://www.intershop.com/xml/ns/enfinity/6.7/bts/impex order.xsd
    	http://www.intershop.com/xml/ns/enfinity/6.5/core/impex-dt dt.xsd"
    xmlns="http://www.intershop.com/xml/ns/enfinity/6.7/bts/impex"
    xmlns:xml="http://www.w3.org/XML/1998/namespace"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    xmlns:dt="http://www.intershop.com/xml/ns/enfinity/6.5/core/impex-dt"
    major="6"
    minor="1"
    family="enfinity"
    branch="enterprise"
    build="<% {String value = null;try{value=context.getFormattedValue(getObject("BuildNumber"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {23}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>">
<% context.setCustomTagTemplateName("address","inc/Address",false,new String[]{"address"},null); %>
<% context.setCustomTagTemplateName("customattributes","inc/CustomAttributes",false,new String[]{"attributes"},null); %>
<% context.setCustomTagTemplateName("productref","inc/ProductReference",false,new String[]{"product_ref","type"},null); %>
<% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"impex/Modules", null, "34");} %>          
<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("exportObjects"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",35,e);}if (_boolean_result) { %>
 <%
  java.util.Iterator objects = (java.util.Iterator) getObject("exportObjects");

  while (objects instanceof com.intershop.beehive.foundation.util.ResettableIterator)
  {
      objects = ((com.intershop.beehive.foundation.util.ResettableIterator) objects).toSequence();
  }

  List exportObjects = new ArrayList();

  while (objects.hasNext())
  {
  PipelineDictionary pd = getPipelineDictionary();
  Object lineItemCtnr = objects.next();
  exportObjects.add( lineItemCtnr );
  pd.put("lctnr", lineItemCtnr );

  // check options, disable error messages for lookups
  // this.disableErrorMessages();

  boolean exportrefids     = false;
  boolean exportDomainRefs = false;

  if (getObject("ExportRefIDs") != null)
  {
      if (!(getObject("ExportRefIDs") instanceof Boolean))
      {
          getPipelineDictionary().put("ExportRefIDs", new Boolean((String) getObject("ExportRefIDs")));
      }

      exportrefids = ((Boolean) getObject("ExportRefIDs")).booleanValue();
  }

  if (getObject("ExportDomainRefs") != null)
  {
      if (!(getObject("ExportDomainRefs") instanceof Boolean))
      {
          getPipelineDictionary().put("ExportDomainRefs", new Boolean((String) getObject("ExportDomainRefs")));
      }

      exportDomainRefs = ((Boolean) getObject("ExportDomainRefs")).booleanValue();
  }

  LineItemCtnr ctnr = (LineItemCtnr) getObject("lctnr");

  if (ctnr instanceof Basket)
  {
     pd.put("START_TAG",          "basket");
     pd.put("DOCUMENT_TYPE_NAME", "basket-type");
     pd.put("DOCUMENT_TYPE",      ((Basket) ctnr).getBasketTypeStateName());
  }
  else
  {
     pd.put("START_TAG",          "order");
     pd.put("DOCUMENT_TYPE_NAME", "order-type");
     pd.put("DOCUMENT_TYPE",      ((Order) ctnr).getOrderTypeStateName());
  }

  // reenable error messages
  // this.isDefined("foney");
  %>

  
  	<<% {String value = null;try{value=context.getFormattedValue(getObject("START_TAG"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {99}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ExportRefIDs"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",99,e);}if (_boolean_result) { %>  refid="<% {String value = null;try{value=context.getFormattedValue(getObject("lctnr:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {99}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
               <% } %> document-no="<% {String value = null;try{value=context.getFormattedValue(getObject("lctnr:DocumentNo"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {100}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" <% {String value = null;try{value=context.getFormattedValue(getObject("DOCUMENT_TYPE_NAME"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {100}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>="<% {String value = null;try{value=context.getFormattedValue(getObject("DOCUMENT_TYPE"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {100}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>">
  

  
  	<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) getObject("lctnr:CreationDateNull")).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",104,e);}if (_boolean_result) { %><creation-date><% processOpenTag(response, pageContext, "datetime", new TagParameter[] {
new TagParameter("date",getObject("lctnr:CreationDate"))}, 104); %></creation-date><% } %>
  	<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) getObject("lctnr:RequestedDeliveryDateNull")).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",105,e);}if (_boolean_result) { %><requested-delivery-date>><% processOpenTag(response, pageContext, "datetime", new TagParameter[] {
new TagParameter("date",getObject("lctnr:RequestedDeliveryDate"))}, 105); %></requested-delivery-date><% } %>
  	<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("lctnr:StatusStateName"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",106,e);}if (_boolean_result) { %><order-status><% {String value = null;try{value=context.getFormattedValue(getObject("lctnr:StatusStateName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {106}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></order-status><% } %>
  	<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) getObject("lctnr:DocumentNoNull")).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",107,e);}if (_boolean_result) { %><document-no><% {String value = null;try{value=context.getFormattedValue(getObject("lctnr:DocumentNo"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {107}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></document-no><% } %>
  	<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) getObject("lctnr:LeadCurrencyCodeNull")).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",108,e);}if (_boolean_result) { %><lead-currency><% {String value = null;try{value=context.getFormattedValue(getObject("lctnr:LeadCurrencyCode"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {108}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></lead-currency><% } %>
  	<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) getObject("lctnr:PurchaseCurrencyCodeNull")).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",109,e);}if (_boolean_result) { %><purchase-currency><% {String value = null;try{value=context.getFormattedValue(getObject("lctnr:PurchaseCurrencyCode"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {109}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></purchase-currency><% } %>
  	<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) getObject("lctnr:PaymentTransactionCurrencyCodeNull")).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",110,e);}if (_boolean_result) { %><transaction-currency><% {String value = null;try{value=context.getFormattedValue(getObject("lctnr:PaymentTransactionCurrencyCode"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {110}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></transaction-currency><% } %>

  <exchange-rates>
    <% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) getObject("lctnr:ExchangeRatePTCtoLCNull")).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",113,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("lctnr:ExchangeRatePTCtoLC:isAvailable"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",113,e);}if (_boolean_result) { %><exchange-rate source="TRANSACTION" target="LEAD"><% {String value = null;try{value=context.getFormattedValue(getObject("lctnr:ExchangeRatePTCtoLC"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {113}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></exchange-rate><% } %><% } %>
    <% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) getObject("lctnr:ExchangeRatePCtoLCNull")).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",114,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("lctnr:ExchangeRatePCtoLC:isAvailable"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",114,e);}if (_boolean_result) { %><exchange-rate source="PURCHASE" target="LEAD"><% {String value = null;try{value=context.getFormattedValue(getObject("lctnr:ExchangeRatePCtoLC"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {114}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></exchange-rate><% } %><% } %>
    <% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) getObject("lctnr:ExchangeRatePCtoPTCNull")).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",115,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("lctnr:ExchangeRatePCtoPTC:isAvailable"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",115,e);}if (_boolean_result) { %><exchange-rate source="PURCHASE" target="TRANSACTION"><% {String value = null;try{value=context.getFormattedValue(getObject("lctnr:ExchangeRatePCtoPTC"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {115}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></exchange-rate><% } %><% } %>
  </exchange-rates>

  	<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) getObject("lctnr:BuyerNoNull")).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",118,e);}if (_boolean_result) { %><buyer-no><% {String value = null;try{value=context.getFormattedValue(getObject("lctnr:BuyerNo"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {118}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></buyer-no><% } %>

  
  <%
  User user = ctnr.getUser();

  if (user != null)
  {
      String businesspartnerNo = null;
      String domainname = null;
      ProfileMgr profileMgr = (ProfileMgr) NamingMgr.getInstance().lookupManager(ProfileMgr.REGISTRY_NAME);
      Profile    profile    = profileMgr.getProfile(user);

      if (profile != null)
      {
          businesspartnerNo = profile.getDataSheet().getBusinessPartnerNo();
          domainname        = profile.getDomain().getDomainName();

          		out.print("<user business-partner-no=\""+encodeString(businesspartnerNo) + '"');

          		if (exportDomainRefs)
          		{
            		out.print(" domain=\""+encodeString(domainname) + '"');
          		}

          		if (exportrefids)
          		{
              		out.print(" refid=\""+encodeString(user.getID()) + '"');
          		}

          out.println("/>");
      }
  }
  %>
  

  	<anonymous><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) getObject("lctnr:isAnonymous")).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",154,e);}if (_boolean_result) { %>0<% } else { %>1<% } %></anonymous>
  	<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) getObject("lctnr:SessionIDNull")).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",155,e);}if (_boolean_result) { %><session-id><% {String value = null;try{value=context.getFormattedValue(getObject("lctnr:SessionID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {155}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></session-id><% } %>

  
  	<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ExportRefIDs"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",158,e);}if (_boolean_result) { %>
  <%
  Address add = null;
  String  addType=null;

	  	for (int i=0; i<2; i++)
  {
      switch (i)
      {
      case 0: add=ctnr.getInvoiceToAddress(); addType="invoice-to-address"; break;
      case 1: add=ctnr.getShipFromAddress();  addType="ship-from-address";  break;
      }

      if (add != null)
      {
         out.print('<'+addType+' ');
	         	out.print("refid=\""+add.getUUID()+"\" ");
         out.println("id=\""+add.getAddressID()+"\"/>");
      }
  }
  %>
    <% } else { %>
      <% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("lctnr:ShipFromAddressID"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",180,e);}if (_boolean_result) { %><ship-from-address id="<% {String value = null;try{value=context.getFormattedValue(getObject("lctnr:ShipFromAddressID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {180}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"<% } %>/>
      <% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("lctnr:InvoiceToAddressID"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",181,e);}if (_boolean_result) { %><invoice-to-address id="<% {String value = null;try{value=context.getFormattedValue(getObject("lctnr:InvoiceToAddressID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {181}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"<% } %>/>
  	<% } %>
  


  
  <prices>
  <%
  Money price=null;
  String priceType=null, priceName=null;
  boolean lastTime = false;

  for(int i=0; i<7; i++)
  {
      switch (i)
      {
      case 0: priceType="PURCHASE";    price=ctnr.getGrandTotalNetPricePC();    priceName="grand-total-net-price  "; break;
      case 1:                          price=ctnr.getGrandTotalGrossPricePC();  priceName="grand-total-gross-price"; break;
      case 2:                          price=ctnr.getGrandTotalTaxPC();         priceName="grand-total-tax        "; break;
      case 3: priceType="LEAD";        price=ctnr.getGrandTotalNetPriceLC();    priceName="grand-total-net-price  "; break;
      case 4:                          price=ctnr.getGrandTotalGrossPriceLC();  priceName="grand-total-gross-price"; break;
      case 5:                          price=ctnr.getGrandTotalTaxLC();         priceName="grand-total-tax        "; break;
      case 6: priceType="TRANSACTION"; price=ctnr.getGrandTotalGrossPricePTC(); priceName="grand-total-gross-price"; break;
      }

      if (price != null && price.isAvailable())
      {
         out.print('<'+priceName+" type=\""+priceType+"\" currency=\""+price.getCurrencyMnemonic()+"\">");
         out.print(price.getValue());
         out.println("</"+priceName.trim()+'>');
      }
  }
  %>
  </prices>
  

  
  <% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("lctnr:PaymentInstrumentInfo") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",218,e);}if (_boolean_result) { %>
    <payment-instrument-infos>
      <% while (loop("lctnr:PaymentInstrumentInfo","PII",null)) { %>
        <payment-instrument-info<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ExportRefIDs"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",221,e);}if (_boolean_result) { %> refid="<% {String value = null;try{value=context.getFormattedValue(getObject("PII:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {221}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"<% } %> payment-service-id="<% {String value = null;try{value=context.getFormattedValue(getObject("PII:PaymentService:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {221}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" service-configuration-id="<% {String value = null;try{value=context.getFormattedValue(getObject("PII:PaymentService:Configuration:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {221}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" service-configuration-domain="<% {String value = null;try{value=context.getFormattedValue(getObject("PII:PaymentService:Configuration:Domain:DomainName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {221}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>">
          <% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("PII:PaymentTransaction") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",222,e);}if (_boolean_result) { %>
            <payment-transactions>
            <% while (loop("PII:PaymentTransaction","PT",null)) { %>
              <payment-transaction<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ExportRefIDs"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",225,e);}if (_boolean_result) { %> refid="<% {String value = null;try{value=context.getFormattedValue(getObject("PT:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {225}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"<% } %>>
                <% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PT:Status"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",226,e);}if (_boolean_result) { %><status><% {String value = null;try{value=context.getFormattedValue(getObject("PT:Status"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {226}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></status><% } %>
                <% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) getObject("PT:ServiceTransactionIDNull")).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",227,e);}if (_boolean_result) { %><service-transaction><% {String value = null;try{value=context.getFormattedValue(getObject("PT:ServiceTransactionID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {227}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></service-transaction><% } %>
                <% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) getObject("PT:AmountNull")).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",228,e);}if (_boolean_result) { %><amount currency="<% {String value = null;try{value=context.getFormattedValue(getObject("PT:Amount:CurrencyMnemonic"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {228}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% out.print(getObject("PT:Amount:Value")); %></amount><% } %>
                <% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) getObject("PT:AmountCapturedNull")).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",229,e);}if (_boolean_result) { %><amount-captured currency="<% {String value = null;try{value=context.getFormattedValue(getObject("PT:AmountCaptured:CurrencyMnemonic"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {229}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% out.print(getObject("PT:AmountCaptured:Value")); %></amount-captured><% } %>
                <% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) getObject("PT:AmountNull")).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",230,e);}if (_boolean_result) { %><amount-paid currency="<% {String value = null;try{value=context.getFormattedValue(getObject("PT:AmountPaid:CurrencyMnemonic"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {230}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% out.print(getObject("PT:AmountPaid:Value")); %></amount-paid><% } %>
                <% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) getObject("PT:DescriptionNull")).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",231,e);}if (_boolean_result) { %><description><% {String value = null;try{value=context.getFormattedValue(getObject("PT:Description"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {231}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></description><% } %>

		
			  <%
			  User payingUser = (User) getObject("PT:PayingUser");

  if (payingUser != null)
  {
      String businesspartnerNo = null;
      String domainname = null;
      ProfileMgr profileMgr = (ProfileMgr) NamingMgr.getInstance().lookupManager(ProfileMgr.REGISTRY_NAME);
      Profile    profile    = profileMgr.getProfile(payingUser);

      if (profile != null)
      {
          businesspartnerNo = profile.getDataSheet().getBusinessPartnerNo();
          domainname        = profile.getDomain().getDomainName();

          			out.print("<payer business-partner-no=\""+encodeString(businesspartnerNo) + '"');

          			if (exportDomainRefs)
          			{
            			out.print(" domain=\"" + encodeString(domainname) + '"');
          			}

          			if (exportrefids)
          			{
              			out.print(" refid=\"" + encodeString(payingUser.getID()) + '"');
          			}

          out.println("/>");
      }
  }
  %>


              <% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PT:PaymentPayee"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",267,e);}if (_boolean_result) { %>
                  <payee domain="<% {String value = null;try{value=context.getFormattedValue(getObject("PT:PaymentPayee:DomainName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {268}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"></payee>
              <% } %>

              <% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("PT:PaymentHistory") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",271,e);}if (_boolean_result) { %>
              	<payment-histories>
              	  <% while (loop("PT:PaymentHistory","PH",null)) { %>
              	  	<payment-history event-id="<%=context.getFormattedValue(encodeString(context.getFormattedValue(getObject("PH:EventID"),null)),null)%>" event-date="<% processOpenTag(response, pageContext, "datetime", new TagParameter[] {
new TagParameter("date",getObject("product:PH:EventTime"))}, 274); %>">
			            <%{
			                com.intershop.beehive.core.capi.domain.ExtensibleObject object = (com.intershop.beehive.core.capi.domain.ExtensibleObject) getObject("PH");
			                getPipelineDictionary().put("CustomAttributes", new com.intershop.beehive.core.capi.impex.AttributeValueIterator(object.createAttributeValuesIterator(), object));
			            }%>
			            <% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CustomAttributes"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",279,e);}if (_boolean_result) { %>
			              <% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("CustomAttributes") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",280,e);}if (_boolean_result) { %>
			                <custom-attributes>
			                <% while (loop("CustomAttributes","attribute",null)) { %>
			                  <% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("attribute:Type")).doubleValue() <((Number)(new Double(4))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",283,e);}if (_boolean_result) { %>
			                    <custom-attribute name="<%=context.getFormattedValue(stringToXml(context.getFormattedValue(getObject("attribute:Name"),null)),null)%>" dt:dt="<% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("attribute:Type")).doubleValue() ==((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",284,e);}if (_boolean_result) { %>int<% } else {_boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("attribute:Type")).doubleValue() ==((Number)(new Double(2))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",284,e);}if (_boolean_result) { %>double<% } else {_boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("attribute:Type")).doubleValue() ==((Number)(new Double(3))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",284,e);}if (_boolean_result) { %>string<% }}} %>"<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("attribute:isLocalized"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",284,e);}if (_boolean_result) { %> xml:lang="<%=context.getFormattedValue(encodeString(context.getFormattedValue(getObject("attribute:XMLLocaleID"),null)),null)%>"<% } else { %><% } %>><% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("attribute:Type")).doubleValue() ==((Number)(new Double(3))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",284,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("attribute:Object"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {284}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %><%out.print(getObject("attribute:Object"));%><% } %></custom-attribute>
			                  <% } else { %>
			                    <custom-attribute name="<%=context.getFormattedValue(stringToXml(context.getFormattedValue(getObject("attribute:Name"),null)),null)%>" dt:dt="<% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("attribute:Type")).doubleValue() ==((Number)(new Double(4))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",286,e);}if (_boolean_result) { %>int<% } else {_boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("attribute:Type")).doubleValue() ==((Number)(new Double(5))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",286,e);}if (_boolean_result) { %>double<% } else {_boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("attribute:Type")).doubleValue() ==((Number)(new Double(6))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",286,e);}if (_boolean_result) { %>string<% }}} %>"<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("attribute:isLocalized"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",286,e);}if (_boolean_result) { %> xml:lang="<%=context.getFormattedValue(encodeString(context.getFormattedValue(getObject("attribute:XMLLocaleID"),null)),null)%>"<% } %>>
			                    <%{
			                      java.util.Iterator attributeIterator = (java.util.Iterator) getObject("attribute:Object");
			                      while (attributeIterator.hasNext())
			                      {
			                        out.println("<value>" + stringToXml((String) attributeIterator.next()) + "</value>");
			                      }}
			                    %>
			                    </custom-attribute>
			                  <% } %>
			                <% } %>
			                </custom-attributes>
			              <% } %>
			            <% } %>
          	  	    </payment-history>
          	  	  <% } %>
          	    </payment-histories>
          	  <% } %>

	            <%{
	                com.intershop.beehive.core.capi.domain.ExtensibleObject object = (com.intershop.beehive.core.capi.domain.ExtensibleObject) getObject("PT");
	                getPipelineDictionary().put("CustomAttributes", new com.intershop.beehive.core.capi.impex.AttributeValueIterator(object.createAttributeValuesIterator(), object));
	            }%>
	            <% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CustomAttributes"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",309,e);}if (_boolean_result) { %>
	              <% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("CustomAttributes") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",310,e);}if (_boolean_result) { %>
	                <custom-attributes>
	                <% while (loop("CustomAttributes","attribute",null)) { %>
	                  <% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("attribute:Type")).doubleValue() <((Number)(new Double(4))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",313,e);}if (_boolean_result) { %>
	                    <custom-attribute name="<%=context.getFormattedValue(stringToXml(context.getFormattedValue(getObject("attribute:Name"),null)),null)%>" dt:dt="<% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("attribute:Type")).doubleValue() ==((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",314,e);}if (_boolean_result) { %>int<% } else {_boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("attribute:Type")).doubleValue() ==((Number)(new Double(2))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",314,e);}if (_boolean_result) { %>double<% } else {_boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("attribute:Type")).doubleValue() ==((Number)(new Double(3))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",314,e);}if (_boolean_result) { %>string<% }}} %>"<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("attribute:isLocalized"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",314,e);}if (_boolean_result) { %> xml:lang="<%=context.getFormattedValue(encodeString(context.getFormattedValue(getObject("attribute:XMLLocaleID"),null)),null)%>"<% } else { %><% } %>><% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("attribute:Type")).doubleValue() ==((Number)(new Double(3))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",314,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("attribute:Object"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {314}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %><%out.print(getObject("attribute:Object"));%><% } %></custom-attribute>
	                  <% } else { %>
	                    <custom-attribute name="<%=context.getFormattedValue(stringToXml(context.getFormattedValue(getObject("attribute:Name"),null)),null)%>" dt:dt="<% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("attribute:Type")).doubleValue() ==((Number)(new Double(4))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",316,e);}if (_boolean_result) { %>int<% } else {_boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("attribute:Type")).doubleValue() ==((Number)(new Double(5))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",316,e);}if (_boolean_result) { %>double<% } else {_boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("attribute:Type")).doubleValue() ==((Number)(new Double(6))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",316,e);}if (_boolean_result) { %>string<% }}} %>"<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("attribute:isLocalized"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",316,e);}if (_boolean_result) { %> xml:lang="<%=context.getFormattedValue(encodeString(context.getFormattedValue(getObject("attribute:XMLLocaleID"),null)),null)%>"<% } %>>
	                    <%{
	                      java.util.Iterator attributeIterator = (java.util.Iterator) getObject("attribute:Object");
	                      while (attributeIterator.hasNext())
	                      {
	                        out.println("<value>" + stringToXml((String) attributeIterator.next()) + "</value>");
	                      }}
	                    %>
	                    </custom-attribute>
	                  <% } %>
	                <% } %>
	                </custom-attributes>
	              <% } %>
	            <% } %>


  </payment-transaction>
            <% } %>
            </payment-transactions>
          <% } %>


            <%{
                com.intershop.beehive.core.capi.domain.ExtensibleObject object = (com.intershop.beehive.core.capi.domain.ExtensibleObject) getObject("PII");
                getPipelineDictionary().put("CustomAttributes", new com.intershop.beehive.core.capi.impex.AttributeValueIterator(object.createAttributeValuesIterator(), object));
            }%>
            <% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CustomAttributes"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",342,e);}if (_boolean_result) { %>
              <% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("CustomAttributes") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",343,e);}if (_boolean_result) { %>
                <custom-attributes>
                <% while (loop("CustomAttributes","attribute",null)) { %>
                  <% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("attribute:Type")).doubleValue() <((Number)(new Double(4))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",346,e);}if (_boolean_result) { %>
                    <custom-attribute name="<%=context.getFormattedValue(stringToXml(context.getFormattedValue(getObject("attribute:Name"),null)),null)%>" dt:dt="<% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("attribute:Type")).doubleValue() ==((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",347,e);}if (_boolean_result) { %>int<% } else {_boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("attribute:Type")).doubleValue() ==((Number)(new Double(2))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",347,e);}if (_boolean_result) { %>double<% } else {_boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("attribute:Type")).doubleValue() ==((Number)(new Double(3))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",347,e);}if (_boolean_result) { %>string<% }}} %>"<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("attribute:isLocalized"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",347,e);}if (_boolean_result) { %> xml:lang="<%=context.getFormattedValue(encodeString(context.getFormattedValue(getObject("attribute:XMLLocaleID"),null)),null)%>"<% } else { %><% } %>><% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("attribute:Type")).doubleValue() ==((Number)(new Double(3))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",347,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("attribute:Object"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {347}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %><%out.print(getObject("attribute:Object"));%><% } %></custom-attribute>
                  <% } else { %>
                    <custom-attribute name="<%=context.getFormattedValue(stringToXml(context.getFormattedValue(getObject("attribute:Name"),null)),null)%>" dt:dt="<% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("attribute:Type")).doubleValue() ==((Number)(new Double(4))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",349,e);}if (_boolean_result) { %>int<% } else {_boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("attribute:Type")).doubleValue() ==((Number)(new Double(5))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",349,e);}if (_boolean_result) { %>double<% } else {_boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("attribute:Type")).doubleValue() ==((Number)(new Double(6))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",349,e);}if (_boolean_result) { %>string<% }}} %>"<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("attribute:isLocalized"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",349,e);}if (_boolean_result) { %> xml:lang="<%=context.getFormattedValue(encodeString(context.getFormattedValue(getObject("attribute:XMLLocaleID"),null)),null)%>"<% } %>>
                    <%{
                      java.util.Iterator attributeIterator = (java.util.Iterator) getObject("attribute:Object");
                      while (attributeIterator.hasNext())
                      {
                        out.println("<value>" + stringToXml((String) attributeIterator.next()) + "</value>");
                      }}
                    %>
                    </custom-attribute>
                  <% } %>
                <% } %>
                </custom-attributes>
              <% } %>
            <% } %>
        </payment-instrument-info>
      <% } %>
    </payment-instrument-infos>
  <% } %>

  

  <%
      com.intershop.beehive.bts.capi.orderprocess.LineItemCtnr lictnr = (com.intershop.beehive.bts.capi.orderprocess.LineItemCtnr)getObject("lctnr");
	  getPipelineDictionary().put("lictnrAttributes", new com.intershop.beehive.core.capi.impex.AttributeValueIterator(lictnr.createAttributeValuesIterator(), lictnr));
  %>
  <% processOpenTag(response, pageContext, "customattributes", new TagParameter[] {
new TagParameter("attributes",getObject("lictnrAttributes"))}, 374); %>

  
  <line-items>
		<% while (loop("lctnr:LineItems","line_item",null)) { %>
  <%
  // disable error messages for lookups
  this.disableErrorMessages();
  Object line_item = getObject("line_item");

  if (line_item instanceof ProductLineItem)
  {
     pd.put("LINE_ITEM_START_TAG",          "product-line-item");
  }
  else if (line_item instanceof ServiceLineItem)
  {
     pd.put("LINE_ITEM_START_TAG",          "service-line-item");
  }

  // reenable error messages
  this.isDefined("foney");
  %>

  
	  		<<% {String value = null;try{value=context.getFormattedValue(getObject("LINE_ITEM_START_TAG"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {398}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> <% _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("LINE_ITEM_START_TAG"),null).equals(context.getFormattedValue("product-line-item",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",398,e);}if (_boolean_result) { %>position="{0}"<% } else { %>name="{0}" domain="{1}"<% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ExportRefIDs"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",398,e);}if (_boolean_result) { %>  refid="<% {String value = null;try{value=context.getFormattedValue(getObject("line_item:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {398}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"<% } %>>
  

  
	   		<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("line_item:SellingDomain"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",402,e);}if (_boolean_result) { %>
       			<selling-domain name="<% {String value = null;try{value=context.getFormattedValue(getObject("line_item:SellingDomain:DomainName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {403}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"></selling-domain>
  	 		<% } %>
		   	<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("line_item:SupplyingDomain"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",405,e);}if (_boolean_result) { %>
		    	<supplying-domain name="<% {String value = null;try{value=context.getFormattedValue(getObject("line_item:SupplyingDomain:DomainName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {406}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"></supplying-domain>
		   	<% } %>
   			<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("line_item:ProductDefiningDomain"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",408,e);}if (_boolean_result) { %>
       			<product-defining-domain name="<% {String value = null;try{value=context.getFormattedValue(getObject("line_item:ProductDefiningDomain:DomainName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {409}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"></product-defining-domain>
   			<% } %>
  

  
  			<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("line_item:LineItemGroup"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",414,e);}if (_boolean_result) { %>
      			<line-item-group domain="<% {String value = null;try{value=context.getFormattedValue(getObject("line_item:LineItemGroup:Domain:DomainName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {415}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"></line-item-group>
  			<% } %>
    <prices>
    
    		<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("LINE_ITEM_START_TAG"),null).equals(context.getFormattedValue("product-line-item",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",419,e);}if (_boolean_result) { %>
        		<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((Boolean) getObject("line_item:SingleBasePricePCNull")).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() && ((Boolean) (getObject("line_item:SingleBasePricePC:isAvailable"))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",420,e);}if (_boolean_result) { %><single-base-price type="PURCHASE" currency="<% {String value = null;try{value=context.getFormattedValue(getObject("line_item:SingleBasePricePC:CurrencyMnemonic"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {420}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% out.print(getObject("line_item:SingleBasePricePC:Value")); %></single-base-price><% } %>
        		<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((Boolean) getObject("line_item:SinglePricePCNull")).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() && ((Boolean) (getObject("line_item:SinglePricePC:isAvailable"))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",421,e);}if (_boolean_result) { %><single-price type="PURCHASE" currency="<% {String value = null;try{value=context.getFormattedValue(getObject("line_item:SinglePricePC:CurrencyMnemonic"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {421}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% out.print(getObject("line_item:SinglePricePC:Value")); %></single-price><% } %>
        		<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((Boolean) getObject("line_item:NetPriceLCNull")).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() && ((Boolean) (getObject("line_item:NetPriceLC:isAvailable"))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",422,e);}if (_boolean_result) { %><net-price type="LEAD" currency="<% {String value = null;try{value=context.getFormattedValue(getObject("line_item:NetPriceLC:CurrencyMnemonic"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {422}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% out.print(getObject("line_item:NetPriceLC:Value")); %></net-price><% } %>
    
    		<% } else { %>
        		<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) getObject("line_item:BasePricePCNull")).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",425,e);}if (_boolean_result) { %><base-price type="PURCHASE" currency="<% {String value = null;try{value=context.getFormattedValue(getObject("line_item:BasePricePC:CurrencyMnemonic"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {425}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% out.print(getObject("line_item:BasePricePC:Value")); %></base-price><% } %>
    		<% } %>
        	<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((Boolean) getObject("line_item:NetPricePCNull")).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() && ((Boolean) (getObject("line_item:NetPricePC:isAvailable"))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",427,e);}if (_boolean_result) { %><net-price type="PURCHASE" currency="<% {String value = null;try{value=context.getFormattedValue(getObject("line_item:NetPricePC:CurrencyMnemonic"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {427}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% out.print(getObject("line_item:NetPricePC:Value")); %></net-price><% } %>
        	<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((Boolean) getObject("line_item:GrossPricePCNull")).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() && ((Boolean) (getObject("line_item:GrossPricePC:isAvailable"))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",428,e);}if (_boolean_result) { %><gross-price type="PURCHASE" currency="<% {String value = null;try{value=context.getFormattedValue(getObject("line_item:GrossPricePC:CurrencyMnemonic"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {428}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% out.print(getObject("line_item:GrossPricePC:Value")); %></gross-price><% } %>
        	<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((Boolean) getObject("line_item:TaxPCNull")).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() && ((Boolean) (getObject("line_item:TaxPC:isAvailable"))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",429,e);}if (_boolean_result) { %><tax type="PURCHASE" currency="<% {String value = null;try{value=context.getFormattedValue(getObject("line_item:TaxPC:CurrencyMnemonic"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {429}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% out.print(getObject("line_item:TaxPC:Value")); %></tax><% } %>
    		</prices>
  

  
  		<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("LINE_ITEM_START_TAG"),null).equals(context.getFormattedValue("product-line-item",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",434,e);}if (_boolean_result) { %>
      		<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) getObject("line_item:ProductNameNull")).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",435,e);}if (_boolean_result) { %><product-name><% {String value = null;try{value=context.getFormattedValue(getObject("line_item:ProductName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {435}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></product-name><% } %>
      		<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) getObject("line_item:ProductShortDescriptionNull")).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",436,e);}if (_boolean_result) { %><product-short-description><% {String value = null;try{value=context.getFormattedValue(getObject("line_item:ProductShortDescription"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {436}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></product-short-description><% } %>
      		<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) getObject("line_item:ProductThumbnailNull")).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",437,e);}if (_boolean_result) { %><product-thumbnail><% {String value = null;try{value=context.getFormattedValue(getObject("line_item:ProductThumbnail"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {437}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></product-thumbnail><% } %>
      		<quantity unit="<% {String value = null;try{value=context.getFormattedValue(getObject("line_item:Quantity:Unit"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {438}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% {String value = null;try{value=context.getFormattedValue(getObject("line_item:Quantity:Value"),"#0.#",null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {438}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></quantity>
      		<selected-quantity unit="<% {String value = null;try{value=context.getFormattedValue(getObject("line_item:SelectedQuantity:Unit"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {439}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% {String value = null;try{value=context.getFormattedValue(getObject("line_item:SelectedQuantity:Value"),"#0.#",null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {439}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></selected-quantity>
      		<min-order-quantity unit="<% {String value = null;try{value=context.getFormattedValue(getObject("line_item:MinOrderQuantity:Unit"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {440}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% {String value = null;try{value=context.getFormattedValue(getObject("line_item:MinOrderQuantity:Value"),"#0.#",null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {440}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></min-order-quantity>
      		<step-order-quantity unit="<% {String value = null;try{value=context.getFormattedValue(getObject("line_item:StepQuantity:Unit"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {441}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% {String value = null;try{value=context.getFormattedValue(getObject("line_item:StepQuantity:Value"),"#0.#",null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {441}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></step-order-quantity>
      		<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("line_item:isPriceQuantityAvailable"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",442,e);}if (_boolean_result) { %><price-quantity><% {String value = null;try{value=context.getFormattedValue(getObject("line_item:PriceQuantityValue"),"#0.#",null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {442}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></price-quantity><% } %>
      		<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) getObject("line_item:PositionNull")).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",443,e);}if (_boolean_result) { %><position><% {String value = null;try{value=context.getFormattedValue(getObject("line_item:Position"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {443}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></position><% } %>
      		<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) getObject("line_item:TaxRateNull")).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",444,e);}if (_boolean_result) { %><tax-rate><% {String value = null;try{value=context.getFormattedValue(getObject("line_item:TaxRate"),"#0.#",null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {444}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></tax-rate><% } %>
      		<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("line_item:StatusStateName"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",445,e);}if (_boolean_result) { %><status><% {String value = null;try{value=context.getFormattedValue(getObject("line_item:StatusStateName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {445}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></status><% } %>
      		<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("line_item:Status2StateName"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",446,e);}if (_boolean_result) { %><status2><% {String value = null;try{value=context.getFormattedValue(getObject("line_item:Status2StateName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {446}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></status2><% } %>
      		<base-price-fixed><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) getObject("line_item:isBasePriceFixed")).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",447,e);}if (_boolean_result) { %>0<% } else { %>1<% } %></base-price-fixed>
      		<based-on-net-price><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) getObject("line_item:isBasedOnNetPrice")).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",448,e);}if (_boolean_result) { %>0<% } else { %>1<% } %></based-on-net-price>
      		<bundle><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) getObject("line_item:isBundle")).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",449,e);}if (_boolean_result) { %>0<% } else { %>1<% } %></bundle>
      		<adhoc><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("line_item:isAdhoc"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",450,e);}if (_boolean_result) { %>1<% } else { %>0<% } %></adhoc>
      		<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("line_item:ParentLineItem"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",451,e);}if (_boolean_result) { %>
          		<parent<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ExportRefIDs"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",452,e);}if (_boolean_result) { %> refid="<% {String value = null;try{value=context.getFormattedValue(getObject("line_item:ParentLineItemID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {452}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"<% } %>position="<% {String value = null;try{value=context.getFormattedValue(getObject("line_item:ParentLineItem:Position"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {452}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" />
      		<% } %>
      			<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) getObject("line_item:OriginIDNull")).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",454,e);}if (_boolean_result) { %><origin refid="<% {String value = null;try{value=context.getFormattedValue(getObject("line_item:OriginID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {454}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"></origin><% } %>
      		<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) getObject("line_item:TaxClassCodeNull")).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",455,e);}if (_boolean_result) { %><tax-class refid="<% {String value = null;try{value=context.getFormattedValue(getObject("line_item:TaxClassCode"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {455}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"></tax-class><% } %>
      		<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) getObject("line_item:ShipToAddressIDNull")).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",456,e);}if (_boolean_result) { %>
          		<ship-to-address<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ExportRefIDs"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",457,e);}if (_boolean_result) { %> refid="<% {String value = null;try{value=context.getFormattedValue(getObject("line_item:ShipToAddress:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {457}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"<% } %> id="<% {String value = null;try{value=context.getFormattedValue(getObject("line_item:ShipToAddressID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {457}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"></ship-to-address>
      		<% } %>
      		<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) getObject("line_item:ShipFromAddressIDNull")).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",459,e);}if (_boolean_result) { %>
          		<ship-from-address<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ExportRefIDs"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",460,e);}if (_boolean_result) { %> refid="<% {String value = null;try{value=context.getFormattedValue(getObject("line_item:ShipFromAddress:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {460}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"<% } %> id="<% {String value = null;try{value=context.getFormattedValue(getObject("line_item:ShipFromAddressID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {460}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"></ship-from-address>
      		<% } %>

      		<% {Object temp_obj = ("OFFER"); getPipelineDictionary().put("product_ref_type", temp_obj);} %>
      		<% processOpenTag(response, pageContext, "productref", new TagParameter[] {
new TagParameter("type",getObject("product_ref_type")),
new TagParameter("product_ref",getObject("line_item:OfferProductRef"))}, 464); %>
      		<% {Object temp_obj = ("DEFINITION"); getPipelineDictionary().put("product_ref_type", temp_obj);} %>
      		<% processOpenTag(response, pageContext, "productref", new TagParameter[] {
new TagParameter("type",getObject("product_ref_type")),
new TagParameter("product_ref",getObject("line_item:DefinitionProductRef"))}, 466); %>

  
  
		<% } else { %>
      		<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) getObject("line_item:NameNull")).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",471,e);}if (_boolean_result) { %><name><% {String value = null;try{value=context.getFormattedValue(getObject("line_item:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {471}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></name><% } %>
      		<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) getObject("line_item:TaxRateNull")).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",472,e);}if (_boolean_result) { %><tax-rate><% {String value = null;try{value=context.getFormattedValue(getObject("line_item:TaxRate"),"#0.#",null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {472}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></tax-rate><% } %>
      		<base-price-fixed><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) getObject("line_item:isBasePriceFixed")).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",473,e);}if (_boolean_result) { %>0<% } else { %>1<% } %></base-price-fixed>
      		<based-on-net-price><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) getObject("line_item:isBasedOnNetPrice")).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",474,e);}if (_boolean_result) { %>0<% } else { %>1<% } %></based-on-net-price>
      		<selected><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) getObject("line_item:isSelected")).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",475,e);}if (_boolean_result) { %>0<% } else { %>1<% } %></selected>
      		<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) getObject("line_item:TaxClassCodeNull")).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",476,e);}if (_boolean_result) { %><tax-class refid="<% {String value = null;try{value=context.getFormattedValue(getObject("line_item:TaxClassCode"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {476}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"></tax-class><% } %>
  		<% } %>
  
  
  <%
      com.intershop.beehive.bts.capi.orderprocess.LineItem li = (com.intershop.beehive.bts.capi.orderprocess.LineItem)getObject("line_item");
	  getPipelineDictionary().put("liAttributes", new com.intershop.beehive.core.capi.impex.AttributeValueIterator(li.createAttributeValuesIterator(), li));
  %>
  		<% processOpenTag(response, pageContext, "customattributes", new TagParameter[] {
new TagParameter("attributes",getObject("liAttributes"))}, 484); %>
  

  
  		</<% {String value = null;try{value=context.getFormattedValue(getObject("LINE_ITEM_START_TAG"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {488}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>>
  

  		<% } %>
  </line-items>
  

  
  <line-item-groups>
    	<% while (loop("lctnr:LineItemGroups","lineItemGroup",null)) { %>
      		<line-item-group domain="<% {String value = null;try{value=context.getFormattedValue(getObject("lineItemGroup:Domain:DomainName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {498}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>">
        <prices>
            
            		<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((Boolean) getObject("lineItemGroup:NetPricePCNull")).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() && ((Boolean) (getObject("lineItemGroup:NetPricePC:isAvailable"))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",501,e);}if (_boolean_result) { %><net-price type="PURCHASE" currency="<% {String value = null;try{value=context.getFormattedValue(getObject("lineItemGroup:NetPricePC:CurrencyMnemonic"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {501}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% out.print(getObject("lineItemGroup:NetPricePC:Value")); %></net-price><% } %>
            		<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((Boolean) getObject("lineItemGroup:TaxPCNull")).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() && ((Boolean) (getObject("lineItemGroup:TaxPC:isAvailable"))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",502,e);}if (_boolean_result) { %><tax type="PURCHASE" currency="<% {String value = null;try{value=context.getFormattedValue(getObject("lineItemGroup:TaxPC:CurrencyMnemonic"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {502}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% out.print(getObject("lineItemGroup:TaxPC:Value")); %></tax><% } %>
            		<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((Boolean) getObject("lineItemGroup:GrossPricePCNull")).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() && ((Boolean) (getObject("lineItemGroup:GrossPricePC:isAvailable"))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",503,e);}if (_boolean_result) { %><gross-price type="PURCHASE" currency="<% {String value = null;try{value=context.getFormattedValue(getObject("lineItemGroup:GrossPricePC:CurrencyMnemonic"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {503}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% out.print(getObject("lineItemGroup:GrossPricePC:Value")); %></gross-price><% } %>
        </prices>
		<%
	      com.intershop.beehive.bts.capi.orderprocess.LineItemGroup ligroup = (com.intershop.beehive.bts.capi.orderprocess.LineItemGroup)getObject("lineItemGroup");
		  getPipelineDictionary().put("ligroupAttributes", new com.intershop.beehive.core.capi.impex.AttributeValueIterator(ligroup.createAttributeValuesIterator(), ligroup));
	  	%>
        		<% processOpenTag(response, pageContext, "customattributes", new TagParameter[] {
new TagParameter("attributes",getObject("ligroupAttributes"))}, 509); %>
      </line-item-group>
    	<% } %>
  </line-item-groups>
  

  
  <bundled-line-items>
    	<% while (loop("lctnr:RecursiveBundledProductLineItems","line_item",null)) { %>
    		<bundled-line-item position="<% {String value = null;try{value=context.getFormattedValue(getObject("line_item:Position"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {518}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ExportRefIDs"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",518,e);}if (_boolean_result) { %> refid="<% {String value = null;try{value=context.getFormattedValue(getObject("line_item:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {518}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"<% } %>>
		      	<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("line_item:SellingDomain"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",519,e);}if (_boolean_result) { %><selling-domain name="<% {String value = null;try{value=context.getFormattedValue(getObject("line_item:SellingDomain:DomainName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {519}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"></selling-domain><% } %>
		      	<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("line_item:SupplyingDomain"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",520,e);}if (_boolean_result) { %><supplying-domain name="<% {String value = null;try{value=context.getFormattedValue(getObject("line_item:SupplyingDomain:DomainName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {520}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"></supplying-domain><% } %>
		      	<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("line_item:ProductDefiningDomain"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",521,e);}if (_boolean_result) { %><product-defining-domain name="<% {String value = null;try{value=context.getFormattedValue(getObject("line_item:ProductDefiningDomain:DomainName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {521}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"></product-defining-domain><% } %>
		      	<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("line_item:ProductLineItem"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",522,e);}if (_boolean_result) { %><product-line-item<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ExportRefIDs"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",522,e);}if (_boolean_result) { %> refid="<% {String value = null;try{value=context.getFormattedValue(getObject("line_item:ProductLineItemID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {522}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"<% } %> position="<% {String value = null;try{value=context.getFormattedValue(getObject("line_item:ProductLineItem:Position"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {522}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"></product-line-item><% } %>
		      	<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("line_item:ParentItem"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",523,e);}if (_boolean_result) { %><parent<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ExportRefIDs"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",523,e);}if (_boolean_result) { %> refid="<% {String value = null;try{value=context.getFormattedValue(getObject("line_item:ParentID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {523}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"<% } %> position="<% {String value = null;try{value=context.getFormattedValue(getObject("line_item:ParentItem:Position"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {523}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"></parent><% } %>
		      	<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) getObject("line_item:ProductNameNull")).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",524,e);}if (_boolean_result) { %><product-name><% {String value = null;try{value=context.getFormattedValue(getObject("line_item:ProductName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {524}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></product-name><% } %>
		      	<% {Object temp_obj = ("OFFER"); getPipelineDictionary().put("product_ref_type", temp_obj);} %>
		      	<% processOpenTag(response, pageContext, "productref", new TagParameter[] {
new TagParameter("type",getObject("product_ref_type")),
new TagParameter("product_ref",getObject("line_item:OfferProductRef"))}, 526); %>
		      	<% {Object temp_obj = ("DEFINITION"); getPipelineDictionary().put("product_ref_type", temp_obj);} %>
		      	<% processOpenTag(response, pageContext, "productref", new TagParameter[] {
new TagParameter("type",getObject("product_ref_type")),
new TagParameter("product_ref",getObject("line_item:DefinitionProductRef"))}, 528); %>
		      	<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) getObject("line_item:ProductShortDescriptionNull")).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",529,e);}if (_boolean_result) { %><product-short-description><% {String value = null;try{value=context.getFormattedValue(getObject("line_item:ProductShortDescription"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {529}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></product-short-description><% } %>
		      	<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) getObject("line_item:ProductThumbnailNull")).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",530,e);}if (_boolean_result) { %><product-thumbnail><% {String value = null;try{value=context.getFormattedValue(getObject("line_item:ProductThumbnail"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {530}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></product-thumbnail><% } %>
		      	<quantity unit="<% {String value = null;try{value=context.getFormattedValue(getObject("line_item:Quantity:Unit"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {531}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% {String value = null;try{value=context.getFormattedValue(getObject("line_item:Quantity:Value"),"#0.#",null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {531}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></quantity>
      
	  <%
      	com.intershop.beehive.bts.capi.orderprocess.BundledProductLineItem bli = (com.intershop.beehive.bts.capi.orderprocess.BundledProductLineItem)getObject("line_item");
	  	getPipelineDictionary().put("bliAttributes", new com.intershop.beehive.core.capi.impex.AttributeValueIterator(bli.createAttributeValuesIterator(), bli));
  	  %>
		      	<% processOpenTag(response, pageContext, "customattributes", new TagParameter[] {
new TagParameter("attributes",getObject("bliAttributes"))}, 537); %>
      
    </bundled-line-item>
  		<% } %>
  </bundled-line-items>

  <addresses>
		<% while (loop("lctnr:StaticAddresses","StaticAddress",null)) { %>
			<% processOpenTag(response, pageContext, "address", new TagParameter[] {
new TagParameter("address",getObject("StaticAddress"))}, 545); %>
		<% } %>
  </addresses>
  

  
  	<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("START_TAG"),null).equals(context.getFormattedValue("order",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",551,e);}if (_boolean_result) { %>
    <order-status-details>
	      	<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("lctnr:ShippingStatusStateName"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",553,e);}if (_boolean_result) { %><shipping-status><% {String value = null;try{value=context.getFormattedValue(getObject("lctnr:ShippingStatusStateName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {553}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></shipping-status><% } %>
	      	<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("lctnr:PaymentStatusStateName"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",554,e);}if (_boolean_result) { %><payment-status><% {String value = null;try{value=context.getFormattedValue(getObject("lctnr:PaymentStatusStateName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {554}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></payment-status><% } %>
	      	<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("lctnr:InvoiceStatusStateName"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",555,e);}if (_boolean_result) { %><invoice-status><% {String value = null;try{value=context.getFormattedValue(getObject("lctnr:InvoiceStatusStateName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {555}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></invoice-status><% } %>
	      	<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("lctnr:ExportStatusStateName"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",556,e);}if (_boolean_result) { %><export-status><% {String value = null;try{value=context.getFormattedValue(getObject("lctnr:ExportStatusStateName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {556}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></export-status><% } %>
    </order-status-details>
    	<split-shipment-allowed><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) getObject("lctnr:isSplitShipmentAllowed")).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",558,e);}if (_boolean_result) { %>0<% } else { %>1<% } %></split-shipment-allowed>
    	<invoice-used-as-packing-slip><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) getObject("lctnr:isInvoiceUsedAsPackingSlip")).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",559,e);}if (_boolean_result) { %>0<% } else { %>1<% } %></invoice-used-as-packing-slip>
    	<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) getObject("lctnr:BuyerNameNull")).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",560,e);}if (_boolean_result) { %><buyer-name><% {String value = null;try{value=context.getFormattedValue(getObject("lctnr:BuyerName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {560}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></buyer-name><% } %>
    	<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) getObject("lctnr:OriginalBuyerNameNull")).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",561,e);}if (_boolean_result) { %><original-buyer-name><% {String value = null;try{value=context.getFormattedValue(getObject("lctnr:OriginalBuyerName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {561}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></original-buyer-name><% } %>
    	<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) getObject("lctnr:BasketIDNull")).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",562,e);}if (_boolean_result) { %><basket refid = "<% {String value = null;try{value=context.getFormattedValue(getObject("lctnr:BasketID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {562}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><% } %>
    	<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("lctnr:OrderTypeStateName"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",563,e);}if (_boolean_result) { %><order-type><% {String value = null;try{value=context.getFormattedValue(getObject("lctnr:OrderTypeStateName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {563}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></order-type><% } %>
    	<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("lctnr:ParentOrder"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",564,e);}if (_boolean_result) { %>
     	<parent-order<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ExportRefIDs"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",565,e);}if (_boolean_result) { %> refid="<% {String value = null;try{value=context.getFormattedValue(getObject("lctnr:ParentOrderID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {565}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"<% } %> document-no="<% {String value = null;try{value=context.getFormattedValue(getObject("lctnr:ParentOrder:DocumentNo"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {565}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" order-type="<% {String value = null;try{value=context.getFormattedValue(getObject("lctnr:ParentOrder:OrderTypeStateName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {565}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" domain="<% {String value = null;try{value=context.getFormattedValue(getObject("lctnr:ParentOrder:Domain:DomainName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {565}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><% } %>
  	<% } %>
  
  	
  	</<% {String value = null;try{value=context.getFormattedValue(getObject("START_TAG"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {569}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>>
  
  <%
    }

    // Restore exportObject Iterator for later reuse
    PipelineDictionary pd = getPipelineDictionary();
    	pd.put("exportObjects", exportObjects.iterator());
  %>
<% } %>
</enfinity>
<% printFooter(out); %>