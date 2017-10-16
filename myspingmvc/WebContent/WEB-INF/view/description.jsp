			<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
			<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
			<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
			 
			 <c:set var="ctx" value="${pageContext.request.contextPath}"></c:set>
			 
			
	<%@ page language="java" contentType="text/html; charset=UTF-8"
	    pageEncoding="UTF-8"%>
	<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
	<html>
	<head>
	<!-- 商品描述 -->
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>商品描述</title>
	<link rel="stylesheet"type="text/css" href="<c:url value="/resources/bootstrap-3.3.7-dist/css/bootstrap.min.css"/>">
	<style type="text/css">
		*{
			margin: 0;
			padding: 0;
		}
		
		.outer{
			width: 80%;
			height: 433px;
			margin: 0 auto;
			border: 1px solid red;
			margin-top: 100px;
		}
		
		.outer > .inner-left{
			width: 40%;
			height: 100%;
			border: 1px solid blue;
			float: left;
		}
		
		.outer > .inner-left > img{
			width: 100%;
			height: 100%;
		}
		
		.outer > .inner-mid{
			width: 35%;
			height: 100%;
			border: 1px solid yellow;
			float: left;
		}
		.outer > .inner-mid > .title > .m-star{
			float: right;
			width: 50px;
			height: 50px;
			font-size: 25px;
		}
		.outer > .inner-mid > .title {
			margin-top: 15px;
		}
		.outer > .inner-mid > .title > strong{
			font-size: 30px;
		}
		.outer > .inner-mid > .title > .desc {
			padding-left: 20px;
		}
		
		.outer > .inner-mid > .num{
			    margin-top: 220px;
			    margin-left: 100px;
		}
		
		.outer > .inner-mid > .btn{
			margin-left: 58px;
		}
		
		.outer  > .inner-right{
			width: 25%;
			height: 100%;
			border: 1px solid green;
			float: right;
		} 
		.outer  > .inner-right > ul > li > img{
			width: 100px;
			height: 100px;
			float: left;
		}
		
		.outer  > .inner-right > ul{
			list-style: none;
		}
		.outer  > .inner-right > ul > li{
			margin-top: 30px;
		}
		.outer  > .inner-right > ul > li > div > strong{
			display: none;
		}
		.outer  > .inner-right > ul > li > strong {
			display: none;
		}
		.commentaries{
			width: 80%;
			height: 350px;
			border: 1px solid red;
			margin: 0 auto;
			margin-top: 20px;
		}
		textarea {
	width: 80%;
}
#code{
	float: right;
	margin-right: 50px;
}


	</style>
	</head>
	
	<body>
		<div class="outer">
			<div class="inner-left">
				<img alt="" src="<c:url value="/resources/images/dog.jpg"/>">
			</div>
			<div class="inner-mid">
			<div class="title">
				<s>市场价￥123</s><strong class="now-money" >￥50</strong>    <span class="glyphicon glyphicon-star m-star" aria-hidden="true"></span>
				<div id="code"></div>
				
				</div>
				<hr>
				<p><strong>商品简介</strong></p>
				<p class="desc" id = "mDesc"  style="WORD-BREAK: break-all; WORD-WRAP: break-word">asdasdajdhajhdjahdjkadabhddsfsdhfsdfskd</p>
				<div class="num">
				<strong>购买数量:</strong>    <span class="glyphicon glyphicon-plus" aria-hidden="true"></span>  <strong class="number">1</strong> 
				<span class="glyphicon glyphicon-minus" aria-hidden="true"></span>
				</div>
				<div class="btn"><button class="btn btn-success">加入购物车</button>  <button class="btn btn-danger">购买商品</button></div>
			</div>
			
			<div class="inner-right">
			<p><strong>热销商品</strong></p>
				<ul>
					<li>
					<strong>标题1</strong>
						<img alt="" src="<c:url value="/resources/images/dog.jpg"/>">
						<div>
							<strong>标题1</strong>
							<p  style="WORD-BREAK: break-all; WORD-WRAP: break-word">ashdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasd</p>
							<h5>￥50</h5>
							<s>￥100</s>
						</div>
					</li>
					<li>
					<strong>标题2</strong>
						<img alt="" src="<c:url value="/resources/images/dog.jpg"/>">
						<div>
						<strong>标题2</strong>
							<p  style="WORD-BREAK: break-all; WORD-WRAP: break-word">ashdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasd</p>
							<h5>￥50</h5>
							<s>￥100</s>
						</div>
					</li>
					<li>
					<strong>标题3</strong>
						<img alt="" src="<c:url value="/resources/images/dog.jpg"/>">
						<div>
							<strong>标题3</strong>
							<p  style="WORD-BREAK: break-all; WORD-WRAP: break-word">ashdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasd</p>
							<h5>￥50</h5>
							<s>￥100</s>
						</div>
					</li>
				</ul>
			</div>
		</div>
		
		
		<div class="commentaries">
			<div class="tabbable">
	  <ul class="nav nav-tabs">
	    <li class="active"><a href="#1" data-toggle="tab">商品描述</a></li>
	    <li><a href="#2" data-toggle="tab">商品评论(0)</a></li>
	  </ul>
	  <div class="tab-content">
	    <div class="tab-pane active" id="1">
	      <p class="botton-desc">不知道这里是什么．．．</p>
	    </div>
	    <div class="tab-pane" id="2">
	    <p></p>
	     <p></p>
	      <p></p>
	      <h5><strong>商品评论</strong></h5>
	      <hr>
	      <textarea rows="5" cols="10" id="context"></textarea>
	      
	      <div class="radio">
  				<label>
   			 <input type="radio" name="optionsRadios" id="optionsRadios1" value="option1" >
   			 1星
  			</label>
  			<label>
   			 <input type="radio" name="optionsRadios" id="optionsRadios1" value="option1" >
   			 2星
  			</label>
  				<label>
   			 <input type="radio" name="optionsRadios" id="optionsRadios1" value="option1" >
   			 3星
  			</label>
  			<label>
   			 <input type="radio" name="optionsRadios" id="optionsRadios1" value="option1" >
   			 4星
  			</label>
  				<label>
   			 <input type="radio" name="optionsRadios" id="optionsRadios1" value="option1" >
   			 5星
  			</label>
  			<label>
   			 <input type="radio" name="optionsRadios" id="optionsRadios1" value="option1" >
   			 6星
  			</label>
</div>
<button class="btn btn-warning" id="ok"><i class="glyphicon glyphicon-ok"></i>确定</button>
	    </div>
	  </div>
	</div>
		</div>
			<script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.js"></script>
			<script src="https://cdn.bootcss.com/jquery.qrcode/1.0/jquery.qrcode.min.js"></script>
			<script type="text/javascript" src="<c:url value="/resources/bootstrap-3.3.7-dist/js/bootstrap.min.js"/>"></script>
			<script src="https://cdn.bootcss.com/zepto/1.2.0/zepto.js"></script>
			<script type="text/javascript">
				$(function(){
					/**
						二维码
					**/
					var desc = $("#mDesc").text();
					$(".botton-desc").text(desc);
					$("#code").qrcode({
						    width: 50, //宽度 
						    height:50, //高度 
						    text: desc, //任意内容 
					});
					/**
						热门事件
					**/
					$(".inner-right > ul > li").click(function(event){
						var title = $(event.target).parent().find("strong")[0].innerText;
						alert(title);
					});
					
					
					/**
						提交评价
					**/
					$("#ok").click(function(){
						var isOk = false;
						var context = $("#context").val();
						var star = $("input[value = 'option1']");
						for(var i = 0; i < star.length; i++){
							if (star[i].checked) {
								isOk = true;
								console.log("aa");
							}
						}
						if (context.length === 0 || !isOk) {
							alert("不可以评论");
						}else{					
							alert("可以评价");
						}
					});
				});
			
				/**
				轮播
				**/
				/* ==========================================================
				 * bootstrap-carousel.js v2.0.2
				 * http://twitter.github.com/bootstrap/javascript.html#carousel
				 * ==========================================================
				 * Copyright 2012 Twitter, Inc.
				 *
				 * Licensed under the Apache License, Version 2.0 (the "License");
				 * you may not use this file except in compliance with the License.
				 * You may obtain a copy of the License at
				 *
				 * http://www.apache.org/licenses/LICENSE-2.0
				 *
				 * Unless required by applicable law or agreed to in writing, software
				 * distributed under the License is distributed on an "AS IS" BASIS,
				 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
				 * See the License for the specific language governing permissions and
				 * limitations under the License.
				 * ========================================================== */


				!function( $ ){

				  "use strict"

				 /* CAROUSEL CLASS DEFINITION
				  * ========================= */

				  var Carousel = function (element, options) {
				    this.$element = $(element)
				    this.options = $.extend({}, $.fn.carousel.defaults, options)
				    this.options.slide && this.slide(this.options.slide)
				    this.options.pause == 'hover' && this.$element
				      .on('mouseenter', $.proxy(this.pause, this))
				      .on('mouseleave', $.proxy(this.cycle, this))
				  }

				  Carousel.prototype = {

				    cycle: function () {
				      this.interval = setInterval($.proxy(this.next, this), this.options.interval)
				      return this
				    }

				  , to: function (pos) {
				      var $active = this.$element.find('.active')
				        , children = $active.parent().children()
				        , activePos = children.index($active)
				        , that = this

				      if (pos > (children.length - 1) || pos < 0) return

				      if (this.sliding) {
				        return this.$element.one('slid', function () {
				          that.to(pos)
				        })
				      }

				      if (activePos == pos) {
				        return this.pause().cycle()
				      }

				      return this.slide(pos > activePos ? 'next' : 'prev', $(children[pos]))
				    }

				  , pause: function () {
				      clearInterval(this.interval)
				      this.interval = null
				      return this
				    }

				  , next: function () {
				      if (this.sliding) return
				      return this.slide('next')
				    }

				  , prev: function () {
				      if (this.sliding) return
				      return this.slide('prev')
				    }

				  , slide: function (type, next) {
				      var $active = this.$element.find('.active')
				        , $next = next || $active[type]()
				        , isCycling = this.interval
				        , direction = type == 'next' ? 'left' : 'right'
				        , fallback  = type == 'next' ? 'first' : 'last'
				        , that = this

				      this.sliding = true

				      isCycling && this.pause()

				      $next = $next.length ? $next : this.$element.find('.item')[fallback]()

				      if ($next.hasClass('active')) return

				      if (!$.support.transition && this.$element.hasClass('slide')) {
				        this.$element.trigger('slide')
				        $active.removeClass('active')
				        $next.addClass('active')
				        this.sliding = false
				        this.$element.trigger('slid')
				      } else {
				        $next.addClass(type)
				        $next[0].offsetWidth // force reflow
				        $active.addClass(direction)
				        $next.addClass(direction)
				        this.$element.trigger('slide')
				        this.$element.one($.support.transition.end, function () {
				          $next.removeClass([type, direction].join(' ')).addClass('active')
				          $active.removeClass(['active', direction].join(' '))
				          that.sliding = false
				          setTimeout(function () { that.$element.trigger('slid') }, 0)
				        })
				      }

				      isCycling && this.cycle()

				      return this
				    }

				  }


				 /* CAROUSEL PLUGIN DEFINITION
				  * ========================== */

				  $.fn.carousel = function ( option ) {
				    return this.each(function () {
				      var $this = $(this)
				        , data = $this.data('carousel')
				        , options = typeof option == 'object' && option
				      if (!data) $this.data('carousel', (data = new Carousel(this, options)))
				      if (typeof option == 'number') data.to(option)
				      else if (typeof option == 'string' || (option = options.slide)) data[option]()
				      else data.cycle()
				    })
				  }

				  $.fn.carousel.defaults = {
				    interval: 5000
				  , pause: 'hover'
				  }

				  $.fn.carousel.Constructor = Carousel


				 /* CAROUSEL DATA-API
				  * ================= */

				  $(function () {
				    $('body').on('click.carousel.data-api', '[data-slide]', function ( e ) {
				      var $this = $(this), href
				        , $target = $($this.attr('data-target') || (href = $this.attr('href')) && href.replace(/.*(?=#[^\s]+$)/, '')) //strip for ie7
				        , options = !$target.data('modal') && $.extend({}, $target.data(), $this.data())
				      $target.carousel(options)
				      e.preventDefault()
				    })
				  })

				}( window.jQuery );
			</script>
	</body>
	</html>