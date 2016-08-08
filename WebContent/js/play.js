/**
 * @author zzp 
 * 
 */
$(function () {
			/*加载通用部分*/
			$("#top_nav").load("/bilibili/reuse/bilHeader.jsp");
			$("#myfoot").load("/bilibili/reuse/foot_one.html");
			
			/* 检测用户是否登录，如果登录，取消评论框禁用 */
			var userid = $("textarea").attr("name");
			if(userid!=""){
				$(".textarea_disbaled").remove();
				$(".send_comments").removeClass("button_disabled");
			}
			
			/* 给排序方式按钮添加事件 */
			$(".common_body .c_order>ul li").click(function(){
				$(".common_body .c_order>ul li").removeClass("c_order_on");
				$(this).addClass("c_order_on");
				/* 初始化评论区内容   触发第一页按钮事件*/
				$(".normal_nav a:eq(1)").trigger("click");
			});
			var dividetype = "默认排序";
			/*给导航栏写事件*/
			$(".p").click(function(){
				/* 获取当前的排序方式 */
				dividetype = $(".common_body .c_order>ul .c_order_on").text();
				/*用户点击的标签所含内容,即用户想跳转的页面*/
				var target = $(this).text();
				/*当前激活的标签页内容*/
				var nowPage = parseInt($(".normal_nav .active").text());
				/*获取总共的页数*/
				var totalPage = parseInt($(".normal_nav .p:eq(7)").text());
				/*先讨论上一页标签和下一页标签的情况*/
				if (target=="上一页") {
					/*所有数字导航非激活状态*/
					$(".p").removeClass("active");
					/*下一页标签激活*/
					$(".normal_nav .p:last").removeClass("noprev");
					target = nowPage - 1;
					
				} else if(target=="下一页"){
					/*所有数字导航非激活状态*/
					$(".p").removeClass("active");
					/*上一页标签激活*/
					$(".normal_nav .p:first").removeClass("noprev");
					target = nowPage + 1;
				}
				/*转换成数字*/
				if (typeof(target)=="string") {
					target = parseInt(target);
				}
				if (target==1) {
					/*上部导航上一页隐藏*/
					$(".pagelistbox_small .p:first").addClass("noprev");
					/*上部导航下一页显示*/
					$(".pagelistbox_small .p:last").removeClass("noprev");
					/*上部全部标签非激活*/
					$(".pagelistbox_small .p").removeClass("active");
					/*上部第一个标签激活*/
					$(".pagelistbox_small .p:eq(1)").addClass("active");
					/*上一页标签隐藏*/
					$(".normal_nav .p:first").addClass("noprev");
					/*下一页标签激活*/
					$(".normal_nav .p:last").removeClass("noprev");
					/*所有数字导航非激活状态*/
					$(".normal_nav .p").removeClass("active");
					/*第一个标签激活*/
					$(".normal_nav .p:eq(1)").addClass("active");
					/*第一个点点点隐藏*/
					$(".normal_nav strong:first").addClass("noprev");
					/*第二个点点点激活*/
					$(".normal_nav strong:last").removeClass("noprev");
					/*改变标签内部内容*/
					for (var i = 0;i < 5;i++) {
						var index = 2+i;
						$(".normal_nav .p:eq("+(i+2)+")").text(index);
					}
					/*改变上部标签内部内容*/
					for (var i = 0;i < 5;i++) {
						var index = 1+i;
						$(".pagelistbox_small .p:eq("+(i+1)+")").text(index);
					}
					/* 改变评论区内容 */
					$(".comm_list>ul").empty();
				 	addli(10001,target,dividetype) ; 
					
				} else if(target==totalPage){
					/*上部导航上一页显示*/
					$(".pagelistbox_small .p:first").removeClass("noprev");
					/*上部导航下一页隐藏*/
					$(".pagelistbox_small .p:last").addClass("noprev");
					/*上部全部标签非激活*/
					$(".pagelistbox_small .p").removeClass("active");
					/*上部最后一个数字标签激活*/
					$(".pagelistbox_small .p:eq(5)").addClass("active");
					/*上一页标签激活*/
					$(".normal_nav .p:first").removeClass("noprev");
					/*跳到最后一个,下一页标签隐藏*/
					$(".normal_nav .p:last").addClass("noprev");
					/*所有数字导航非激活状态*/
					$(".normal_nav .p").removeClass("active");
					/*第一个标签激活*/
					$(".normal_nav .p:eq(7)").addClass("active");
					/*第一个点点点激活*/
					$(".normal_nav strong:first").removeClass("noprev");
					/*第二个点点点隐藏*/
					$(".normal_nav strong:last").addClass("noprev");
					/*第6个隐藏*/
					$(".normal_nav .p:eq(6)").addClass("noprev");
					/*改变标签内部内容*/
					for (var i = 0;i < 4;i++) {
						var index = totalPage-4+i;
						$(".normal_nav .p:eq("+(i+2)+")").text(index);
					}
					/*改变上部标签内部内容*/
					for (var i = 0;i < 5;i++) {
						var index = totalPage-4+i;
						$(".pagelistbox_small .p:eq("+(i+1)+")").text(index);
					}
					/* 改变评论区内容 */
					$(".comm_list>ul").empty();
				 	addli(10001,target,dividetype) ; 
				}else if (target==2||target==3) {
					/*上部导航上一页显示*/
					$(".pagelistbox_small .p:first").removeClass("noprev");
					/*上部导航下一页显示*/
					$(".pagelistbox_small .p:last").removeClass("noprev");
					/*上部全部标签非激活*/
					$(".pagelistbox_small .p").removeClass("active");
					/*上部所选数字标签激活*/
					$(".pagelistbox_small .p:eq("+target+")").addClass("active");
					/*所有数字导航非激活状态*/
					$(".normal_nav .p").removeClass("active");
					/*上一页标签激活*/
					$(".normal_nav .p:first").removeClass("noprev");
					/*下一页标签激活*/
					$(".normal_nav .p:last").removeClass("noprev");
					/*第一个点点点隐藏*/
					$(".normal_nav strong:first").addClass("noprev");
					/*第二个点点点激活*/
					$(".normal_nav strong:last").removeClass("noprev");
					/*选择的页面也激活*/
					$(".normal_nav .p:eq("+target+")").addClass("active");
					/*第6个隐藏*/
					$(".normal_nav .p:eq(6)").addClass("noprev");
					/*改变标签内部内容*/
					for (var i = 0;i < 5;i++) {
						var index = 2+i;
						$(".normal_nav .p:eq("+(i+2)+")").text(index);
					}
					/*改变上部标签内部内容*/
					for (var i = 0;i < 5;i++) {
						var index = 1+i;
						$(".pagelistbox_small .p:eq("+(i+1)+")").text(index);
					}
					/* 改变评论区内容 */
					$(".comm_list>ul").empty();
				 	addli(10001,target,dividetype) ; 
				} else if(target==4){
					/*上部导航上一页显示*/
					$(".pagelistbox_small .p:first").removeClass("noprev");
					/*上部导航下一页显示*/
					$(".pagelistbox_small .p:last").removeClass("noprev");
					/*上部全部标签非激活*/
					$(".pagelistbox_small .p").removeClass("active");
					/*上部中间标签激活*/
					$(".pagelistbox_small .p:eq(3)").addClass("active");
					/*所有数字导航非激活状态*/
					$(".normal_nav .p").removeClass("active");
					/*上一页标签激活*/
					$(".normal_nav .p:first").removeClass("noprev");
					/*下一页标签激活*/
					$(".normal_nav .p:last").removeClass("noprev");
					/*第一个点点点隐藏*/
					$(".normal_nav strong:first").addClass("noprev");
					/*第二个点点点激活*/
					$(".normal_nav strong:last").removeClass("noprev");
					/*选择的页面也激活*/
					$(".normal_nav .p:eq("+target+")").addClass("active");
					/*第6个激活*/
					$(".normal_nav .p:eq(6)").removeClass("noprev");
					/*改变标签内部内容*/
					for (var i = 0;i < 5;i++) {
						var index = 2+i;
						$(".normal_nav .p:eq("+(i+2)+")").text(index);
					}
					/*改变上部标签内部内容*/
					for (var i = 0;i < 5;i++) {
						var index = 2+i;
						$(".pagelistbox_small .p:eq("+(i+1)+")").text(index);
					}
					/* 改变评论区内容 */
					$(".comm_list>ul").empty();
				 	addli(10001,target,dividetype) ; 
				}else if(target==(totalPage-3)){
					/*上部导航上一页显示*/
					$(".pagelistbox_small .p:first").removeClass("noprev");
					/*上部导航下一页显示*/
					$(".pagelistbox_small .p:last").removeClass("noprev");
					/*上部全部标签非激活*/
					$(".pagelistbox_small .p").removeClass("active");
					/*上部中间标签激活*/
					$(".pagelistbox_small .p:eq(3)").addClass("active");
					/*所有数字导航非激活状态*/
					$(".normal_nav .p").removeClass("active");
					/*上一页标签激活*/
					$(".normal_nav .p:first").removeClass("noprev");
					/*下一页标签激活*/
					$(".normal_nav .p:last").removeClass("noprev");
					/*第一个点点点激活*/
					$(".normal_nav strong:first").removeClass("noprev");
					/*第二个点点点隐藏*/
					$(".normal_nav strong:last").addClass("noprev");
					/*选择的页面也激活*/
					$(".normal_nav .p:eq(4)").addClass("active");
					/*第6个激活*/
					$(".normal_nav .p:eq(6)").removeClass("noprev");
					/*改变标签内部内容*/
					for (var i = 0;i < 5;i++) {
						var index = totalPage-5+i;
						$(".normal_nav .p:eq("+(i+2)+")").text(index);
					}
					/*改变上部标签内部内容*/
					for (var i = 0;i < 5;i++) {
						var index = target-2+i;
						$(".pagelistbox_small .p:eq("+(i+1)+")").text(index);
					}
					/* 改变评论区内容 */
					$(".comm_list>ul").empty();
				 	addli(10001,target,dividetype) ; 
				}else if(target==(totalPage-1)||target==(totalPage-2)){
					/*上部导航上一页显示*/
					$(".pagelistbox_small .p:first").removeClass("noprev");
					/*上部导航下一页显示*/
					$(".pagelistbox_small .p:last").removeClass("noprev");
					/*上部全部标签非激活*/
					$(".pagelistbox_small .p").removeClass("active");
					/*上部中间标签激活*/
					$(".pagelistbox_small .p:eq("+(5-(totalPage-target))+")").addClass("active");
					/*所有数字导航非激活状态*/
					$(".normal_nav .p").removeClass("active");
					/*上一页标签激活*/
					$(".normal_nav .p:first").removeClass("noprev");
					/*下一页标签激活*/
					$(".normal_nav .p:last").removeClass("noprev");
					/*第一个点点点激活*/
					$(".normal_nav strong:first").removeClass("noprev");
					/*第二个点点点隐藏*/
					$(".normal_nav strong:last").addClass("noprev");
					/*选择的页面也激活*/
					$(".normal_nav .p:eq("+(6-(totalPage-target))+")").addClass("active");
					/*第6个激活隐藏*/
					$(".normal_nav .p:eq(6)").addClass("noprev");
					/*改变标签内部内容*/
					for (var i = 0;i < 4;i++) {
						var index = totalPage-4+i;
						$(".normal_nav .p:eq("+(i+2)+")").text(index);
					}
					/*改变上部标签内部内容*/
					for (var i = 0;i < 5;i++) {
						var index = totalPage-4+i;
						$(".pagelistbox_small .p:eq("+(i+1)+")").text(index);
					}
					/* 改变评论区内容 */
					$(".comm_list>ul").empty();
				 	addli(10001,target,dividetype) ; 
				}else if(target==(totalPage-3)){
					/*上部导航上一页显示*/
					$(".pagelistbox_small .p:first").removeClass("noprev");
					/*上部导航下一页显示*/
					$(".pagelistbox_small .p:last").removeClass("noprev");
					/*上部全部标签非激活*/
					$(".pagelistbox_small .p").removeClass("active");
					/*上部中间标签激活*/
					$(".pagelistbox_small .p:eq(3)").addClass("active");
					/*所有数字导航非激活状态*/
					$(".normal_nav .p").removeClass("active");
					/*上一页标签激活*/
					$(".normal_nav .p:first").removeClass("noprev");
					/*下一页标签激活*/
					$(".normal_nav .p:last").removeClass("noprev");
					/*第一个点点点激活*/
					$(".normal_nav strong:first").removeClass("noprev");
					/*第二个点点点隐藏*/
					$(".normal_nav strong:last").addClass("noprev");
					/*选择的页面也激活*/
					$(".normal_nav .p:eq("+(7-(totalPage-target))+")").addClass("active");
					/*第6个激活隐藏*/
					$(".normal_nav .p:eq(6)").addClass("noprev");
					/*改变标签内部内容*/
					for (var i = 0;i < 4;i++) {
						var index = totalPage-5+i;
						$(".normal_nav .p:eq("+(i+2)+")").text(index);
					}
					/*改变上部标签内部内容*/
					for (var i = 0;i < 5;i++) {
						var index = totalPage-4+i;
						$(".pagelistbox_small .p:eq("+(i+1)+")").text(index);
					}
					/* 改变评论区内容 */
					$(".comm_list>ul").empty();
				 	addli(10001,target,dividetype) ; 
				}else{
					/*上部导航上一页显示*/
					$(".pagelistbox_small .p:first").removeClass("noprev");
					/*上部导航下一页显示*/
					$(".pagelistbox_small .p:last").removeClass("noprev");
					/*上部全部标签非激活*/
					$(".pagelistbox_small .p").removeClass("active");
					/*上部中间标签激活*/
					$(".pagelistbox_small .p:eq(3)").addClass("active");
					/*所有数字导航非激活状态*/
					$(".normal_nav .p").removeClass("active");
					/*上一页标签激活*/
					$(".normal_nav .p:first").removeClass("noprev");
					/*下一页标签激活*/
					$(".normal_nav .p:last").removeClass("noprev");
					/*第一个点点点激活*/
					$(".normal_nav strong:first").removeClass("noprev");
					/*第二个点点点激活*/
					$(".normal_nav strong:last").removeClass("noprev");
					/*选择的页面也激活*/
					$(".normal_nav .p:eq(4)").addClass("active");
					/*第6个激活激活*/
					$(".normal_nav .p:eq(6)").removeClass("noprev");
					/*改变标签内部内容*/
					for (var i = 0;i < 5;i++) {
						var index = target-2+i;
						$(".normal_nav .p:eq("+(i+2)+")").text(index);
					}
					/*改变上部标签内部内容*/
					for (var i = 0;i < 5;i++) {
						var index = target-2+i;
						$(".pagelistbox_small .p:eq("+(i+1)+")").text(index);
					}
					/* 改变评论区内容 */
					$(".comm_list>ul").empty();
				 	addli(10001,target,dividetype) ; 
				}
			});
			
			/*给回复按钮添加事件*/
			$("body").on("click",".huifu",function () {
				var sendPlugin = $(".common_body>.comm_send").clone(true);
				if ($(".message_box .comm_send").length>0) {
					if ($(this).parents(".message_box").find(".comm_send").length>0) {
						$(".message_box .comm_send").remove();
					} else{
						$(".message_box .comm_send").remove();
						$(this).parents(".message_box").append(sendPlugin);
					}
				} else{
					$(this).parents(".message_box").append(sendPlugin);
				}
				sendPlugin.find("textarea").text("");
			});
			
			/*给评论发送按钮添加事件*/
			$("body").on("click",".send_comments",function () {
				/*获取文本框长度,500表示发送一级评论,400表示发送二级评论,
				 * 不同显示器上文本框长度会发生变化，采用中间值控制*/
				var textlenth = $(this).parent().find("textarea").width();
				/*获取文本内容*/
				var content = $(this).parent().find("textarea").val();
				/* 前端验证用户是否登录 */
				var userid = $(this).parent().find("textarea").attr("name");
				if(userid==""){
					tanchuang();
				}else {
					if (content!="" && textlenth > 450) {
						/* 发送一级评论 */
					$.post("/bilibili/comments/addRaw",{content:content},function(date){
							/* 评论成功的话触发第一页的click事件 并情空文本区内容*/
							if(date==1){
								$(".normal_nav a:eq(1)").trigger("click");
								$(".comm_textarea textarea").val("");
								/* 更新页数相关信息 */
								countComms();
							}
					});
					
				} else if (content!="" && textlenth < 450) {
					/*如果发表二级评论,需要获得回复评论的id*/
					var replyid = $(this).parents(".main_floor").attr("name");
					/* 发送二级评论 */
					$.post("/bilibili/comments/addReply",{content:content,replyid:replyid},function(date){
						/* 评论成功的话触发当前页的click事件 并情空文本区内容*/
						if(date==1){
							$(".normal_nav .active").trigger("click");
							$(".comm_textarea textarea").val("");
							/* 更新页数相关信息 */
							countComms();
						}
					});
				   }
				}
			});
			
			/*绑定弹框事件*/
			var clearTime;
			$("body").on("mouseenter",".info_link",function (event) {
				/*生成的弹窗的坐标*/
				var x = $(this).offset().left + $(this).width();
				var y = $(this).offset().top;
				/* 获取用户ID，去数据库查询相关信息 */
				var userid = $(this).parents("li").attr("id");
					clearTime = setTimeout(function () {
						$.get("/bilibili/comments/getBox",{userid:userid},function(userbox){
							var boxy = -(userbox.user.userlevel*36+8);
							var sexy = -1624;
							if(userbox.user.sex==1){
								sexy = -663;
							}
							if(userbox.user.sex==2){
								sexy = -727;
							}
						$("body").append('<div name="'+userbox.user.id+'" class="user_info_win" style="left: '+x+'px;top: '+y+'px;"><div class="top_pic"><img src="'+userbox.user.userbg+'"/></div><div class="bottom_info"><div class="user_face"><a href=""><img src="'+userbox.user.facepath+'"/></a></div><div class="user_info clearfix"><div class="name"><a href="" class="name_n">'+userbox.user.nickname+'</a><i style="background-position:-280px '+sexy+'px" title="保密"></i><a href="" class="name_l" style="background-position:-78px '+boxy+'px ;"></a></div><div class="about"><a href="javascript:;">关注：'+userbox.focus+'</a><a href="">粉丝：'+userbox.fans+'</a></div><div class="word">'+userbox.user.sign+'</div><div class="operate"><span class="guanzhu"><a href="javascript:;">+关注</a></span><span class="sixin"><a href="">私信</a></span></div></div></div></div>');
						});
					},500);
			});
			
			$("body").on("mouseleave",".info_link",function (event) {
				clearTimeout(clearTime);
				clearTime = setTimeout(function () {
					$(".user_info_win").remove();
				},200);
			});
			/*移到弹窗里面时的操作*/
			$("body").on("mouseenter",".user_info_win",function () {
				clearTimeout(clearTime);
			});
			$("body").on("mouseleave",".user_info_win",function () {
				clearTime = setTimeout(function () {
					$(".user_info_win").remove();
				},500);
			});
			
			/* 给弹窗里面的关注绑定事件 */
			$("body").on("click",".guanzhu",function(){
				/* 前端验证用户是否登录 */
				var userid = $("textarea").attr("name");
				if(userid==""){
					tanchuang();
				}else {
					/* 获取被关注的ID */
					var up_id = $(this).parents(".user_info_win").attr("name");
					/* 异步请求，发送到数据库 */
					$.get("/bilibili/user/addConcern",{up_id:up_id},function(date){
						if(date==1){
							alert("已关注");
						}else{
							alert("关注成功");
						}
					});
				}
			});
			
			/* 未登录用户的弹出层事件 */
			function tanchuang(){
				$(".wrap").removeClass("elementhiden");
			}
			/* 弹窗关闭事件 */
			$("#close_wrap").click(function(){
				$(".wrap").addClass("elementhiden");
			});
			/* 弹窗的登录和注册点击事件 */
			$(".user_login").click(function(){
				$(".user_login").addClass("top_nav_active");
				$(".user_reigst").removeClass("top_nav_active");
				$("#login").removeClass("elementhiden");
				$("#regist").addClass("elementhiden");
			});
			$(".user_reigst").click(function(){
				$(".user_login").removeClass("top_nav_active");
				$(".user_reigst").addClass("top_nav_active");
				$("#login").addClass("elementhiden");
				$("#regist").removeClass("elementhiden");
			});   
			$("body").on("click",".textarea_login",function(){
				tanchuang();
			});
			
			
			/* 日期格式化组件 */
			function getTime(timeMill){
				var posttime = new Date()
				posttime.setTime(timeMill);
				/* 日期格式化函数 */
				Date.prototype.Format = function (fmt) { //author: meizz 
				    var o = {
				        "M+": this.getMonth() + 1, //月份 
				        "d+": this.getDate(), //日 
				        "HH+": this.getHours(), //小时 
				        "m+": this.getMinutes(), //分 
				        "s+": this.getSeconds(), //秒 
				        "q+": Math.floor((this.getMonth() + 3) / 3), //季度 
				        "S": this.getMilliseconds() //毫秒 
				    };
				    if (/(y+)/.test(fmt)) fmt = fmt.replace(RegExp.$1, (this.getFullYear() + "").substr(4 - RegExp.$1.length));
				    for (var k in o)
				    if (new RegExp("(" + k + ")").test(fmt)) fmt = fmt.replace(RegExp.$1, (RegExp.$1.length == 1) ? (o[k]) : (("00" + o[k]).substr(("" + o[k]).length)));
				    return fmt;
				}
				
				var time1 = posttime.Format("yyyy-MM-dd HH:mm");
				var time2 = new Date().Format("yyyy-MM-dd HH:mm");  
				
				/* 计算两个日期时间差 */
				function GetDateDiff(startTime, endTime, diffType) {
				    //将xxxx-xx-xx的时间格式，转换为 xxxx/xx/xx的格式
				    startTime = startTime.replace(/\-/g, "/");
				    endTime = endTime.replace(/\-/g, "/");
				    //将计算间隔类性字符转换为小写
				    diffType = diffType.toLowerCase();
				    var sTime = new Date(startTime);      //开始时间
				    var eTime = new Date(endTime);  //结束时间
				    //作为除数的数字
				    var divNum = 1;
				    switch (diffType) {
				        case "second":
				            divNum = 1000;
				            break;
				        case "minute":
				            divNum = 1000 * 60;
				            break;
				        case "hour":
				            divNum = 1000 * 3600;
				            break;
				        case "day":
				            divNum = 1000 * 3600 * 24;
				            break;
				        default:
				            break;
				    }
				    return parseInt((eTime.getTime() - sTime.getTime()) / parseInt(divNum));
				}
				
				var day = GetDateDiff(time1, time2, "day");
				var hour = GetDateDiff(time1, time2, "hour");
				var minute = GetDateDiff(time1, time2, "minute");
				
				if(day>=1){
					return time1;
				}else if(hour>=1){
					return hour+"小时前";
				}else{
					if(minute==0){
						minute++;
					}
					return minute+"分钟前"
				}
			}
			
			function addli(v_id,nav_start,type) {
				$.get("/bilibili/comments/getRaw",{videoid:v_id,page:nav_start,dividtpye:type},function(date){
					/*加载5条一级评论*/
					var time = "";
					for (var i=0;i<date.length;i++) {
						var fy = -(date[i].user.userlevel*36+11);
						/* 引用日期格式化组件 */
						var time = getTime(date[i].writetime);
						$(".comm_list>ul").append('<!--一级评论--><li name="'+date[i].id+'" class="main_floor" id = "'+date[i].user.id+'"><!--用户头像--><div class="face_box"><a href="" class="info_link"><img src="'+date[i].user.facepath+'"/></a></div><!--头像右边回复主体部分--><div class="message_box clearfix"><!--用户昵称部分--><div class="user_info_div"><a href="" class="user_nickname info_link">'+date[i].user.nickname+'</a><a href="" class="user_level" style="background-position:-78px '+fy+'px ;" ></a></div><!--回复文字部分--><div class="content">'+date[i].content+'</div><!--回复尾部操作部分--><div class="elinfo"><span class="floor_num">#'+date[i].id+'</span><span class="floor_plat">来自<a>'+date[i].client+'</a></span><span class="floor_date">'+time+'</span><i class="report"><a class="zan" href="javascript:;"><span style="margin-right:0">赞</span>(<b>'+date[i].approvenum+'</b>)</a><a class="huifu" href="javascript:;">回复</a><a href="javascript:;">举报</a></i></div><!--二级回复部分--><div class="reply clearfix"><ul class="clearfix"></ul></div></div></li>');
						/* 检查当前用户有没有给这条评论点赞，点赞的话文字改为已赞 */
						/* 前端验证用户是否登录 */
						var userid = $("textarea").attr("name");
							/* 已登录，异步请求检测 */
						  if(userid!=""){
							  var rawid = date[i].id;
							   (function(rawid){ 
								  $.get("/bilibili/comments/checkraw",{rawid:rawid},function(checkresult){
									  if(checkresult==1){
										   $(".comm_list>ul>li[name='"+rawid+"'] .message_box .elinfo .report a:eq(0) span").text("已赞"); 
										   
									  }
								  });
							   })(rawid); 
						  }
						/* 添加相应二级评论
						获取相应评论id，去数据库查询其回复评论
						*/
						  (function(d){
							  $.get("/bilibili/comments/getReply",{rawid:d.id},function(redate){
								  /* 如果有二级评论，则将回复字段改为参与回复,颜色改为蓝色 */
								  if(redate.length>0){
									  var $joinreply = $(".comm_list>ul>li[name='"+d.id+"'] .message_box .elinfo .report .huifu");
									  $joinreply.text("参与回复");
									  $joinreply.addClass("joinreply"); 
								  }
								  
								  for(var j = 0;j <redate.length;j++){
									 // alert($("li[id='"+date[i].id+"'] .message_box .reply ul").size());
									 var sy = -(redate[j].user.userlevel*36+11);
									 time = getTime(redate[j].writetime);
									$(".comm_list>ul>li[name='"+d.id+"'] .message_box .reply ul").append('<li name="'+
											redate[j].id+'" id="'+redate[j].user.id
											+'" class="clearfix"><a href="" class="re_face info_link"><img src="'+
											redate[j].user.facepath+'"/></a><div class="re_content clearfix"><div class="re_head clearfix"><a href="" class="user_nickname info_link">'+
											redate[j].user.nickname+'</a><a href="" class="user_level" style="background-position:-78px '+sy+'px ;"></a><span>'+
											redate[j].content+'</span></div><div class="re_info"><span class="floor_date">'+time
											+'</span><i class="report"><a class="zan" href="javascript:;"><span>赞</span>(<b>'+redate[j].approvenum+'</b>)</a><a  class="huifu" href="javascript:;">回复</a><a href="javascript:;">举报</a></i></div></div></li>');
									/* 检查当前用户有没有给这条二级评论点赞，点赞的话文字改为已赞 */
									/* 前端验证用户是否登录 */
									var userid = $("textarea").attr("name");
										/* 已登录，异步请求检测 */
									  if(userid!=""){
										  var replyid = redate[j].id;
										  
										  (function(replyid){
											  $.get("/bilibili/comments/checkreply",{replyid:replyid},function(checkresult){
												  if(checkresult==1){
													  console.log(rawid);
													    $(" .message_box .reply ul li[name='"+replyid+"'] .re_content .re_info .report a:eq(0) span").text("已赞");  
												  }
											  });
										  })(replyid);
									  }
								  }
							}); 
						  })(date[i]); 
					}
					$(".message_box:eq(0)").addClass("first_comment");
				});
			}
			
			/* 用户给评论点赞功能，绑定点击事件 */
			$("body").on("click",".zan",function(){
				/* 前端验证用户是否登录 */
				var userid = $("textarea").attr("name");
				if(userid==""){
					tanchuang();
				}else{
				/* 判断是给二级评论点赞，还是一级评论点赞  */
				var isreply = $(this).closest(".reply");
				var $This =  $(this);
				var nowstate = $(this).find("span").text();
				/* 长度为0表示给一级评论点赞，长度为1表示给二级评论点赞 */
				if(isreply.length==0){
					var rawid =  $(this).closest("li").attr("name");
					
					$.get("/bilibili/comments/rawzan",{rawid:rawid,nowstate:nowstate},function(date){
						if(date==1){
							$This.find("span").text("已赞");
							/* 改评论总赞数加1 */
							$This.find("b").text(parseInt($This.find("b").text())+1);
						}else if(date==2){
							$This.find("span").text("赞");
							$This.find("b").text(parseInt($This.find("b").text())-1);
						}
					});
				}else if(isreply.length==1){
					var replyid = $(this).closest("li").attr("name");
					$.get("/bilibili/comments/replyzan",{replyid:replyid,nowstate:nowstate},function(date){
						if(date==1){
							$This.find("span").text("已赞");
							/* 改评论总赞数加1 */
							$This.find("b").text(parseInt($This.find("b").text())+1);
						}else if(date==2){
							$This.find("span").text("赞");
							$This.find("b").text(parseInt($This.find("b").text())-1);
						}
					});
					}
				}
			});
			
			/* 给颜文字按钮绑定事件 */
			$("body").on("click",".yanwenzi_open",function(){   /* yanwenzi_open_active */
				 var $This = $(this); 
				  if($This.hasClass("yanwenzi_open_active")){
					   $This.removeClass("yanwenzi_open_active"); 
					   $This.next().addClass("yanwenzi_input_hidden"); 
				 }else{
					 $This.addClass("yanwenzi_open_active");
					 $This.next().removeClass("yanwenzi_input_hidden"); 
				 } 
			});
			/* 给颜文字内容绑定事件 */
			$("body").on("click",".yanwenzi_input a",function(){
				var $This =$(this);
				$This.parents(".comm_textarea").find("textarea").append($This.text());
				/* 样式还原 */
				$This.parents(".yanweizi").find(".yanwenzi_open").removeClass("yanwenzi_open_active"); 
				$This.parent(".yanwenzi_input").addClass("yanwenzi_input_hidden");
			});
			
			/* 实时更新总评论数和总页数 */
			function countComms(){
				/* 先异步请求获取评论总条数 */
				$.get("/bilibili/comments/countcomms",{videoid:10001},function(date){
					$(".user_comments .common .common_head span:eq(0)").text(date);
					var page = Math.ceil(date/5);
					$(".normal_nav a:eq(7)").text(page);
					$(".jump_nav>span b").text(page);
					$(".pagelistbox_small span b").text(page);
				});
			}
			/* 分级选项卡添加事件 */
			$(".buttom_left").click(function(){
				$(".buttom_left").addClass("active");
				$(".buttom_right").removeClass("active");
				$(".with_info").css("display","block");
				$(".without_info").css("display","none");
			});
			$(".buttom_right").click(function(){
				$(".buttom_right").addClass("active");
				$(".buttom_left").removeClass("active");
				$(".with_info").css("display","none");
				$(".without_info").css("display","block");
			});
			
			
			
			
			countComms();
			/* 页面加载完成先按照默认排序加载第一页 */
			addli(10001,1,dividetype) ;
		});