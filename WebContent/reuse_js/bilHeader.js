		function css(obj, attr) {
				return window.getComputedStyle ? window.getComputedStyle(obj, null)[attr] : obj.currentStyle[attr];
				}
			
			var oLi=document.getElementById("nav11").children;
			var oA =document.getElementById("nav11").getElementsByTagName("a");
			var oC =document.getElementById("nav11").getElementsByTagName("c");
			var currIndex =0;
				for(var i=0,len=oLi.length;i<len;i++){
				oLi[i].onmouseover=function () {
					this.children[1].className="active";
					
				}
				oLi[i].onmouseleave=function(){
					this.children[1].className="none";
				}
				}
				for(var i=0,len=oA.length;i<len;i++){
					oA[i].onmouseover=function () {
					var w2 = parseInt(css(this.children[1],'width'));
					console.log(w2);
					var w3 = 95-w2;
					var w4 = w3-15;
						this.style.right="-10px";
						this.children[2].style.opacity=1;
						this.children[2].style.right=w4+'px';
					}
					oA[i].onmouseleave=function () {
						this.style.right="0";
						this.children[2].style.opacity=0;
						this.children[2].style.right="-35px";
					}
				}
				
				
	$(".face_exit>div>a").click(function(){
		$.get("/bilibili/user/exit",function(){
			
		});
		
	});