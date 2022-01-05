<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.javaex.vo.PersonVo" %>
<%@ page import="com.javaex.dao.PhoneDao" %>
<%@ page import="java.util.List" %>
    
<%
	
	//phonedao쓸거고
	PhoneDao phoneDao = new PhoneDao();
	
	//파라미터 받고
	String name = request.getParameter("name");
	String hp = request.getParameter("hp");
	String company = request.getParameter("company");
	String str = request.getParameter ("id");
	int id = Integer.parseInt(str);
	
	//personVo도 쓸거임
	PersonVo upvo = new PersonVo(id, name, hp, company);
	
	//수정
	phoneDao.personUpdate(upvo);
	
	
	//리스트가져오기
	//전체리스트 가져오기
	List<PersonVo> personList = phoneDao.getPersonList();
	
	
	//리다이렉션
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