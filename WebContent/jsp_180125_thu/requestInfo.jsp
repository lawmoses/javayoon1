<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>p.73 Ŭ���̾�Ʈ �� ���� ����</title>
</head>
<body>

Ŭ���̾�ƮIP = <%= request.getRemoteAddr() %> <br>
��û�������� = <%= request.getContentLength() %> <br>
��û���� ���ڵ� = <%= request.getCharacterEncoding() %> <br>
��û���� ������Ÿ�� = <%= request.getContentType() %> <br>
��û���� �������� = <%= request.getProtocol() %> <br>
��û���� ���۹�� = <%= request.getMethod() %> <br>
��û URI = <%= request.getRequestURI() %> <br>
���ؽ�Ʈ ��� = <%= request.getContextPath() %> <br>
�����̸� = <%= request.getServerName() %> <br>
������Ʈ = <%= request.getServerPort() %>

<!-- Ŭ���̾�ƮIP = 0:0:0:0:0:0:0:1 
��û�������� = -1 
��û���� ���ڵ� = null 
��û���� ������Ÿ�� = null 
��û���� �������� = HTTP/1.1 
��û���� ���۹�� = GET 
��û URI = /jspPro/jsp_180125_thu/requestInfo.jsp 
���ؽ�Ʈ ��� = /jspPro 
�����̸� = localhost 
������Ʈ = 8080 -->

</body>
</html>