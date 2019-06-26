<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="image/png;charset=utf-8" %><%setEncodingType("image/png"); %><%@page import="
    java.awt.Graphics2D,
    java.awt.geom.AffineTransform,
    java.awt.image.AffineTransformOp,
    java.awt.image.BufferedImage,
    java.io.BufferedInputStream,
    java.io.ByteArrayInputStream,
    java.io.ByteArrayOutputStream,
    java.io.InputStream,
    java.io.IOException,
    java.io.File,
    java.io.FileInputStream,
    javax.imageio.ImageIO,
    javax.naming.InitialContext,
    org.slf4j.LoggerFactory,
    com.intershop.component.foundation.internal.jndi.FileRef
"%><%!
    private static InputStream toInputStream(Object obj) throws IOException {
        if (obj instanceof String) {
            obj = ((String) obj).getBytes("UTF-8");
        }
        if (obj instanceof byte[]) {
            return new ByteArrayInputStream((byte[]) obj);
        }
        if (obj instanceof File) {
            obj = new FileInputStream((File) obj);
        }
        if (obj instanceof FileRef) {
            obj = new FileInputStream((String)((FileRef) obj).get(FileRef.FileRefAddr.TYPE).getContent());
        }
        if (obj instanceof BufferedInputStream) {
            return (BufferedInputStream) obj;
        }
        if (obj instanceof InputStream) {
            return new BufferedInputStream((InputStream) obj);
        }
        throw new IllegalArgumentException("Unsupported object type: " + obj);
    }
%><%
    int width;
    try {
        width = Integer.parseInt(String.valueOf(getObject("Width")));
    } catch (Exception ignored) {
        width =  140;
    }
    int height;
    try {
        height = Integer.parseInt(String.valueOf(getObject("Height")));
    } catch (Exception ignored) {
        height = 60;
    }
    final String uri = String.valueOf(getObject("URI"));
    try {
        final FileRef o = (FileRef)new InitialContext().lookup(uri);
        final InputStream in = toInputStream(o);
        final BufferedImage image;
        try {
            image = ImageIO.read(in);
        } finally {
            in.close();
        }
        if (image == null) {
            throw new UnsupportedOperationException("Unsupported image format: " + uri);
        }
        if (width < image.getWidth() || height < image.getHeight()) {
            // final long t0 = System.currentTimeMillis(); 
            final double scale = Math.min((double)width / image.getWidth(), (double)height / image.getHeight());
            final AffineTransform at = new AffineTransform();
            at.translate(((double)width - scale * image.getWidth()) / 2, ((double)height - scale * image.getHeight()) / 2);
            at.scale(scale, scale);
            final BufferedImage bi = new BufferedImage(width, height, BufferedImage.TYPE_4BYTE_ABGR);
            final Graphics2D g = bi.createGraphics();
            try {
                g.drawImage(image, new AffineTransformOp(at, AffineTransformOp.TYPE_BILINEAR), 0, 0);
            } finally {
                g.dispose();
            }
            final ByteArrayOutputStream buffer = new ByteArrayOutputStream();
            ImageIO.write(bi, "png", buffer);
            // System.err.println("Generated thumbnail for '" + uri + "' (" + width + "x" + height + "/" + scale + ") in "
            //     + (System.currentTimeMillis() - t0) + "ms");
            getPipelineDictionary().put("Buffer", new ByteArrayInputStream(buffer.toByteArray()));
            %><% {try{String currentCacheTime = (String)((com.intershop.beehive.core.capi.request.ServletResponse)response).getHeaderValue(TemplateConstants.PAGECACHE_HEADER);if (currentCacheTime!=null && "00".equals(currentCacheTime)) {Logger.debug(this, "ISCACHE declaration is ignored since a prior 'forbidden'.");}else {long time = System.currentTimeMillis()/1000;long minute=30;if (minute <0) minute=0;long hour=0;if (hour <0)  hour=0;time += 60*minute+3600*hour;String extCacheTime = (String)((com.intershop.beehive.core.capi.request.ServletResponse)response).getHeaderValue(TemplateConstants.EXT_PAGECACHE_HEADER);Long oldTime=(currentCacheTime!=null)?Long.valueOf(currentCacheTime):(extCacheTime!=null)?Long.valueOf(extCacheTime):null;if (oldTime!=null && oldTime<time) {Logger.debug(this, "ISCACHE declaration is ignored since a prior declaration with a smaller caching period.");response.setHeader(TemplateConstants.PAGECACHE_HEADER, String.valueOf(oldTime));}else if (oldTime!=null && oldTime>time) {Logger.debug(this, "ISCACHE declaration reduces a caching period set by a prior declaration.");}if (oldTime==null || oldTime>time){if (time > Integer.MAX_VALUE){  time = Integer.MAX_VALUE;} response.setHeader(TemplateConstants.PAGECACHE_HEADER, String.valueOf(time));}}}catch(Exception e){Logger.error(this,"ISCACHE failed. Line: {83}",e);}} %><% {processBinaryOutputStream((com.intershop.beehive.core.capi.request.ServletResponse)response,((java.io.InputStream)(getObject("Buffer"))));} %><%
        } else {
            getPipelineDictionary().put("FileRef", o);
            %><% int _httpStatusCode = 302;
if (_httpStatusCode < 300 || _httpStatusCode > 399) 
{
    throw new ServletException(
      "Redirection error in template "+getTemplateExecutionConfig().getTemplateName()+". " + 
      "Unsupported HTTP status code " + _httpStatusCode + ". Supported interval [300, 399]");
}response.setHeader("X-IS-HTTPResponseStatus", String.valueOf(_httpStatusCode));response.setHeader("Location", context.getFormattedValue(getObject("FileRef:StaticURL"),null)); %><%
        }
    } catch (Exception e) {
        // LoggerFactory.getLogger(getClass()).error("Thumbnailing " + uri, e);
        %><% int _httpStatusCode = 302;
if (_httpStatusCode < 300 || _httpStatusCode > 399) 
{
    throw new ServletException(
      "Redirection error in template "+getTemplateExecutionConfig().getTemplateName()+". " + 
      "Unsupported HTTP status code " + _httpStatusCode + ". Supported interval [300, 399]");
}response.setHeader("X-IS-HTTPResponseStatus", String.valueOf(_httpStatusCode));response.setHeader("Location", context.getFormattedValue(context.getFormattedValue(context.webRoot(),null) + context.getFormattedValue("/images/no_image_available.gif",null),null)); %><%
    }
%>
<% printFooter(out); %>