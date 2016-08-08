<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
		<link rel="stylesheet" type="text/css" href="/bilibili/bootstrap/css/bootstrap.min.css"/>
		<script src="/bilibili/js/jquery.min.js" type="text/javascript" charset="utf-8"></script>
		<script src="/bilibili/bootstrap/js/bootstrap.min.js" type="text/javascript" charset="utf-8"></script>
		<meta charset="UTF-8">
		<title></title>
		<style type="text/css">
			*{margin: 0;padding: 0;list-style: none;}
			a{	color: #000000;
				text-decoration: none;
				display: block;
			}
			a:hover{
				text-decoration: none;
			}
			.clearfx:after{
				content: "";
				display: block;
				clear: both;
			}
			.head0{width: 100%;height: 42px;background: ;border-bottom: 1px solid #ccd0d7;margin-top: -10px;}
			.head1{width: 980px;height:42px ;margin: 0 auto;font-family:"微软雅黑";font-size: 13px;position: relative;}
			.head1 ul {line-height: 42px;}
			.head1 ul>li {float: left;margin-right: 30px;}
			.head1 ol {float: right;line-height: 42px;}
			.head1 ol>li {float: left;margin-left: 28px;margin-top: auto;margin-bottom: auto;}
			.head1 ul>li>a:hover{color: #00A1D6;}
			.head1 ol>li>a:hover{color: #00A1D6;}
			.i_face{display: block; width: 36px;height: 36px;background: url(/bilibili/img/88.jpg) ;background-size:100% 100%;border-radius: 50%;margin-top: 4px;position: relative;top: 0px;margin-left: 15px;transition: all 500ms;}
			.i_face0:hover .i_face{width: 65px;height: 65px;margin-left: 0px;top: 10px;}
			.i_face01 a{width: 100%;height: 100%;}
			.i_face01{width: 260px;height: 0px;border: 1px solid #ccd0d7;overflow: hidden;transition: height 200ms;}
			.i_face0:hover .i_face01{height: 280px;}
			.nav_search{width: 120px;float: right;border-radius: 16px;border: 1px solid #ccd0d7;height: 32px;position: relative;margin-top: 4px;transition: all 300ms ease;}
			.nav_search1{width: 78px;height: 30px;border: none;margin-left: 12px;outline: none;background: none;position: absolute;left: 2px;}
			.nav_search2{display: block;width: 30px;height: 32px;background: url(/bilibili/img/iconss.png) -790px -728px;border: none;position: absolute;right: 0;top: 7px;outline: none;cursor: pointer;}
			.nav_search2:hover{background: url(/bilibili/img/iconss.png) -727px -728px;}
			.nav_tg{width: 58px;height: 48px;background: url(/bilibili/img/b-post.png);text-align: center;position: relative;z-index: 10;}
			.nav_tg:hover .nav_tg0{display: block;}
			.nav_tg0{display: none;width: 146px;height: 65px;border: 1px solid #ccd0d7;position: absolute;right: 0;top: 41px;border-bottom-left-radius: 5px;border-bottom-right-radius: 5px;border-top: none;background: white;}
			.nav_tg0 a{font-size: 12px;color: #e9799e;}
			.nav_tg0 div{float: left;width: 72px;height: 65px;}
			.nav_tg0 div:hover{background: #ccd0d7;}
			.lt0{width: 18px;height: 18px;background: url(/bilibili/img/Level-icons.png) -153px -80px;background-color: #f3cb85;border-radius: 50%;float: left;margin-top: 13px;}
			.four{width: 220px;height: 80px;border-top: 2px solid #f4f5f7;position: absolute;bottom: 35px;left: 20px;}
			.face_grzx0 {width: 22px;height: 22px;background: url(/bilibili/img/iconss.png) -470px -404px;float: left;margin-top: 10px;}
			.face_tggl0 {width: 22px;height: 22px;background: url(/bilibili/img/iconss.png) -533px -1045px;float: left;margin-top: 10px;}
			.face_wdqb0 {width: 22px;height: 22px;background: url(/bilibili/img/iconss.png) -470px -470px;float: left;margin-top: 10px;}
			.face_zbzx0 {width: 22px;height: 22px;background: url(/bilibili/img/iconss.png) -470px -854px;float: left;margin-top: 10px;}
		 	.face_grzx:hover div{background:url(/bilibili/img/iconss.png) -534px -404px}
			.face_tggl:hover .face_tggl0{background: url(/bilibili/img/iconss.png) -598px -1045px;}
			.face_wdqb:hover div{background: url(/bilibili/img/iconss.png) -534px -470px;}
			.face_zbzx:hover div{background: url(/bilibili/img/iconss.png) -534px -854px;}
			.face_exit a:hover{color: #00A1D6;}
		</style>
	</head>
	<body>
		<div class="head0">
			<div class="head1">
				<ul>
					<li>
						<a href="#">
							<c style="display: block;width: 17px;height: 17px;background: url(/bilibili/img/iconss.png) -918px -86px; float: left;margin-top: 12px;margin-right: 8px;"></c>主站
						</a>
					</li>
					<li><a href="#"><c></c>画友</a></li>
					<li><a href="#"><c></c>游戏中心</a></li>
					<li><a href="#"><c></c>直播</a></li>
					<li><a href="#"><c></c>周边</a></li>
					<li style="margin-right: 0;"><a href="#"><c style="display: block;width: 23px;height: 17px;background: url(/bilibili/img/iconss.png) -850px -411px; float: right;margin-top: 11px;margin-right: 8px;"></c>BML</a></li>
				</ul>
				<ol>
				<c:choose>
								<c:when test="${not empty user.facepath }">
					<li style="width: 70px;height: 70px;margin-left: 12px;margin-right: -13px;margin-top: -2px;"class="i_face0">
						<div class="i_face01" style="position: absolute;left:;font-family: '微软雅黑';top: 41px;right: 186px;border: 1px solid #efefef;border-bottom: none;border-top: none;z-index: 1000;background-color: white;">
							<div>
								<div class="name0"style="width: 90px;margin: 0 auto;margin-top: 40px;">
									<span style="">${user.nickname }</span>
									<b style="display: block;width: 24px;height: 12px;background: url(/bilibili/img/Level-icons.png) -78px -82px; float: right;margin-top: 12px;"></b>
								</div>
								<div class="bill0" style="position: relative;margin-top: -10px;">
									<div class="bill01"style="margin-left: 20px;width: 100px;"><a href="#">${user.coin }<c style="display: block;width: 20px;height: 20px;background: url(/bilibili/img/iconss.png) -343px -471px;float: left;margin-top: 11px;margin-right: 7px;"></c></a></div>
									<div class="bill02"style="width: 50px;position: absolute;top: 12px;right: 20px;">
										<a href="#"style="width: 20px;float: left;"><b style="display: block;width: 20px;height: 20px;background: url(img/iconss.png) -343px -534px;"></b><c></c></a>
										<a href="#" style="display: block; float: right;width: 20px;"><b style="display: block;width: 20px;height: 20px;background: url(/bilibili/img/iconss.png) -277px -599px;"></b><c></c></a>
									</div>
								</div>
								<div class="level"style="margin-left: 20px;">
									<span style="display: block;float: left;">等级</span>
									<div class="level0"style="position: relative;">
										<a href="#">
											<div class="lt0">
											</div>
											<div class="progress" style="height: 8px;width: 175px; position: absolute;top: 18px;left: 41px;">
											   <div class="progress-bar" role="progressbar" aria-valuenow="60" 
											      aria-valuemin="0" aria-valuemax="100" style="width: 66%;background-color: #f3cb85;">
											      <span class="sr-only" style="">40% 完成</span>
											   </div>
											</div>
											<div style="position: absolute;top: 22px;right: 20px;">950<span style="color:#eddacf ;">/1500</span></div>
										</a>
									</div>
								</div>
								<ul class="four">
									<li><a href="/bilibili/user/usercenter1.jsp" class="face_grzx"><div class="face_grzx0"></div>个人中心</a></li>
									<li><a href="#" class="face_tggl"><div class="face_tggl0"></div>投稿管理</a></li>
									<li><a href="#" class="face_wdqb"><div class="face_wdqb0"></div>我的钱包</a></li>
									<li><a href="#" class="face_zbzx"><div class="face_zbzx0"></div>直播中心</a></li>
								</ul>
								<div class="face_exit" style="height: 28px;background-color: #f4f5f7;width: 100%;position: absolute;bottom: 0;">
									<div style="float: right;margin-right: 20px;margin-top: -5px">
										<a href="#" >退出</a>
									</div>
								</div>
							</div>
							
						</div>
						
						<a href="#" class="i_face" style="z-index: 2000;background: url(${user.facepath}) ;background-size:100%;"></a>
						
					</li>
					<li style="margin-left: 20px;"><a href="#"><c></c>消息</a></li>
					<li><a href="#"><c></c>动态</a></li>
					<li><a href="#"><c></c>收藏夹</a></li>
					<li><a href="#"><c></c>历史</a></li>
					<li class="nav_tg" style="margin-left: 17px;">
					</c:when>
						<c:otherwise>
									<li><a style="outline:none;decoration:none" href="http://localhost:8080/bilibili/userLogin.html">登录</a></li>
									<li><a style="outline:none;decoration:none" href="http://localhost:8080/bilibili/userRegist.html">注册</a></a></li>
						</c:otherwise>
						</c:choose> 
						<a href="#" style="color: white;">投 稿</a>
						<div class="nav_tg0">
							<div><a href="#"><c style="display: block;width: 23px;height: 20px;background: url(/bilibili/img/iconss.png) -470px -918px;margin-left: 25px;margin-bottom: -10px;margin-top: 15px;"></c>视频投稿</a></div>
							<div><a href="#"><c style="display: block;width: 23px;height: 20px;background: url(/bilibili/img/iconss.png) -470px -981px;margin-left: 25px;margin-bottom: -10px;margin-top: 15px;"></c>投稿管理</a></div>
						</div>
					</li>
				</ol>
				<div class="nav_search">
					<form action="" method="post">
						<input name="keyword" type="text" class="nav_search1" placeholder="搜索" id="nav_search00"/>
						<button type="button" class="nav_search2"></button>
					</form>
				</div>
			</div>
		</div>
		<script type="text/javascript">
			
				$(".nav_search1").focus(function () {
					$(".nav_search").width(180);
					$(this).width(130);
				})
				$(".nav_search1").blur(function () {
					$(".nav_search").width(120);
					$(this).width(78);
				})
				$(".nav_search").hover(function () {
					$(this).width(180);
				},function () {
					if($(".nav_search1").width()<120){
						$(".nav_search").width(120);
					}
				})
				
			
		</script>
	</body>
</html>