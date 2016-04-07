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
<title>Search Way</title>
</head>
<body>
<div id="tfheader-sp">
<br/>
	<form id="tfnewsearch-sp" action="${baseUrl}/search" method="post">
		<input type="hidden" id = "func" name = "func" value = "0">
		<table class = "tbl-sp">
			<th><span>Tìm kiếm</span></th>
			<tr>
				<td><span>Điểm 1: </span></td>&nbsp;
				<td>
					<input class="tftextinput-sp" type ="text" value = "" name = "pos1" id="pos1" 
					placeholder = "entry pos 1"/>
				</td>&nbsp;
				<td>
					<input type="submit" value = "Tìm đường" name="way" 
						onclick="document.getElementById('func').value = '1';"
							class="tfbutton-sp"
					>	
				</td>
			</tr>
			
			<tr>
				<td><span>Điểm 2: </span></td>&nbsp;
				<td>
					<input type ="text" value = "" name = "pos2" id = "pos2" placeholder = "entry pos 2"
					class="tftextinput-sp"/>&nbsp;
				</td>
				<td>
					<input type="submit" value = "Thông tin" name ="search"
					class="tfbutton-sp"
						onclick="document.getElementById('func').value = '2';"
					>
				</td>
			</tr>
		</table>
	</form>
</div>
</body>
</html>