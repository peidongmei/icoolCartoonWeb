<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="/bilibili/reuse_css/bilHeader.css"/>
</head>
<body>
		<div id="header">
			<a href="#" id="background" style="">
			<div id="postword">
				<b></b>
				<span id="">售 票 进 行 中!</span>
			</div>
			</a>
			<div class="TYnav">
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
												<a href="#"style="width: 20px;float: left;"><b style="display: block;width: 20px;height: 20px;background: url(/bilibili/img/iconss.png) -343px -534px;"></b><c></c></a>
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
													      <span class="sr-only" style="">0%完成</span>
													   </div>
													</div>
													<div style="position: absolute;top: 22px;right: 20px;">${user.exp }<span style="color:#eddacf ;">/1500</span></div>
												</a>
											</div>
										</div>
										<ul class="four">
											<li><a href="#" class="face_grzx"><div class="face_grzx0"></div>个人中心</a></li>
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
								<a  href="javascript:;" class="i_face" style="background: url(${user.facepath});z-index: 2000;"></a>
							</li>
							<li style="margin-left: 20px;"><a href="#"><c></c>消息</a></li>
							<li><a href="#"><c></c>动态</a></li>
							<li><a href="#"><c></c>收藏夹</a></li>
							<li><a href="#"><c></c>历史</a></li>
						</c:when>
						<c:otherwise>
									<li><a style="outline:none;decoration:none" href="http://localhost:8080/bilibili/userLogin.html">登录</a></li>
									<li><a style="outline:none;decoration:none" href="http://localhost:8080/bilibili/userRegist.html">注册</a></a></li>
						</c:otherwise>
						</c:choose> 
							<li class="nav_tg" style="margin-left: 17px;">
								<a href="#" style="color: white;">投 稿</a>
								<div class="nav_tg0">
									<div><a href="#"><c style="display: block;width: 23px;height: 20px;background: url(/bilibili/img/iconss.png) -470px -918px;margin-left: 25px;margin-bottom: -10px;margin-top: 15px;"></c>视频投稿</a></div>
									<div><a href="#"><c style="display: block;width: 23px;height: 20px;background: url(/bilibili/img/iconss.png) -470px -981px;margin-left: 25px;margin-bottom: -10px;margin-top: 15px;"></c>投稿管理</a></div>
								</div>
							</li>
						</ol>
					</div>
				</div>
			</div>
			<div style="width: 155px;height: 70px;margin-left: 180px;">
				<a href="#"><img src="/bilibili/img/logo.png"></a>
			</div>
			<div class="search clearfix">
				<a href=""><b class="b4"></b><span style="padding: 5px;">排行榜</span></a>
				<div class="form">
					<input type="text" name="" id="" value="" placeholder="&nbsp;&nbsp;一天不听，我浑身难受!" style="outline: none;"/>
					<a href="" id="b5"></a>
				</div>
			</div>
		</div>
		<div id="bigNav">
			<div id="nav" class="clearfx">
			<div id="nav1">
				<ul id="nav11" class="clearfx">
					<li><a href="#" class="lili"><d style="background:url(/bilibili/img/iconss.png) -661px -1176px; "></d><span>首页</span></a>
						
					</li>
					<li><a id="donghua" href="#" class="lili"><d>78</d><span>动画</span></a>
						<ul class="sub_menu">
							<li><a href=""><b></b><span>连载动画</span><c></c></a></li>
							<li><a href=""><b></b><span>完结动画</span><c></c></a></li>
							<li><a href=""><b></b><span>资讯</span><c></c></a></li>
							<li><a href=""><b></b><span>新番Index</span><c></c></a></li>
						</ul>
					</li>
					<li><a id="fanju" href="#" class="lili"><d>21</d><span>番剧</span></a>
						<ul class="sub_menu">
					        <li><a href=""><b></b><span>MAD·AMV</span><c></c></a></li>
							<li><a href=""><b></b><span>MMD·3D</span><c></c></a></li>
							<li><a href=""><b></b><span>短片·手书·配音</span><c></c></a></li>
							<li><a href=""><b></b><span>综合</span><c></c></a></li>
					    </ul>
					</li>
					<li><a href="#" class="lili"><d>46</d><span>音乐</span></a>
						<ul class="sub_menu">
							<li><a href=""><b></b><span>翻唱</span><c></c></a></li>
							<li><a href=""><b></b><span>演奏</span><c></c></a></li>
							<li><a href=""><b></b><span>三次元音乐</span><c></c></a></li>
							<li><a href=""><b></b><span>同人音乐</span><c></c></a></li>
							<li><a href=""><b></b><span>OP/ED/OST</span><c></c></a></li>
						</ul>
					</li>
					<li><a href="#" class="lili"><d>88</d><span>舞蹈</span></a>
						<ul class="sub_menu">
							<li><a href=""><b></b><span>宅舞</span><c></c></a></li>
							<li><a href=""><b></b><span>三次元舞蹈</span><c></c></a></li>
							<li><a href=""><b></b><span>舞蹈教程</span><c></c></a></li>
							<li><a href=""><b></b><span>综合</span><c></c></a></li>
						</ul>
					</li>
					<li><a href="" class="lili"><d>420</d><span>游戏</span></a>
						<ul class="sub_menu">
							<li><a href=""><b></b><span>单机联机</span><c></c></a></li>
							<li><a href=""><b></b><span>网游·电竞</span><c></c></a></li>
							<li><a href=""><b></b><span>音游</span><c></c></a></li>
							<li><a href=""><b></b><span>Mugen</span><c></c></a></li>
							<li><a href=""><b></b><span>GMV</span><c></c></a></li>
						</ul>
					</li>
					<li><a href="" class="lili"><d>84</d><span>科技</span></a>
						<ul class="sub_menu">
							<li><a href=""><b></b><span>纪录片</span><c></c></a></li>
							<li><a href=""><b></b><span>趣味科普人文</span><c></c></a></li>
							<li><a href=""><b></b><span>野生技术协会</span><c></c></a></li>
							<li><a href=""><b></b><span>演讲·公开课</span><c></c></a></li>
							<li><a href=""><b></b><span>星海</span><c></c></a></li>
							<li><a href=""><b></b><span>数码</span><c></c></a></li>
							<li><a href=""><b></b><span>机械</span><c></c></a></li>
						</ul>
					</li>
					<li><a href="" class="lili"><d>324</d><span>娱乐</span></a>
						<ul class="sub_menu">
							<li><a href=""><b></b><span>搞笑</span><c></c></a></li>
							<li><a href=""><b></b><span>生活</span><c></c></a></li>
							<li><a href=""><b></b><span>动物圈</span><c></c></a></li>
							<li><a href=""><b></b><span>美食圈</span><c></c></a></li>
							<li><a href=""><b></b><span>综艺</span><c></c></a></li>
							<li><a href=""><b></b><span>娱乐圈</span><c></c></a></li>
							<li><a href=""><b></b><span>Korea相关</span><c></c></a></li>
						</ul>
					</li>
					<li><a href="" class="lili"><d>8</d><span>鬼畜</span></a>
						<ul class="sub_menu">
							<li><a href=""><b></b><span>鬼畜调教</span><c></c></a></li>
							<li><a href=""><b></b><span>音MAD</span><c></c></a></li>
							<li><a href=""><b></b><span>人力VOCALOID</span><c></c></a></li>
							<li><a href=""><b></b><span>教程演示</span><c></c></a></li>
						</ul>
					</li>
					<li><a href="#" class="lili"><d>28</d><span>时尚</span></a>
						<ul class="sub_menu">
							<li><a href=""><b></b><span>美妆健身</span><c></c></a></li>
							<li><a href=""><b></b><span>服饰</span><c></c></a></li>
							<li><a href=""><b></b><span>资讯</span><c></c></a></li>
						</ul>
					</li>
					<li><a href="" class="lili"><d>120</d><span>影视</span></a>
						<ul class="sub_menu">
							<li><a href=""><b></b><span>电影</span><c></c></a></li>
							<li><a href=""><b></b><span>电视剧</span><c></c></a></li>
						</ul>
					</li>
					<li class="sub2" style="margin-top: 2px;"><a href="#" class="lili"><d style="float: left;background: url(/bilibili/img/iconss.png) -664px -918px;height: 25px;margin-top: 8px;"></d>
						<span style="display: block;float: left;font-size: 16px;margin-top: 8px;">广场</span></a>
						<ul class="sub_menu ">
							<li><a href=""><b style="width: 20px;height: 20px;background: url(/bilibili/img/iconss.png) -277px -1179px;"></b><span>活动中心</span></a></li>
							<li><a href=""><b style="width: 20px;height: 20px;background: url(/bilibili/img/iconss.png) -277px -1240px;"></b><span>游戏中心</span></a></li>
							<li><a href=""><b style="width: 20px;height: 20px;background: url(/bilibili/img/iconss.png) -277px -1369px;"></b><span>画友</span></a></li>
							<li><a href=""><b style="width: 20px;height: 20px;background: url(/bilibili/img/iconss.png) -277px -1433px;"></b><span>芒果TV</span></a></li>
							<li class="last2" style="height: 65px;border-bottom: none;"></li>
							<div style="float: right;margin-top: -180px;margin-right: 7px;"><img src="/bilibili/img/bilbilACTIVE.jpg"></div>
						</ul>
					</li>
					<li style="margin-top: 2px;"><a href="#" class="lili"><d style="float: left;height: 25px;background: url(/bilibili/img/iconss.png) -664px -532px;margin-top: 8px;"></d>
						<span style="display: block;float: left;font-size: 16px;margin-top: 8px;">直播</span></a>
						<ul class="sub_menu">
							<li><a href=""><b></b><span>萌宅推荐</span><c></c></a></li>
							<li><a href=""><b></b><span>手机直播</span><c></c></a></li>
							<li><a href=""><b></b><span>绘画专区</span><c></c></a></li>
							<li><a href=""><b></b><span>唱见舞见</span><c></c></a></li>
							<li><a href=""><b></b><span>御宅文化</span><c></c></a></li>
							<li><a href=""><b></b><span>生活娱乐</span><c></c></a></li>
							<li><a href=""><b></b><span>单机联机</span><c></c></a></li>
							<li><a href=""><b></b><span>网络游戏</span><c></c></a></li>
							<li><a href=""><b></b><span>电子竞技</span><c></c></a></li>
							<li><a href=""><b></b><span>放映厅</span><c></c></a></li>
						</ul>
					</li>
					<li style="width: 42px;">
						<a href="#" class="lili"><d style="display: block;width: 80px;height: 40px;background: url(/bilibili/img/cake.gif);float: left;"></d></a>
					</li>
					<li class="last" style="float: right;width: 61px;margin-right: 0;">
						<a href="#" style="display: block;width: 60px;height: 35px;margin-top: 2px;" class="lili"></a>
						<ul class="sub_menu" style="margin-left: -164px;margin-top: 10px;width: 250px;height: 175px;background: url(/bilibili/img/AppBox.png);z-index: 3000;background-repeat: no-repeat;">
						</ul>
					</li>
				</ul>
			</div>
		</div>
		</div>
		<script src="/bilibili/reuse_js/bilHeader.js" type="text/javascript" charset="utf-8"></script>
	</body>
</html>