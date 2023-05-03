<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Изменить</title>
</head>
<body>
<h2>Изменить контакт</h2>
   <br>
<form action="http://localhost:6060/edit" method="POST">
    <input type="hidden" name="id" value="${editContact.id}">
    <input type="text" name="name" id="name" value="${editContact.name}">
    <label for="name">Имя </label>
    <br><br>
    <input type="text" name="lastName" id="lastName" value="${editContact.lastName}">
    <label for="lastName">Фамилия</label>
    <br><br>
    <input type="email" name="email" id="email" value="${editContact.email}">
    <label for="email">Email </label>
    <br><br>
    <input type="phone" name="phone" id="phone" value="${editContact.phone}">
    <label for="phone">Телефон</label>
    <br><br>
    <input type="submit" value="Сохранить изменения">

</form>
<br>
<a href="http://localhost:6060/contacts">
    <button>Отменить изменения</button>
</a>
</body>
</html>
