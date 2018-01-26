<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	String id = request.getParameter("memberId");
	if (id !=null && id.equals("madvirus")){
		response.sendRedirect("/jspPro/jsp_180125_thu/index.jsp");
	}else{
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>로그인에 실패</title>
</head>
<body>
잘못된 아이디 입니다.
</body>
</html>
<%
	}
%>
<!-- 주소창에 이거 치기. 겟방식 
http://localhost:8080/jspPro/jsp_180125_thu/index.jsp?memvberId=madvirus -->
