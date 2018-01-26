<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>로그 메시지 기록</title>
</head>
<body>
<%
	application.log("로그 메시지 기록");
	/* 톰캣 실행시 빨간글씨 - 로그에 남길 수 있다. 로그는 모두 기록되기 때문이다. */
	application.log("야호");
	application.log("우우우");
%>
로그 메시지를 기록합니다.
</body>
</html>