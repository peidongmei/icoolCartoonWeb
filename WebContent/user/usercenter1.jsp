<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>哔哩哔哩弹幕视频网 - ( ゜- ゜)つロ 乾杯~ - bilibili</title>
		<link rel="stylesheet" type="text/css" href="/bilibili/bootstrap/css/bootstrap.min.css"/>
		<link rel="shortcut icon" href="/bilibili/img/favicon.ico">
		<link rel="stylesheet" type="text/css" href="/bilibili/css/usercenter1.css"/>
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
							<li><a href="/bilibili/user/usercenter1.jsp" class="bg-blue"><i class="al-info check-t"></i><span>我的信息</span></a></li>
							<li><a href="/bilibili/user/usercenter2.jsp"><i class="al-tx"></i><span>我的头像</span></a></li>
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
					<span class="acc-sec">我的信息</span>
				</div>
				<div class="content-b">
					<ul>
						<li>
							<div class="bili-info"><p class="bili-lable">昵称：</p>
								<div class="bili-m"><span><input type="text" id="" value="${user.nickname }" /></span></div>
								<p class="bili-r">注：修改一次昵称需要消耗6个硬币</p>
							</div>
						</li>
						<li>
							<div class="bili-info"><p class="bili-lable">用户名：</p>
								<div class="bili-m"><span>${user.nickname }</span></div>
							</div>
						</li>
						<li>
							<div class="bili-info"><p class="bili-lable">我的签名：</p>
								<div class="bili-m"><textarea name="" rows="10" cols="30" class="mysign">${user.sign }</textarea></div>
							</div>
						</li>
						<li style="width: 789px;height: 68px;">
							<div class="bili-info"><p class="bili-lable">性别：</p>
								<input type="hidden" name="" id="" value="保密" />
								<div class="bili-m" style="width: 156px;height: 53px;">
									<ul class="sex clearfix" style="margin-top: 3px;">
										<li ${(user.sex==1)?'class="blue"':'' } id="1">男</li>
										<li ${(user.sex==2)?'class="blue"':'' } id="2">女</li>
										<li ${(user.sex==3)?'class="blue"':'' } id="3"  style="width:40px;margin-right: 0;">保密</li>
									</ul>
								</div>
							</div>
						</li>
						<li>
							<div class="bili-info" >
								<form action="" class="form-horizontal"  role="form">
									<p class="bili-lable">出生日期：</p>
									<div class="bili-m input-group date form_date col-md-5" data-date="" data-date-format="yyyy-mm-dd" data-link-field="dtp_input2" data-link-format="yyyy-MM-dd">
										<span><span class="datePicker">
										<input type="text" name="" id="" value="1980-01-01" style="cursor: default;">
										<span class="input-group-addon" style="visibility: hidden;">
										<span class="glyphicon glyphicon-calendar" ></span></span>
										<button type="button" class="pickerDate" id="dtp_input2">pick a date</button>
									</span></span></div>
								</form>
							</div>
						</li>
						<li>
							<div class="bili-info"><p class="bili-lable">所在地：</p>
								<div class="bili-m clearfix" style="width: 384px;">
									<form name="fm" id="fm">
									<div class="control-select area" style="width: 170px;"><span >选择一级地区</span><em></em>
										<select id="provice" name="" class="select">
											<option value="-1" selected="selected">选择一级地区</option>
										</select>
									</div>
									<div class="control-select area " style="width: 170px;"><span>选择具体地区</span><em></em>
										<select name="" id="selectCity" class="select">
											<option value="-1" selected="selected">具体地区</option>
										</select>
									</div>
									</form>
								</div>
							</div>
						</li>
						<li>
							<div class="bili-info"><p class="bili-lable">感情状况：</p>
								<div class="bili-m clearfix">
									<div class="control-select area" style="width: 140px;"><span>--请选择--</span><em></em>
										<select name="" class="enumselect">
											<option value="0" selected="selected">--请选择--</option>
											<option value="1">未婚</option>
											<option value="2">已婚</option>
											<option value="3">离异</option>
											<option value="4">丧偶</option>
										</select>
									</div>
								</div>
							</div>
						</li>
						<li>
							<div class="bili-info"><p class="bili-lable">交友目的：</p>
								<div class="bili-m clearfix">
									<div class="control-select area" style="width: 140px;"><span>--请选择--</span><em></em>
										<select name="" class="enumselect">
											<option value="0" selected="selected">--请选择--</option>
											<option value="1">网友</option>
											<option value="2">恋人</option>
											<option value="3">玩伴</option>
											<option value="4">共同兴趣</option>
											<option value="5">男性朋友</option>
											<option value="6">女性朋友</option>
										</select>
									</div>
								</div>
							</div>
						</li>
					</ul>
				</div>
				<div class="content-line"></div>
				<input type="submit" id="" name="" class="content-save" value="保存" />
			</div>
		</div>
		<div class="individualCenter-footer"></div>
		
	</body>
		<script src="/bilibili/js/jquery-1.12.4.js" type="text/javascript" charset="utf-8"></script>
		<script src="/bilibili/bootstrap/js/bootstrap.min.js" type="text/javascript" charset="utf-8"></script>
		<script type="text/javascript">
		$(function () {
			$(".individualCenter-header").load("/bilibili/reuse/TYhead.jsp");
			$(".individualCenter-footer").load("/bilibili/reuse/foot_one.html");
			/*点击选择性别*/
			var aLiSex=$(".sex li");
				aLiSex.click(function () {
					$(this).addClass("blue")
					.siblings().removeClass("blue");
				});
			/*点击选择相应下拉框*/
			$(".enumselect").click(function () {
				if ($(this).find("[selected]").val()!=0) {
					$(this).parent().find("span").html($(this).find("[selected]").text());
				}else{
					
				}
			});
			/* 用户点击保存，更改用户信息 */
			$(".content-save").click(function(){
				var nickname = $(".bili-m>span>input").val();
				var sign = $("textarea").val();
				var sex = parseInt($(".sex .blue").attr("id"));
				/* 昵称不为空才能写入 */
				if(nickname!=""){
					$.get("/bilibili/user/updateinfo",{nickname:nickname,sign:sign,sex:sex},function(date){
						if(date==1){
							window.location.reload();
						}
					});
				}
			});
			
			
		});
		</script>
</html>