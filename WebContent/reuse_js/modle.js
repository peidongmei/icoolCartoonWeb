$(function(){
	/*===========科技左半部分body跳转================*/
	/*$(".b-l .b-body").load("dynamic.html");*/
	$(".on0").addClass("on");
	$(".on0").click(function () {
		
		if($(this).hasClass("on")){
			
		}else{
		$(".v-list0000").removeClass("unselected");
		$(".v-list0001").addClass("unselected");
		$(this).addClass("on");
		if($(".on1").hasClass("on")){
			$(".on1").removeClass("on");}
		}
	});
	$(".on1").click(function () {
		if($(this).hasClass("on")){
			
		}else{
		$(".v-list0001").removeClass("unselected");
		$(".v-list0000").addClass("unselected");
		$(this).addClass("on");
		if($(".on0").hasClass("on")){
		$(".on0").removeClass("on");}
		}
	});
	/*===========科技左半部分head的刷新图旋转===================*/
	$(".read-push").mouseover(function () {
		this.children[0].style.transform='rotate(180deg)';
	});
	$(".read-push").mouseout(function () {
		this.children[0].style.transform='rotate(-180deg)';
	});
	/*=============科技右半部分head的悬浮特效=====================*/
	/*$(".modle-b-slt").mouseover(function () {
		$(this).addClass("onntab");
	})
	$(".modle-b-slt").mouseout(function () {
		$(this).removeClass("onntab");
	})*/
	/*============科技右半部分head的click特效======================*/
	$(".tab00>li").click(function () {
		$(this).addClass("unselected");
		$(".b-slt1").removeClass("unselected");
		$(".tab01>li").removeClass("unselected");
		/*==========科技右半部分head的三日选项卡特效================*/
		$("#rollplay1").addClass("unselected");
		$("#rollplay2").removeClass("unselected");
	})
	$(".tab01>li").click(function () {
		$(this).addClass("unselected");
		$(".tab00>li").removeClass("unselected");
		$(".b-slt1").addClass("unselected");
		/*=======科技右半部分head的一周选项卡特效=======*/
		$("#rollplay2").addClass("unselected");
		$("#rollplay1").removeClass("unselected");
	})
	/*================选中一周科技右半部分显示的轮播================*/
	var oDiv1=document.getElementById("rollplay1");
	var oDiv2=document.getElementById("rollplay2");
	var aLi=document.getElementById("b-tab1").getElementsByTagName("li");
	var currIndex=0;
	for(var i=0,len=aLi.length;i<len;i++){
		aLi[i].index=i;
		aLi[i].onmouseover=function(){
			if ($(".b-body").has("oDiv1")) {
				startMove(oDiv1,{left:-260*this.index});
			}else{
			}
			if ($(".b-body").has("oDiv2")) {
				startMove(oDiv2,{left:-260*this.index});
			}else{
			}
			for(var idx in aLi){
			aLi[idx].className="";
			}
			currIndex = this.index;
			this.className="on";
		}
	}
});
