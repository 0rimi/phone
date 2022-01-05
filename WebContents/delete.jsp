<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "com.javaex.dao.PhoneDao" %>    

<%

	PhoneDao phoneDao = new PhoneDao();

	String str = request.getParameter ("id");
	int id = Integer.parseInt(str);
	
	phoneDao.personDelete(id);
	
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
	삭제페이지
</body>
</html>