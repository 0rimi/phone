<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>  
    
<%	
	//해당 인물의 코드만 받기위한 파라미터
	String str = request.getParameter ("id");
	int id = Integer.parseInt(str);
	
%>  
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>[Phonebook1]</h1>
	
	<h2>전화번호 수정 폼(form)</h2>
	
	<p>전화번호를 수정하려면<br>
	   아래에 항목을 수정하고 "수정" 버튼을 누르세요.
	</p>
	
	<form action="./update.jsp?" method="get">
   		이름(name) : <input type="text" name="name" value=""><br>
   		핸드폰(hp) : <input type="text" name="hp" value=""><br>
   		회사(company) : <input type="text" name="company" value=""><br>
   		코드(id) : <input type=text name="id" value="<%=id %>">  <br>
   <button type="submit">수정</button>
   </form>
   
	

</body>
</html>