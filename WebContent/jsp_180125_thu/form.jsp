<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>p.76 �� ����</title>
</head>
<body>

	<form action="/jspPro/jsp_180125_thu/viewParameter.jsp" method="post">
	<!-- <form action="/jspPro/jsp_180125_thu/viewParameter.jsp"> -->
	<!-- ���Ͱ��� method="post"�� ���ָ� ���۹���� get����� �ȴ�. �ּ�â�� ����Ѵ�. ���� -->
	<%-- <form action="<%= request.getRequestURI() %>jsp_180125_thu/viewParameter.jsp" method="post"></form> --%>
	�̸�1 : <input type="text" name="name" size="10"> <br>
	�̸�2 : <input type="text" name="name" size="10"> <br>
	�̸�3 : <input type="text" name="name" size="10"> <br>
	<!-- �̸�2 : <input type="text" name="name" size="10"> <br> -->
	�ּ� : <input type="text" name="address" size="30"> <br>
	�����ϴ� ����:
		<input type="checkbox" name="pet" value="dog">������
		<input type="checkbox" name="pet" value="cat">�����
		<input type="checkbox" name="pet" value="pig">����
	<br>
	<input type="submit" value="����">
	</form>
</body>
</html>