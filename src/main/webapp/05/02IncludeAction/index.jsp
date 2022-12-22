<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
	<%@include file="module/link.jsp" %>
</head>

<body>
	<!-- header -->
  	<%@include file="module/header.jsp" %>
  	
  	<%@page import="java.io.*" %>
  	<%
  		System.out.println("REALPATH : " + pageContext.getServletContext().getRealPath("/"));
  		String filepath = pageContext.getServletContext().getRealPath("/");
  		File dir = new File(filepath+"05/02IncludeAction/actionTest");
  		String lists[] = dir.list();
  		for(String list : lists){
  			System.out.println("File : " + list);
  		}
  	
  	%>
	<!-- Action Tag -->
	<jsp:include page="module/section1.jsp">
		<jsp:param name="Img1" value="<%=lists[0] %>" />
		<jsp:param name="Img2" value="<%=lists[1] %>" />
		<jsp:param name="Img3" value="<%=lists[2] %>" />
		<jsp:param name="Img4" value="<%=lists[3] %>" />
		<jsp:param name="Img5" value="<%=lists[4] %>" />
	</jsp:include>

  	<!-- section2 -->
  	<%@include file="module/section2.jsp" %>

	<!-- section3 -->
	<%@include file="module/section3.jsp" %>
  
	<!-- section4 -->
	<%@include file="module/section4.jsp" %>

	<!-- section5 -->
	<%@include file="module/section5.jsp" %>
  
	<!-- scetion6 -->
	<%@include file="module/section6.jsp" %>

	<!-- footer -->
	<%@include file="module/footer.jsp" %>
  
  <div id="to-top">
    <i class="bi bi-upload"></i>
  </div>

</body>

</html>