<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Collection"%>
<%@page import="java.util.Collections"%>
<%@page import="com.intershop.beehive.xcs.capi.catalog.CatalogCategory"%>
<%@page import="com.intershop.component.foundation.internal.iterator.ComparatorAdapter"%>
<%@page import="com.intershop.beehive.xcs.internal.catalog.CatalogCategoryPO"%>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% processOpenTag(response, pageContext, "getsortedcategories", new TagParameter[] {
new TagParameter("CategoriesCollection",getObject("categories")),
new TagParameter("SortAttribute","DisplayName"),
new TagParameter("SortedCategories","SortedSubCategories")}, 12); %><% while (loop("SortedSubCategories","subcategory",null)) { %><li id="<%=context.getFormattedValue(getObject("subcategory:UUID"),null)%>" class="<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (hasLoopElements("selectedcategories") ? Boolean.TRUE : Boolean.FALSE)).booleanValue() && ((Boolean) getObject("selectedcategories:Contains(subcategory:UUID)")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",15,e);}if (_boolean_result) { %>selected<% } %> <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (hasLoopElements("lazycategories") ? Boolean.TRUE : Boolean.FALSE)).booleanValue() && ((Boolean) getObject("lazycategories:Contains(subcategory:UUID)")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",15,e);}if (_boolean_result) { %>lazy<% } %>" title="<%=context.getFormattedValue(encodeString(context.getFormattedValue(getObject("subcategory:Name"),null)),null)%>"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("detailspagepipeline"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",17,e);}if (_boolean_result) { %><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue(getObject("detailspagepipeline"),null))),(new URLParameterSet().addURLParameter(context.getFormattedValue(getObject("detailspageparameter"),null),context.getFormattedValue(getObject("subcategory:UUID"),null))).addURLParameter(context.getFormattedValue(getObject("parametername"),null),context.getFormattedValue(getObject("parametervalue"),null)).addURLParameter(context.getFormattedValue(getObject("parametername1"),null),context.getFormattedValue(getObject("parametervalue1"),null)).addURLParameter(context.getFormattedValue(getObject("parametername2"),null),context.getFormattedValue(getObject("parametervalue2"),null)).addURLParameter(context.getFormattedValue(getObject("parametername3"),null),context.getFormattedValue(getObject("parametervalue3"),null)).addURLParameter(context.getFormattedValue(getObject("parametername4"),null),context.getFormattedValue(getObject("parametervalue4"),null)).addURLParameter(context.getFormattedValue(getObject("parametername5"),null),context.getFormattedValue(getObject("parametervalue5"),null))),null)%>"><% {String value = null;try{value=context.getFormattedValue(getObject("subcategory:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {25}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></a><% } else { %><% {String value = null;try{value=context.getFormattedValue(getObject("subcategory:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {27}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) getObject("lazycategories:Contains(subcategory:UUID)")).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",29,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("subcategory:SubCategories") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",30,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("autoselectsubcategories")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("autoselectsubcategories"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) getObject("selectedcategories:Contains(subcategory:UUID)")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",31,e);}if (_boolean_result) { %><% {Object temp_obj = (getObject("subcategory")); getPipelineDictionary().put("CurrentSubCategory", temp_obj);} %><%
						List<String> selectedSubCategoriesList = new ArrayList<String>();
						CatalogCategory subCategory = getPipelineDictionary().get("CurrentSubCategory");
						
						List<String> disabledCategoriesCollection = getPipelineDictionary().get("disabledcategories");						
						
						if (subCategory != null && selectedSubCategoriesList != null)
						{
						    Iterator subCategories = subCategory.createSubCategoriesIterator();
						    
							while(subCategories.hasNext())
							{
							    CatalogCategory subCatalogCategory = (CatalogCategory) subCategories.next();
							    
							    if (!disabledCategoriesCollection.contains(subCatalogCategory.getUUID()))
							    {
							    	selectedSubCategoriesList.add(subCatalogCategory.getUUID());
							    }
							}	    
						}
						
						getPipelineDictionary().put("SelectedSubCategoriesList",selectedSubCategoriesList);
					%><% } else { %><% {Object temp_obj = (getObject("selectedcategories")); getPipelineDictionary().put("SelectedSubCategoriesList", temp_obj);} %> 
<% } %> 
<ul> 
<% processOpenTag(response, pageContext, "categorytreenode", new TagParameter[] {
new TagParameter("parametervalue",getObject("parametervalue")),
new TagParameter("parametervalue5",getObject("parametervalue5")),
new TagParameter("parametervalue4",getObject("parametervalue4")),
new TagParameter("parametervalue3",getObject("parametervalue3")),
new TagParameter("parametername1",getObject("parametername1")),
new TagParameter("parametervalue2",getObject("parametervalue2")),
new TagParameter("parametervalue1",getObject("parametervalue1")),
new TagParameter("parametername2",getObject("parametername2")),
new TagParameter("minexpandlevel",getObject("minexpandlevel")),
new TagParameter("parametername3",getObject("parametername3")),
new TagParameter("selectmode",getObject("selectmode")),
new TagParameter("selectedcategories",getObject("SelectedSubCategoriesList")),
new TagParameter("disabledcategories",getObject("disabledcategories")),
new TagParameter("lazycategories",getObject("lazycategories")),
new TagParameter("detailspageparameter",getObject("detailspageparameter")),
new TagParameter("detailspagepipeline",getObject("detailspagepipeline")),
new TagParameter("parametername4",getObject("parametername4")),
new TagParameter("parametername5",getObject("parametername5")),
new TagParameter("parametername",getObject("parametername")),
new TagParameter("categories",getObject("subcategory:SubCategories")),
new TagParameter("autoselectsubcategories",getObject("autoselectsubcategories"))}, 61); %></ul><% } %><% } %></li> 
<% } %><% printFooter(out); %>