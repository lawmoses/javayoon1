<%@page import="java.util.Map"%>
<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>��û �Ķ���� ���</title>
</head>
<body>
	<b>requset.getParameter() �޼��� ���</b><br>
	name �Ķ���� = <%=request.getParameter("name") %> <br>
	email �Ķ���� = <%=request.getParameter("email") %> <br>
	phone �Ķ���� = <%=request.getParameter("phone") %> <br>
	subject �Ķ���� = <%=request.getParameter("subject") %> <br>
	message �Ķ���� = <%=request.getParameter("message") %>
	<p>
	<b>request.getParameterValues() �޼�����</b>
	<%
		String[] values = request.getParameterValues("submit");
		if (values != null){
			for (int i=0;i<values.length;i++){
	%>	
		<%= values[i] %>
	<%
			}
		}
	%>
	<P>
	<b>request.gtParameterNames()�޼��� ���</b><br>
	<%
		Enumeration paramEnum = request.getParameterNames();
		while(paramEnum.hasMoreElements()){
			String name = (String)paramEnum.nextElement();
	%>
		<%= name %>
	<%  
		}
	%>
	<P>
	<b>request.getParameterMap() �޼��� ���</b><br>
	<%
		Map parameterMap = request.getParameterMap();
		String[] nameParam = (String[])parameterMap.get("name"+" "+"email");
		if(nameParam != null){
	%>
		name= <%=nameParam[0] %>
	<%		
		}
	%>
	
</body>
</html>