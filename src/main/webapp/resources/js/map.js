var marker1 =  new google.maps.Marker({
	position : {lat:0, lng: 0},
	label: "1",
	map : null,
});
var count = 0;
//locating for your location
function locate() {
	if (navigator.geolocation) {
		navigator.geolocation.getCurrentPosition(function(position) {
			//alert("lat: " +  position.coords.latitude + ", long: " +  position.coords.longitude);
			var p = {
				lat : position.coords.latitude,
				lng : position.coords.longitude
			};
			var infoWindow = new google.maps.InfoWindow({
				map : map
			});
			infoWindow.setPosition(p);
			infoWindow.setContent('Location found.');
			marker1.setPosition(p);
			var pos1 = document.getElementById("pos1");
		//	pos1.value = (Math.round(p.lat * 1000000) / 1000000) + ", "
		//	+ (Math.round(p.lng * 1000000) / 1000000);
			pos1.value = (p.lat + ", "
			+ p.lng);
			marker1.setMap(map);
			count = 1;
		}, function() {
			handleLocationError(false, infoWindow, map.getCenter());
		}, {maximumAge:600000, timeout:5000, enableHighAccuracy: true});
	}
}
function handleLocationError(browserHasGeolocation, infoWindow, pos) {
	var infoWindow = new google.maps.InfoWindow({
		map : map
	});
	infoWindow.setPosition(pos);
	infoWindow
			.setContent(browserHasGeolocation ? 'Error: The Geolocation service failed.'
					: 'Error: Your browser doesn\'t support geolocation.');
}
//-------------gobal val----------------

var map;
var temp = [];
var arr = [];
var arrLine = [];

var marker2 =  new google.maps.Marker({
	position : {lat:0, lng: 0},
	label: "2",
	map : null,
});
temp.push({
	lat : 21.027502,
	lng : 105.803014
});
temp.push({
	lat : 21.027419,
	lng : 105.802958
});
temp.push({
	lat : 21.027151,
	lng : 105.803500
});

var options = {
	paths : temp,
	strokeColor : '#FF0000',
	strokeOpacity : 0.8,
	strokeWeight : 3,
	fillColor : '#FF0000',
	fillOpacity : 0.35
};
var optionLine = {
	path : temp,
	geodesic : true,
	strokeColor : '#FFF',
	strokeOpacity : 1.0,
	strokeWeight : 5
};
//--------------end gobal-----------

//ve duong di
function drawPolyline() {
	var line = new google.maps.Polyline(optionLine);
	line.setMap(map);
}
//ve cac duong di
function drawLines() {
	var size = arrLine.length;
	if (size > 0) {
		var it = 0;
		temp[it++] = {
			lat : arrLine[0][1],
			lng : arrLine[0][2]
		};
		for (var i = 1; i < size; i++) {
			if (arrLine[i][0] == arrLine[i - 1][0]) {
				temp[it++] = {
					lat : arrLine[i][1],
					lng : arrLine[i][2]
				};
			} else {
				optionLine.path = temp;
				drawPolyline(optionLine);
				it = 0;
				temp = [];
				temp[it++] = {
					lat : arrLine[i][1],
					lng : arrLine[i][2]
				};
			}
		}
		if (it > 0) {
			optionLine.path = temp;
			drawPolyline(optionLine);
		}

	}
}
//ve toa nha
function drawPolygon() {
	var poly = new google.maps.Polygon(options);
	poly.setMap(map);
}
//ve cac toa nha
function drawShapes() {
	var size = arr.length;
	if (size > 0) {
		var it = 0;
		temp[it++] = {
			lat : arr[0][1],
			lng : arr[0][2]
		};
		for (var i = 1; i < size; i++) {
			if (arr[i][0] == arr[i - 1][0]) {
				temp[it++] = {
					lat : arr[i][1],
					lng : arr[i][2]
				};
			} else {
				options.paths = temp;
				drawPolygon(options);
				it = 0;
				temp = [];
				temp[it++] = {
					lat : arr[i][1],
					lng : arr[i][2]
				};
			}
		}
		if (it > 0) {
			options.paths = temp;
			drawPolygon(options);
		}
	}
}
//clear all building label
function clearAllLabel(arrBuildingLabel) {
	var length = arrBuildingLabel.length;
	for(var i = 0; i < length;i++) {
		arrBuildingLabel[i].setMap(null);
	}
}
//set all text on map
function setAllLabel(arrBuildingLabel) {
	var length = arrBuildingLabel.length;
	for(var i = 0; i < length;i++) {
		arrBuildingLabel[i].setMap(map);
	}
}

function init(idmap, sizeZoom) {
	var latlng = new google.maps.LatLng(21.030689, 105.794304);
	var myOptions = {
		zoom : sizeZoom,
		//mapTypeControl : false,
		center : latlng,
		mapTypeId : google.maps.MapTypeId.TERRAIN,
		styles: [{ featureType: "all", elementType: "labels", stylers: [{ visibility: "off" }]}]
	
	};
	map = new google.maps.Map(document.getElementById(idmap), myOptions);
	drawShapes();
	drawLines();
	
}

function upperFirstChar(str) {
    var n = str.charCodeAt(0);
    if(n >= 97 && n <= 122) {
    	n -= 32;
    }
    return setCharAt(str, 0, String.fromCharCode(n) );
}
function setCharAt(str,index,chr) {
	if(index > str.length-1 || index < 0) return str;
	return str.substr(0,index) + chr + str.substr(index+1);
}

//set search result on map
function setResult(result, device) {
	var size = result.length;
	if(device == 'sp') {
		beginTag = "<div><p>";
		endTag = "</p></div>";
	} else {
		beginTag = "<div>";
		endTag = "</div>";
	}
	for(var i = 0; i < size; i++) {
		var  contentString = beginTag + upperFirstChar(result[i].name)
		+ "<br/>" + upperFirstChar(result[i].func) + "<br/>" + upperFirstChar(result[i].other) + endTag;
		;
		//alert("string: " + contentString);
		var info = new google.maps.InfoWindow({
						content: contentString,
						position:{lat: result[i].x, lng: result[i].y}
		});
		info.setMap(map);
	}
}
//draw maker
function drawPoint(arrLineOb) {
	var size = arrLineOb.length;
	for(var i = 0; i < size; i++) {
		var pos = {lat: arrLineOb[i].x, lng: arrLineOb[i].y};
		var str = arrLineOb[i].id;
		var infoo = new google.maps.InfoWindow({
			content: str,
			position:pos
		});
		infoo.setMap(map);
	}
}

function getCoord(e, polygon) {
	var myLatLng = e.latLng;
    var lat1 = myLatLng.lat();
    var lng1 = myLatLng.lng();
    var pos1 = document.getElementById("pos1");
    var pos2 = document.getElementById("pos2");
    var pGoogle = new google.maps.LatLng(lat1, lng1);
	if (insideArea(e, polygon)) {
		if (count == 0) {
			marker1.setMap(null);
			pos1.value = (Math.round(lat1 * 1000000) / 1000000) + ", "
					+ (Math.round(lng1 * 1000000) / 1000000);
			marker1.setPosition(pGoogle);
			marker1.setMap(map);
			count = 1;
		} else {
			marker2.setMap(null);
			pos2.value = (Math.round(lat1 * 1000000) / 1000000) + ", "
					+ (Math.round(lng1 * 1000000) / 1000000);
			marker2.setPosition(pGoogle);
			marker2.setMap(map);
			count = 0;
		}
	}
}

/**
 * polygon array latlng coord point: coord was considered
 */
function insideArea(e, temp) {
	var poly = new google.maps.Polygon({
		paths : temp
	});
	var result = google.maps.geometry.poly.containsLocation(e.latLng,
			poly);
	
	return result;

}