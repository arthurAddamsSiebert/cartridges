<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%! protected Boolean printTemplateMarker() { return Boolean.FALSE; } %><%%><%@ page contentType="text/xml;charset=utf-8" %><%%><%@ page session="false"%><%setEncodingType("text/xml"); %>
<%@ page import="java.io.IOException,
	java.util.Collections,
	java.util.Iterator,
	java.util.Set,
	java.util.HashSet,
	com.intershop.adapter.bmecat.util.BMEcatExportUtil,
	com.intershop.beehive.core.capi.localization.LocaleInformation,
	com.intershop.beehive.core.capi.domain.ExtensibleObject,
	com.intershop.beehive.core.capi.naming.NamingMgr,
	com.intershop.beehive.core.internal.impex.XMLVerifyException,
	com.intershop.beehive.core.internal.template.AbstractTemplate,
	com.intershop.beehive.xcs.capi.product.Product,
	com.intershop.component.foundation.capi.content.AdditionalContent,
	com.intershop.component.foundation.capi.content.AdditionalContentMgr,
	com.intershop.component.foundation.capi.content.AdditionalContentConstants,
	com.intershop.component.foundation.capi.upload.FileUtil" %>
<%!
	private final static Set dataSheetTypes = new HashSet();
	
	static
	{
		dataSheetTypes.add("doc");
		dataSheetTypes.add("txt");
		dataSheetTypes.add("pdf");
		dataSheetTypes.add("xls");
	};
 
	private static void writeMime(JspWriter out, AbstractTemplate template, String type, String source, String descr, String purpose)
		throws XMLVerifyException, IOException
	{
		out.println("<MIME>");

		BMEcatExportUtil.writeElement(out, template, "type", type, "MIME_TYPE", 30, true);
		out.println();
		BMEcatExportUtil.writeElement(out, template, "source", source, "MIME_SOURCE", 250, false);
		out.println();
		BMEcatExportUtil.writeElement(out, template, "descr", descr, "MIME_DESCR", 250, true);
		out.println();
		BMEcatExportUtil.writeElement(out, template, "purpose", purpose, "MIME_PURPOSE", 20, true);
		out.println();
		out.println("</MIME>");
	}
%>
<%
	ExtensibleObject object = (ExtensibleObject)getObject("object");
	LocaleInformation locale = (LocaleInformation)getObject("locale");
	Iterator acs = ((AdditionalContentMgr)NamingMgr.getInstance().
		lookupManager(AdditionalContentMgr.REGISTRY_NAME)).
			createAdditionalContentIterator(object, AdditionalContentConstants.AC_TYPE_ALL, locale);

		
	
	if ((object instanceof Product) && acs.hasNext())
	{
		out.println("<MIME_INFO>");

		while (acs.hasNext())
		{
			AdditionalContent ac = (AdditionalContent)acs.next();
			String value = ac.getValue();
			int pos;
			String fileExtension = 
				(pos = value.lastIndexOf('.')) != -1 && pos < (value.length() - 1) ?
					value.substring(pos + 1) : ""; 
			String purpose = dataSheetTypes.contains(fileExtension) ? "data_sheet" : "others";
			
			if(ac.getDescription() != null)
			{
			    writeMime(out, this, FileUtil.getMimeType(value), value, encodeString(ac.getDescription()), purpose);
			}
		}

		out.println("</MIME_INFO>");
	}
%>
<% printFooter(out); %>