<%@page import="com.sun.org.apache.xpath.internal.compiler.Keywords"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>����</title>
</head>
<body>

<%-- 	<jsp:include page="/test/button.jsp"></jsp:include> --%>

	<%
	request.setCharacterEncoding("EUC-KR");
	/* ���߿� �ٽ� �����ϱ� */
	%>
	
	<form method="post">
	<!-- <form action="/jspPro/jsp_180125_thu/viewParameter.jsp"> -->
	<!-- ���Ͱ��� method="post"�� ���ָ� ���۹���� get����� �ȴ�. �ּ�â�� ����Ѵ�. ���� -->
	<%-- <form action="<%= request.getRequestURI() %>jsp_180125_thu/viewParameter.jsp" method="post"></form> --%>
	���� : <input type="text" name="title" size="10" value='<%= request.getParameter("title") %>'> <br>
	�ۼ��� : <input type="text" name="name" size="10" value='<%= request.getParameter("name")%>'> <br>
	��ȭ��ȣ : <input type="text" name="phone" size="10" value='<%= request.getParameter("phone") %>'> <br>
	���� : <textarea type="text" name="message"><%= request.getParameter("message") %></textarea><br>
	
	��й�ȣ: <input type="password" name="password" size="10"  value='<%= request.getParameter("password") %>'> <br>
	<input type="submit" value="����">
	</form>
	
	
	
</body>
</html>