<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><%@ page import="javax.imageio.ImageIO" %><%@ page import="java.awt.image.BufferedImage" %><%@ page import="com.intershop.component.foundation.capi.upload.MVCFile" %><%@ page import="com.intershop.beehive.core.capi.file.FileUtils" %><%@ page import="com.intershop.beehive.core.capi.localization.LocaleInformation" %><%@ page import="java.lang.Exception" %><%
	MVCFile mvcFile = (MVCFile) getObject("ImageFile");
	LocaleInformation locale = (LocaleInformation)getObject("Locale");
	
	String staticDir = FileUtils.getUnitStaticContentDirectory(mvcFile.getUnitDomainName());
	String contentDirectory = staticDir + File.separator + locale.getLocaleID();
	if (mvcFile.getDirectoryPath()!=null && !"".equals(mvcFile.getDirectoryPath().trim())) {
		contentDirectory += File.separator + mvcFile.getDirectoryPath();
	}
	File dir = new File(contentDirectory);
	File myImage = new File(dir, mvcFile.getFullName());
	
	BufferedImage bimg = null;
	try {
		bimg = ImageIO.read(myImage);
		int width = bimg.getWidth();
		int height = bimg.getHeight();
		long size = myImage.length();
		getPipelineDictionary().put("Width", width);
		getPipelineDictionary().put("Height", height);
		getPipelineDictionary().put("Size", size);
		getPipelineDictionary().put("LastModified", new Date(myImage.lastModified()));
	} catch (Exception e) {
		getPipelineDictionary().put("ERROR", "NotAnImage");
	}
%><% printFooter(out); %>