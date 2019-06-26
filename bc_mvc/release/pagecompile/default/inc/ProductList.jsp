<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%! protected Boolean printTemplateMarker() { return Boolean.FALSE; } %><%%><%@ page contentType="text/xml;charset=utf-8" %><%%><%@ page session="false"%><%setEncodingType("text/xml"); %>
<%@page import="java.util.*, 
	com.intershop.beehive.core.capi.impex.AttributeValueIterator,
	com.intershop.beehive.core.capi.naming.*, 
	com.intershop.beehive.core.capi.profile.*,
	com.intershop.beehive.core.capi.domain.*,
	com.intershop.component.foundation.capi.comment.*,
	com.intershop.component.mvc.capi.product.*"%>

<% context.setCustomTagTemplateName("productlistevent","inc/ProductListEvent",false,new String[]{"event"},null); %>
<% context.setCustomTagTemplateName("productlistcomment","inc/ProductListComment",false,new String[]{"comment"},null); %>
<% context.setCustomTagTemplateName("productlistproductitem","inc/ProductListProductItem",false,new String[]{"productItem"},null); %>
<% context.setCustomTagTemplateName("productlistdependentproductitem","inc/ProductListDependentProductItem",false,new String[]{"productItem"},null); %>
<% context.setCustomTagTemplateName("customattributes","inc/CustomAttributes",false,new String[]{"attributes"},null); %>
<% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"impex/Modules", null, "15");} %>

<%!
	ProductListMgr productListMgr = (ProductListMgr)NamingMgr.getInstance().lookupManager(ProductListMgr.REGISTRY_NAME);
	ProfileMgr profileMgr = (ProfileMgr)NamingMgr.getInstance().lookupManager(ProfileMgr.REGISTRY_NAME);
	CommentMgr commentMgr = (CommentMgr)NamingMgr.getInstance().lookupManager(CommentMgr.REGISTRY_NAME);
	
	public class AttributeFilterCondition extends FilterCondition
	{
		public boolean isValid(Object anObject)
		{
			AttributeValue attrib = (AttributeValue)anObject;
			if (attrib.getName().equals("displayName") || attrib.getName().equals("description"))
			{
				return false;
			}
			return true;
		}
	}			
%>

<%
	ProductList productList = (ProductList)getObject("productList");
	
	Profile profile = profileMgr.resolveProfileFromID(productList.getScopeUUID());
	getPipelineDictionary().put("productListUser", profile);
	
	FilterCondition filterCondition = new AttributeFilterCondition();
	FilterIterator filterIterator = new FilterIterator(productList.createAttributeValuesIterator(), filterCondition);	
    getPipelineDictionary().put("productListCustomAttributes", new AttributeValueIterator(filterIterator, productList));

	Iterator events = productList.createSortedProductListEventIterator();
	getPipelineDictionary().put("events", events);

	Iterator comments = commentMgr.getCommentsByObject(productList);	
	getPipelineDictionary().put("comments", comments);

	Iterator productItems = productList.createIndependentItemsIterator();
	getPipelineDictionary().put("productItems", productItems);

	Iterator dependentProductItems = productList.createDependentItemsIterator();
	getPipelineDictionary().put("dependentProductItems", dependentProductItems);
%>

<product-list type="<% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("productList:TypeCode")).doubleValue() ==((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",59,e);}if (_boolean_result) { %>BOOKMARKS<% } else {_boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("productList:TypeCode")).doubleValue() ==((Number)(new Double(2))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",59,e);}if (_boolean_result) { %>WISHLIST<% } else {_boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("productList:TypeCode")).doubleValue() ==((Number)(new Double(3))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",59,e);}if (_boolean_result) { %>SHOPPINGLIST<% } else {_boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("productList:TypeCode")).doubleValue() ==((Number)(new Double(4))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",59,e);}if (_boolean_result) { %>QUOTE<% }}}} %>" id="<% {String value = null;try{value=context.getFormattedValue(getObject("productList:DocumentNo"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {59}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>">	
	<% while (loop("productList:AttributeValues","av",null)) { %>
		<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("av:Name"),null).equals(context.getFormattedValue("displayName",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",61,e);}if (_boolean_result) { %>
			<display-name xml:lang="<% {String value = null;try{value=context.getFormattedValue(getObject("av:XMLLocaleID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {62}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% {String value = null;try{value=context.getFormattedValue(getObject("av:StringValue"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {62}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></display-name>
		<% } %>
	<% } %>
	<% while (loop("productList:AttributeValues","av",null)) { %>
		<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("av:Name"),null).equals(context.getFormattedValue("description",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",66,e);}if (_boolean_result) { %>
			<description xml:lang="<% {String value = null;try{value=context.getFormattedValue(getObject("av:XMLLocaleID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {67}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% {String value = null;try{value=context.getFormattedValue(getObject("av:StringValue"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {67}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></description>
		<% } %>
	<% } %>
	<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("productListUser"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",70,e);}if (_boolean_result) { %><user business-partner-no="<% {String value = null;try{value=context.getFormattedValue(getObject("productListUser:DataSheet:BusinessPartnerNo"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {70}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" domain="<% {String value = null;try{value=context.getFormattedValue(getObject("productListUser:Domain:DomainName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {70}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><% } %>	
	<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (getObject("productList:CreationDateNull"))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",71,e);}if (_boolean_result) { %><creation-date><% processOpenTag(response, pageContext, "datetime", new TagParameter[] {
new TagParameter("date",getObject("productList:CreationDate"))}, 71); %></creation-date><% } %>
	<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (getObject("productList:ValidFromNull"))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",72,e);}if (_boolean_result) { %><valid-from><% processOpenTag(response, pageContext, "datetime", new TagParameter[] {
new TagParameter("date",getObject("productList:ValidFrom"))}, 72); %></valid-from><% } %>
	<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (getObject("productList:ValidToNull"))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",73,e);}if (_boolean_result) { %><valid-to><% processOpenTag(response, pageContext, "datetime", new TagParameter[] {
new TagParameter("date",getObject("productList:ValidTo"))}, 73); %></valid-to><% } %>
	<% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("productList:TypeCode")).doubleValue() ==((Number)(new Double(4))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",74,e);}if (_boolean_result) { %><status><% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("productList:State")).doubleValue() ==((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",74,e);}if (_boolean_result) { %>CREATED_BY_BUYER<% } else {_boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("productList:State")).doubleValue() ==((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",74,e);}if (_boolean_result) { %>SUBMITTED_TO_APPROVER<% } else {_boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("productList:State")).doubleValue() ==((Number)(new Double(2))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",74,e);}if (_boolean_result) { %>APPROVED_BY_APPROVER<% } else {_boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("productList:State")).doubleValue() ==((Number)(new Double(3))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",74,e);}if (_boolean_result) { %>SUBMITTED_TO_SELLER<% } else {_boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("productList:State")).doubleValue() ==((Number)(new Double(4))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",74,e);}if (_boolean_result) { %>RESPONDED_BY_SELLER<% } else {_boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("productList:State")).doubleValue() ==((Number)(new Double(5))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",74,e);}if (_boolean_result) { %>RESPONDED_BY_APPROVER<% } else {_boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("productList:State")).doubleValue() ==((Number)(new Double(6))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",74,e);}if (_boolean_result) { %>ACCEPTED_BY_SELLER<% } else {_boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("productList:State")).doubleValue() ==((Number)(new Double(7))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",74,e);}if (_boolean_result) { %>ACCEPTED_BY_APPROVER<% } else {_boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("productList:State")).doubleValue() ==((Number)(new Double(8))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",74,e);}if (_boolean_result) { %>AUTO_ACCEPTED<% } else {_boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("productList:State")).doubleValue() ==((Number)(new Double(9))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",74,e);}if (_boolean_result) { %>REFUSED_BY_APPROVER<% } else {_boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("productList:State")).doubleValue() ==((Number)(new Double(10))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",74,e);}if (_boolean_result) { %>CANCELLED_BY_SELLER<% } else {_boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("productList:State")).doubleValue() ==((Number)(new Double(11))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",74,e);}if (_boolean_result) { %>CANCELLED_BY_APPROVER<% } else {_boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("productList:State")).doubleValue() ==((Number)(new Double(12))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",74,e);}if (_boolean_result) { %>CLOSED_BY_BUYER<% }}}}}}}}}}}}} %></status><% } %>
	<fixedflag><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("productList:isFixed"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",75,e);}if (_boolean_result) { %>true<% } else { %>false<% } %></fixedflag>
	<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (getObject("productList:TotalNull"))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",76,e);}if (_boolean_result) { %><totalprice currency="<% {String value = null;try{value=context.getFormattedValue(getObject("productList:Total:CurrencyMnemonic"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {76}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% {String value = null;try{value=context.getFormattedValue(getObject("productList:Total:Value"),"#0.0#",null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {76}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></totalprice><% } %>
	<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (getObject("productList:OriginTotalNull"))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",77,e);}if (_boolean_result) { %><origin-totalprice currency="<% {String value = null;try{value=context.getFormattedValue(getObject("productList:OriginTotal:CurrencyMnemonic"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {77}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% {String value = null;try{value=context.getFormattedValue(getObject("productList:OriginTotal:Value"),"#0.0#",null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {77}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></origin-totalprice><% } %>
	<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("events"))))).booleanValue() && ((Boolean) ((hasLoopElements("events") ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",78,e);}if (_boolean_result) { %>
		<events>
			<% while (loop("events","event",null)) { %>
				<% processOpenTag(response, pageContext, "productlistevent", new TagParameter[] {
new TagParameter("event",getObject("event"))}, 81); %>
			<% } %>
		</events>
	<% } %>
	<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("comments"))))).booleanValue() && ((Boolean) ((hasLoopElements("comments") ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",85,e);}if (_boolean_result) { %>
		<comments>
			<% while (loop("comments","comment",null)) { %>
				<% processOpenTag(response, pageContext, "productlistcomment", new TagParameter[] {
new TagParameter("comment",getObject("comment"))}, 88); %>
			<% } %>
		</comments>
	<% } %>
	<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("productItems"))))).booleanValue() && ((Boolean) ((hasLoopElements("productItems") ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",92,e);}if (_boolean_result) { %>
		<product-items>
			<% while (loop("productItems","productItem",null)) { %>
				<% processOpenTag(response, pageContext, "productlistproductitem", new TagParameter[] {
new TagParameter("productItem",getObject("productItem"))}, 95); %>
			<% } %>
		</product-items>
	<% } %>
	<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("dependentProductItems"))))).booleanValue() && ((Boolean) ((hasLoopElements("dependentProductItems") ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",99,e);}if (_boolean_result) { %>
		<dependent-product-items>
			<% while (loop("dependentProductItems","productItem",null)) { %>
				<% processOpenTag(response, pageContext, "productlistdependentproductitem", new TagParameter[] {
new TagParameter("productItem",getObject("productItem"))}, 102); %>
			<% } %>
		</dependent-product-items>
	<% } %>
	<% processOpenTag(response, pageContext, "customattributes", new TagParameter[] {
new TagParameter("attributes",getObject("productListCustomAttributes"))}, 106); %>
	
</product-list>
<% printFooter(out); %>