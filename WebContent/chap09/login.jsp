<%@page import="util.Cookies"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	String id = request.getParameter("id");
	String password = request.getParameter("password");
	
	if(id.equals(password)){
		//ID와 암호가 같으면 로그인에 성공한 것으로 판단.
		response.addCookie(Cookies.createCookie("AUTH", id, "/",-1)
	);
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>로그인 성공</title>
</head>
<body>
	
	로그인에 성공했습니다.
	
</body>
</html>

<%
	} else {//로그인 실패시
%>
<script>
alert("로그인에 실패하였습니다");
history.go(-1);
</script>
<%
	}
%>




