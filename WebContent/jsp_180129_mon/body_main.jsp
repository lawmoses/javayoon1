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

include �� name �Ķ���� �� : <%= request.getParameter("name") %> 
<!-- name �Ķ���͸� get������� ��������. URL���� ...jsp?name=aaa&name=bbb&name=ccc �̷� ������ �������� -->

<hr>

<jsp:include page="body_sub.jsp" flush="false">
	<jsp:param name="name" value="�ֹ���" />
</jsp:include>
	
<hr/>
	
include �� name �Ķ���� �� : <%= request.getParameter("name") %>

</body>
</html>