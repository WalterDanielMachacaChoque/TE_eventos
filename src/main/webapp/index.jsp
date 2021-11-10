<%@page import="com.emergentes.modelo.Eventos"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
Eventos eve = (Eventos)request.getAttribute("eve");
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>BIENVENIDO</title>
    </head>
    <body style="background-color:#7AAEF9;">
        <table border="2" style="margin: 2 auto;">
            <tr>
                <td>
                    2DO PARCIAL <br><br>
                    Nombre: WALTER DANIEL MACHACA CHOQUE<br>
                    Carnet: 10935704 LP
                </td>
            </tr>
        </table>
        <h1>Registro de Seminarios</h1>
        <a href="MainController?op=nuevo">Nuevo</a>
        <table border="1">
            <tr>
                <th>ID</th>
                <th>TÍTULO</th>
                <th>EXPOSITOR</th>
                <th>FECHA</th>
                <th>HORAS</th>
                <th>CUPOS</th>
                <th>EDITAR</th>
                <th>ELIMINAR</th>
            </tr>
            <c:forEach var="item" items="${lista}">
            <tr>
                <td>${item.id}</td>
                <td>${item.titulo}</td>
                <td>${item.expositor}</td>
                <td>${item.fecha}</td>
                <td>${item.hora}</td>
                <td>${item.cupo}</td>
                <td><a href="MainController?op=editar&id=${item.id}">EDITAR</a></td>
                <td><a href="MainController?op=eliminar&id=${item.id}"
                       onclick="return(confirm('Está seguro de eliminar'))">ELIMINAR</a></td>   
            </tr>
            </c:forEach>
        </table>
    </body>
</html>
