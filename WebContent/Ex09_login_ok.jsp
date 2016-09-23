<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<% 
 /* 
 EL 과 JSTL 사용해서 값을 받고
 user_id ,user_pw 받아서
 id:kglim 이고 pwd:1004 라면 로그인 성공 "success"
 둘중에 하나라도 틀리면 로그인 실패     실패 "fail" 
 */

%>
<%
	request.setCharacterEncoding("utf-8");
    String user_id = request.getParameter("user_id");
    String user_pwd= request.getParameter("user_pw");
       
    String result = null;
    if(user_id.equals("kglim") && user_pwd.equals("1004")){
    	result="success";
    }else{
    	result="fail";
    }
%>
<%=result%>	
