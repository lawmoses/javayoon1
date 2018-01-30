<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	request.setCharacterEncoding("EUC-KR");
%>
<jsp:useBean id="memberInfo" class="chap08.MemberInfo"/>
<jsp:setProperty property="*" name="memberInfo"></jsp:setProperty>
<jsp:setProperty property="password" name="memberInfo" value="<%= memberInfo.getId() %>"/>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>가입</title>
</head>
<body>


<table width="400" border="1" cellpadding="0" cellspacing="0">
<tr>
	<td>아이디</td>
	<td>${memberInfo.id}:<%=memberInfo.getId() %></td>
	<%-- <td><jsp:getProperty property="id" name="memberInfo"/></td> --%>
	<td>암호</td>
	<td><jsp:getProperty property="password" name="memberInfo"/></td>
</tr>
<tr>
	<td>이름</td>
	<td><jsp:getProperty property="name" name="memberInfo"/></td>
	<td>이메일</td>
	<td><jsp:getProperty property="email" name="memberInfo"/></td>
</tr>
</table>
<%= memberInfo %>
</body>
</html>