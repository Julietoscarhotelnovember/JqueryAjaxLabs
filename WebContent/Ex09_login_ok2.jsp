<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<% 
 /* 
 EL 과 JSTL 사용해서 값을 받고
 user_id ,user_pw 받아서
 id:kglim 이고 pwd:1004 라면 로그인 성공 "success"
 둘중에 하나라도 틀리면 로그인 실패     실패 "fail" 

한글처리는 어떻게???  */
	request.setCharacterEncoding("utf-8");
%>

	
    <c:set var="user_id" value="${param.user_id}" />
    <c:set var="user_pwd" value="${param.user_pw}" />
	
	<c:choose>
		<c:when test="${user_id=='kglim' && user_pwd=='1004'}">
    		<c:set var="result" value="success" />
		</c:when>
		<c:otherwise>
			<c:set var="result" value="fail" />
		</c:otherwise>
	</c:choose>

${result}
