<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"modules/rating/Modules", null, "3");} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"modules/common/Modules", null, "4");} %><% processOpenTag(response, pageContext, "getpreference", new TagParameter[] {
new TagParameter("domainname",getObject("CurrentDomain:DomainName")),
new TagParameter("preferencekey","ShowReviewerName"),
new TagParameter("type","String"),
new TagParameter("return","ShowReviewerName")}, 6); %><div class="modal-dialog">
<div class="modal-content">
<div class="modal-header">
<button type="button" class="close" data-dismiss="modal" title="<% {out.write(localizeISText("dialog.close.text","",null,null,null,null,null,null,null,null,null,null,null));} %>" aria-label="<% {out.write(localizeISText("dialog.close.text","",null,null,null,null,null,null,null,null,null,null,null));} %>"><span aria-hidden="true">&times;</span></button>
<h2 class="modal-title"><% {out.write(localizeISText("review.new_review.rate_and_review_item.text","",null,null,null,null,null,null,null,null,null,null,null));} %></h2>
</div><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Reviews") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",14,e);}if (_boolean_result) { %><div class="modal-body"><% {out.write(localizeISText("review.already_reviewed","",null,null,null,null,null,null,null,null,null,null,null));} %></div><% } else { %><% URLPipelineAction action49 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductReview-CreateReview",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("AjaxRequestMarker",null),context.getFormattedValue("true",null))).addURLParameter(context.getFormattedValue("CategoryDomainName",null),context.getFormattedValue(getObject("CategoryDomainName"),null)).addURLParameter(context.getFormattedValue("CategoryName",null),context.getFormattedValue(getObject("CategoryName"),null))),null));String site49 = null;String serverGroup49 = null;String actionValue49 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductReview-CreateReview",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("AjaxRequestMarker",null),context.getFormattedValue("true",null))).addURLParameter(context.getFormattedValue("CategoryDomainName",null),context.getFormattedValue(getObject("CategoryDomainName"),null)).addURLParameter(context.getFormattedValue("CategoryName",null),context.getFormattedValue(getObject("CategoryName"),null))),null);if (site49 == null){  site49 = action49.getDomain();  if (site49 == null)  {      site49 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup49 == null){  serverGroup49 = action49.getServerGroup();  if (serverGroup49 == null)  {      serverGroup49 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductReview-CreateReview",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("AjaxRequestMarker",null),context.getFormattedValue("true",null))).addURLParameter(context.getFormattedValue("CategoryDomainName",null),context.getFormattedValue(getObject("CategoryDomainName"),null)).addURLParameter(context.getFormattedValue("CategoryName",null),context.getFormattedValue(getObject("CategoryName"),null))),null));out.print("\"");out.print(" name=\"");out.print("CreateProductReviewForm");out.print("\"");out.print(" data-hijax=\"");out.print("true");out.print("\"");out.print(" class=\"");out.print("form-horizontal bv-form");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue49, site49, serverGroup49,true)); %><div class="modal-body">
<input type="hidden" name="SKU" value="<% {String value = null;try{value=context.getFormattedValue(getObject("SKU"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {29}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="submittype" data-form-action="true"/>
<div class="rating-description">
<p><% {out.write(localizeISText("review.new_review.header.text",null,null,null,null,null,null,null,null,null,null,null,null));} %></p>
<ul class="list-unstyled">
<li>
<ul class="rating-display rating-one clearfix">
<li class="star-one"><span class="glyphicon glyphicon-star"></span></li>
<li class="star-two"><span class="glyphicon glyphicon-star"></span></li>
<li class="star-three"><span class="glyphicon glyphicon-star"></span></li>
<li class="star-four"><span class="glyphicon glyphicon-star"></span></li>
<li class="star-five"><span class="glyphicon glyphicon-star"></span></li>
<li class="rating-description"><% {out.write(localizeISText("review.rating.one_star.description","",null,null,null,null,null,null,null,null,null,null,null));} %></li>
</ul>
</li>
<li>
<ul class="rating-display rating-two clearfix">
<li class="star-one"><span class="glyphicon glyphicon-star"></span></li>
<li class="star-two"><span class="glyphicon glyphicon-star"></span></li>
<li class="star-three"><span class="glyphicon glyphicon-star"></span></li>
<li class="star-four"><span class="glyphicon glyphicon-star"></span></li>
<li class="star-five"><span class="glyphicon glyphicon-star"></span></li>
<li class="rating-description"><% {out.write(localizeISText("review.rating.two_stars.description","",null,null,null,null,null,null,null,null,null,null,null));} %></li>
</ul>
</li>
<li>
<ul class="rating-display rating-three clearfix">
<li class="star-one"><span class="glyphicon glyphicon-star"></span></li>
<li class="star-two"><span class="glyphicon glyphicon-star"></span></li>
<li class="star-three"><span class="glyphicon glyphicon-star"></span></li>
<li class="star-four"><span class="glyphicon glyphicon-star"></span></li>
<li class="star-five"><span class="glyphicon glyphicon-star"></span></li>
<li class="rating-description"><% {out.write(localizeISText("review.rating.three_stars.description","",null,null,null,null,null,null,null,null,null,null,null));} %></li>
</ul>
</li>
<li>
<ul class="rating-display rating-four clearfix">
<li class="star-one"><span class="glyphicon glyphicon-star"></span></li>
<li class="star-two"><span class="glyphicon glyphicon-star"></span></li>
<li class="star-three"><span class="glyphicon glyphicon-star"></span></li>
<li class="star-four"><span class="glyphicon glyphicon-star"></span></li>
<li class="star-five"><span class="glyphicon glyphicon-star"></span></li>
<li class="rating-description"><% {out.write(localizeISText("review.rating.four_stars.description","",null,null,null,null,null,null,null,null,null,null,null));} %></li>
</ul>
</li>
<li> 
<ul class="rating-display rating-five clearfix">
<li class="star-one"><span class="glyphicon glyphicon-star"></span></li>
<li class="star-two"><span class="glyphicon glyphicon-star"></span></li>
<li class="star-three"><span class="glyphicon glyphicon-star"></span></li>
<li class="star-four"><span class="glyphicon glyphicon-star"></span></li>
<li class="star-five"><span class="glyphicon glyphicon-star"></span></li>
<li class="rating-description"><% {out.write(localizeISText("review.rating.five_stars.description","",null,null,null,null,null,null,null,null,null,null,null));} %></li>
</ul>
</li>
</ul>
</div><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((context.getFormattedValue(getObject("ShowReviewerName"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("ShowReviewerName"),null).equals(context.getFormattedValue("userDecision",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",91,e);}if (_boolean_result) { %><div class="form-group">
<label class="col-sm-4"><% {out.write(localizeISText("review.new_review.name.label","",null,null,null,null,null,null,null,null,null,null,null));} %></label>
<div class="col-sm-8"><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("CurrentUser:Profile:FirstName"))))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("CurrentUser:Profile:FirstName"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",95,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("CurrentUser:Profile:FirstName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {96}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> <% {String value = null;try{value=context.getFormattedValue(getObject("CurrentUser:Profile:Last"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {96}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %><input 
class="form-control"
maxlength="70"
name="CreateProductReviewForm_AuthorName"
type="text"
value="<% {String value = null;try{value=context.getFormattedValue(getObject("CreateProductReviewForm:AuthorName:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {103}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% processOpenTag(response, pageContext, "fielderrormessageplaceholder", new TagParameter[] {
new TagParameter("fieldname",getObject("CreateProductReviewForm:AuthorName")),
new TagParameter("ext_string_prefix","review.new_review.author_name"),
new TagParameter("class","kor-field-error-right")}, 104); %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ShowReviewerName"),null).equals(context.getFormattedValue("userDecision",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",106,e);}if (_boolean_result) { %><div class="checkbox">
<label>
<input name="CreateProductReviewForm_ShowAuthorName" type="checkbox" value="true" checked="checked"><% {out.write(localizeISText("review.new_review.show_author_name.text","",null,null,null,null,null,null,null,null,null,null,null));} %></label>
</div><% } %></div>
</div><% } %><div class="form-group">
<label class="col-sm-4 control-label"><% {out.write(localizeISText("review.new_review.rating.label","",null,null,null,null,null,null,null,null,null,null,null));} %><span class="required">*</span></label>
<div class="col-sm-8"><% processOpenTag(response, pageContext, "ratinginput", new TagParameter[] {
new TagParameter("Value",getObject("CreateProductReviewForm:Rating:Value")),
new TagParameter("Name","CreateProductReviewForm_Rating")}, 121); %><small class="input-help"><% {out.write(localizeISText("review.new_review.rate.guideline.text","",null,null,null,null,null,null,null,null,null,null,null));} %></small><% processOpenTag(response, pageContext, "fielderrormessageplaceholder", new TagParameter[] {
new TagParameter("fieldname",getObject("CreateProductReviewForm:Rating")),
new TagParameter("ext_string_prefix","review.new_review.rating"),
new TagParameter("class","kor-field-error-bottom")}, 123); %></div>
</div>
<div class="form-group">
<label class="col-sm-4 control-label" for="CreateProductReviewForm_ReviewTitle"><% {out.write(localizeISText("review.new_review.title.label","",null,null,null,null,null,null,null,null,null,null,null));} %><span class="required">*</span></label>
<div class="col-sm-8">
<input class="form-control"
required
data-bv-notempty-message="<% {out.write(localizeISText("review.new_review.title.error.required","",null,null,null,null,null,null,null,null,null,null,null));} %>"
maxlength="60"
name="CreateProductReviewForm_ReviewTitle"
type="text"
value="<% {String value = null;try{value=context.getFormattedValue(getObject("CreateProductReviewForm:ReviewTitle:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {136}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
><% processOpenTag(response, pageContext, "fielderrormessageplaceholder", new TagParameter[] {
new TagParameter("fieldname",getObject("CreateProductReviewForm:ReviewTitle")),
new TagParameter("ext_string_prefix","review.new_review.title"),
new TagParameter("class","kor-field-error-right")}, 138); %></div>
</div>
<div class="form-group">
<label class="col-sm-4 control-label"><% {out.write(localizeISText("review.new_review.content.label","",null,null,null,null,null,null,null,null,null,null,null));} %><span class="required">*</span></label>
<div class="col-sm-8">
<textarea class="form-control"
required
data-bv-notempty-message="<% {out.write(localizeISText("review.new_review.content.error.required","",null,null,null,null,null,null,null,null,null,null,null));} %>"
maxlength="4000"
name="CreateProductReviewForm_ReviewContent"
data-charactercounter="cCounterCreateProductReviewForm_ReviewContent"
><% {String value = null;try{value=context.getFormattedValue(getObject("CreateProductReviewForm:ReviewContent:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {152}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></textarea>
<small class="input-help"><% {out.write(localizeISText("review.new_review.entered.1","",null,null,null,null,null,null,null,null,null,null,null));} %> <span id="cCounterCreateProductReviewForm_ReviewContent">4000</span> <% {out.write(localizeISText("review.new_review.entered.2","",null,null,null,null,null,null,null,null,null,null,null));} %></small><% processOpenTag(response, pageContext, "fielderrormessageplaceholder", new TagParameter[] {
new TagParameter("fieldname",getObject("CreateProductReviewForm:ReviewContent")),
new TagParameter("ext_string_prefix","review.new_review.content"),
new TagParameter("class","kor-field-error-right")}, 157); %></div>
</div>
</div>
<div class="modal-footer">
<button class="btn btn-primary" name="rate" type="submit"><% {out.write(localizeISText("review.new_review.rate.button.label","",null,null,null,null,null,null,null,null,null,null,null));} %></button>
<button name="cancel" type="button" class="btn btn-default" data-dismiss="modal"><% {out.write(localizeISText("review.new_review.cancel.button.label","",null,null,null,null,null,null,null,null,null,null,null));} %></button>
</div><% out.print("</form>"); %><% } %></div>
</div><% printFooter(out); %>