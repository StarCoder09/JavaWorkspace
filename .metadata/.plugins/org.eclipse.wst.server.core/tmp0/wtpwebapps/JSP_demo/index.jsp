<%@ page import="java.util.Date" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>JSP Demo</title>
	</head>
	<body>
		<div align="center">
			<h1>Hello from HTML !</h1>
			<%= "<h1>Hello from JSP</h1>" %>
			
			<%
				int x=10;
			%>
			<input type="text" value="<%= x %>"><br/><br/>
			
			<%
				for(int i=0;i<=5;i++){
					out.print("i = " + i + "<br/>");
				}
			%>
			<br/>
			Today's Date is <%= new Date() %>
			<%--JSP Implicit Objects
				out - JspWriter
				application - ServletContext
				config - ServletConfig
				page - Object
				pageContext - PageContext
				Exception - Throwable
				request - HttpServletRequest
				response - HttpServletResponse
				
			 --%>
			 <br/><br/>
			 <form action="">
			 	Enter Name : <input type="text" name="fname">
			 	<input type="submit" value="Click me" name="click">
			 </form>
			 <br/>
			 
			 <%
			 	if(request.getParameter("click") != null) {
			 		out.print("Hello " + request.getParameter("fname") + "<br/><br/>");
			 	}
			 %>
		</div>
		<%@include file="footer.html" %>
	</body>
</html>
