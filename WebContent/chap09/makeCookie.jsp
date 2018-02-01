<%@page import="java.net.URLDecoder"%>
<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	Cookie cookie = new Cookie("name3",URLEncoder.encode("최범균3","EUC-KR"));
	response.addCookie(cookie);
	/* name2-최범균2 , name3-최범균3 해서 더 만들었음 */
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>쿠키 생성</title>
</head>
<body>

<%= cookie.getName() %>
쿠기의 값 = "<%= URLDecoder.decode(cookie.getValue(),"EUC-KR") %>"

</body>
</html>