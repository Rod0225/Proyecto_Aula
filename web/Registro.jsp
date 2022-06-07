<%-- 
    Document   : Registro
    Created on : 29/05/2022, 01:35:28 PM
    Author     : oshav
--%>

<%@page import="DAO.Registro"%>
<%@page import="Helper.RegistroHelper"%>
<%@page import="Helper.TipoPersonaHelper"%>
<%@page import="java.util.List"%>
<%@page import="DAO.TipoPersona"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registro</title>
        <link rel="stylesheet" type="text/css" href="css/registroE.css"></link>
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,400;1,700&display=swap" rel="stylesheet">
        <style>
            @import "css/registroE.css";
        </style>
    </head>
    <body>
        <div class="container-form sign-up">
            <div class="welcome-back">
                <div class="message">
                    <h2>Bienvenido a Moodmath</h2>
                    <p>Si ya tienes una cuenta inicia sesion</p>
                    <button class="sign-up-btn">Iniciar sesion</button>
                </div>
            </div>
            <form class="formulario" action="Menu.jsp">
                <h2 class="create-account" >Crear una cuenta</h2>
                <input type="text" id="Matricula" name="Matricula" placeholder="Matricula" required>
                <input type="text" id="Nombre" name="Nombre" placeholder="Nombre" required>
                <input type="text" id="AppellidoPa" name="AppellidoPa" placeholder="Apellido Paterno" required>
                <input type="text" id="AppellidoMa" name="AppellidoMa" placeholder="Apellido Materno" required>
                <input type="text" id="Telefono" name="Telefono" placeholder="Telefono" required>
                <input type="text" id="Usuario" name="Usuario" placeholder="Usuario" required>
                <input type="password" id="Contraseña" name="Contraseña" placeholder="Contraseña" required>
                <input type="email" id="Correo" name="Correo" placeholder="Email" required>
                <select id="TipoPersona" name="TipoPersona" required>
                    <option>Seleccione un tipo de persona</option>
                    <%
                            List<TipoPersona>TipoPersonaList = new TipoPersonaHelper( ).getList();
                            if( TipoPersonaList != null && TipoPersonaList.size() > 0 )
                            {
                               for( TipoPersona tipoPersona : TipoPersonaList )
                               {
                        %>
                        <option value="<%=tipoPersona.getIdTipoPer()%>"><%=tipoPersona.getTipoPer()%></option>
                        <%
                                }
                            }
                        %>
                </select>
                <br/>
                <br/>
                    <input type="hidden" id="action" name="action" value="send" />
                    
                        <button type="submit">Enviar</button>
                        <button type="reset">Borrar</button>
                   
                
            </form>
                
        </div>
        <div class="container-form sign-in">
            <form class="formulario" action="Menu.jsp">
                <h2 class="create-account">Iniciar sesion</h2>
                <input type="text" id="User" nombre="User" placeholder="Usuario">
                <input type="password" id="Password" nombre="Password" placeholder="Contraseña">
                <a href="Menu.jsp"><input type="button" value="Iniciar sesion"></a>
            </form>
            <div class="welcome-back">
                <div class="message">
                    <h2>Bienvenido de nuevo</h2>
                    <p>Si aun no tienes una cuenta registrate aqui</p>
                    <button class="sign-in-btn">Registrarse</button>
                </div>
            </div>
        </div>
        <script>
            const   $btnSignIn= document.querySelector('.sign-in-btn'),
            $btnSignUp= document.querySelector('.sign-up-btn'),
            $signUp=document.querySelector('.sign-up'),
            $signIn=document.querySelector('.sign-in');

            document.addEventListener('click', e => {
            if(e.target==$btnSignIn ||e.target==$btnSignUp){
                $signIn.classList.toggle('active');
                $signUp.classList.toggle('active')
                }
            });
        </script>
    </body>
</html>
