			<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
			<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
			<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
			 
			 <c:set var="ctx" value="${pageContext.request.contextPath}"></c:set>
			 
			
	<%@ page language="java" contentType="text/html; charset=UTF-8"
	    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head> 
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>商品描述</title>
<link rel="stylesheet"type="text/css" href="<c:url value="/resources/bootstrap-3.3.7-dist/css/bootstrap.min.css"/>">
	<style type="text/css">
		*{
			margin: 0;
			padding: 0;
		}
		
		.shop-outer{
			width: 80%;
			height: 500px;
			margin: 0 auto;
			border: 1px solid red;
			margin-top: 100px;
		}
		
		.shop-outer > .shop-header{
			background-color: #DCDCDC;
			height: 45px;
			width: 100%; 
			line-height: 45px;
		}
		.shop-outer > .shop-header > strong:nth-child(1){
			font-size: 20px;
		}
		.shop-outer > .shop-header > strong:nth-child(2){
			margin-left: 70%;
		}
		
		.shop-content{
			border: 1px solid #fff;
		}
		.shop-content > .left{
			width: 70%;
			height: 100%;
			float: left;
			border: 1px solid green; 
		}	
		.shop-content > .right {
			width: 30%;
			float: right;
			height: 100%;
			border: 1px solid yellow;
		}
		
		.shop-content > .left > nav > strong:nth-child(2){
			margin-left: 50%;
		}
		
		.shop-content > .left > nav > strong:nth-child(3){
			margin-left: 20%;
		}
		.shop-content > .left > ul {
			list-style: none;
		}
		
		.shop-content > .left > ul > li > img{
			height: 80px;
			width: 80px;
		}
		
		.shop-content > .left > ul > li > strong > input{
			width: 50px;
			text-align: center;
		}
		.shop-content > .left > ul > li > strong:nth-child(3){
			margin-left: 237px;
		}
		
		.shop-content > .left > ul > li > strong:nth-child(4){
			margin-left: 148px;
		}
		.shop-content > .left > ul > li > strong:nth-child(5){
			margin-left: 80px;
			font-size: 20px;
		}
		.shop-content > .left  > .btn-set > button:nth-child(1){
		margin-left: 726px;
		}
		
		.shop-car-botton{
			width: 80%;
			height: 230px;
			margin: 0 auto;
			border: 1px solid blue;
		}
		.shop-car-botton > div > strong{
			margin-left: 100px;
		}
	</style>
<body>
	<div class="shop-outer">
		<div class="shop-header">
			<strong>我的购物车</strong>	
			<strong>首页  *   </strong>
			<strong>购物车</strong>
		</div>
		<div class="shop-content">
		<div class="left">
				<nav>
					<strong>产品名称</strong>
					<strong>数量</strong>
					<strong>合计价格</strong>
				</nav>
				<hr>
				
				<ul>
					<li>
					<img alt="" src="<c:url value="/resources/images/dog.jpg"/>">
					<strong>adasdasdasdasdasdasdasdasdadsada</strong>
					<strong><input type="text" disabled="disabled" value = "1"/ >
					<strong>  * ￥38.00</strong></strong>
					
					<strong class="allMoney"> ￥100</strong>
					<strong class="glyphicon glyphicon-remove"></strong>
					</li>
				</ul>
				
				<div class="btn-set">
					<button class="btn btn-danger"><i class="glyphicon glyphicon-bell"></i>清空回收站</button>
					<button class="btn btn-success"><i class="glyphicon glyphicon-bell"></i>更新购物车</button>
				</div>
		</div>
		<div class="right"></div>
			<p><strong>商品总价:                                      </strong> <i>￥100</i></p>
			<p><strong>物流费用:                                      </strong> <i>包邮</i></p>
			<hr>
			<p><strong>合计金额:                                      </strong> <i>￥100</i></p>
			<button class="btn btn-success"><i class="glyphicon glyphicon-bell"></i>立即支付</button>
		</div>
	</div>
	
	
	<div class="shop-car-botton">
	<h4>选择常用联系人</h4>
	<hr>
		<div>
			  <div class="radio">
  				<label>
   			 <input type="radio" name="optionsRadios" id="optionsRadios1" value="option1" >
   			 1星
  			</label>
  			<p></p>
  			<label>
   			 <input type="radio" name="optionsRadios" id="optionsRadios1" value="option1" >
   			 2星
  			</label>
</div>
	<h4>选择支付方式</h4>
	<hr>
	<strong>微信</strong><strong>支付宝</strong>
		</div>
	</div>
</body>
</html>