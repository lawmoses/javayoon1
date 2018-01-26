<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page pageEncoding="utf-8" %> <! 이거 있으니까 실행 안됨 책이랑 설명이 좀 다른 듯. >
<%
	Date now = new Date();
%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>p.64 현재 시간</title>
</head>
<body>
현재 시각 :
<%=now %>
</body>
</html>