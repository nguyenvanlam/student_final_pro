//text overlays
function TxtOverlay(pos, txt, cls, map) {
	this.pos = pos; // vi tri
	this.txt_ = txt; // dong chu
	this.cls_ = cls; // ten class name -> dinh dang style cho the div
	this.map_ = map; // map de gan chu vao
	// luu tru text,khi ham onadd dc goi thi no dc tao
	this.div_ = null;
	this.setMap(map);
}
TxtOverlay.prototype = new google.maps.OverlayView();
TxtOverlay.prototype.onAdd = function() {
	// tao div cung cac thuoc tinh
	var div = document.createElement('DIV');
	div.className = this.cls_;
	div.innerHTML = this.txt_;
	// gan div vua tao vao thuoc tinh div cua lop TxtOverlay
	this.div_ = div;
	var overlayProjection = this.getProjection();
	var position = overlayProjection.fromLatLngToDivPixel(this.pos);
	div.style.left = position.x + 'px';
	div.style.top = position.y + 'px';
	// gan overlay vao map qua panes
	var panes = this.getPanes();
	panes.floatPane.appendChild(div);
}
TxtOverlay.prototype.draw = function() {
	var overlayProjection = this.getProjection();
	// chuyen tu latlong sang pixel
	var position = overlayProjection.fromLatLngToDivPixel(this.pos);
	var div = this.div_;
	div.style.left = position.x + 'px';
	div.style.top = position.y + 'px';
}
// remove
TxtOverlay.prototype.onRemove = function() {
	this.div_.parentNode.removeChild(this.div_);
	this.div_ = null;
}

var arrBuildingLabel = [];
var ibl = 0;
//set text on map
function setText(label, coordX, coordY, className, map) {
	var txt =  label;
	var coord = new google.maps.LatLng(coordX, coordY);
	arrBuildingLabel[ibl++] = new TxtOverlay(coord, txt, className, map);
}

/**for set text building
 * 
 * @param arrText [label, x, y, className]
 */
function setBuildingLabel(arrText, map) {
	var size = arrText.length;
	for(var i = 0; i < size; i++) {
		setText(arrText[i].label, arrText[i].x, arrText[i].y, arrText[i].className, map);
	}
}
