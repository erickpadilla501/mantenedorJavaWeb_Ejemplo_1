<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">


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


        <title>INGRESAR</title>
    </head>
    <body>
        <h1>INGRESAR</h1>


        <div class='container pb-5'> 
            <div class='shadow p-3 mb-5 bg-white rounded'>



                <form action="${pageContext.request.contextPath}/ServletControl?accion=ingresar" method="POST">

                    <div>

                        <div>
                            <label>Nombre</label>
                            <input type="text" name="nombre" value="" required />
                        </div>


                        <div>
                            <label>Apellido</label>
                            <input type="text" name="apellido" value="" required />
                        </div>
                        <div>
                            <label>Email</label>
                            <input type="email" name="email" value="" required />
                        </div>
                        <div>

                            <label>Ingrese Teléfono:</label>

                            <input type="tel" name="telefono" pattern="[0-9]{3}-[0-9]{4}-[0-9]{4}" required />
                            <small>Formato: 123-4567-7890</small>


                        </div>


                        <input type="submit" value="Enviar" />


                    </div>

                </form>



                <br><br>
                <a href="menu.jsp">VOLVER</a>



            </div>
        </div>


    </body>
</html>
