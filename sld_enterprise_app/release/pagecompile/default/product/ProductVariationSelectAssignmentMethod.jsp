<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- Page Navigator --><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductVariations-BackToSelectAssignmentMethod",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ProductID",null),context.getFormattedValue(getObject("Product:UUID"),null))))),
new TagParameter("wizard","true"),
new TagParameter("text",localizeText(context.getFormattedValue("sld_enterprise_app.VariationProductAssignmentStep1AssignmentMethod.text",null)))}, 4); %><!-- EO Page Navigator --><% URLPipelineAction action65 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductVariations-Dispatch",null)))),null));String site65 = null;String serverGroup65 = null;String actionValue65 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductVariations-Dispatch",null)))),null);if (site65 == null){  site65 = action65.getDomain();  if (site65 == null)  {      site65 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup65 == null){  serverGroup65 = action65.getServerGroup();  if (serverGroup65 == null)  {      serverGroup65 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductVariations-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("AssignmentMethodForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue65, site65, serverGroup65,true)); %><table border="0" cellspacing="0" cellpadding="0" width="100%">
<tr>
<td class="table_title aldi" colspan="2"><% {out.write(localizeISText("sld_enterprise_app.VariationProductAssignmentAssignmentMethod.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td class="w e s table_title_description" colspan = "2" nowrap="nowrap"><% {out.write(localizeISText("sld_enterprise_app.Step1Of2NextStepSelectProductsVariationTypes.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<table class="w e s" width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="input_radio" width="1%">
<input type="radio" name="AssignmentMethodForm_Method" id="AssignmentMethodForm_Method_manual" value="manual" <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((Boolean) (getObject("AssignmentMethodForm:isSubmitted"))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() || ((Boolean) (((((Boolean) getObject("AssignmentMethodForm:isSubmitted")).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("AssignmentMethodForm:Method:Value"),null).equals(context.getFormattedValue("manual",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",19,e);}if (_boolean_result) { %>checked="checked"<% } %>/>
</td>
<td class="label_radio_text"><label class="label label_radio_text label_light" for="AssignmentMethodForm_Method_manual"><% {out.write(localizeISText("sld_enterprise_app.AssignVariationProductsManually.label",null,null,null,null,null,null,null,null,null,null,null,null));} %></label></td>
</tr>
<tr>
<td class="input_radio">
<input type="radio" name="AssignmentMethodForm_Method" id="AssignmentMethodForm_Method_vartypes" value="vartypes" <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("AssignmentMethodForm:isSubmitted")).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("AssignmentMethodForm:Method:Value"),null).equals(context.getFormattedValue("vartypes",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",25,e);}if (_boolean_result) { %>checked="checked"<% } %>/>
</td>
<td class="label_radio_text"><label class="label label_radio_text label_light" for="AssignmentMethodForm_Method_vartypes"><% {out.write(localizeISText("sld_enterprise_app.CreateVariationProductsBasedUponVariationTypes.label",null,null,null,null,null,null,null,null,null,null,null,null));} %></label></td>
</tr>
</table>
<table class="w e s" width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td align="right" colspan="2">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button">
<input type="hidden" name="ProductID" value="<%=context.getFormattedValue(getObject("Product:UUID"),null)%>"/>
<input type="submit" name="processAssignmentMethod" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.Next.button",null)),null)%>&nbsp;&gt;&gt;" class="button"/>
</td>
<td class="button">
<input type="submit" name="cancelAssignmentMethod" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.Cancel.button",null)),null)%>" class="button"/>
</td>
</tr>
</table>
</td>
</tr>
</table><% out.print("</form>"); %><!-- EO Main Content -->
<!-- EO Working Area --><% printFooter(out); %>