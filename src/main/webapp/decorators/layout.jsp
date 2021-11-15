<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator" prefix="dec" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge" />
    	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
		<title>
			<dec:title />
		</title>
		 <link rel="shortcut icon" href='<c:url value="/assets/images/favicon.ico"/>' />
		<jsp:include page="/WEB-INF/views/layout/header.jsp" />
	</head>
	<body class="layout-fixed">
		<div class="preloader"></div>
		<div class="mdk-header-layout js-mdk-header-layout">
			<jsp:include page="/WEB-INF/views/layout/topbar.jsp" />
			<div class="mdk-header-layout__content page">
				<jsp:include page="/WEB-INF/views/layout/navbar.jsp" />
			</div>
			<dec:body />
		</div>
		
		<jsp:include page="/WEB-INF/views/layout/footer.jsp" />
	</body>
</html>