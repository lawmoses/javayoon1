<%@page import="java.io.IOException"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.InputStreamReader"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>절대 경로 사용하여 자원 읽기</title>
</head>
<body>

<%
	char[] buff = new char[128];
	int len = -1;
	
	String filepath = "C:\\Html5Projects\\html5Lab\\jspPro\\WebContent\\jsp_180126_fri\\notice2.txt";
	try(InputStreamReader fr = new InputStreamReader(new FileInputStream(filepath),"EUC-KR")){
		while((len = fr.read(buff)) != -1){
			out.print(new String(buff,0,len));
		}
	}catch(IOException ex){
		out.print("익셉션 발생: "+ex.getMessage());
	}
%>
</body>
</html>