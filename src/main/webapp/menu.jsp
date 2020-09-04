<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>MENU</title>

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
        <h1>MENU</h1>

        <div class='container pb-5'>
            <nav class='navbar navbar-expand-lg navbar-light bg-light'> 
                <a class='navbar-brand' href='#'>Menu</a> 
                <button class='navbar-toggler' type='button' data-toggle='collapse' data-target='#navbarSupportedContent' aria-controls='navbarSupportedContent' aria-expanded='false' aria-label='Toggle navigation'> <span class='navbar-toggler-icon'></span> </button> 
                <div class='collapse navbar-collapse' id='navbarSupportedContent'> 
                    <ul class='navbar-nav mr-auto'> 
                        <li class='nav-item active'> 
                            <a class='nav-link' href='ingresar.jsp'>INGRESAR <span class='sr-only'>(current)</span></a> 
                        </li>
                        <li class='nav-item'> 
                            <a class='nav-link' href='listado.jsp'>LISTADO</a> 
                        </li>
                        <li class='nav-item'> 
                            <a class='nav-link' href='eliminar.jsp'>MODIFICAR/ELIMINAR</a> 
                        </li>


                    </ul> 

                </div>
            </nav>
        </div>


    </body>
</html>
