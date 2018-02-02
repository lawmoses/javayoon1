<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	String idValue = request.getParameter("id");

	Connection conn = null;
	PreparedStatement pstmtItem = null;
	PreparedStatement pstmtDetail = null;
	
	String jdbcDriver = "jdbc:oracle:thin:@localhost:1521:orcl";
	String dbUser = "scott";
	String dbPass = "tiger";
	
	Throwable occuredExeption = null;
	
	try {
		int id = Integer.parseInt(idValue);
		
		conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
		conn.setAutoCommit(false);
		
		pstmtItem = conn.prepareStatement("insert into ITEM values (?,?)");
		pstmtItem.setInt(1, id);
		pstmtItem.setString(2, "상품 이름" + id);
		pstmtItem.executeUpdate();
		
		if(request.getParameter("error") != null) {
			throw new Exception("의도적 익셉션 발생");
		}
		
		pstmtDetail = conn.prepareStatement("insert into ITEM_DETAIL value (?,?)");
		pstmtDetail.setInt(1, id);
		pstmtDetail.setString(2, "상세 설명" + id);
		pstmtDetail.executeUpdate();
		
		conn.commit();
	} catch(Throwable e) {
		if (conn != null) {
			try {
				conn.rollback();
			} catch (SQLException ex) {}
		}
		occuredExeption = e;
	} finally {
		if (pstmtItem != null)
			try { pstmtItem.close(); } catch(SQLException ex) {}
		if (pstmtDetail != null)
			try { pstmtDetail.close(); } catch(SQLException ex) {}
		if (conn != null) try {conn.close();} catch(SQLException ex){}
	}
%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>값 입력</title>
</head>
<body>

<% %>

</body>
</html>