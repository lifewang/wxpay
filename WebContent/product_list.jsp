<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>会员登录</title>
<link rel="stylesheet" href="css/bootstrap.min.css" type="text/css" />
<script src="js/jquery-3.2.1.min.js" type="text/javascript"></script>
<script src="js/bootstrap.min.js" type="text/javascript"></script>
<!-- 引入自定义css文件 style.css -->
<link rel="stylesheet" href="css/style.css" type="text/css" />

<style>
body {
	margin-top: 20px;
	margin: 0 auto;
	width: 100%;
}

.carousel-inner .item img {
	width: 100%;
	height: 300px;
}
</style>
</head>

<body> 
	<!-- 登录 注册 购物车... -->
<div class="container-fluid">
	<div class="col-md-4">
		<img src="products/logo2.png" />
	</div>
	<div class="col-md-5">
		<img src="products/header.png" />
	</div>
	<div class="col-md-3" style="padding-top:20px">
		<ol class="list-inline">
			<li><a href="login.jsp">登录</a></li>
			<li><a href="register.jsp">注册</a></li>
			<li><a href="cart.jsp">购物车</a></li>
			<li><a href="order_list.jsp">我的订单</a></li>
		</ol>
	</div>
</div>

<!-- 导航条 -->
<div class="container-fluid">
	<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#">首页</a>
			</div>

			<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav">
					<li class="active"><a href="product_list.htm">手机数码<span class="sr-only">(current)</span></a></li>
					<li><a href="#">电脑办公</a></li>
					<li><a href="#">电脑办公</a></li>
					<li><a href="#">电脑办公</a></li>
				</ul>
				<form class="navbar-form navbar-right" role="search">
					<div class="form-group">
						<input type="text" class="form-control" placeholder="Search">
					</div>
					<button type="submit" class="btn btn-default">Submit</button>
				</form>
			</div>
		</div>
	</nav>
</div>

	<div class="row" style="width: 1210px; margin: 0 auto;">
		<div class="col-md-12">
			<ol class="breadcrumb">
				<li><a href="#">首页</a></li>
			</ol>
		</div>

		<div class="col-md-2">
			<a href="${pageContext.request.contextPath}/createCode.jsp?pname=围巾&price=1"> <img src="products/1/cs10001.jpg"
				width="170" height="170" style="display: inline-block;">
			</a>
			<p>
				<a href="${pageContext.request.contextPath}/createCode.jsp?pname=围巾&price=1" style='color: green'>围巾</a>
			</p>
			<p>
				<font color="#FF0000">商城价：&yen;100</font>
			</p>
		</div>

		<div class="col-md-2">
			<a href="${pageContext.request.contextPath}/createCode.jsp?pname=墨镜&price=1"> <img src="products/1/cs10002.jpg"
				width="170" height="170" style="display: inline-block;">
			</a>
			<p>
				<a href="${pageContext.request.contextPath}/createCode.jsp?pname=墨镜&price=1" style='color: green'>墨镜</a>
			</p>
			<p>
				<font color="#FF0000">商城价：&yen;50</font>
			</p>
		</div>

		<div class="col-md-2">
			<a href="${pageContext.request.contextPath}/createCode.jsp?pname=包包&price=1"> 
			  <img src="products/1/cs10003.jpg"
				width="170" height="170" style="display: inline-block;">
			</a>
			<p>
				<a href="${pageContext.request.contextPath}/createCode.jsp?pname=包包&price=1" style='color: green'>包包</a>
			</p>
			<p>
				<font color="#FF0000">商城价：&yen;30</font>
			</p>
		</div>

		<div class="col-md-2">
			<a href="${pageContext.request.contextPath}/createCode.jsp?pname=连衣裙&price=1"> <img src="products/1/cs10004.jpg"
				width="170" height="170" style="display: inline-block;">
			</a>
			<p>
				<a href="${pageContext.request.contextPath}/createCode.jsp?pname=连衣裙&price=1" style='color: green'>连衣裙</a>
			</p>
			<p>
				<font color="#FF0000">商城价：&yen;40</font>
			</p>
		</div>
		<div class="col-md-2">
			<a href="${pageContext.request.contextPath}/createCode.jsp?pname=帽子&price=1"> <img src="products/1/cs10005.jpg"
				width="170" height="170" style="display: inline-block;">
			</a>
			<p>
				<a href="${pageContext.request.contextPath}/createCode.jsp?pname=帽子&price=1" style='color: green'>帽子</a>
			</p>
			<p>
				<font color="#FF0000">商城价：&yen;60</font>
			</p>
		</div>

		<div class="col-md-2">
			<a href="${pageContext.request.contextPath}/createCode.jsp?pname=毛衣&price=1"> <img src="products/1/cs10006.jpg"
				width="170" height="170" style="display: inline-block;">
			</a>
			<p>
				<a href="${pageContext.request.contextPath}/createCode.jsp?pname=毛衣&price=1" style='color: green'>毛衣</a>
			</p>
			<p>
				<font color="#FF0000">商城价：&yen;20</font>
			</p>
		</div>

	<div class="col-md-2">
			<a href="${pageContext.request.contextPath}/createCode.jsp?pname=围巾&price=1"> <img src="products/1/cs10001.jpg"
				width="170" height="170" style="display: inline-block;">
			</a>
			<p>
				<a href="${pageContext.request.contextPath}/createCode.jsp?pname=围巾&price=1" style='color: green'>围巾</a>
			</p>
			<p>
				<font color="#FF0000">商城价：&yen;100</font>
			</p>
		</div>

		<div class="col-md-2">
			<a href="${pageContext.request.contextPath}/createCode.jsp?pname=墨镜&price=1"> <img src="products/1/cs10002.jpg"
				width="170" height="170" style="display: inline-block;">
			</a>
			<p>
				<a href="${pageContext.request.contextPath}/createCode.jsp?pname=墨镜&price=1" style='color: green'>墨镜</a>
			</p>
			<p>
				<font color="#FF0000">商城价：&yen;50</font>
			</p>
		</div>

		<div class="col-md-2">
			<a href="${pageContext.request.contextPath}/createCode.jsp?pname=包包&price=1"> 
			  <img src="products/1/cs10003.jpg"
				width="170" height="170" style="display: inline-block;">
			</a>
			<p>
				<a href="${pageContext.request.contextPath}/createCode.jsp?pname=包包&price=1" style='color: green'>包包</a>
			</p>
			<p>
				<font color="#FF0000">商城价：&yen;30</font>
			</p>
		</div>

		<div class="col-md-2">
			<a href="${pageContext.request.contextPath}/createCode.jsp?pname=连衣裙&price=1"> <img src="products/1/cs10004.jpg"
				width="170" height="170" style="display: inline-block;">
			</a>
			<p>
				<a href="${pageContext.request.contextPath}/createCode.jsp?pname=连衣裙&price=1" style='color: green'>连衣裙</a>
			</p>
			<p>
				<font color="#FF0000">商城价：&yen;40</font>
			</p>
		</div>
		<div class="col-md-2">
			<a href="${pageContext.request.contextPath}/createCode.jsp?pname=帽子&price=1"> <img src="products/1/cs10005.jpg"
				width="170" height="170" style="display: inline-block;">
			</a>
			<p>
				<a href="${pageContext.request.contextPath}/createCode.jsp?pname=帽子&price=1" style='color: green'>帽子</a>
			</p>
			<p>
				<font color="#FF0000">商城价：&yen;60</font>
			</p>
		</div>

		<div class="col-md-2">
			<a href="${pageContext.request.contextPath}/createCode.jsp?pname=毛衣&price=1"> <img src="products/1/cs10006.jpg"
				width="170" height="170" style="display: inline-block;">
			</a>
			<p>
				<a href="${pageContext.request.contextPath}/createCode.jsp?pname=毛衣&price=1" style='color: green'>毛衣</a>
			</p>
			<p>
				<font color="#FF0000">商城价：&yen;20</font>
			</p>
		</div>

		

	</div>

	<!--分页 -->
	<div style="width: 380px; margin: 0 auto; margin-top: 50px;">
		<ul class="pagination" style="text-align: center; margin-top: 10px;">
			<li class="disabled"><a href="#" aria-label="Previous"><span
					aria-hidden="true">&laquo;</span></a></li>
			<li class="active"><a href="#">1</a></li>
			<li><a href="#">2</a></li>
			<li><a href="#">3</a></li>
			<li><a href="#">4</a></li>
			<li><a href="#">5</a></li>
			<li><a href="#">6</a></li>
			<li><a href="#">7</a></li>
			<li><a href="#">8</a></li>
			<li><a href="#">9</a></li>
			<li><a href="#" aria-label="Next"> <span aria-hidden="true">&raquo;</span>
			</a></li>
		</ul>
	</div>
	<!-- 分页结束 -->

	<!--商品浏览记录-->
	<div
		style="width: 1210px; margin: 0 auto; padding: 0 9px; border: 1px solid #ddd; border-top: 2px solid #999; height: 246px;">

		<h4 style="width: 50%; float: left; font: 14px/30px 微软雅黑">浏览记录</h4>
		<div style="width: 50%; float: right; text-align: right;">
			<a href="">more</a>
		</div>
		<div style="clear: both;"></div>

		<div style="overflow: hidden;">

			<ul style="list-style: none;">
				<li
					style="width: 150px; height: 216; float: left; margin: 0 8px 0 0; padding: 0 18px 15px; text-align: center;"><img
					src="products/1/cs10001.jpg" width="130px" height="130px" /></li>
			</ul>

		</div>
	</div>


	<div class="container-fluid">
	<div style="margin-top:50px;">
		<img src="products/footer.jpg" width="100%" height="78" alt="我们的优势" title="我们的优势" />
	</div>

	<div style="text-align: center;margin-top: 5px;">
		<ul class="list-inline">
			<li><a href="info.jsp">关于我们</a></li>
			<li><a>联系我们</a></li>
			<li><a>招贤纳士</a></li>
			<li><a>法律声明</a></li>
			<li><a>友情链接</a></li>
			<li><a>支付方式</a></li>
			<li><a>配送方式</a></li>
			<li><a>服务声明</a></li>
			<li><a>广告声明</a></li>
		</ul>
	</div>
	<div style="text-align: center;margin-top: 5px;margin-bottom:20px;">
		Copyright &copy; 2005-2016 传智商城 版权所有
	</div>
</div>
</body>

</html>