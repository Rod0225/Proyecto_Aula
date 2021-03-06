<%-- 
    Document   : chat
    Created on : 30/05/2022, 09:16:47 PM
    Author     : 52553
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Chat</title>
        <link href="https://unpkg.com/tailwindcss@^2/dist/tailwind.min.css" rel="stylesheet">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;500&display=swap" rel="stylesheet">
        <link rel="stylesheet" type="text/css" href="css/chatE.css"></link>
        <style>
            @import "css/chatE.css";
        </style>
    </head>
    <body>
        <header>   
            <aside>
                <button class="bot" id="perf" onclick="location.href='PerfilU.jsp'"><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512"><!--! Font Awesome Pro 6.1.1 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license (Commercial License) Copyright 2022 Fonticons, Inc. --><path d="M272 304h-96C78.8 304 0 382.8 0 480c0 17.67 14.33 32 32 32h384c17.67 0 32-14.33 32-32C448 382.8 369.2 304 272 304zM48.99 464C56.89 400.9 110.8 352 176 352h96c65.16 0 119.1 48.95 127 112H48.99zM224 256c70.69 0 128-57.31 128-128c0-70.69-57.31-128-128-128S96 57.31 96 128C96 198.7 153.3 256 224 256zM224 48c44.11 0 80 35.89 80 80c0 44.11-35.89 80-80 80S144 172.1 144 128C144 83.89 179.9 48 224 48z"/></svg></button>
                <button class="bot" id="casa" onclick="location.href='Menu.jsp'"><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 576 512"><!--! Font Awesome Pro 6.1.1 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license (Commercial License) Copyright 2022 Fonticons, Inc. --><path d="M575.8 255.5C575.8 273.5 560.8 287.6 543.8 287.6H511.8L512.5 447.7C512.5 450.5 512.3 453.1 512 455.8V472C512 494.1 494.1 512 472 512H456C454.9 512 453.8 511.1 452.7 511.9C451.3 511.1 449.9 512 448.5 512H392C369.9 512 352 494.1 352 472V384C352 366.3 337.7 352 320 352H256C238.3 352 224 366.3 224 384V472C224 494.1 206.1 512 184 512H128.1C126.6 512 125.1 511.9 123.6 511.8C122.4 511.9 121.2 512 120 512H104C81.91 512 64 494.1 64 472V360C64 359.1 64.03 358.1 64.09 357.2V287.6H32.05C14.02 287.6 0 273.5 0 255.5C0 246.5 3.004 238.5 10.01 231.5L266.4 8.016C273.4 1.002 281.4 0 288.4 0C295.4 0 303.4 2.004 309.5 7.014L564.8 231.5C572.8 238.5 576.9 246.5 575.8 255.5L575.8 255.5z"/></svg></button>
                <p class="parr">Men??:</p>
            </aside>    
        </header>
        <section class="h-screen flex overflow-hidden">
            <div class="bg-white w-3/12 p-6">
                <h3 class="text-2xl mb-8">Foro grupal</h3>  
                <div class="overflow-auto">
                    <div flex class="bg-gray-100 rounded p-4 mb-4">
                        <p>Pedro Jimenez</p>
                        <small>6:25 am</small>
                        <hr>
                    </div>
                    <div flex class="bg-gray-100 rounded p-4 mb-4">
                        <p>Luis Mejia</p>
                        <small>6:30 am</small>
                        <hr>
                    </div>
                    <div flex class="bg-gray-100 rounded p-4 mb-4">
                        <p>Hellen Rueda</p>
                        <small>6:31 am</small>
                        <hr>
                    </div>
                    <div flex class="bg-gray-100 rounded p-4 mb-4">
                        <p>Axel Fuentes</p>
                        <small>6:35 am</small>
                        <hr>
                    </div>
                    <div flex class="bg-gray-100 rounded p-4 mb-4">
                        <p>Richard Ortega</p>
                        <small>6:42 am</small>
                        <hr>
                    </div>                    
                    <div flex class="bg-gray-100 rounded p-4 mb-4">
                        <p>Octavio Posadas</p>
                        <small>6:50 am</small>
                        <hr>
                    </div>                    
                </div>
            </div>
            <div class="bg-gray-100 w-9/12">
                <div class="py-6 px-20 overflow-auto">
                        <div class="flex-col">
                            <div class="bg-white p-6 w-96 rounded-3xl rounded-bl-none shadow-sm mb-2">
                                <p class="mb-1">Pedro Jimenez</p>
                                <small class="text-gray-500 font-light">Hay mucho trafico por Rosario</small>
                            </div>
                            <small class="text-gray-500 font-light">06:25 am</small>
                        </div>                     
                        <div class="flex-col">
                            <div class="bg-white p-6 w-96 rounded-3xl rounded-bl-none shadow-sm mb-2">
                                <p class="mb-1">Luis Mejia</p>
                                <small class="text-gray-500 font-light">Si, me desvie por Toreo y estoy a punto de llegar</small>
                            </div>
                            <small class="text-gray-500 font-light">06:30 am</small>
                        </div> 
                        <div class="flex-col">
                            <div class="bg-white p-6 w-96 rounded-3xl rounded-bl-none shadow-sm mb-2">
                                <p class="mb-1">Hellen Rueda</p>
                                <small class="text-gray-500 font-light">Los espero en la entrada</small>
                            </div>
                            <small class="text-gray-500 font-light">06:31 am</small>
                        </div> 
                        <div class="flex-col">
                            <div class="bg-white p-6 w-96 rounded-3xl rounded-bl-none shadow-sm mb-2">
                                <p class="mb-1">Axel fuentes</p>
                                <small class="text-gray-500 font-light">Me quede dormido, voy saliendo de mi casa</small>
                            </div>
                            <small class="text-gray-500 font-light">06:35 am</small>
                        </div>                        
                </div>
                <div class="py-6 px-20 flex border-t">
                    <input type="text" class="px-4 py-2 bg-gray-100 w-full focus:outline-none font-light" placeholder="Escribe el mensaje...">
                    <a href="" class="bg-blue-500 text-white rounded px-4 py-2">Enviar</a>
                </div>                
            </div>
        </section>
    </body>
</html>
