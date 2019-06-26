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


<table border="0" cellpadding="0" cellspacing="0" width="100%">
	<tr>
		<td>
			<table cellspacing="0" cellpadding="0" border="0">
				<tr class="top">
					<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("SearchTermError"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",33,e);}if (_boolean_result) { %>
						<td class="fielditem2_error" nowrap="nowrap"><% {out.write(localizeISText("customer.Country.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:&nbsp;</td>
					<% } else { %>
						<td class="infobox_item" nowrap="nowrap"><% {out.write(localizeISText("customer.Country.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:&nbsp;</td>
					<% } %>
					<td>
						<div id="simpleField" style="display:block;">
							<input type="text" id="CountrySearchForm_SimpleNameOrID" name="CountrySearchForm_SimpleNameOrID" maxlength="350" size="35" 
							<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CountrySearchForm:SimpleNameOrID:Value"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",41,e);}if (_boolean_result) { %>
								value="<% {String value = null;try{value=context.getFormattedValue(getObject("CountrySearchForm:SimpleNameOrID:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {42}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" 
							<% } %>
							class="inputfield_en"/>
						</div>
						<div id="advanceField" style="display:none;">
							<textarea rows="10" cols="35" id="CountrySearchForm_AdvanceNameOrID" name="CountrySearchForm_AdvanceNameOrID" class="inputfield_en"></textarea>
						</div>
					</td>
					<td>&nbsp;</td>
					
					<td>
						<table border="0" cellspacing="0" cellpadding="0">
							<tr>
								<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="4" height="1" alt="" border="0"/></td>
								<td class="button">
									<div id="simpleSearch" style="display:block;">
										<input type="submit" name="simpleSearch" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("CountrySearch_52.Find.button",null)),null)%>" class="button"/>
									</div>
									<div id="advanceSearch" style="display:none;">
										<input type="submit" name="advanceSearch" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("CountrySearch_52.Find.button",null)),null)%>" class="button"/>
									</div>
								</td>
							</tr>
						</table>
					</td>	
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td colspan="3"><a id="toggleLink" href="#" onclick="javascript:toggleMe();" class="switch_link"><% {out.write(localizeISText("CountrySearch_52.ExpandField.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a></td>
				</tr>
			</table>
		</td>
	</tr>
</table><% printFooter(out); %>