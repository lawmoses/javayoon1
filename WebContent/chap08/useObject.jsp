<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<!-- MemberInfo member = new MemberInfo(); -->

<jsp:useBean id="member" scope="request" class="chap08.MemberInfo"/>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>�λ縻</title>
</head>
<body>

<%= member.getName() %>
(<%= member.getId() %>)
ȸ����
�ȳ��ϼ���.

</body>
</html>