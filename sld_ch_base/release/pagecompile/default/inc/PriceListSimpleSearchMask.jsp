<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><tr>
<td colspan="2">
<table border="0" cellpadding="0" cellspacing="0">
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("WFSimpleSearch")))).booleanValue() && ((Boolean) (getObject("WFSimpleSearch:NameOrID:isInvalid"))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",6,e);}if (_boolean_result) { %><td nowrap="nowrap" class="label label_light label_error"><label class="label" for="WFSimpleSearch_NameOrID"><% {out.write(localizeISText("PriceListSimpleSearchMask.NameOrID.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td><% } else { %><td nowrap="nowrap" class="label"><label class="label label_light" for="WFSimpleSearch_NameOrID"><% {out.write(localizeISText("PriceListSimpleSearchMask.NameOrID.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td><% } %><td>
<input type="hidden" name="DefaultButton" value="findSimple"/>
<input type="text" name="WFSimpleSearch_NameOrID" id="WFSimpleSearch_NameOrID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("WFSimpleSearch_NameOrID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {13}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" maxlength="255" size="35" class="inputfield_en"/>
</td>
<td>&nbsp;</td>
<td>
<select name="SearchType" class="select inputfield_en">
<option value="priceForCurrency" <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("SearchType")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SearchType"),null).equals(context.getFormattedValue("priceForCurrency",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",18,e);}if (_boolean_result) { %>selected="selected" <% } %>><% {out.write(localizeISText("PriceListSimpleSearchMask.WithPriceDefinedForTheCurrency.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="noPriceForCurrency" <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("SearchType")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SearchType"),null).equals(context.getFormattedValue("noPriceForCurrency",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",19,e);}if (_boolean_result) { %>selected="selected" <% } %>><% {out.write(localizeISText("PriceListSimpleSearchMask.WithNoPriceDefinedForTheCurrency.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="all" <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("SearchType")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SearchType"),null).equals(context.getFormattedValue("all",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",20,e);}if (_boolean_result) { %>selected="selected" <% } %>><% {out.write(localizeISText("PriceListSimpleSearchMask.All.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
</select>
</td>
<td>
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><input type="submit" name="findSimple" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PriceListSimpleSearchMask.Find.button",null)),null)%>" class="button"/></td>
</tr>
</table>
</td>
</tr>
</table>
</td>
</tr><% printFooter(out); %>