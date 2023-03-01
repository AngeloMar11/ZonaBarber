<%--
  Created by IntelliJ IDEA.
  User: Angel
  Date: 22/02/2023
  Time: 2:46 p. m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<h1 >MOSTRAR CLIENTES</h1>
<ul>
    <c:forEach var="usuarios" items="${usuarios}">

    <li>${usuarios.nombre} ${usuarios.password}</li>
    </c:forEach>
</ul>

</body>
</html>
