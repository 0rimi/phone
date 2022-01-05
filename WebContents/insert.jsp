<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.javaex.vo.PersonVo" %>
<%@ page import="com.javaex.dao.PhoneDao" %>
<%@ page import="java.util.List" %>

    
<%
	//PhoneDao를 메모리에 올린다
	PhoneDao phoneDao = new PhoneDao();
	

	/////저장관련
	//파라미터값 가져오기
	String name = request.getParameter("name");
	String hp = request.getParameter("hp");
	String company = request.getParameter("company");
	
	//전송된 값을 vo객체로 전환
	PersonVo personVo = new PersonVo(name, hp, company);
	
	//저장
	phoneDao.personInsert(personVo);
	
	
	////////리스트가져오기
	//전체리스트 가져오기
	List<PersonVo> personList = phoneDao.getPersonList();
	
	//html로 본문에 보여줘야지!
	//http://localhost:8088/phonebook1/list.jsp 엔터치는 기능
	response.sendRedirect("./list.jsp");
	
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>



</body>
</html>