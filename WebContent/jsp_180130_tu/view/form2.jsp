<%@page import="com.sun.org.apache.xpath.internal.compiler.Keywords"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>숙제</title>
</head>
<body>

<%-- 	<jsp:include page="/test/button.jsp"></jsp:include> --%>

	<%
	request.setCharacterEncoding("EUC-KR");
	/* 나중에 다시 공부하기 */
	%>
	
	<form method="post">
	<!-- <form action="/jspPro/jsp_180125_thu/viewParameter.jsp"> -->
	<!-- 위와같이 method="post"을 없애면 전송방식이 get방식이 된다. 주소창에 써야한다. 전부 -->
	<%-- <form action="<%= request.getRequestURI() %>jsp_180125_thu/viewParameter.jsp" method="post"></form> --%>
	제목 : <input type="text" name="title" size="10" value='<%= request.getParameter("title") %>'> <br>
	작성자 : <input type="text" name="name" size="10" value='<%= request.getParameter("name")%>'> <br>
	전화번호 : <input type="text" name="phone" size="10" value='<%= request.getParameter("phone") %>'> <br>
	내용 : <textarea type="text" name="message"><%= request.getParameter("message") %></textarea><br>
	
	비밀번호: <input type="password" name="password" size="10"  value='<%= request.getParameter("password") %>'> <br>
	<input type="submit" value="전송">
	</form>
	
	
	
</body>
</html>