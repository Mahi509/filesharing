
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>

<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.5.2/jquery.min.js"></script>
<!-- <script src="http://cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.2/modernizr.js"></script> -->


<script type="text/javascript">
$(window).load(function() {
	$(".loader").fadeOut("slow");
})
</script>

<style>



.loader {
	position: fixed;
	left: 0px;
	top: 0px;
	width: 100%;
	height: 100%;
	z-index: 9999;
	background: url('${pageContext.request.contextPath}/resources/images/page-loader.gif') 50% 50% no-repeat rgb(249,249,249);
}



</style>
</head>
<body>

<div class="loader"></div>


</body>
</html>

