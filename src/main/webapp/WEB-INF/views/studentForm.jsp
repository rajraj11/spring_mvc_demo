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
    <form:form action="/student/processForm" modelAttribute="studentModel">
        First Name :<form:input path="firstName"></form:input>
        <br>
        Last Name : <form:input path="lastName"></form:input>
        <br><br>
        Country:

        <!-- Hard coded  -->
        <!-- <form:select path="country">
            <form:option value="Brazil" label= "Brazil"></form:option>
            <form:option value="France" label= "France"></form:option>
            <form:option value="Germany" label= "Germany"></form:option>
            <form:option value="India" label= "India"></form:option>
        </form:select> -->

        <form:select path="country">
            <form:options items="${studentModel.countryOptions}"></form:options>
        </form:select>
        <br><br>
        

        <br><br>

        Favourite Language:
        <br>
        Java<form:radiobutton path="favouriteLanguage"  value="Java"></form:radiobutton>  <br>
        C<form:radiobutton path="favouriteLanguage"  value="C"></form:radiobutton>        <br>
        C++<form:radiobutton path="favouriteLanguage"  value="Cpp"></form:radiobutton>    <br>
        Python<form:radiobutton path="favouriteLanguage"  value="Python"></form:radiobutton>

        <br><br>

        Operating Systems :
        <br>
        Linux <form:checkbox path="operatingSystems" value="Linux"></form:checkbox>
        Windows <form:checkbox path="operatingSystems" value="Windows"></form:checkbox>
        Mac OS<form:checkbox path="operatingSystems" value="Mac"></form:checkbox>
        <br>
        <input type="submit" value="submit">
    </form:form>
</body>
</html>