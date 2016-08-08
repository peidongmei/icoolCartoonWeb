<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>哔哩哔哩弹幕视频网 - ( ゜- ゜)つロ 乾杯~ - bilibili</title>
		<link rel="stylesheet" type="text/css" href="/bilibili/bootstrap/css/bootstrap.min.css"/>
		<link rel="shortcut icon" href="/bilibili/img/favicon.ico">
		<link rel="stylesheet" type="text/css" href="/bilibili/reuse_css/csshake.css"/>
		<link rel="stylesheet" type="text/css" href="/bilibili/css/usercenter2.css"/>
		<script src="/bilibili/js/jquery.min.js" type="text/javascript" charset="utf-8"></script>
		<script src="/bilibili/bootstrap/js/jquery.min.js" type="text/javascript" charset="utf-8"></script>
		<script src="/bilibili/bootstrap/js/bootstrap.min.js" type="text/javascript" charset="utf-8"></script>
</head>
<body id="individualCenter">
		<div class="individualCenter-header"></div>
		<div class="individualCenter-bg">
			<div class="individualCenter-top"></div>
		</div>
		<div class="individualCenter-content clearfix">
	            <div class="content-left">
				<ul class="individualCenter-list">
					<li class="individual-list">
						<a href="" class="first-level" style="cursor: default;color: #99a2aa;">个人中心</a>
						<ul class="child-list">
							<li><a href="/bilibili/HomePage.jsp"  title="首页"><i class="al-sy "></i><span>首<b class="nbsp"></b>页</span></a></li>
							<li><a href="/bilibili/user/usercenter1.jsp" ><i class="al-info check-t"></i><span>我的信息</span></a></li>
							<li><a href="/bilibili/user/usercenter2.jsp" class="bg-blue"><i class="al-tx"></i><span>我的头像</span></a></li>
							<li><a href=""><i class="al-mp"></i><span>成就勋章</span></a></li>
							<li><a href=""><i class="al-aq"></i><span>账号安全</span></a></li>
							<li><a href=""><i class="al-coin"></i><span>我的硬币</span></a></li>
							<li><a href=""><i class="al-jl"></i><span>我的记录</span></a></li>
							<li><a href=""><i class="al-rz"></i><span>实名认证</span></a></li>
							<li><a href="" title="礼物兑换"><i class="al-dh" ></i><span>礼物兑换</span></a></li>
							<li><a href="" title="邀请注册"><i class="al-zc" title="邀请注册"></i><span>邀请注册</span></a></li>
						</ul>
					</li>
					<li class="individual-list list"><a href="" class="first-level" title="个人空间">个人空间<i class="m-arrow"></i></a></li>
					<li class="individual-list list"><a href="" class="first-level" title="我的钱包">我的钱包<i class="m-arrow"></i></a></li>
					<li class="individual-list list"><a href="" class="first-level" title="投稿管理">投稿管理<i class="m-arrow"></i></a></li>
					<li class="individual-list list"><a href="" class="zbzx" title="直播中心">直播中心<i class="m-arrow"></i></a></li>
				</ul>
			</div>
			<div class="content-right">
				<div class="content-t">
					<span class="tit-b"></span>
					<span class="acc-sec">我的头像</span>
				</div>
				<div class="content-b clearfix">
					<div class="userface">
						<span>当前头像</span><br/>
						<img alt="" src="${user.facepath }"><br/>
						<span>请选择头像</span><br/>
						<ul class="clearfix">
						</ul>
						</div>
					<div class="userbg">
						<span>当前背景图片</span><br />
						<img alt="" src="${user.userbg }"><br />
						<span>请选择背景图片</span><br />
						<ul class="clearfix">
						</ul>
					</div>
					<div class="userlevel">
						<span>等级</span><br/>
						<ul class="clearfix">
							<li>1</li>
							<li>2</li>
							<li>3</li>
							<li>4</li>
							<li>5</li>
							<li>6</li>
							<li>7</li>
							<li>8</li>
							<li>9</li>
						</ul>
					</div>
				</div>
				<div class="content-line"></div>
				<input type="submit" class="content-save" value="保存" />
			</div>
		</div>
		<div class="individualCenter-footer"></div>
		
	</body>
		<script type="text/javascript">
			$(function(){
				/* 加载顶部 */
				$(".individualCenter-header").load("/bilibili/reuse/TYhead.jsp");
				/* 加载供选择的用户头像 */
				$.get("/bilibili/user/getpic",{type:'a'},function(date){
					 for(var i = 0; i< date.length;i++){
						$(".userface ul").append('<li><img  alt="" src="'+date[i].path+'"></li>');
					} 
				});
				/* 加载供选择的用户背景 */
				$.get("/bilibili/user/getpic",{type:'b'},function(date){
					 for(var i = 0; i< date.length;i++){
						$(".userbg ul").append('<li><img  alt="" src="'+date[i].path+'"></li>');
					} 
				});
				/* 给选项选中添加事件 */
				$("body").on("click",".content-b li",function(){
					if($(this).hasClass("imgselected")){
						$(this).removeClass("imgselected shake-slow shake-constant");
					}else {
						$(this).addClass("imgselected shake-slow shake-constant");
						$(this).siblings(".imgselected").removeClass("imgselected shake-slow shake-constant");
					}
				});
				/* 给保存按钮添加事件 */
				$(".content-save").click(function(){
					var $userface =  $(".userface ul .imgselected img");
					var $userbg  = $(".userbg ul .imgselected img");
					var $userlevel = $(".userlevel ul .imgselected");
					var userface = "";
					var userbg = "";
					var userlevel = 0;
					if($userface.attr("src")!=undefined){
						userface = $userface.attr("src");
					}
					if($userbg.attr("src")!=undefined){
						userbg = $userbg.attr("src");
					}
					if($userlevel.length==1){
						userlevel = parseInt($userlevel.text());
					}
					/* 数据取得后异步请求写入服务器 */
					$.get("/bilibili/user/updatepic",{userface:userface,userbg:userbg,userlevel:userlevel},function(date){
						if(date==1){
							window.location.reload();
						}
					});
				});
			});
		</script>
</html>