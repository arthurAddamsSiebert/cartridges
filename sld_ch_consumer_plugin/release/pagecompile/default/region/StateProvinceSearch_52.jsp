<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %>

<script language="javascript" type="text/javascript" >
function toggleMe(){
  var i=document.getElementById('simpleField');
  var j=document.getElementById('advanceField');  
  if(i && j){
	  if(i.style.display=="none"){
		i.style.display="block";
		j.style.display="none";
		document.getElementById('simpleSearch').style.display="block";
		document.getElementById('advanceSearch').style.display="none";
		document.getElementById('toggleLink').innerHTML="Expand Field";
	  } else {
		i.style.display="none";
		j.style.display="block";
		document.getElementById('simpleSearch').style.display="none";
		document.getElementById('advanceSearch').style.display="block";
		document.getElementById('toggleLink').innerHTML="Collapse Field";
	  }
	}	
  return true;
}
</script>

<% processOpenTag(response, pageContext, "createmap", new TagParameter[] {
new TagParameter("key0","Domain"),
new TagParameter("value0",getObject("CurrentChannel:Domain:Site")),
new TagParameter("mapname","CountriesParams")}, 27); %>
	
	<% {try{executePipeline("ProcessRegion-GetCountriesWithStatesAssigned",((java.util.Map)(getObject("CountriesParams"))),"CountriesDic");}catch(Exception e){Logger.error(this,"ISPIPELINE failed. Line: 30.",e);}} %>

<table border="0" cellpadding="0" cellspacing="0" width="100%">
	<tr>
		<td >

			
			<table cellSpacing=0 cellPadding=0 border=0>
				<tr class="top">
					<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("SearchTermError"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",39,e);}if (_boolean_result) { %>
						<td class="fielditem2_error" nowrap="nowrap"><% {out.write(localizeISText("StateProvinceSearch_52.State.fielditem2_error",null,null,null,null,null,null,null,null,null,null,null,null));} %>:&nbsp;</td>
					<% } else { %>
						<td class="infobox_item" nowrap="nowrap"><% {out.write(localizeISText("StateProvinceSearch_52.State.infobox_item",null,null,null,null,null,null,null,null,null,null,null,null));} %>:&nbsp;</td>
					<% } %>
					<td>
						<div id="simpleField" style="display:block;">
							<input type="text" name="StateProvinceSearchForm_SimpleNameOrID" maxlength="350" size="35" 
							<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("NameOrID"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",47,e);}if (_boolean_result) { %>
								value="<% {String value = null;try{value=context.getFormattedValue(getObject("NameOrID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {48}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" 
							<% } %>
							class="inputfield_en"/>
						</div>
						<div id="advanceField" style="display:none;">
							<textarea rows="10" cols="35" id="StateProvinceSearchForm_AdvanceNameOrID" name="StateProvinceSearchForm_AdvanceNameOrID" class="inputfield_en"></textarea>
						</div>
					</td>
					<td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
					
					<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("StateProvinceSearchForm:CountryID:Invalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",58,e);}if (_boolean_result) { %>
						<td class="fielditem2_error" nowrap="nowrap"><% {out.write(localizeISText("StateProvinceSearch_52.Country.fielditem2_error",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span>&nbsp;</td>
					<% } else { %>
						<td class="infobox_item" nowrap="nowrap"><% {out.write(localizeISText("StateProvinceSearch_52.Country.infobox_item",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span>&nbsp;</td>
					<% } %>
					<td>
						<select name="StateProvinceSearchForm_CountryID" class="dropdown inputfield_en" >
							<option value="" >---<% {out.write(localizeISText("StateProvinceSearch_52.SelectCountry.option",null,null,null,null,null,null,null,null,null,null,null,null));} %>---</option>
							<% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("CountriesDic:AllCountries") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",66,e);}if (_boolean_result) { %>
								<% while (loop("CountriesDic:AllCountries","Country",null)) { %>
									<option value="<% {String value = null;try{value=context.getFormattedValue(getObject("Country:Id"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {68}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("StateProvinceSearchForm:CountryID:Value")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("StateProvinceSearchForm:CountryID:Value"),null).equals(context.getFormattedValue(getObject("Country:Id"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("StateProvinceSearchForm_CountryID")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("StateProvinceSearchForm_CountryID"),null).equals(context.getFormattedValue(getObject("Country:Id"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",68,e);}if (_boolean_result) { %> selected="selected" <% } %> ><% {String value = null;try{value=context.getFormattedValue(getObject("Country:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {68}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> (<% {String value = null;try{value=context.getFormattedValue(getObject("Country:Id"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {68}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>)</option>
								<% } %>
							<% } %>
						</select>
					</td>
					<td>&nbsp;</td>
					<td>
						<table border="0" cellspacing="0" cellpadding="0">
							<tr>
								<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="4" height="1" alt="" border="0"/></td>
								<td class="button">
									<div id="simpleSearch" style="display:block;">
										<input type="submit" name="simpleSearch" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("StateProvinceSearch_52.Find.button",null)),null)%>" class="button"/>
									</div>
									<div id="advanceSearch" style="display:none;">
										<input type="submit" name="advanceSearch" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("StateProvinceSearch_52.Find.button",null)),null)%>" class="button"/>
									</div>
								</td>
							</tr>
						</table>
					</td>	
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td colspan="6">
						<a id="toggleLink" href="#" onclick="javascript:toggleMe();" class="switch_link"><% {out.write(localizeISText("StateProvinceSearch_52.ExpandField.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
					</td>
				</tr>
			</table>
		</td>
	</tr>
</table><% printFooter(out); %>