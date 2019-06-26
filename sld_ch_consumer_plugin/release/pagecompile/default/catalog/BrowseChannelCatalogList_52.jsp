<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %>

<% while (loop("SubCategories","SubCategory",null)) { %>					
	
	<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((Boolean) getObject("Catalog:isProxy")).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ChannelRepository:Domain:DomainName"),null).equals(context.getFormattedValue(getObject("Catalog:OwningDomain:DomainName"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",6,e);}if (_boolean_result) { %>
		
		
		<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) getObject("SubCategory:PositionNull")).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",9,e);}if (_boolean_result) { %>
			<tr>
				<td class="table_detail2 top w e s center">
					<input type="hidden" name="SortedCategoryUUID" value="<%=context.getFormattedValue(getObject("SubCategory:UUID"),null)%>">
					<input type="checkbox" name="SelectedSortedCategoryUUID" value="<%=context.getFormattedValue(getObject("SubCategory:UUID"),null)%>"	<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("SortedCategoryClipboard")))).booleanValue() && ((Boolean) (getObject("SortedCategoryClipboard:contains(SubCategory:UUID)"))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",13,e);}if (_boolean_result) { %>checked="checked"<% } %>/>
				</td>
				<td class="table_detail2 bold top e s" nowrap="nowrap">
					<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelCatalog_52-Browse",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("CatalogCategoryID",null),context.getFormattedValue(getObject("SubCategory:UUID"),null))).addURLParameter(context.getFormattedValue("CatalogID",null),context.getFormattedValue(getObject("Catalog:Id"),null))),null)%>" class="table_detail_link"><% {String value = null;try{value=context.getFormattedValue(getObject("SubCategory:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {16}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></a>&nbsp;<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("SubCategory:isOnline"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",16,e);}if (_boolean_result) { %><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/status_online.gif" alt="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_ch_consumer_plugin.Online.alt",null)),null)%>" border="0"/><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("SubCategory:ProductBindingType")).doubleValue() ==((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",16,e);}if (_boolean_result) { %><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/status_implicitly_bound.gif" alt="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_ch_consumer_plugin.ImplicitProductBinding.alt",null)),null)%>" border="0"/><% } %>
				</td>
				<td class="table_detail2 bold top e s" nowrap="nowrap">
					<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelCatalog_52-Browse",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("CatalogCategoryID",null),context.getFormattedValue(getObject("SubCategory:UUID"),null))).addURLParameter(context.getFormattedValue("CatalogID",null),context.getFormattedValue(getObject("Catalog:Id"),null))),null)%>" class="table_detail_link"><% {String value = null;try{value=context.getFormattedValue(getObject("SubCategory:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {19}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></a>&nbsp;<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("SubCategory:isOnline"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",19,e);}if (_boolean_result) { %><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/status_online.gif" alt="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_ch_consumer_plugin.Online.alt",null)),null)%>" border="0"/><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("SubCategory:ProductBindingType")).doubleValue() ==((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",19,e);}if (_boolean_result) { %><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/status_implicitly_bound.gif" alt="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_ch_consumer_plugin.ImplicitProductBinding.alt",null)),null)%>" border="0"/><% } %>
				</td>
				<td class="table_detail2 e s">
					<% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("SubCategory:Description"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",22,e);}if (_boolean_result) { %>
						<% {String value = null;try{value=context.getFormattedValue(getObject("SubCategory:Description"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {23}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>
					<% } else { %>
						<% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("Catalog:TypeCode")).doubleValue() ==((Number)(new Double(2))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",25,e);}if (_boolean_result) { %>
							<% {out.write(localizeISText("sld_ch_consumer_plugin.ThereAreNoKeywordsAvailable.catalog_description2",null,null,null,null,null,null,null,null,null,null,null,null));} %>
						<% } else { %>
							&nbsp;
						<% } %>
					<% } %>
				</td>
				<td class="table_detail2 top e s center">
					<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelCatalog_52-Dispatch",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("editCategory",null),context.getFormattedValue("",null))).addURLParameter(context.getFormattedValue("SubCatalogCategoryID",null),context.getFormattedValue(getObject("SubCategory:UUID"),null)).addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null)).addURLParameter(context.getFormattedValue("CatalogID",null),context.getFormattedValue(getObject("Catalog:Id"),null))),null)%>" class="action_link"><% {out.write(localizeISText("sld_ch_consumer_plugin.Edit.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
				</td>
											
				
				<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("StartCategorySorted"),null).equals(context.getFormattedValue("False",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",37,e);}if (_boolean_result) { %>
				<td class="table_detail2 top e s center sort" nowrap="nowrap" rowspan="<% {String value = null;try{value=context.getFormattedValue(getObject("CategoryRowSpan"),new Integer(INTEGER),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {38}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>">
					<table border="0" cellpadding="0" cellspacing="0">
						<tr>
							<td><input type="image" name="moveCategoriesUp" src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/sort_up.gif" alt=""/></td>
						</tr>
						<tr>
							<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="4" alt="" border="0"/></td>
						</tr>
						<tr>
							<td><input type="image" name="moveCategoriesDown" src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/sort_down.gif" alt=""/></td>
						</tr>
					</table>
				</td>
				<% {Object temp_obj = ("True"); getPipelineDictionary().put("StartCategorySorted", temp_obj);} %>
				<% } %>
			</tr>
			
		<% } else { %>
			<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((context.getFormattedValue(getObject("StartCategorySorted"),null).equals(context.getFormattedValue("True",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("StartCategoryUnsorted"),null).equals(context.getFormattedValue("False",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",56,e);}if (_boolean_result) { %>
				<tr>
					<td class="w e s" colspan="5"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="2" alt="" border="0"/></td>
				</tr>
				<% {Object temp_obj = ("True"); getPipelineDictionary().put("StartCategoryUnsorted", temp_obj);} %>
			<% } %>
			<tr>
				<td class="table_detail top w e s center">
					<input type="hidden" name="UnsortedCategoryUUID" value="<%=context.getFormattedValue(getObject("SubCategory:UUID"),null)%>">
					<input type="checkbox" name="SelectedUnsortedCategoryUUID" value="<%=context.getFormattedValue(getObject("SubCategory:UUID"),null)%>"	<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("UnsortedCategoryClipboard")))).booleanValue() && ((Boolean) (getObject("UnsortedCategoryClipboard:contains(SubCategory:UUID)"))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",65,e);}if (_boolean_result) { %>checked="checked"<% } %>/>
				</td>
				<td class="table_detail3 top e s" nowrap="nowrap">
					<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelCatalog_52-Browse",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("CatalogCategoryID",null),context.getFormattedValue(getObject("SubCategory:UUID"),null))).addURLParameter(context.getFormattedValue("CatalogID",null),context.getFormattedValue(getObject("Catalog:Id"),null))),null)%>" class="table_detail_link"><% {String value = null;try{value=context.getFormattedValue(getObject("SubCategory:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {68}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></a>&nbsp;<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("SubCategory:isOnline"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",68,e);}if (_boolean_result) { %><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/status_online.gif" alt="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_ch_consumer_plugin.Online.alt",null)),null)%>" border="0"/><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("SubCategory:ProductBindingType")).doubleValue() ==((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",68,e);}if (_boolean_result) { %><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/status_implicitly_bound.gif" alt="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_ch_consumer_plugin.ImplicitProductBinding.alt",null)),null)%>" border="0"/><% } %>
				</td>
				<td class="table_detail3 top e s" nowrap="nowrap">
					<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelCatalog_52-Browse",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("CatalogCategoryID",null),context.getFormattedValue(getObject("SubCategory:UUID"),null))).addURLParameter(context.getFormattedValue("CatalogID",null),context.getFormattedValue(getObject("Catalog:Id"),null))),null)%>" class="table_detail_link"><% {String value = null;try{value=context.getFormattedValue(getObject("SubCategory:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {71}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></a>&nbsp;<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("SubCategory:isOnline"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",71,e);}if (_boolean_result) { %><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/status_online.gif" alt="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_ch_consumer_plugin.Online.alt",null)),null)%>" border="0"/><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("SubCategory:ProductBindingType")).doubleValue() ==((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",71,e);}if (_boolean_result) { %><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/status_implicitly_bound.gif" alt="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_ch_consumer_plugin.ImplicitProductBinding.alt",null)),null)%>" border="0"/><% } %>
				</td>
				<td class="table_detail top e s">
					<% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("SubCategory:Description"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",74,e);}if (_boolean_result) { %>
						<% {String value = null;try{value=context.getFormattedValue(getObject("SubCategory:Description"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {75}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>
					<% } else { %>
						<% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("Catalog:TypeCode")).doubleValue() ==((Number)(new Double(2))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",77,e);}if (_boolean_result) { %>
							<% {out.write(localizeISText("sld_ch_consumer_plugin.ThereAreNoKeywordsAvailable.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %>
						<% } else { %>
							&nbsp;
						<% } %>
					<% } %>
				</td>
				<td class="table_detail top e s center">
					<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelCatalog_52-Dispatch",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("editCategory",null),context.getFormattedValue("",null))).addURLParameter(context.getFormattedValue("SubCatalogCategoryID",null),context.getFormattedValue(getObject("SubCategory:UUID"),null)).addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null)).addURLParameter(context.getFormattedValue("CatalogID",null),context.getFormattedValue(getObject("Catalog:Id"),null))),null)%>" class="action_link"><% {out.write(localizeISText("sld_ch_consumer_plugin.Edit.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
				</td>
				<% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("CategoryRowSpan")).doubleValue() >((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",87,e);}if (_boolean_result) { %>
					<td class="table_detail top e s center">&nbsp;</td>
				<% } %>				
			</tr>	
		<% } %>
			
	<% } else { %>
		<tr>
			<td class="w e s">
				<table width="100%" border="0" cellspacing="0" cellpadding="0">
					<tr>
						<td class="table_detail" nowrap="nowrap">
							<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelCatalog_52-Browse",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("CatalogCategoryID",null),context.getFormattedValue(getObject("SubCategory:UUID"),null))).addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null)).addURLParameter(context.getFormattedValue("CatalogID",null),context.getFormattedValue(getObject("Catalog:Id"),null))),null)%>" class="table_detail_link"><% {String value = null;try{value=context.getFormattedValue(getObject("SubCategory:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {99}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></a>
						</td>
						<td width="100%">
							<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("SubCategory:isOnline"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",102,e);}if (_boolean_result) { %>
								<img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/status_online.gif" alt="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_ch_consumer_plugin.Online.alt",null)),null)%>" border="0"/>
							<% } %>
							<% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("SubCategory:ProductBindingType")).doubleValue() ==((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",105,e);}if (_boolean_result) { %>
								<img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/status_implicitly_bound.gif" alt="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_ch_consumer_plugin.ImplicitProductBinding.alt",null)),null)%>" border="0"/>
							<% } %>
						</td>
					</tr>
				</table>
			</td>
			<td class="table_detail e s">
				<% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("SubCategory:Description"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",113,e);}if (_boolean_result) { %>
					<% {String value = null;try{value=context.getFormattedValue(getObject("SubCategory:Description"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {114}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>
				<% } else { %>
					<% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("Catalog:TypeCode")).doubleValue() ==((Number)(new Double(2))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",116,e);}if (_boolean_result) { %>
						<% {out.write(localizeISText("sld_ch_consumer_plugin.ThereAreNoKeywordsAvailable.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %>
					<% } else { %>
						&nbsp;
					<% } %>
				<% } %>
			</td>
		</tr>
	<% } %>
<% } %>
<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((Boolean) getObject("Catalog:isProxy")).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ChannelRepository:Domain:DomainName"),null).equals(context.getFormattedValue(getObject("Catalog:OwningDomain:DomainName"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",126,e);}if (_boolean_result) { %>
	<tr>
		<td>
			<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
				<tr>
					<td align="right" width="100%">
						<table border="0" cellspacing="4" cellpadding="0">
							<tr>
								<td class="button"><input type="submit" name="sortCategories" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_ch_consumer_plugin.Sort.button",null)),null)%>" class="button"/></td>
								<td class="button"><input type="submit" name="unsortCategories" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_ch_consumer_plugin.Unsort.button",null)),null)%>" class="button"/></td>
							</tr>
						</table>
					</td>	
					<td align="right">
						<table border="0" cellspacing="4" cellpadding="0">
							<tr>			
								<td class="button">										
									<input type="hidden" name="ParentCategoryID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Category:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {143}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
									<input type="submit" name="newCategory" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_ch_consumer_plugin.New.button",null)),null)%>" class="button"/>
								</td>
								<td class="button">
									<input type="hidden" name="NewCategoryNamePrefix" value="Copy of "/>
									<input type="submit" name="copyCategories" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_ch_consumer_plugin.Copy.button",null)),null)%>" class="button"/>
								</td>
								<td class="button">
									<input type="hidden" name="CatalogCategoryID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Category:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {151}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
									<input type="submit" name="confirmCategoriesDelete" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_ch_consumer_plugin.Delete.button",null)),null)%>" class="button"/>
								</td>
							</tr>
						</table>
					</td>
				</tr>
			</table>
		</td>
	</tr>
<% } %>

					<% printFooter(out); %>