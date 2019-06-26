<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %>

<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (hasLoopElements("AddedProductImages") ? Boolean.TRUE : Boolean.FALSE)).booleanValue() || ((Boolean) (hasLoopElements("UpdatedProductImages") ? Boolean.TRUE : Boolean.FALSE)).booleanValue() || ((Boolean) (hasLoopElements("DeletedProductImages") ? Boolean.TRUE : Boolean.FALSE)).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",4,e);}if (_boolean_result) { %>
	<% {Object temp_obj = ("true"); getPipelineDictionary().put("ProductChange", temp_obj);} %>
	<tr>
	    <td class="w e" colspan="3"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="2" alt="" border="0"/></td>
	</tr>
	<tr>
		<td colspan="3">
			<table border="0" cellpadding="0" cellspacing="0" width="100%">
				<tr>
					<td class="table_title2 w e n" colspan="3"><% {out.write(localizeISText("ProductImageDetails.ProductImages.table_title2",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
				</tr>
				
			 
			
				<% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("AddedProductImages") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",18,e);}if (_boolean_result) { %>
							<tr>
								<td class="table_detail w e" colspan="3"><% {out.write(localizeISText("ProductImageDetails.TheFollowingImagesWereAdded.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
							</tr>
			
							<tr>
								<td class="table_header aldi"><% {out.write(localizeISText("ProductImageDetails.ImageView.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
								<td class="table_header n e s"><% {out.write(localizeISText("ProductImageDetails.ImageType.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
								<td class="table_header n e s"><% {out.write(localizeISText("ProductImageDetails.ImageBaseName.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
							</tr>
			
					<% while (loop("AddedProductImages","api",null)) { %>
							<tr>
								<td class="table_detail e s w top"><% {String value = null;try{value=context.getFormattedValue(getObject("api:ImageViewName(Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {31}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
								<td class="table_detail e s top"><% {String value = null;try{value=context.getFormattedValue(getObject("api:ImageTypeName(Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {32}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>
								<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((( ((Number) getObject("api:ImageTypeWidth")).doubleValue() >((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((( ((Number) getObject("api:ImageTypeHeight")).doubleValue() >((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",33,e);}if (_boolean_result) { %>
									(<% {String value = null;try{value=context.getFormattedValue(getObject("api:ImageTypeWidth"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {34}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>  x <% {String value = null;try{value=context.getFormattedValue(getObject("api:ImageTypeHeight"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {34}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>)
								<% } %>
								</td>
								<td class="table_detail e s top"><% {String value = null;try{value=context.getFormattedValue(getObject("api:ImageBaseName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {37}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
							</tr>
					<% } %>
				<% } %>
			 
			 
			 
				<% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("UpdatedProductImages") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",44,e);}if (_boolean_result) { %>
							<tr>
								<td class="table_detail w e" colspan="3"><% {out.write(localizeISText("ProductImageDetails.TheFollowingImagesWereUpdated.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
							</tr>
			
							<tr>
								<td class="table_header aldi"><% {out.write(localizeISText("ProductImageDetails.Name.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
								<td class="table_header n e s"><% {out.write(localizeISText("ProductImageDetails.Old.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
								<td class="table_header n e s"><% {out.write(localizeISText("ProductImageDetails.New.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
							</tr>
			
					<% while (loop("UpdatedProductImages","upi",null)) { %>
							<tr>
								<td class="table_detail w e s top"><% {out.write(localizeISText("ProductImageDetails.ImageBaseName.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
								<td class="table_detail e s top"><% {String value = null;try{value=context.getFormattedValue(getObject("upi:OldSnapShot:ImageBaseName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {58}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
								<td class="table_detail e s top"><% {String value = null;try{value=context.getFormattedValue(getObject("upi:NewSnapShot:ImageBaseName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {59}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
							</tr>
					<% } %>
				<% } %>
				
			 
			
				<% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("DeletedProductImages") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",66,e);}if (_boolean_result) { %>
					<tr>
						<td class="table_detail w e" colspan="3"><% {out.write(localizeISText("ProductImageDetails.TheFollowingImagesWereDeleted.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
					</tr>
				
					<tr>
						<td class="table_header aldi"><% {out.write(localizeISText("ProductImageDetails.ImageView.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
						<td class="table_header n e s"><% {out.write(localizeISText("ProductImageDetails.ImageType.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
						<td class="table_header n e s"><% {out.write(localizeISText("ProductImageDetails.ImageBaseName.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
					</tr>
			
					<% while (loop("DeletedProductImages","dpi",null)) { %>
							<tr>
								<td class="table_detail w e s top"><% {String value = null;try{value=context.getFormattedValue(getObject("dpi:ImageViewName(Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {79}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
								<td class="table_detail e s top">
									<% {String value = null;try{value=context.getFormattedValue(getObject("dpi:ImageTypeName(Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {81}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>
									<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((( ((Number) getObject("dpi:ImageTypeWidth")).doubleValue() >((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((( ((Number) getObject("dpi:ImageTypeHeight")).doubleValue() >((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",82,e);}if (_boolean_result) { %>
										(<% {String value = null;try{value=context.getFormattedValue(getObject("dpi:ImageTypeWidth"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {83}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>  x <% {String value = null;try{value=context.getFormattedValue(getObject("dpi:ImageTypeHeight"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {83}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>)
									<% } %>
								</td>
								<td class="table_detail e s top"><% {String value = null;try{value=context.getFormattedValue(getObject("dpi:ImageBaseName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {86}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>								
							</tr>
					<% } %>
				<% } %>
				
			</table>
		</td>
	</tr>

<% } %><% printFooter(out); %>