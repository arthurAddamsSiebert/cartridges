<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"modules/Modules", null, "2");} %><% processOpenTag(response, pageContext, "uuid", new TagParameter[] {
new TagParameter("name","RenderEntityID")}, 4); %><% processOpenTag(response, pageContext, "renderentityrenderingstart", new TagParameter[] {
new TagParameter("RenderEntityRenderObject",getObject("Pagelet:SubSlot(\"app_sf_responsive_cm:slot.carousel.items.pagelet2-Slot\")")),
new TagParameter("RenderEntityID",getObject("RenderEntityID"))}, 5); %><% processOpenTag(response, pageContext, "slotiterator", new TagParameter[] {
new TagParameter("Slot",getObject("Pagelet:SubSlot(\"app_sf_responsive_cm:slot.carousel.items.pagelet2-Slot\")")),
new TagParameter("AssignmentsAlias","CarouselPageletAssignments")}, 7); %><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("CarouselPageletAssignments") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",8,e);}if (_boolean_result) { %><% {Object temp_obj = (new Double(0)); getPipelineDictionary().put("CarouselItems", temp_obj);} %><% {Object temp_obj = (new Double(0)); getPipelineDictionary().put("Slides", temp_obj);} %><% {Object temp_obj = (new Double(6)); getPipelineDictionary().put("SlideItems", temp_obj);} %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PageletConfigurationParameters:SlideItems"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",13,e);}if (_boolean_result) { %><% {Object temp_obj = (getObject("PageletConfigurationParameters:SlideItems")); getPipelineDictionary().put("SlideItems", temp_obj);} %><% } %><% {Object temp_obj = ((new Double( ((Number) ((new Double( ((Number) new Double(12)).doubleValue() -((Number) ((new Double( ((Number) new Double(12)).doubleValue() %((Number) getObject("SlideItems")).doubleValue())))).doubleValue())))).doubleValue() /((Number) getObject("SlideItems")).doubleValue()))); getPipelineDictionary().put("ItemGridSize", temp_obj);} %><div <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("PageletConfigurationParameters:CSSClass")))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("PageletConfigurationParameters:CSSClass"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",18,e);}if (_boolean_result) { %> class="<% {String value = null;try{value=context.getFormattedValue(getObject("PageletConfigurationParameters:CSSClass"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {18}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"<% } %>>
<div id="<% {String value = null;try{value=context.getFormattedValue(getObject("RenderEntityID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {19}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" 
class="carousel slide <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("PageletConfigurationParameters:CarouselCSSClass")))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("PageletConfigurationParameters:CarouselCSSClass"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",20,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("PageletConfigurationParameters:CarouselCSSClass"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {20}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %>"
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PageletConfigurationParameters:StartCycling"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",21,e);}if (_boolean_result) { %> data-ride="carousel"<% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PageletConfigurationParameters:SlideInterval"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",22,e);}if (_boolean_result) { %> data-interval="<% {String value = null;try{value=context.getFormattedValue(getObject("PageletConfigurationParameters:SlideInterval"),"0",null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {22}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"<% } else { %> data-interval="false"<% } %>
>
<div class="carousel-inner"><% processOpenTag(response, pageContext, "createplaceholderrenderevents", new TagParameter[] {
new TagParameter("ComponentHierarchyKey",getObject("ComponentHierarchyKey")),
new TagParameter("Slot",getObject("Pagelet:SubSlot(\"app_sf_responsive_cm:slot.carousel.items.pagelet2-Slot\")")),
new TagParameter("RenderContextID",getObject("RenderEntityID"))}, 26); %><% while (loop("CarouselPageletAssignments","CarouselPageletAssignment","i")) { %><% processOpenTag(response, pageContext, "createplaceholderrenderevents", new TagParameter[] {
new TagParameter("PageletAssignment",getObject("CarouselPageletAssignment")),
new TagParameter("RenderContextID",getObject("RenderEntityID"))}, 28); %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((( ((Number) ((new Double( ((Number) getObject("i")).doubleValue() %((Number) getObject("SlideItems")).doubleValue())))).doubleValue() ==((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((( ((Number) getObject("SlideItems")).doubleValue() ==((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",29,e);}if (_boolean_result) { %><% {Object temp_obj = ((new Double( ((Number) getObject("Slides")).doubleValue() +((Number) new Double(1)).doubleValue()))); getPipelineDictionary().put("Slides", temp_obj);} %><div class="item <% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("i")).doubleValue() ==((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",31,e);}if (_boolean_result) { %>active<% } %>">
<div class="row"><% } %><div class="col-sm-<% {String value = null;try{value=context.getFormattedValue(getObject("ItemGridSize"),"0",null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {34}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% processOpenTag(response, pageContext, "pageletassignment", new TagParameter[] {
new TagParameter("PageletAssignment",getObject("CarouselPageletAssignment"))}, 35); %></div><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((( ((Number) ((new Double( ((Number) getObject("i")).doubleValue() %((Number) getObject("SlideItems")).doubleValue())))).doubleValue() ==((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || !((Boolean) ((hasNext("CarouselPageletAssignment") ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",37,e);}if (_boolean_result) { %></div>
</div><% } %><% {Object temp_obj = (getObject("i")); getPipelineDictionary().put("CarouselItems", temp_obj);} %><% } %><% processOpenTag(response, pageContext, "createplaceholderrenderevents", new TagParameter[] {
new TagParameter("RenderContextID",getObject("RenderEntityID"))}, 43); %></div><% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("CarouselItems")).doubleValue() >((Number)(getObject("SlideItems"))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",47,e);}if (_boolean_result) { %><a class="left carousel-control" data-slide="prev" href="<%=context.getFormattedValue("#",null)%><% {String value = null;try{value=context.getFormattedValue(getObject("RenderEntityID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {48}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><span class="glyphicon glyphicon-chevron-left"></span></a>
<a class="right carousel-control" data-slide="next" href="<%=context.getFormattedValue("#",null)%><% {String value = null;try{value=context.getFormattedValue(getObject("RenderEntityID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {49}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><span class="glyphicon glyphicon-chevron-right"></span></a><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((context.getFormattedValue(getObject("PageletConfigurationParameters:ShowIndicators"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) ((( ((Number) getObject("CarouselItems")).doubleValue() >((Number)(getObject("SlideItems"))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",53,e);}if (_boolean_result) { %><ol class="carousel-indicators"><%
						int slides = ((Double)getObject("Slides")).intValue();
						for (int i=0; i<slides; i++)
						{
							getPipelineDictionary().put("SlideIndex", i);
					%><li data-target="<%=context.getFormattedValue("#",null)%><% {String value = null;try{value=context.getFormattedValue(getObject("RenderEntityID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {61}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" data-slide-to="<% {String value = null;try{value=context.getFormattedValue(getObject("SlideIndex"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {61}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" <% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("SlideIndex")).doubleValue() ==((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",61,e);}if (_boolean_result) { %>class="active"<% } %>></li><%
						}
					%></ol><% } %></div>
</div><% } %><% processOpenTag(response, pageContext, "renderentityrenderingend", new TagParameter[] {
new TagParameter("RenderEntityRenderObject",getObject("Pagelet:SubSlot(\"app_sf_responsive_cm:slot.carousel.items.pagelet2-Slot\")")),
new TagParameter("RenderEntityID",getObject("RenderEntityID"))}, 71); %><% printFooter(out); %>