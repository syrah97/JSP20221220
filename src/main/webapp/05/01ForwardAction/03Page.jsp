<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>03PAGE</h1>

	<%
	String userid = request.getParameter("userid");
	String pwd = request.getParameter("pwd");
	String value = (String)request.getAttribute("02page");
	System.out.println("=============================");
	System.out.println("[03Page] userid : " + userid);
	System.out.println("[03Page] pwd : " + pwd);
	System.out.println("[03Page] 02Page : " + value);
	System.out.println("=============================");
	
	request.setAttribute("03page", "03Value");
	%>
	
	<jsp:forward page="04Page.jsp">
		<jsp:param name="03page" value="03page로부터 전달되는 값입니다." />
	</jsp:forward>
	
	

</body>
</html>