<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>  
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    The student is confirmed : ${studentModel.firstName} ${studentModel.lastName}
    <br>
    Country is : ${studentModel.country}
    <br>
    Favourite Language is : ${studentModel.favouriteLanguage}
    <br><br>
    Operating Systems are :
    <ul>
        <c:forEach var="temp" items="${studentModel.operatingSystems}">
            <li>${temp}</li>
        </c:forEach>
    </ul>
</body>
</html>