function css(obj, attr) {
	return window.getComputedStyle ? window.getComputedStyle(obj, null)[attr] : obj.currentStyle[attr];
}

function startMove(obj, json, callback) {
	clearInterval(obj.oTimer);
	obj.oTimer = setInterval(function() {
		var bFinished = true;
		var iSpeed = 0;
		for (var attr in json) {
			var curr = 0;
			switch (attr) {
				case "opacity":
					curr = Math.round(css(obj, attr) * 100);
					break;
				default:
					curr = parseInt(css(obj, attr));
					break;
			}
			if (curr != json[attr]) {
				bFinished = false;
				iSpeed = (json[attr] - curr) /2;
				iSpeed = iSpeed > 0 ? Math.ceil(iSpeed) : Math.floor(iSpeed);
				curr += iSpeed;
				switch (attr) {
					case "opacity":
						obj.style.opacity = (curr) / 100;
						obj.style.filter = "alpha(opacity=" + (curr) + ")"
						break;
					default:
						obj.style[attr] = curr + "px";
						break;
				}
			}
		}
		if (bFinished) {
			clearInterval(obj.oTimer);
			callback && callback.call(obj);
		}
	}, 50);
}