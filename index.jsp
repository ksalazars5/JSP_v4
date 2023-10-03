<%-- 
    Document   : index
    Created on : 2/10/2023, 18:41:52
    Author     : salaz
--%>
<%@page import ="modelo.Puesto" %>
<%@page import = "java.util.HashMap" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Empleados</title>
            <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    </head>
    <body>
        <h1>Formulario Empleados</h1> 
        <div class="container">
            <form action="" method="post" class="form-group">
                <label for = "lbl_codigo"><b>Codigo: </b></label>
                <input type="text" name="txt_codigo" id="txt_codigo" class ="form-control" placeholder ="Ejemplo: E001" required>
                <label for = "lbl_nombres"><b>Nombres:</b> </label>
                <input type="text" name="txt_nombres" id="txt_nombres" class ="form-control" placeholder ="Ejemplo: Nombre 1 Nombre 2 " required>
                <label for = "lbl_apellidos"><b>Apellidos: </b></label>
                <input type="text" name="txt_apellidos" id="txt_apellidos" class ="form-control" placeholder ="Ejemplo: Apellido 1 Apellido 2 " required>
                <label for = "lbl_direccion"><b>Direccion: </b></label>
                <input type="text" name="txt_direccion" id="txt_direccion " class ="form-control" placeholder ="Ejemplo: #Casa  Calle  Zona  Ciudad  " required>
                <label for = "lbl_telefono"><b>Telefono: </b></label>
                <input type="number" name="txt_telefono" id="txt_telefono" class ="form-control" placeholder ="Ejemplo: 55555 " required>
                <label for = "lbl_fn"><b>Fecha Nacimiento: </b></label>
                <input type="date" name="txt_fn" id="txt_fn" class ="form-control" required>
                <label for = "drop_puesto"><b>Puesto: </b></label>
                <select name = "drop_puesto" id ="drop_puesto" class ="form-control">
                    <%
                        Puesto puesto = new Puesto();
                        HashMap<String,String> drop = puesto.drop_sangre();
                        for (String i: drop.keySet()){
                        out.println( "<option value= '"+ i+ "'>" + drop.get(i)+ "</option>");
                        }
                        %>
                </select>
                <br>
                <button type ="button" name ="btn_agregar" id="btn_agregar" class="btn btn-primary">Agregar</button>
                        </div
        
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    </body>
</html>
