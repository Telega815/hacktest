<%--
  Created by IntelliJ IDEA.
  User: gur01
  Date: 28.07.2018
  Time: 20:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--<html manifest="${pageContext.request.contextPath}/resources/game/offline.appcache">--%>
<html>
<head>
    <%--<meta charset="UTF-8" />--%>

    <%--<!-- This ensures the canvas works on IE9+.  Don't remove it! -->--%>
    <%--<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />--%>

    <%--<!-- Standardised web app manifest -->--%>
    <%--<link rel="manifest" href="${pageContext.request.contextPath}/resources/game/appmanifest.json" />--%>

    <%--<title>New project</title>--%>
    <%--<!-- Note: running this exported project from disk may not work exactly like preview, since browsers block some features on the file:// protocol.  Once you've uploaded it to a server, it should work OK. -->--%>

    <%--<!-- This outlines the canvas with a black border and makes the page background black. -->--%>
    <%--<style type="text/css">--%>
        <%--body { background-color: black; color: white; }--%>
        <%--canvas { -ms-touch-action: none; }--%>
    <%--</style>--%>


</head>

<body>

<iframe src="../../resources/game/index.html" name="Game" width="512" height="256" frameborder="0" scrolling="no" >fsdfgsdfgsdg</iframe>
<%--<div id="fb-root"></div>--%>
<%--<div style="text-align: center;">--%>

    <%--<script>--%>
        <%--// Issue a warning if trying to preview an exported project on disk.--%>
        <%--(function(){--%>
            <%--// Check for running exported on file protocol--%>
            <%--if (window.location.protocol.substr(0, 4) === "file")--%>
            <%--{--%>
                <%--alert("Exported games won't work until you upload them. (When running on the file:/// protocol, browsers block many features from working for security reasons.)");--%>
            <%--}--%>
        <%--})();--%>
    <%--</script>--%>

    <%--<!-- The canvas must be inside a div called c2canvasdiv -->--%>
    <%--<div id="c2canvasdiv" style="margin: 0 auto; width: 640px; height: 480px;">--%>

        <%--<!-- The canvas the project will render to.  If you change its ID, don't forget to change the--%>
        <%--ID the runtime looks for in the jQuery ready event (above). -->--%>
        <%--<canvas id="c2canvas" width="640" height="480">--%>
            <%--<!-- This text is displayed if the visitor's browser does not support HTML5.--%>
            <%--You can change it, but it is a good idea to link to a description of a browser--%>
            <%--and provide some links to download some popular HTML5-compatible browsers. -->--%>
            <%--Your browser does not appear to support HTML5.  Try upgrading your browser to the latest version.  <a href="http://www.whatbrowser.org">What is a browser?</a>--%>
            <%--<br/><br/><a href="http://www.microsoft.com/windows/internet-explorer/default.aspx">Microsoft Internet Explorer</a><br/>--%>
            <%--<a href="http://www.mozilla.com/firefox/">Mozilla Firefox</a><br/>--%>
            <%--<a href="http://www.google.com/chrome/">Google Chrome</a><br/>--%>
            <%--<a href="http://www.apple.com/safari/download/">Apple Safari</a><br/>--%>
        <%--</canvas>--%>

    <%--</div>--%>

    <%--<br />--%>


<%--</div>--%>

<%--<!-- Pages load faster with scripts at the bottom -->--%>

<%--<!-- Construct 2 exported games require jQuery. -->--%>
<%--<script src="${pageContext.request.contextPath}/resources/game/jquery-2.1.1.min.js"></script>--%>



<%--<!-- The runtime script.  You can rename it, but don't forget to rename the reference here as well.--%>
<%--This file will have been minified and obfuscated if you enabled "Minify script" during export. -->--%>
<%--<script src="${pageContext.request.contextPath}/resources/game/c2runtime.js"></script>--%>

<%--<script>--%>
    <%--// Start the Construct 2 project running on window load.--%>
    <%--jQuery(document).ready(function ()--%>
    <%--{--%>
        <%--// Create new runtime using the c2canvas--%>
        <%--cr_createRuntime("c2canvas");--%>
    <%--});--%>

    <%--// Pause and resume on page becoming visible/invisible--%>
    <%--function onVisibilityChanged() {--%>
        <%--if (document.hidden || document.mozHidden || document.webkitHidden || document.msHidden)--%>
            <%--cr_setSuspended(true);--%>
        <%--else--%>
            <%--cr_setSuspended(false);--%>
    <%--};--%>

    <%--document.addEventListener("visibilitychange", onVisibilityChanged, false);--%>
    <%--document.addEventListener("mozvisibilitychange", onVisibilityChanged, false);--%>
    <%--document.addEventListener("webkitvisibilitychange", onVisibilityChanged, false);--%>
    <%--document.addEventListener("msvisibilitychange", onVisibilityChanged, false);--%>

    <%--function OnRegisterSWError(e)--%>
    <%--{--%>
        <%--console.warn("Failed to register service worker: ", e);--%>
    <%--};--%>

    <%--// Runtime calls this global method when ready to start caching (i.e. after startup).--%>
    <%--// This registers the service worker which caches resources for offline support.--%>
    <%--window.C2_RegisterSW = function C2_RegisterSW()--%>
    <%--{--%>
        <%--if (!navigator.serviceWorker)--%>
            <%--return;		// no SW support, ignore call--%>

        <%--try {--%>
            <%--navigator.serviceWorker.register("sw.js", { scope: "./" })--%>
                <%--.then(function (reg)--%>
                <%--{--%>
                    <%--console.log("Registered service worker on " + reg.scope);--%>
                <%--})--%>
                <%--.catch(OnRegisterSWError);--%>
        <%--}--%>
        <%--catch (e)--%>
        <%--{--%>
            <%--OnRegisterSWError(e);--%>
        <%--}--%>
    <%--};--%>
<%--</script>--%>
</body>
</html>
