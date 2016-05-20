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
<div id="tfheader">
<br/>
	<form id="tfnewsearch-sp" action="${baseUrl}/search" method="post">
		<input type="hidden" id = "func" name = "func" value = "0">
		<table class = "">
			<th><span>Tìm kiếm</span></th>
			<tr>
				<td><span>Điểm 1: </span></td>&nbsp;
				<td>
					<input class="form-control input-lg" type ="text" value = "" name = "pos1" id="pos1" 
					placeholder = "Nhập điểm 1" style="font-size: 30px;"/>
				</td>
				<td style="padding:0 20px 0 20px;">
					<input type="submit" value = "Tìm đường" name="way" 
						onclick="document.getElementById('func').value = '1';"
							class="btn-primary btn btn-lg"
					>	
				</td>
			</tr>
			
			<tr >
				<td style="padding:5px 0px 0 0px;"><span>Điểm 2: </span></td>&nbsp;
				<td>
					<input type ="text" value = "" name = "pos2" id = "pos2" placeholder = "Nhập điểm 2"
					style="font-size: 30px;"
					class="form-control input-lg"/>
				</td>
				<td style="padding:5px 20px 0 20px;">
					<input type="submit" value = "Thông tin" name ="search"
					class="btn-primary btn btn-lg "  style ="width: 120px;"
						onclick="document.getElementById('func').value = '2';"
					>
				</td>
			</tr>
		</table>
	</form>
</div>
</body>
</html>