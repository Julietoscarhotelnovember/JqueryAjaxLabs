<%@page import="net.sf.json.JSONArray"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="net.sf.json.JSONObject"%>
<%@page import="kr.or.kosta.ajax.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	Member member=new Member();
	JSONObject obj=JSONObject.fromObject(member);
	
	List<Member> memberlist=new ArrayList<Member>();
	memberlist.add(new Member("hong", "1004", "경기도 성남시", "0"));
	memberlist.add(new Member("kim", "1005", "경기도 용인시", "0"));
	memberlist.add(new Member("admin", "1009", "서울턱별시", "1"));
	
	JSONArray jarray=JSONArray.fromObject(memberlist);
%>
<h3>jsonobject를 통한 json 변환</h3>
<%=obj %>
<hr>
<h3>jsonarray를 통한 json 변환</h3>
<%=jarray %>
</body>
</html>