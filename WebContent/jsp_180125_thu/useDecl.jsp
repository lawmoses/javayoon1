<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>p.69 ����θ� ����� �� �������� ��</title>
</head>
<body>p.69 ������ �����̶� �ణ �ٸ��� �����

10 * 25  = <%= multiply(10, 25) %>
<br><%=name %>

<%! String name="aaa"; %> <!-- �տ� ����ǥ(!) �������ν� Ŭ���� �κп� ��. ������� �ȵǵ� ��. -->
<%!
	public int multiply(int a, int b){
		int c = a * b;
		return c;
	}
%>
</body>
</html>