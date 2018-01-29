<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<% request.setCharacterEncoding("EUC-KR"); %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>INFO</title>
</head>
<body>

include 전 name 파라미터 값 : <%= request.getParameter("name") %> 
<!-- name 파라미터를 get방식으로 보내야해. URL에서 ...jsp?name=aaa&name=bbb&name=ccc 이런 식으로 보내야해 -->

<hr>

<jsp:include page="body_sub.jsp" flush="false">
	<jsp:param name="name" value="최범균" />
</jsp:include>
	
<hr/>
	
include 후 name 파라미터 값 : <%= request.getParameter("name") %>

</body>
</html>