<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
 
 <c:set var="ctx" value="${pageContext.request.contextPath}"></c:set>
 
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- 登陆界面 -->
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"type="text/css" href="<c:url value="/resources/bootstrap-3.3.7-dist/css/bootstrap.min.css"/>">
<title>Insert title here</title>
</head>
	<style type="text/css">
	*{
		margin: 0;
		padding: 0;
	}
	.outer{
		width: 80%;
		height: 500px;
/* 		border: 1px solid red;  */
		margin: 0 auto;
		margin-top: 170px;
	}
	.outer > img{
		width: 25%;
		height: 50%;
		border-radius: 50%;
		margin: 108px;
		float: left;
	}
	.info{
		width: 30%;
		float: right;
		margin-top: 50px;
		margin-right: 250px;
	}
	.info > input, div{
		margin-top: 25px;
	}
	.info > div > button{
		  height: 36px;	   
	}
	.info > div > button:nth-child(1) {
		width: 100px;
		background-color: #00E5EE;
		border: 0px;
}

	.info > div > button:nth-child(2) {
		width: 50px;
		background-color: #EE7942;
		border: 0px;
		float: right;
}
.info > p{
	font-size: 15px;
}
		.info > .login{
			background-color: #F8F8FF;
			color: #EE7942;
			border: 0px;
			font-size: 20px;
		}
	</style>
<body>
<form action="main.do" method="get" class="from-login">
	<div class="outer">
		<img src="<c:url value="/resources/images/dog.jpg"/>" />
		<div class="info">
				<p><strong>用户注册</strong></p>
				<input type="text" class="form-control" name="phone" placeholder="手机号码">
				<input type="text" class="form-control" name="phoneagin" placeholder="请输入手机验证码">
				<input type="password" class="form-control" name="pwd"  id = "pwd"placeholder="密码">
				<input type="password" class="form-control" name="pwdagin" placeholder="确定密码">
				<div><button>发送手机验证码</button> <button type="reg" >注册</button></div>
				<input type="submit" value="立即登陆" class="login"/>
		</div>
	</div>
</form>
	<script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.js"></script>
	<script type="text/javascript" src="<c:url value="/resources/bootstrap-3.3.7-dist/js/bootstrap.min.js"/>"></script>
	<script type="text/javascript">
		$(function(){
			$(".from-login").submit(function(){
				let phone = $("input[name = phone]").val();
				let phone1 = $("input[name = phoneagin]").val();
				let pwd = $("input[name = pwd]").val();
				let pwd1 = $("input[name = pwdagin]").val();
				let len = pwd.length;
				var myreg = /^(((13[0-9]{1})|(15[0-9]{1})|(18[0-9]{1}))+\d{8})$/; 
				if ((myreg.test(phone)) && (len < 12) && (len > 6) && (phone === phone1) && (pwd === pw1) ) {
					return true;
				} 
				alert("输入有误");
				return false;
			})
		});
	</script>
</body>
</html>