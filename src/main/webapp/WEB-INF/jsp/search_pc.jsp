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
	<form id="tfnewsearch" action="${baseUrl}/search" method="post">
		<input type="hidden" id = "func" name = "func" value = "0">
		<table>
			<th><span style = "">Tìm kiếm</span></th>
			<tr><td>Điểm 1: </td></tr>
			<tr>
				<td><input class="form-control" type ="text" value = "" name = "pos1" id="pos1" 
				placeholder = "Nhập điểm 1"/></td>
			</tr>
			<tr><td>Điểm 2: </td></tr>
			<tr>
				<td><input type ="text" value = "" name = "pos2" id = "pos2" placeholder = "Nhập điểm 2"
				class="form-control"/></td>
			</tr>
			<tr>
				<td>
					<br/>
					<input type="submit" value = "Tìm đường" name="way" 
						onclick="document.getElementById('func').value = '1';"
							class="btn-primary"
					>	&nbsp;
					<input type="submit" value = "Thông tin" name ="search"
					class="btn-primary"
						onclick="document.getElementById('func').value = '2';"
					> &nbsp;
					
				</td>
			</tr>
		</table>
	</form>
</div>
</body>
</html>