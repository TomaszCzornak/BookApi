<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"
           uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Book add</title>
</head>
<body>
<%--@elvariable id="book" type="pl.coderslab.Book"--%>
<c:url var="edit_url" value="/admin/books/edit"/>
<form:form method="post" modelAttribute="book" action="${edit_url}">
    <form:hidden path="id"/>
    <form:input path="isbn"/> ISBN
    <form:errors path="isbn"/><br/>
    <form:input path="title"/> TITLE
    <form:errors path="title"/><br/>
    <form:input path="author"/> AUTHOR
    <form:errors path="author"/><br/>
    <form:input path="publisher"/> PUBLISHER
    <form:errors path="publisher"/><br/>
    <form:input path="type"/> TYPE
    <form:errors path="type"/><br/>
    <input type="submit" value="Save">
</form:form>

</body>
</html>