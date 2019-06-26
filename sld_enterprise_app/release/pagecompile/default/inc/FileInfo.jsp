<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("file")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("infotype")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",1,e);}if (_boolean_result) { %><%@ page import="java.io.File" %>
	<%
		Object file = getObject("file");
		String infotype = (String)getObject("infotype");
		File infoFile;
		infoFile = (file instanceof File ? (File) file : (file instanceof String ? new File((String) file) : null));

		if (infoFile != null && infoFile.exists())
		{
			if (infotype.equalsIgnoreCase("size"))
			{
				long kByte = 1024;
				long MByte = kByte * 1024;
				long GByte = MByte * 1024;

				long bytes = infoFile.length();

				if (bytes > GByte) // GB
				{
					out.write( Math.round(bytes / GByte) + " GB");
				}
				else if (bytes > MByte) // MB
				{
					out.write( Math.round(bytes / MByte) + " MB");
				}
				else if (bytes > kByte ) // kByte
				{
					out.write( Math.round(bytes / kByte) + " kB");
				}
				else
				{
					out.write(bytes + " Bytes");
				}
			}
			else if (infotype.equalsIgnoreCase("lastmodified"))
			{
				getPipelineDictionary().put("FILE_DATE", new Date(infoFile.lastModified()));
				%>
				<% {String value = null;try{value=context.getFormattedValue(getObject("FILE_DATE"),new Integer(DATE_SHORT),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {39}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> <% {String value = null;try{value=context.getFormattedValue(getObject("FILE_DATE"),new Integer(DATE_TIME),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {39}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>
				<%
			}
		}
		else
		{
			out.write("N/A");
		}
	%>
<% } %><% printFooter(out); %>