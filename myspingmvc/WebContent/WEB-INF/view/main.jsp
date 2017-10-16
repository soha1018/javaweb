		<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
		<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
		<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
		 
		 <c:set var="ctx" value="${pageContext.request.contextPath}"></c:set>
		 
		<%@ page language="java" contentType="text/html; charset=UTF-8"
		    pageEncoding="UTF-8"%>
		
		<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
		<html>
		<head>
<!-- 		主页面 -->
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<link rel="stylesheet"type="text/css" href="<c:url value="/resources/bootstrap-3.3.7-dist/css/bootstrap.min.css"/>">
		<title>Insert title here</title>
		</head>
		  <style>
		  	*{
		  		margin: 0;
		  		padding: 0;
		  	}
		  	.line{
		  		width: 100%;
		  		background-color: #000;
		  		height: 1px;
		  	}
		  	.roasting{
		  		width: 900px;
		  		height: 300px;
		  		margin: 0 auto;
		  		position: relative;
		  		margin-top: 40px;
		  	}
		  	.roasting > img {
		  		width: 100%;
		  		height: 100%;
		  	}
			.roasting  > .outer  > div{
				border-radius: 50%;
				width: 20px;
				height: 20px;
				background-color: #fff;
				float: left;
				margin-left: 20px;
			}
			.roasting > .outer{
				position: absolute;
				left: 50%;
				top: 80%;
				margin-left: -80px;
				z-index: 3;
			}
			.content{
				width: 80%;
				height: 500px;
				 margin: 0 auto;
			}
			.content-body{
				width: 100%;
				height: 92%;
				position: relative;
			}
			.content-body > div{
				visibility: hidden;
				position: absolute;
			}
			.collect{
				width: 100%;

				height: 500px;
			}
			.collect-head{
				width: 100%;
				height: 30px;

				background-color: #DCDCDC;
				border-radius: 6px;
			}

			.collect-head > h4{
				    height: 30px;
				    line-height: 30px;
			}
			.collect > hr{
				margin-bottom: 20px;
			}
			
			.collect > .nav > li{
					float: left;
			}
			.collect > .nav > li:nth-child(2){
				margin-left: 634px;
			}
			.collect > .nav > li:nth-child(3){
				margin-left: 247px;
			}
			.collect > .nav > li:nth-child(4){
				margin-left: 120px;
			}
			.collect > #t1{
				    margin-left: 31px;
			}
			.tab-content {
				width: 100%;
				height: 500px;
			}
			
			.contact-person > ul > li{
				float: left;
				margin-left: 200px;
			}
			
			.contact-person > #t1{
				margin-left: 200px;
			}
			.contact-person > .addperson-btn{
				float: right;
				
			}
			.contact-person > .myaddperson{
				margin-top: 194px;
			}
			.myorder-content > .content-myorder {
				width: 100%;
				height: 100%;
			}
			
			.myorder-content > nav{
					 position: absolute;
     				bottom: 0px; 
 			}
		  </style>
		
		<body>
			<div class="roasting">
			<img src="<c:url value="/resources/images/dog.jpg"/>" />
				<div class="outer">
					<div class="roa-i" vl = "0"></div>
					<div class="roa-i" vl = "1"></div>
					<div class="roa-i" vl = "2"></div>
				</div>
			</div>
			
			<div class = "content">
			<div class="tabbable">
  <ul class="nav nav-tabs content-head">
    <li class="active"><a href="#1" data-toggle="tab">我的订单</a></li>
    <li><a href="#2" data-toggle="tab">常用联系人</a></li>
     <li><a href="#3" data-toggle="tab">我的收藏</a></li>
      <li><a href="#4" data-toggle="tab">个人设置</a></li>
  </ul>
  				<div class = "content-body">
  <div class="tab-content"  >
    <div class="tab-pane active my-order" id="1">
     <jsp:include page="myorder.jsp" />
    </div>
    <div class="tab-pane contact-person" id="2">
      <jsp:include page="person.jsp"></jsp:include>
    </div>
    
     <div class="tab-pane collect" id="3">
      <jsp:include page="collect.jsp"/>
    </div>
    
     <div class="tab-pane set" id="4">
      <p>4</p>
    </div>
  </div>
</div>
		
				</div>
			</div>
			<script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.js"></script>
			<script type="text/javascript" src="<c:url value="/resources/bootstrap-3.3.7-dist/js/bootstrap.min.js"/>"></script>
			<script src="https://cdn.bootcss.com/zepto/1.2.0/zepto.js"></script>
			  <script type="text/javascript">
			  		var images = ["<c:url value="/resources/images/dog.jpg"/>", "<c:url value="/resources/images/a.jpg"/>", 
			  		              				"<c:url value="/resources/images/background.jpg"/>"];
			  		var divs = null;
			  		var typeDiv = null;
		  			Zepto(function($){
		  				initView();
		  				let roadting = $(".roasting > img");
		 				startRoadting(roadting, images, 3000);
		 				divs.on("click", function(e){
		 					let i = $(e.target).attr("vl");					
		 					roadting[0].src =  images[i];
		 					changeColor(i);
		 				});
		 				let head = $(".content > .content-head");
		 				head.on("click", function(e){
		 					let type = $(e.target).text();
		 					changeType(type);
		 				});
		  			});
		  			
		  			function initView(){
		  				divs = $(".roasting  > .outer  > div");
		  				typeDiv = $(".content-body > div");	  				
		  				divs[0].style.backgroundColor = "blue";
		  				$(typeDiv[0])[0].style.visibility = "visible";
		  			}
		  			
		  			function changeType(type){
		  				hideAll();
		  				switch (type) {
						case "我的订单":							
							$(typeDiv[0])[0].style.visibility = "visible";
							break;
						case "常用联系人":
							$(typeDiv[1])[0].style.visibility = "visible";
							break;
						case  "我的收藏":
							$(typeDiv[2])[0].style.visibility = "visible";
							break;
						case "个人设置":
							$(typeDiv[3])[0].style.visibility = "visible";
							break;
						}
		  			}
		  			
		  			function hideAll(){
		  				let len = typeDiv.length;
		  				for(var i = 0; i < len; i++){
		  					$(typeDiv[i])[0].style.visibility = "hidden";
		  				}
		  			}
		  			
		  			function startRoadting(elem, images, time){
		  				let count = 0;
		  				let t = setInterval(function(){
		  					changeColor(count);
		  					elem[0].src =  images[count];
		  					count++;
		  					if (count > 2) {
								count = 0;
							} 
		  				}, time);
		  			}
		  			
		  			function changeColor(i){
		  				addColor();				
		  				divs[i].style.backgroundColor = "blue";
		  			}
		  			
		  			function addColor(){
		  				let len = divs.length;
		  				for (var i = 0; i < len; i++) {
		  					divs[i].style.backgroundColor = "#fff";
						}
		  			}
		  			
		  			
		  			/**
		  			ajax测试
		  			**/
		  			
		  			$(".send-ajax").on("click", function(){
		  				$.ajax({
		  					url: "main",
		  					method: "POST",
		  					data:{"username":1}
		  				}).done(function(data){
		  					console.log(data + "...");
		  				});
		  			});
		 	 	</script>
		</body>
		</html>