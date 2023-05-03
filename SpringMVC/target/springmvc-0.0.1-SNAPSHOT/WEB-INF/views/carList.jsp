<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Car Info</title>
</head>
<body>
<h2>Список наших автомобилей</h2>
<c:set var="page" value="car" scope="session"/>
<c:set var="carCount" value="0"/>
<table>
    <c:forEach var="car" items="${carList}">
        <tr>
            <td>${car.id}</td>
            <td>Марка: ${car.name}</td>
            <td>Модель: ${car.type}</td>
            <td>Кол-во: ${car.value}</td>
            <td><a href="http://localhost:8080/car/${car.id}">
                <button>Удалить</button>
            </a></td>
            <c:set var="carCount" value="${carCount + car.value}"/>
        </tr>
    </c:forEach>
</table>

<h3>Всего автомобилей в наличии: ${carCount}</h3>

<h4>Добавить новый автомобиль</h4>
<form action="http://localhost:8080/car", method="post">
    <label>
        <input type="text" name="id">
    </label>Идентификатор<br>
    <label>
        <input type="text", name="name">
    </label>Марка автомобиля<br>
    <label>
        <input type="text", name="type">
    </label>Модель автомобиля<br>
    <label>
        <input type="number", name="value">
    </label>Кол-во<br>
    <input type="submit" value="Добавить">
</form>
</body>
</html>