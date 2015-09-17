function Anim(can, x1, y1) {

	this.can = can;
	this.x1 = x1;
	this.y1 = y1;
	var idx = 0;
	var go = true;
	var arrPoint = new Array();
	for (var y = 0; y < 5; y++) {
		for (var x = 0; x < 5; x++) {
			arrPoint.push(new Point(x * 96, y * 96))
		}
	}

	spriteSheet = new Image();
	spriteSheet.src = '../Images/ex.png';

	this.loop = function(ct) {
		if (!go)
			return;
		// ct.clearRect(0, 0, can.width, can.height);
		ct.drawImage(spriteSheet, arrPoint[idx].x, arrPoint[idx].y, 96, 90, x1,
				y1, 64, 64);
		if (++idx == arrPoint.length) {
			// idx = 0;
			go = false;
			// ct.clearRect(x1, y1, 64, 64);
			var i = arrExp.indexOf(this);
			arrExp.splice(i, 1);

		}

	}
}