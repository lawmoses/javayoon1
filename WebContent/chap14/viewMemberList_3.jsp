<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="com.sun.xml.internal.ws.api.ha.StickyFeature"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>ȸ�� ���</title>
</head>
<body>

å 380 ������
MEMBER ���̺��� ����
<table width="100%" border="1">
<tr>
	<td>MEMBERID</td><td>NAME</td><td>EMAIL</td>
</tr>
<%
	//1.JDBC ����̹� �ε�
	//�̺κе� å�� �ٸ��� �ٲ���. ����Ŭ�� �����ϱ� ����.
	Class.forName("oracle.jdbc.driver.OracleDriver");
	//������� å�� �ٸ��� �ٲ���.

	Connection conn = null;
	Statement stmt = null;
	ResultSet rs = null;
	
	try {
		//�̺κк��� å�̶� �ٸ��� �����Ͽ���. ����Ŭ�� �����ϱ� ����.
		String jdbcDriver = "jdbc:oracle:thin:@localhost:1521:orcl";
		String dbUser = "scott";
		String dbPass = "tiger";
		//������� å�̶� �ٸ��� ������
		
		//�̺κе� å�� �ٸ��� ������.
		String query = "select * from member";
		//���Ⱑ�� å�� �ٸ��� ������.
		
		// 2.�����ͺ��̽� Ŀ�ؼ� ����
		conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
		
		// 3.Statement ����
		stmt = conn.createStatement();
		
		//4. ��������
		rs = stmt.executeQuery(query);
		
		// 5. ���� ���� ��� ���
		while(rs.next()){
%>
<tr>
	<!-- �� �κе� å�� �ٸ��� ������ ���� 1,2,3�� ù��° �ι�° ����° �� -->
	<td><%= rs.getString(1) %></td>
	<td><%= rs.getString(3) %></td>
	<td><%= rs.getString(4) %></td>
	<!-- ������� å�� �ٸ��� ������.  -->
</tr>
<%
		}
	}catch(SQLException ex) {
		out.println(ex.getMessage());
		ex.printStackTrace();
	}finally {
		// 6.����� Statement ����
		if (rs != null) try {rs.close();} catch(SQLException ex) {}
		if (stmt != null) try {stmt.close();} catch(SQLException ex) {}
		
		// 7.Ŀ�ؼ� ����
		if (conn != null) try {conn.close();} catch(SQLException ex) {}
	}
%>
</table>


</body>
</html>