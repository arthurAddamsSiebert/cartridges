<%-- tell the webadapter not to cache this page --%>
<% response.setStatus(HttpServletResponse.SC_METHOD_NOT_ALLOWED); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
	<head>
		<title>URL Error.</title>
		<link rel="STYLESHEET" type="text/css" href="/waroot/style.css"/>
	</head>
	<body>
	  <div class="sysLabel"></div>
	  <div class="sysImage"></div>
	  <div class="sysMessage">The specified HTTP method is not allowed for the requested resource.</div>
	</body>
</html>

