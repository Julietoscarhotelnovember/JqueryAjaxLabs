<%@page import="net.sf.json.JSONArray"%>
<%@page import="kr.or.kosta.ajax.Emp"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	Class.forName("oracle.jdbc.OracleDriver");
	Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "kglim", "1004");
	String sql = "select empno, ename, sal ,job from emp";
	PreparedStatement ps = con.prepareStatement(sql);
	ResultSet rs = ps.executeQuery();
	
	//json으로 바꾸는 가장 편한 방법은 list형태로
	List<Emp> elist=new ArrayList<Emp>();
	
	while (rs.next()) {
		Emp emp=new Emp();
		emp.setEmpno(rs.getInt(1));
		emp.setEname(rs.getString(2));		
		emp.setSal(rs.getInt(3));
		emp.setJob(rs.getString(4));
		elist.add(emp);
	}
	
	JSONArray emplist=JSONArray.fromObject(elist);
	
	rs.close();
	ps.close();
	con.close();
%>
<%=emplist %>
</body>
</html>