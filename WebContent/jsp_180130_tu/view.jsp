<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<% String code = request.getParameter("code");
   String viewPageURI = null;
   if(code.equals("A")){
	   viewPageURI = "/jsp_180130_tu/viewModule/a.jsp";
   } else if (code.equals("B")) {
	   viewPageURI = "/jsp_180130_tu/viewModule/b.jsp";
   } else if (code.equals("C")) {
	   viewPageURI = "/jsp_180130_tu/viewModue/c.jsp";
   }
%>
<jsp:forward page="<%= viewPageURI %>"/>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

</body>
</html>