<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/signup.css" />
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/js/jquery.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/js/jquery.validate.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/js/signup.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/js/jquery.tooltipster.min.js"></script>
	<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/js/jquery.tooltipster.js"></script>
</head>
<body>
	<div class="frg1">
		<form id="frg3">
		<div class="frg2" style="color:;">
			<h3>Reset your password here</h3>
		</div>
		<b><label for="emailAddress">Email Address<sup
				style="color: red;">*</sup></label></b> <input type="text" name="emailAddress"
			id="emailAddress" placeholder="registered email" title="Email address goes here" > <label
			for="emailAddress" generated="true" class="error" style="color: red"></label>
			<div class="button1" align="center">
	<label> <input type="submit" value="Verify" name="verify"
							id="verify" class="button" /></label></div>
			</form>
	</div>
</body>
</html>