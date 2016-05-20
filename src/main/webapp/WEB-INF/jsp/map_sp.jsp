<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="spform"%> 
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>UTC Map</title>
 	<link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
 	<link rel="stylesheet" href='<c:url value="/resources/css/map.css" />'>
 	<link rel="stylesheet" href='<c:url value="/resources/css/search_box.css" />'>
 	<link rel="stylesheet" href='<c:url value="/resources/css/menu_sp.css" />'>
 	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
	<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDpVuerq95aDV5ETtwMkEAptrPqyNtXEsg"></script>
	<script src='<c:url value="/resources/js/map.js" />'></script>
	<script src='<c:url value="/resources/js/common.js" />'></script>
	<script src='<c:url value="/resources/js/jquery-1.12.0.min.js" />'></script>
  	<script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
  	<script src='<c:url value="/resources/js/overlay-text.js" />'></script>
	 <script type="text/javascript">
	 	//defining gobal private variable for the map
	 	var buildingLabel = [];
	 	var result = [];
	 	var arrLabel = [];
	 	var arrLineOb = [];
	 	var center = {x: 0, y: 0};
	 	var way = [];
	 	var polygon = [];
	 </script>
	 <!-- get coord of center map -->
	 <c:if test="${center != null }">
	 	<script type="text/javascript">
		 	center.x = '<c:out value="${center.x}"/>';
		 	center.y = '<c:out value="${center.y}"/>';
	 	</script>
	 </c:if>
	<!-- get arrLineay shape -->
	<c:forEach items = "${lsBuilding}" var = "cd">
		<script type="text/javascript">
			var id = '<c:out value="${cd.name}"/>';
			//alert("namebuilding: " + id );
			var x = ${cd.x};
			var y = ${cd.y};
			arr.push([id, x , y]);
		</script>
	</c:forEach>
		<!-- get arrLineay line coord -->
	<c:forEach items = "${lsLine}" var = "cd">
		<script type="text/javascript">
			var id = '<c:out value="${cd.name}"/>';
			var x = ${cd.x};
			var y = ${cd.y};
			arrLine.push([id, x , y]);
		</script>
	</c:forEach>
		<!-- get list label for search -->
	<c:forEach items = "${lsLabel}" var = "label">
		<script type="text/javascript">
			var label = '<c:out value="${label}"/>';
			arrLabel.push(label);
		</script>
	</c:forEach>
	<!-- get line obj -->
	<c:forEach items = "${lsLineOb}" var = "p">
		<script type="text/javascript">
			var id = ${p.id};
			var x = ${p.coord.x};
			var y = ${p.coord.y};
			var ob = {
				id : id + " ",
				x: x,
				y: y
			};
			//alert("id: " + ob.id);
			arrLineOb.push(ob);
		</script>
	</c:forEach>
	<!-- get way -->
	<c:forEach items = "${lsway}" var = "w">
		<script type="text/javascript">
			var x = ${w.x};
			var y = ${w.y};
			var obw = {
					lat: x,
					lng: y
			};
			way.push(obw);
		</script>
	</c:forEach>
	
	<!-- get building label -->
	<c:forEach items = "${lsBuildingLabel}" var = "bl">
		<script type="text/javascript">
			var label = '<c:out value="${bl.name}"/>';
			var other = '<c:out value="${bl.other}"/>';
			other += '-sp';
			label = upperFirstChar(label);
			var x = ${bl.x};
			var y = ${bl.y};
			
			var obl = {
					label: label,
					x: x,
					y: y,
					className: other
			};
			
			buildingLabel.push(obl);
		</script>
	</c:forEach>
	
	<!-- get search result -->
	<c:forEach items = "${lsInfo}" var = "result">
		<script type="text/javascript">
			var x = ${result.x};
			var y = ${result.y};
			var name = '<c:out value="${result.name}"/>';
			var func = '<c:out value="${result.func}"/>';
			var other = '<c:out value="${result.other}"/>';
			var ob = {
				x : x,
				y: y,
				name : name,
				func: func,
				other: other
			};
			result.push(ob);
		</script>
	</c:forEach>
	<!-- get area  -->
	<c:forEach items = "${polygon}" var = "pl">
		<script type="text/javascript">
			var x = ${pl.x};
			var y = ${pl.y};
			var ob = {
				lat: x,
			 	lng: y
			};
			polygon.push(ob);
		</script>
	</c:forEach>
	
	<script type="text/javascript">

	 	$(function() {
		  $( "#pos1" ).autocomplete({
		    source: arrLabel, 
		    open: function() { 
		        $('#pos1').autocomplete("widget").width(300);
		    }  
		  });
		});
	 	$(function() {
			  $( "#pos2" ).autocomplete({
			    source: arrLabel,
			    open: function() { 
			        $('#pos2').autocomplete("widget").width(300) ;
			    }  
			  });
		});
	 	
	 	var gCenter = new google.maps.LatLng(center.x, center.y);
		google.maps.event.addDomListener(window, 'load', function() {
			
			init("map-sp", 19);
			marker1.setMap(map);
			marker2.setMap(map);
			map.setCenter(gCenter);
			google.maps.event.addListener(map, 'click', function(event) {
		         getCoord(event, polygon, map);
		    });
			optionLine.path = way;
			optionLine.strokeColor = '#d02090';
			drawPolyline();
		});
		
		setTimeout(function() {
			setResult(result, 'sp');
			setBuildingLabel(buildingLabel, map);
			google.maps.event.addDomListener(map,'zoom_changed', function() {
				var zoom =  map.getZoom();
				if(zoom < 17) {
					clearAllLabel(arrBuildingLabel);
				}
				if(zoom >= 19) {
					setAllLabel(arrBuildingLabel);
				}
			});
			//drawPoint(arrLineOb);
		}, 1000);
	</script>
	<!-- hold search way condition -->
	<c:if test="${search1 != null}">
		<script type="text/javascript">
			var x = ${search1.x};
			var y = ${search1.y};
			var ob = {
				lat: x,
			 	lng: y
			};
			marker1.setPosition(ob);
			
		</script>
	</c:if>
	<c:if test="${search2 != null}">
		<script type="text/javascript">
			var x = ${search2.x};
			var y = ${search2.y};
			var ob = new google.maps.LatLng(x, y);
			marker2.setPosition(ob);
			
		</script>
	</c:if>
</head>
<body >
	<div id = "floating-panel">
		<div>
			<jsp:include page="search_sp.jsp"></jsp:include>
		</div>
		<div id ="menu-sp">
			<jsp:include page="menu_sp.jsp"></jsp:include>
		</div>
		
	</div>
	<div id = 'location'>
		<input type="button" class="btn btn-primary btn-lg" 
		style = "width: 200px; height: 100px;font-size: 50px;"
		onclick="locate()" value = "Định vị" />
	</div>
	<div id="map-sp" >
	</div>
</body>
</html>