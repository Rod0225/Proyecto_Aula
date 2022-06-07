<%-- 
    Document   : pInicio
    Created on : 27/05/2022, 07:09:49 AM
    Author     : Alumno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Pantalla de Inicio</title>
        <link rel="stylesheet" type="text/css" href="css/pInicioE.css"></link>
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Prata&display=swap" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Bad+Script&family=Playfair:ital@1&display=swap" rel="stylesheet">        
        <style>
            @import "css/pInicioE.css";
        </style>
    </head>
    <body>
        <header class="header content">
            <div class="header-video">
                <video src="https://storage.googleapis.com/nemi_prod/tmp/Fondo1.mp4" autoplay="autoplay" loop="loop" muted></video>
            </div>
            <div class="header-overlay"></div>
            <div class="header-content">
                <h1 style="position: relative; left: 10px; bottom: 0px; top: 0%;">Ohru</h1>
                <hr style="position: relative; left: 95px; width: 470px;">
                <h1 style="position: relative; left: 200px; top: 0px;">Soft</h1>
                <a href="Registro.jsp">Registrarse o Iniciar Sesión</a>
                <h3 style="position: absolute; left: 100px; color: white; font-size: 45px;"><i>"Redireccionando el futuro"</i></h3>                            
            </div>
            <div class="info">
                <h2>¿Quiénes somos?</h2>
                <p>
                    Somos OHRUSOFT, una empresa de desarrollo de software. Nuestro trabajo es crear proyectos los cuales pueden abarcar diferentes ámbitos. 
                    Todos nuestros proyecto se especializan en facilitar la vida de las persona que los usa.
                </p>
                <img src="/Ohrusoft/images/somos.jpg">
                <hr>
                <h2>Objetivos</h2>
                <p>
                    Nuestro objetivo principal es desarrollar softwares que ofrezcan software de calidad con el que nuestros clientes se sientan seguros y confiados.
                    Capacitar al personal con las habilidades que les permitan identificar los puntos de mejora y problemas del software desde el punto de vista del consumidor.
                    Aplicar las técnicas y metodología de enseñanza y desarrollo de software adecuadas para cada uno de los proyectos.
                    Mantener la vanguardia de nuestra página web gracias a constantes actualizaciones que proporcionen mejoría a los servicios que buscamos ofrecer.
                </p>
                <hr>
                <h2>Valores</h2>
                <li class="val">
                    Honestidad: Somos una empresa en la que nuestros clientes pueden confiar, es por eso que nos guiamos por el camino de la honestidad.                    
                </li>
                <li class="val">
                    Responsabilidad: Nos aseguramos de mantener en constante mantenimiento la aplicación web implementando mejoras para la seguridad de los clientes.                    
                </li>
                <li class="val">
                    Puntualidad: En la entrega de los trabajos solicitados por nuestros clientes.                    
                </li>
                <li class="val">
                    Respeto: Queremos que dentro de nuestra empresa haya un ambiente sano tanto así también con nuestros clientes                    
                </li>
                <li class="val">
                    Compromiso: Queremos que nuestros empleados se comprometan con el desarrollo de los proyectos para lograr la satisfacción total de nuestros clientes.
                </li>
                <footer>
                    <p class="copy">
                        Copyright© 2021-2022 Todos los derechos reservados
                        SA de CV
                    </p>
                </footer>
            </div>
        </header>
    </body>
</html>
