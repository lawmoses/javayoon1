<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	String value = "자바";
	String encodedValue = URLEncoder.encode(value, "EUC-KR"); 
	response.sendRedirect("/jspPro/jsp_180125_thu/index.jsp?name=" + encodedValue);
	/* response.sendRedirect("/jspPro/jsp_180125_thu/index.jsp?name=" ); */
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>p.95</title>
</head>
<body>

</body>
</html>