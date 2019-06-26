<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
    <head><% insertIntershopSignature(request,(com.intershop.beehive.core.capi.request.ServletResponse)response); %><%
    final String uri = String.valueOf(getObject("URI"));
    getPipelineDictionary().put("Name", uri.substring(uri.lastIndexOf('/') + 1));
%>
        <title><% {String value = null;try{value=context.getFormattedValue(getObject("Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {7}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></title>
        <script type="text/javascript"><!--
function dismiss() {
    window.close();
}
function resizeWindowTo(node) {
    // Avoid any potential event-looping during resizing.
    node.onload = "";
    if (node.clientWidth && node.clientHeight) {
        window.resizeTo(100, 100);
        if (window.opener.lightBoxPosition) {
            window.moveTo(window.opener.lightBoxPosition.x, window.opener.lightBoxPosition.y);
        }
        var dw = 0;
        if (window.innerWidth !== undefined && window.outerWidth >= window.innerWidth) {
            dw = window.outerWidth - window.innerWidth;
        } else {
            dw = 28;
        }
        var dh = 0;
        if (window.innerHeight !== undefined && window.outerHeight >= window.innerHeight) {
            dh = window.outerHeight - window.innerHeight;
        } else {
            dh = 82;
        }
        var nw = 100;
        if (node.clientWidth > 0) {
            nw = node.clientWidth + dw;
        }
        var nh = 100;
        if (node.clientHeight > 0) {
            nh = node.clientHeight + dh; // 4px fudge to prevent spurious scrollbars
        }
        dw = nw / -2;
        dh = nh / -2;
        var sw = window.screen.availWidth ? window.screen.availWidth : window.screen.width ;
        var sh = window.screen.availHeight ? window.screen.availHeight : window.screen.height;
        var wx = window.screenX !== undefined ? window.screenX : window.screenLeft;
        var wy = window.screenY !== undefined ? window.screenY : window.screenTop;

        if (window.screenX + dw + nw > sw) {
            // Avoid moving off-screen at right.
            dw = sw - nw - window.screenX;
        }
        if (window.screenY + dh + nh > sh) {
            // Avoid moving off-screen at bottom.
            dh = sh - nh - window.screenY;
        }
        // For screen-constrained environments, we must move the window toward 0,0 or we may not be able to resize
        // to the full amount available.
        window.moveBy(dw, dh);
        window.resizeTo(nw, nh);

        if (window.focus) {
            window.focus();
        }
    }
    // window.onblur = dismiss;
    window.onkeyup = dismiss;
    window.onclick = dismiss;
    window.document.body.onkeyup = dismiss;
}
function moveCrosshair(ev) {
    ev = ev || window.event;
    var node = document.getElementById("subject");
    if (!node) return;
    var w = node.width;
    var h = node.height;
    var x = (ev.layerX || ev.offsetX || 0) + 1;
    var y = (ev.layerY || ev.offsetY || 0) + 1;
    var cw = document.getElementById("crosshair-width");
    cw.innerHTML = String(w);
    cw.style.display = "block";
    var ch = document.getElementById("crosshair-height");
    ch.innerHTML = String(h);
    ch.style.display = "block";
    var ct = document.getElementById("crosshair-top");
    ct.innerHTML = String(y);
    ct.style.display = "block";
    var cl = document.getElementById("crosshair-left");
    cl.innerHTML = String(x);
    cl.style.display = "block";
    cw.style.top = String(y - 48) + "px";
    cw.style.left = String(x - 16) + "px";
    ch.style.top = String(y - 16) + "px";
    ch.style.left = String(x - 48) + "px";
    ct.style.top = String(y - 16) + "px";
    ct.style.left = String(x + 16) + "px";
    cl.style.top = String(y + 16) + "px";
    cl.style.left = String(x - 16) + "px";
    if (window.hideCrosshairTimeout) {
        window.clearTimeout(window.hideCrosshairTimeout);
    }
    window.hideCrosshairTimeout = window.setTimeout(hideCrosshair, 4000);
}
function hideCrosshair() {
    var cw = document.getElementById("crosshair-width");
    if (cw) cw.style.display = "none";
    var ch = document.getElementById("crosshair-height");
    if (ch) ch.style.display = "none";
    var ct = document.getElementById("crosshair-top");
    if (ct) ct.style.display = "none";
    var cl = document.getElementById("crosshair-left");
    if (cl) cl.style.display = "none";
}
//--></script>
    <style type="text/css">
        HTML, BODY {
            width: 100%
            height: 100%;
            margin: 0px;
            padding: 0px;
          
        }
        body {
            overflow:hidden;
        }
        .subject {
            border: none;
            margin: 0px;
            padding: 0px;
        }
        .viewport {
            margin: 0px;
            padding: 0px;
            position: absolute;
            top: 0px;
            left: 0px;
            bottom: 0px;
            right: 0px;
            width: 100%;
            height: 100%; 
            /**
             background: url(<%=context.getFormattedValue(context.webRoot(),null)%>/css/ServerBrowser/checkered.png);
            **/
        }
        .viewport img {
            cursor: crosshair;
        }
        .crosshair {
            z-index: 1;
            display: none;
            margin: 0px;
            padding: 0px;
            position: absolute;
            top: 0px;
            left: 0px;
            width: 32px;
            height: 32px;
            color: white;
            font-weight: bold;
            font-family: monospace;
            font-size: 11px;
            text-align: center;
            line-height: 32px;
        }
        .arr_width {
            background: url(<%=context.getFormattedValue(context.webRoot(),null)%>/css/ServerBrowser/arr_width.png) no-repeat center;
        }
        .arr_height {
            background: url(<%=context.getFormattedValue(context.webRoot(),null)%>/css/ServerBrowser/arr_height.png) no-repeat center;
        }
        .arr_x {
            background: url(<%=context.getFormattedValue(context.webRoot(),null)%>/css/ServerBrowser/arr_x.png) no-repeat center;
        }
        .arr_y {
            background: url(<%=context.getFormattedValue(context.webRoot(),null)%>/css/ServerBrowser/arr_y.png) no-repeat center;
        }
    </style>
    </head>
    <body>
        <div onclick="dismiss()" onkeyup="dismiss()" class="viewport">
            <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("MimeType"),null).equals(context.getFormattedValue("text/html",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",179,e);}if (_boolean_result) { %>
                <iframe id="subject" width="1020" height="660" border="0" onclick="dismiss()" onkeyup="dismiss()"
                    class="subject" src="<% {String value = null;try{value=context.getFormattedValue(getObject("URI"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {181}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" onload="resizeWindowTo(this)"></iframe>
            <% } else { %>
                <img id="subject" src="<% {String value = null;try{value=context.getFormattedValue(getObject("URI"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {183}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" onload="resizeWindowTo(this)"
                    onmousemove="moveCrosshair(event)" onmouseout="hideCrosshair()">
            <% } %>
        </div>
        <div id="crosshair-width" class="crosshair arr_width"></div>
        <div id="crosshair-height" class="crosshair arr_height"></div>
        <div id="crosshair-top" class="crosshair arr_y"></div>
        <div id="crosshair-left" class="crosshair arr_x"></div>
    </body>
</html>
<% printFooter(out); %>