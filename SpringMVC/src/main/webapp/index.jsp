<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Spring MVC My Second WEB app</title>
</head>
<body>
<h1>Список контактов</h1>
<table>
    <tr>
        <th>Имя</th>
        <th>Фамилия</th>
        <th>Email</th>
        <th>Телефон</th>
    </tr>
    <c:forEach items="${contactList}" var="contact">
        <tr>
            <td>${contact.name}</td>
            <td>${contact.lastName}</td>
            <td>${contact.email}</td>
            <td>${contact.phone}</td>
        </tr>
    </c:forEach>
</table>
<h2>Добавить контакт</h2>
<form action="http://localhost:6060/addContact" method="post">
    <p>
        <label for="name">Имя:</label>
        <input type="text" name="name" id="name">
    </p>
    <p>
        <label for="lastName">Фамилия:</label>
        <input type="text" name="lastName" id="lastName">
    </p>
    <p>
        <label for="email">Email:</label>
        <input type="email" name="email" id="email">
    </p>
    <p>
        <label for="phone">Телефон:</label>
        <input type="tel" name="phone" id="phone">
    </p>
    <input type="submit" value="Добавить">
</form>
</body>
</html>