<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>�Ķ���� ���</title>
</head>
<body>

	name �Ķ���� �� :
	<%
	try {
	%>
	<%=request.getParameter("name").toUpperCase() %>
	<%
		} catch (Exception ex) {
	%>
	name �Ķ���Ͱ� �ùٸ��� �ʽ��ϴ�.
	<% 
		}
	%>
	
	�ٽ� ģ��
	<%
	try {
	%>
	<%=request.getParameter("name").toUpperCase() %>
	<%
		} catch (Exception ex){
	%>
	name �Ķ���Ͱ� �ùٸ��� �ʽ��ϴ�.
	<%
		}
	%>
	
	

</body>
</html>