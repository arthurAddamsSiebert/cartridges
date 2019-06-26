<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><div id="editPanelResponse" style="display: none;">
<div id="editTabs">
<ul>
<li><a class="sfe-active"><% {out.write(localizeISText("PageletTemplateTabs.Properties.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a></li>
</ul>
</div>
<div id="editLinks">
<div class="sfe-category sfe-right">
<a class="sfe-button sfe-icon sfe-data-view-button" href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewEditing-BackOffice",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ContentRepositoryUUID",null),context.getFormattedValue(getObject("ContentRepository:UUID"),null))).addURLParameter(context.getFormattedValue("CatalogCategoryID",null),context.getFormattedValue(getObject("Category:UUID"),null))),null)%>"><span><% {out.write(localizeISText("CatalogCategoryEditing.EditCategoryInformation.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></span></a>
</div>
</div>
<div id="editContainer">
<div class="object-properties">
<label class="fielditem2"><% {out.write(localizeISText("PageletTabProperties.Name.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label>
<input type="text" class="inputfield_en" value="<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Category:DisplayName(Locale)"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",18,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("Category:DisplayName(Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {18}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %><% {String value = null;try{value=context.getFormattedValue(getObject("Category:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {18}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> <%=context.getFormattedValue(context.getFormattedValue("(",null) + context.getFormattedValue(localizeText(context.getFormattedValue("CatalogCategory.LanguageMissing.input",null)),null),null)%><% } %>" disabled="disabled" width="100%">
<label class="fielditem2"><% {out.write(localizeISText("sld_enterprise_app.ID.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label>
<input type="text" class="inputfield_en" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Category:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {21}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" disabled="disabled" size="60">
<label class="fielditem2" nowrap="nowrap"><% {out.write(localizeISText("ProductAttributeGroup.Description.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label>
<textarea class="inputfield_en" disabled="disabled"><% {String value = null;try{value=context.getFormattedValue(getObject("Category:Description(Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {25}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></textarea>
</div>
</div>
<div id="editControls">
</div>
</div><% printFooter(out); %>