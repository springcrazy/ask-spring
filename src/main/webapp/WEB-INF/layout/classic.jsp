<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ page session="false" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta content="IE=edge" http-equiv="X-UA-Compatible">
	<meta content="initial-scale=1.0, width=device-width" name="viewport">
	<title><tiles:getAsString name="title"/></title>
	<script src="https://code.jquery.com/jquery-1.11.3.min.js"/></script>
	<script type="text/javascript" src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"> </script>
        <link rel="stylesheet" href="http://code.jquery.com/ui/1.10.2/themes/smoothness/jquery-ui.css" />
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/autoComplete.js"></script>
	<script>
		if (window.jQuery) {  
		    alert('jQuery is loaded');
		} else {
		    alert('jQuery is not loaded');
		}									
	</script>
	<!-- css -->
	<link href="<c:url value='/resources/css/base.css'/>" rel="stylesheet">

	<!-- favicon -->
	<!-- ... -->

	<!-- ie -->
		<!--[if lt IE 9]>
			<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
			<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
		<![endif]-->
	
</head>
<body class="avoid-fout">
		
	<tiles:insertAttribute name="progress"/>
	<header class="header">		
		<a class="header-logo" href='<spring:url value="/"/>'>Ask Network</a>
		<ul class="nav nav-list pull-right">
			
				<li>
					<a href='<spring:url value="/add-question"/>'>
						<span>Ask New</span>					
					</a>					
				</li>
				
			<li>
				<a class="menu-toggle" href="#search">
					<span class="access-hide">Search</span>
					<span class="icon icon-search icon-lg"></span>
					<span class="header-close icon icon-close icon-lg"></span>
				</a>
			</li>
				
		</ul>
	</header>
		
	<div class="menu menu-right menu-search" id="search">
		<div class="menu-scroll">
			<div class="menu-wrap">
				<div class="menu-top">
					<div class="menu-top-info">
						<form class="form-group-alt menu-top-form">
							<label class="access-hide" for="menu-search">Search</label>
							<input class="form-control form-control-inverse menu-search-focus" id="menu-search" placeholder="Search" type="search">
							<button class="access-hide" type="submit">Search</button>
						</form>
					</div>
				</div>
				<div class="menu-content">
					<div class="menu-content-inner">
						<p><strong>Saved Search Queries:</strong></p>
						<ul>
							<li><a href="javascript:void(0)">lorem ipsum dolor sit amet</a></li>
							<li><a href="javascript:void(0)">consectetur adipiscing elit</a></li>
							<li><a href="javascript:void(0)">sed ornare orci lorem</a></li>
							<li><a href="javascript:void(0)">vel eleifend elit tempor eleifend</a></li>
							<li><a href="javascript:void(0)">morbi feugiat aliquet justo</a></li>
						</ul>
						<hr>
						<p><strong>Popular Search Queries:</strong></p>
						<ul>
							<li><a href="javascript:void(0)">id ullamcorper tortor lobortis eu</a></li>
							<li><a href="javascript:void(0)">aliquam ut tellus arcu</a></li>
							<li><a href="javascript:void(0)">cestibulum tortor purus</a></li>
							<li><a href="javascript:void(0)">pretium ac dolor id</a></li>
							<li><a href="javascript:void(0)">gravida molestie libero</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>

	<tiles:insertAttribute name="body"/>
	<br><br>
	<tiles:insertAttribute name="footer"/>
		<tiles:insertAttribute name="floating-menu"/>
	
	<script src="<c:url value='/resources/js/base.min.js'/>" type="text/javascript"></script>
	<script src="<c:url value='/resources/js/webfont.js'/>" type="text/javascript"></script>
	<script src="<c:url value='/resources/js/jquery.autocomplete.min.js' />" type="text/javascript"></script>
</body>
</html>