<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Message</title>
 	<link rel="stylesheet" href='<c:url value="/resources/css/common.css" />'>
</head>
<body>
<form action="/student_final_pro/view/map_utc/1" >
	<table align="center">
		<tr>
			<td  style="font-weight: bold; color: #FF0000;">
				<c:if test="${not empty msg}">
					${msg}
				</c:if>
			</td>
		</tr>
		<br/><br/>
		<tr>
			<td align="center">
				<input class="btn" type="submit" value = 'Quay lại'>
			</td>
		</tr>
	</table>

</form>

<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>