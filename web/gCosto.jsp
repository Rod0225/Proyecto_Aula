<%-- 
    Document   : Graficso
    Created on : 30/05/2022, 06:49:27 PM
    Author     : 52553
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <script src="https://cdn.plot.ly/plotly-latest.min.js"></script>
        <link rel="stylesheet" type="text/css" href="css/grafE.css"></link>
        <style>
            @import "css/grafE.css";
        </style>
        <title>Costos</title>
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300&display=swap" rel="stylesheet">
    </head>
    <body>
        <header>   
            <aside>
                <button class="bot" id="perf" onclick="location.href='PerfilU.jsp'"><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512"><!--! Font Awesome Pro 6.1.1 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license (Commercial License) Copyright 2022 Fonticons, Inc. --><path d="M272 304h-96C78.8 304 0 382.8 0 480c0 17.67 14.33 32 32 32h384c17.67 0 32-14.33 32-32C448 382.8 369.2 304 272 304zM48.99 464C56.89 400.9 110.8 352 176 352h96c65.16 0 119.1 48.95 127 112H48.99zM224 256c70.69 0 128-57.31 128-128c0-70.69-57.31-128-128-128S96 57.31 96 128C96 198.7 153.3 256 224 256zM224 48c44.11 0 80 35.89 80 80c0 44.11-35.89 80-80 80S144 172.1 144 128C144 83.89 179.9 48 224 48z"/></svg></button>
                <button class="bot" id="casa" onclick="location.href='Menu.jsp'"><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 576 512"><!--! Font Awesome Pro 6.1.1 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license (Commercial License) Copyright 2022 Fonticons, Inc. --><path d="M575.8 255.5C575.8 273.5 560.8 287.6 543.8 287.6H511.8L512.5 447.7C512.5 450.5 512.3 453.1 512 455.8V472C512 494.1 494.1 512 472 512H456C454.9 512 453.8 511.1 452.7 511.9C451.3 511.1 449.9 512 448.5 512H392C369.9 512 352 494.1 352 472V384C352 366.3 337.7 352 320 352H256C238.3 352 224 366.3 224 384V472C224 494.1 206.1 512 184 512H128.1C126.6 512 125.1 511.9 123.6 511.8C122.4 511.9 121.2 512 120 512H104C81.91 512 64 494.1 64 472V360C64 359.1 64.03 358.1 64.09 357.2V287.6H32.05C14.02 287.6 0 273.5 0 255.5C0 246.5 3.004 238.5 10.01 231.5L266.4 8.016C273.4 1.002 281.4 0 288.4 0C295.4 0 303.4 2.004 309.5 7.014L564.8 231.5C572.8 238.5 576.9 246.5 575.8 255.5L575.8 255.5z"/></svg></button>
                <p>Menú:</p>
            </aside>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
        </header>
        <h1>Gráfico de costos</h1>
        <form id="form-param">
    	<div class="container">
    	    <div>
    	        <input type="text" class="parametro" placeholder="Dia" value="Lunes"><input type="number" class="valor" placeholder="Costo total">
            </div>
            <div>
    	        <input type="text" class="parametro" placeholder="Dia" value="Martes"><input type="number" class="valor" placeholder="Costo total">
            </div>
            <div>
    	        <input type="text" class="parametro" placeholder="Dia" value="Miercoles"><input type="number" class="valor" placeholder="Costo total">
            </div>
            <div>
    	        <input type="text" class="parametro" placeholder="Dia" value="Jueves"><input type="number" class="valor" placeholder="Costo total">
            </div>
            <div>
    	        <input type="text" class="parametro" placeholder="Dia" value="Viernes"><input type="number" class="valor" placeholder="Costo total">
            </div>
    	</div>
    	<div class="buttons">
    		<button type="button" class="addParam">Agregar Parametro</button>
    		<button type="button" class="showResults">Mostrar Resultados</button>
                <a href="gTiempo.jsp">Ir a gráficos del tiempo</a>
    	</div>
    </form>
    <div id="grafico"></div>
    <script>
        document.querySelector(".addParam").addEventListener("click",addParam);
        document.querySelector(".showResults").addEventListener("click",showResults);

        var parametros = [];
        var valores = [];

        function addParam(){
            let html = document.querySelector(".container").innerHTML;
            let newHTML = '<div><input type="text" class="parametro" placeholder="Dia"><input type="number" class="valor" placeholder="Costo total"></div>'; 
            document.querySelector(".container").innerHTML = html + newHTML;
        } 


        function showResults(){
            for (var i = 0; i < document.querySelectorAll('.parametro').length ; i++) {
              parametros.push(document.querySelectorAll('.parametro')[i].value);
              valores.push(parseInt(document.querySelectorAll(".valor")[i].value));
            }
            var data = [{
              x: parametros,
              y: valores,
              type: "linear"
            }];
            Plotly.newPlot("grafico",data);
        }
    </script>
    </body>
</html>
