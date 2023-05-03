<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Contact Info</title>
</head>
<body>
<h2>Список контактов</h2>
<table>
  <c:forEach items="${contactList}" var="contact">
    <tr>
      <td>${contact.name}</td>
      <td>${contact.lastName}</td>
      <td>${contact.email}</td>
      <td>${contact.phone}</td>
      <td><a href="http://localhost:6060/contacts/${contact.id}">
        <button>Delete</button>
      </a>
        <a href="http://localhost:6060/edit/${contact.id}">
          <button>Edit</button>
        </a></td>
  </c:forEach>
</table>
</body>
</html>
