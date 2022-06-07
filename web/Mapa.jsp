<%-- 
    Document   : ma
    Created on : 29/05/2022, 10:37:51 AM
    Author     : 52553
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Open+Sans&display=swap" rel="stylesheet">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <title>Mapas</title>
        <link rel="stylesheet" type="text/css" href="css/mapaE.css"></link>
        <style>
            @import "css/mapaE.css";
        </style>
    </head> 
    <body>
        <header>   
            <aside>
                <button class="bot" id="perf" onclick="location.href='PerfilU.jsp'"><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512"><!--! Font Awesome Pro 6.1.1 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license (Commercial License) Copyright 2022 Fonticons, Inc. --><path d="M272 304h-96C78.8 304 0 382.8 0 480c0 17.67 14.33 32 32 32h384c17.67 0 32-14.33 32-32C448 382.8 369.2 304 272 304zM48.99 464C56.89 400.9 110.8 352 176 352h96c65.16 0 119.1 48.95 127 112H48.99zM224 256c70.69 0 128-57.31 128-128c0-70.69-57.31-128-128-128S96 57.31 96 128C96 198.7 153.3 256 224 256zM224 48c44.11 0 80 35.89 80 80c0 44.11-35.89 80-80 80S144 172.1 144 128C144 83.89 179.9 48 224 48z"/></svg></button>
                <button class="bot" id="casa" onclick="location.href='Menu.jsp'"><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 576 512"><!--! Font Awesome Pro 6.1.1 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license (Commercial License) Copyright 2022 Fonticons, Inc. --><path d="M575.8 255.5C575.8 273.5 560.8 287.6 543.8 287.6H511.8L512.5 447.7C512.5 450.5 512.3 453.1 512 455.8V472C512 494.1 494.1 512 472 512H456C454.9 512 453.8 511.1 452.7 511.9C451.3 511.1 449.9 512 448.5 512H392C369.9 512 352 494.1 352 472V384C352 366.3 337.7 352 320 352H256C238.3 352 224 366.3 224 384V472C224 494.1 206.1 512 184 512H128.1C126.6 512 125.1 511.9 123.6 511.8C122.4 511.9 121.2 512 120 512H104C81.91 512 64 494.1 64 472V360C64 359.1 64.03 358.1 64.09 357.2V287.6H32.05C14.02 287.6 0 273.5 0 255.5C0 246.5 3.004 238.5 10.01 231.5L266.4 8.016C273.4 1.002 281.4 0 288.4 0C295.4 0 303.4 2.004 309.5 7.014L564.8 231.5C572.8 238.5 576.9 246.5 575.8 255.5L575.8 255.5z"/></svg></button>
                <p>Menú:</p>
            </aside>    
        </header>
        <br/>
        <br/>
        <br/>
        <h1 class="rut">Ruta por metro Rosario</h1>
        <div class="rutas">
            <div id="mapa">
            <iframe src="https://www.google.com/maps/embed?pb=!1m28!1m12!1m3!1d120319.59204334219!2d-99.31960957704885!3d19.542160885052272!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!4m13!3e3!4m5!1s0x85d2199e19effb7f%3A0x75d542494b6e1d2e!2sSan%20Pedro%2C%20Zaragoza%2C%2054457%20Villa%20Nicol%C3%A1s%20Romero%2C%20M%C3%A9x.!3m2!1d19.6310874!2d-99.3236471!4m5!1s0x85d1f8bda59e50df%3A0x393830a99b6236c1!2sMetro%20Popotla%2C%20Calzada%20M%C3%A9xico-Tacuba%2C%20Popotla%2C%20Ciudad%20de%20M%C3%A9xico%2C%20CDMX!3m2!1d19.452709!2d-99.1755537!5e0!3m2!1ses-419!2smx!4v1653839155228!5m2!1ses-419!2smx" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
            </div>
            <div class="container">
                <h3>Tabla de datos</h3>
                <div class="row">
                    <div class="col">
                        <table class="table table-success table-striped">
                          <thead class="table table-primary">
                            <tr>
                                <th scope="col">Totales</th>
                                <th scope="col">Transporte</th>
                                <th scope="col">costos</th>
                                <th scope="col">Tiempo</th>
                            </tr>
                          </thead>
                          <tbody class="table-primary">
                            <tr>
                                <td></td>
                              <th scope="row">combi</th>
                              <td>$25</td>
                              <td>1:10-2:30 hrs</td>
                            </tr>
                            <tr>
                              <td></td>
                              <th scope="row">metro</th>
                              <td>$5</td>
                              <td>10-15 min</td>
                            </tr>
                            <tr>
                              <td>Total</td>
                              <th scope="row"></th>
                              <td>$30</td>
                              <td>1:20-2:50 hrs</td>
                            </tr>
                          </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <div id="transpor">
                <h3>Indicaciones</h3>
                <br/>
                <img src="/Ohrusoft/images/combi1.jpg" width="550px" height="450px">
                <h3 class="indi">1. Tomar combi dirección Toreo x 5 calles</h3>
                <div id="metro">
                    <img src="/Ohrusoft/images/metroCC.jpg" width="550px" height="450px">
                    <br/>
                    <h3 class="indi">2. Subir al metro Linea 2 direccion tasqueña</h3>
                </div>                
            </div>            
        </div>
    </body>    
</html>
