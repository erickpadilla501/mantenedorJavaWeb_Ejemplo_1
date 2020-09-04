<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>LOGIN</title>

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


    <body style="color: white;">


        <div class="modal-dialog text-center">
            <div class="col-sm-8 main-section" style="margin-top:25%;">
                <div class="modal-content">

                    <div class="col-12 user-img">
                        <img src="user.png" th:src="@{/user.png}"/>
                    </div>

                    <!-- aqui va a ir el form , inicio -->


                    <form method="post" action="ServletControl?accion=redMenu"  class="col-12">
                        <fieldset>

                            <!-- Form Name -->
                            <legend>Ingreso al sistema</legend>

                            <!-- Text input-->
                            <div class="form-group">

                                <div class="col-md-12">
                                    <input id="Ingrese Usuario" name="txtUsuario" type="text" placeholder="Ingrese Usuario" class="form-control input-md" required="">

                                </div>
                            </div>

                            <!-- Password input-->
                            <div class="form-group">

                                <div class="col-md-12">
                                    <input id="passwordinput" name="txtContrasena" type="password" placeholder="Ingrese de 8 a 12 C" class="form-control input-md" required="" maxlength="12" minlength="8">

                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-md-4 control-label" for="checkboxes">Recordar</label>

                                <input type="checkbox" name="checkboxes" id="checkboxes-0" value="1">



                            </div>


                            <!-- Button -->
                            <div class="form-group">

                                <div class="col-md-12">
                                    <button id="singlebutton" name="singlebutton" class="btn btn-success" type="submit">Ingresar</button>
                                    <input type="hidden" name="txtPantallaActual" value="index.jsp">
                                </div>
                            </div>

                        </fieldset>
                    </form>


                    <!-- aqui va a ir el form , fin -->


                </div>
            </div>
        </div>

        <a href="menu.jsp">Ingresar</a>

    </body>


</html>
