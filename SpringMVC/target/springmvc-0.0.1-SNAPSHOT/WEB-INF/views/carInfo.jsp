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
<h2>Вы успешно сохранили новую партию авто</h2>
<p>${newCar.id}</p>
<p>${newCar.name}</p>
<p>${newCar.type}</p>
<p>${newCar.value}</p>
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
            <c:set var="carCount" value="${carCount + car.value}"/>
        </tr>
    </c:forEach>
</table>

<h3>Всего автомобилей в наличии: ${carCount}</h3>
</body>
</html>