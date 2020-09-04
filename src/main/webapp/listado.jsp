<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <title>LISTADO</title>

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

        <!-- FRAMEWORK BOOTSTRAP para el estilo de la pagina-->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>

        <!-- Los iconos tipo Solid de Fontawesome-->
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.8/css/solid.css">
        <script src="https://use.fontawesome.com/releases/v5.0.7/js/all.js"></script>

        <!-- Nuestro css-->
        <link rel="stylesheet" type="text/css" href="index.css" th:href="@{/index.css}">


    </head>
    <body>
        <h1>LISTADO</h1>

        <div class='container pb-5'> 
            <div class='shadow p-3 mb-5 bg-white rounded'>

<div class='container pb-5'> 
                <table class='table table-hover'> 
                    <thead>
                    <th scope='col'>N°</th>
                    <th scope='col'>Nombres</th> 
                    <th scope='col'>Apellido</th>
                    <th scope='col'>Email</th>
                    <th scope='col'>Telefono</th>
                    <th scope='col'>Saldo</th>
                    </thead>
                    <tbody>

                        <c:forEach var="cliente" items="${clientes}" varStatus="status">
                            <tr>
                                <td scope='row'>${status.count}</td>
                                <td>${cliente.nombre}</td>
                                <td>${cliente.apellido}</td>
                                <td>${cliente.email}</td>
                                <td>${cliente.telefono}</td>
                                <td>${cliente.saldo}</td>

                            </tr>
                        </c:forEach>

                    </tbody>
                </table>
</div>
                
                
                
                
                <a href="${pageContext.request.contextPath}/ServletControl?accion=listado">LISTADO</a>
                <br><br>
                <a href="menu.jsp">VOLVER</a>  





            </div>
        </div>



    </body>
</html>
