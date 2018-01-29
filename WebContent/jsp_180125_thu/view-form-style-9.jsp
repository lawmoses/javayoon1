<%@page import="java.util.Map"%>
<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>요청 파라미터 출력</title>
</head>
<body>
	<b>requset.getParameter() 메서드 사용</b><br>
	name 파라미터 = <%=request.getParameter("name") %> <br>
	email 파라미터 = <%=request.getParameter("email") %> <br>
	phone 파라미터 = <%=request.getParameter("phone") %> <br>
	subject 파라미터 = <%=request.getParameter("subject") %> <br>
	message 파라미터 = <%=request.getParameter("message") %>
	<p>
	<b>request.getParameterValues() 메서드사용</b>
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
	<b>request.gtParameterNames()메서드 사용</b><br>
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
	<b>request.getParameterMap() 메서드 사용</b><br>
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