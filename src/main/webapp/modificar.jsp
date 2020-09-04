<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>MODIFICAR</title>

        <!--JQUERY-->
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
        <h1>MODIFICAR</h1>


        <div class='container pb-5'> 
            <div class='shadow p-3 mb-5 bg-white rounded'>



                <%
                    String idCliente = request.getParameter("idCliente");
                    String nombre = request.getParameter("nombre");
                    String apellido = request.getParameter("apellido");
                    String email = request.getParameter("email");
                    String telefono = request.getParameter("telefono");


                %>
                <form action="${pageContext.request.contextPath}/ServletControl?accion=modificar&idCliente<%=idCliente.toString()%>" method="POST">
                    <table>
                        <thead>
                            <tr>
                                <td>ID</td>
                                <td>NOMBRE</td>
                                <td>APELLIDO</td>
                                <td>EMAIL</td>
                                <td>TELEFONO</td>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>

                                <td><input type="text" name="idCliente" value="<%=idCliente.toString()%>" readonly /></td>
                                <td><input type="text" name="nombre" value="<%=nombre.toString()%>" /></td>
                                <td><input type="text" name="apellido" value="<%=apellido.toString()%>" /></td>
                                <td><input type="text" name="email" value="<%=email.toString()%>" /></td>
                                <td><input type="text" name="telefono" value="<%=telefono.toString()%>" /></td>
                            </tr>
                        </tbody>
                    </table>
                    <input type="submit" value="Guardar Cliente" />
                </form>

                <br><br>
                <a href="menu.jsp">VOLVER</a>

            </div>
        </div>

    </body>
</html>
