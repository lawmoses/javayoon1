<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>p.69 선언부를 사용한 두 정수값의 곱</title>
</head>
<body>p.69 교과서 내용이랑 약간 다르게 설명됨

10 * 25  = <%= multiply(10, 25) %>
<br><%=name %>

<%! String name="aaa"; %> <!-- 앞에 느낌표(!) 해줌으로써 클래스 부분에 들어감. 순서대로 안되도 됨. -->
<%!
	public int multiply(int a, int b){
		int c = a * b;
		return c;
	}
%>
</body>
</html>