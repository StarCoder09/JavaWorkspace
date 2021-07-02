<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="st" uri="WEB-INF/tags.tld" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Custom Tags</title>
	</head>
	<body>
		<st:MyDate/>
		<st:CustomDateTag format="dd-MM-YYYY"/>
		<st:Upper>this sentence will be displayed in upper-case</st:Upper>
	</body>
</html>
