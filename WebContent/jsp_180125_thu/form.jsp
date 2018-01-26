<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>p.76 폼 생성</title>
</head>
<body>

	<form action="/jspPro/jsp_180125_thu/viewParameter.jsp" method="post">
	<!-- <form action="/jspPro/jsp_180125_thu/viewParameter.jsp"> -->
	<!-- 위와같이 method="post"을 없애면 전송방식이 get방식이 된다. 주소창에 써야한다. 전부 -->
	<%-- <form action="<%= request.getRequestURI() %>jsp_180125_thu/viewParameter.jsp" method="post"></form> --%>
	이름1 : <input type="text" name="name" size="10"> <br>
	이름2 : <input type="text" name="name" size="10"> <br>
	이름3 : <input type="text" name="name" size="10"> <br>
	<!-- 이름2 : <input type="text" name="name" size="10"> <br> -->
	주소 : <input type="text" name="address" size="30"> <br>
	좋아하는 동물:
		<input type="checkbox" name="pet" value="dog">강아지
		<input type="checkbox" name="pet" value="cat">고양이
		<input type="checkbox" name="pet" value="pig">돼지
	<br>
	<input type="submit" value="전송">
	</form>
</body>
</html>