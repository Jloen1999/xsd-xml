<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

    <xsl:output method="html"/>

    <xsl:template match="/">


        <html lang="es">

            <head>
                <meta charset="UTF-8"/>
                <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
                <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
                <title>
                    <xsl:value-of select="/clan/informacion/nombre_clan"/>
                </title>

                <link rel="stylesheet" href="css/estilosTLM05_CM_2223.css"/>
                <!-- gama de colores que se usará en la web, debe ser sustitído por los colores
                obtenidos de cada xml -->
                <style>
                    :root {
                    --color-clan: <xsl:value-of select="/clan/informacion/colores/color[@tipo='clan']"/>;
                    --color-primario: <xsl:value-of select="/clan/informacion/colores/color[@tipo='primario']"/>;
                    --color-secundario: <xsl:value-of select="/clan/informacion/colores/color[@tipo='secundario']"/>;
                    }
                </style>
            </head>

            <body>
                <!-- #### Cabecera de la web #### -->
                <header class="content">
                    <div class="picture">
                        <img src="img/maqueta/logo3.png" alt="logo del clan"/>
                        <img>
                            <xsl:attribute name="src">
                                <xsl:value-of select="/clan/informacion/logo"/>
                            </xsl:attribute>
                        </img>
                    </div>
                    <div class="header-texto">
                        <h1>
                            <xsl:value-of select="/clan/informacion/nombre_clan"/>
                        </h1>
                        <h2>
                            <xsl:value-of select="/clan/informacion/emblema"/>
                        </h2>
                        <p>
                            <xsl:value-of select="/clan/informacion/descripcion"/>
                        </p>
                    </div>
                </header>
                <!-- #### Fin Cabecera de la web #### -->
                <!-- #### Sección principal #### -->
                <!-- se muestran los integrantes principales del clan y su lider -->
                <xsl:for-each select="/clan/jugadores">
                    <main class="content">
                        <h1>Miembros del clan</h1>
                        <div class="fichas">
                            <xsl:for-each select="jugador[@rol='principal' or @rol='lider']">
                                <article class="ficha principal">
                                    <!-- Cambiar el valor del atributo class del article segun sea ficha principal, lider o secundario -->
                                    <xsl:attribute name="class">
                                        <xsl:choose>
                                            <xsl:when test="@rol='principal'">ficha principal</xsl:when>
                                            <xsl:when test="@rol='lider'">ficha lider</xsl:when>
                                        </xsl:choose>
                                    </xsl:attribute>
                                    <div class="picture">
                                        <img src="img/maqueta/img1.jpeg" alt="A1">
                                            <xsl:attribute name="src">
                                                <xsl:value-of
                                                        select="foto"/>
                                            </xsl:attribute>
                                        </img>
                                        <!-- los puntos se calculan sumando todas las habilidades del guerrero -->
                                        <div class="puntos">
                                            <!-- Obtener los puntos totales del jugador con el rol principal y el id especifico con for-each-->
                                            <xsl:value-of select="sum(habilidades/habilidad)"/>
                                        </div>
                                    </div>
                                    <h2>
                                        <!-- Obtener el nombre del jugador principal con for-each-->
                                        <xsl:value-of select="jugador_nombre"/>
                                    </h2>
                                    <h3>
                                        <!-- Obtener el nivel y la raza del jugador principal con for-each-->
                                        <xsl:value-of select="nivel"/>
                                        <xsl:text> - </xsl:text>
                                        <xsl:value-of select="raza"/>
                                    </h3>
                                    <table class="skills-table">
                                        <tr>
                                            <th colspan="3">Habilidades</th>
                                        </tr>
                                        <tr>
                                            <td>FUE:</td>
                                            <xsl:variable name="cod" select="habilidades/habilidad[@cod='FUE']"/>
                                            <td class="progress-item">
                                                <progress max="10">
                                                    <xsl:attribute name="value">
                                                        <xsl:value-of
                                                                select="$cod"/>
                                                    </xsl:attribute>
                                                </progress>
                                            </td>
                                            <td>
                                                <xsl:value-of
                                                        select="$cod"/>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>DES:</td>
                                            <xsl:variable name="cod" select="habilidades/habilidad[@cod='DES']"/>
                                            <td class="progress-item">
                                                <progress max="10">
                                                    <xsl:attribute name="value">
                                                        <xsl:value-of
                                                                select="$cod"/>
                                                    </xsl:attribute>
                                                </progress>
                                            </td>
                                            <td>
                                                <xsl:value-of
                                                        select="$cod"/>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>CON:</td>
                                            <xsl:variable name="cod" select="habilidades/habilidad[@cod='CON']"/>
                                            <td class="progress-item">
                                                <progress max="10">
                                                    <xsl:attribute name="value">
                                                        <xsl:value-of
                                                                select="$cod"/>
                                                    </xsl:attribute>
                                                </progress>
                                            </td>
                                            <td>
                                                <xsl:value-of
                                                        select="$cod"/>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>INT:</td>
                                            <xsl:variable name="cod" select="habilidades/habilidad[@cod='INT']"/>
                                            <td class="progress-item">
                                                <progress max="10">
                                                    <xsl:attribute name="value">
                                                        <xsl:value-of
                                                                select="$cod"/>
                                                    </xsl:attribute>
                                                </progress>
                                            </td>
                                            <td>
                                                <xsl:value-of
                                                        select="$cod"/>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>SAB:</td>
                                            <xsl:variable name="cod" select="habilidades/habilidad[@cod='SAB']"/>
                                            <td class="progress-item">
                                                <progress max="10">
                                                    <xsl:attribute name="value">
                                                        <xsl:value-of
                                                                select="$cod"/>
                                                    </xsl:attribute>
                                                </progress>
                                            </td>
                                            <td>
                                                <xsl:value-of
                                                        select="$cod"/>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>CAR:</td>
                                            <xsl:variable name="cod" select="habilidades/habilidad[@cod='CAR']"/>
                                            <td class="progress-item">
                                                <progress max="10">
                                                    <xsl:attribute name="value">
                                                        <xsl:value-of
                                                                select="$cod"/>
                                                    </xsl:attribute>
                                                </progress>
                                            </td>
                                            <td>
                                                <xsl:value-of
                                                        select="$cod"/>
                                            </td>
                                        </tr>
                                    </table>
                                </article>
                            </xsl:for-each>
                        </div>
                    </main>
                    <!-- #### Fin Sección principal #### -->
                    <!-- #### Sección secundaria #### -->
                    <div class="content fichas">
                        <xsl:for-each select="jugador[@rol='secundario']">
                            <article class="ficha secundario">
                                <div class="picture">
                                    <img src="img/maqueta/img1.jpeg" alt="A1">
                                        <xsl:attribute name="src">
                                            <xsl:value-of
                                                    select="foto"/>
                                        </xsl:attribute>
                                    </img>
                                    <!-- los puntos se calculan sumando todas las habilidades del guerrero -->
                                    <div class="puntos">
                                        <!-- Obtener los puntos totales del jugador con el rol principal y el id especifico con for-each-->
                                        <xsl:value-of select="sum(habilidades/habilidad)"/>
                                    </div>
                                </div>
                                <h2>
                                    <!-- Obtener el nombre del jugador principal con for-each-->
                                    <xsl:value-of select="jugador_nombre"/>
                                </h2>
                                <h3>
                                    <!-- Obtener el nivel y la raza del jugador principal con for-each-->
                                    <xsl:value-of select="nivel"/>
                                    <xsl:text> - </xsl:text>
                                    <xsl:value-of select="raza"/>
                                </h3>
                                <table class="skills-table">
                                    <tr>
                                        <th colspan="3">Habilidades</th>
                                    </tr>
                                    <tr>
                                        <td>FUE:</td>
                                        <xsl:variable name="cod" select="habilidades/habilidad[@cod='FUE']"/>
                                        <td class="progress-item">
                                            <progress max="10">
                                                <xsl:attribute name="value">
                                                    <xsl:value-of
                                                            select="$cod"/>
                                                </xsl:attribute>
                                            </progress>
                                        </td>
                                        <td>
                                            <xsl:value-of
                                                    select="$cod"/>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>DES:</td>
                                        <xsl:variable name="cod" select="habilidades/habilidad[@cod='DES']"/>
                                        <td class="progress-item">
                                            <progress max="10">
                                                <xsl:attribute name="value">
                                                    <xsl:value-of
                                                            select="$cod"/>
                                                </xsl:attribute>
                                            </progress>
                                        </td>
                                        <td>
                                            <xsl:value-of
                                                    select="$cod"/>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>CON:</td>
                                        <xsl:variable name="cod" select="habilidades/habilidad[@cod='CON']"/>
                                        <td class="progress-item">
                                            <progress max="10">
                                                <xsl:attribute name="value">
                                                    <xsl:value-of
                                                            select="$cod"/>
                                                </xsl:attribute>
                                            </progress>
                                        </td>
                                        <td>
                                            <xsl:value-of
                                                    select="$cod"/>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>INT:</td>
                                        <xsl:variable name="cod" select="habilidades/habilidad[@cod='INT']"/>
                                        <td class="progress-item">
                                            <progress max="10">
                                                <xsl:attribute name="value">
                                                    <xsl:value-of
                                                            select="$cod"/>
                                                </xsl:attribute>
                                            </progress>
                                        </td>
                                        <td>
                                            <xsl:value-of
                                                    select="$cod"/>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>SAB:</td>
                                        <xsl:variable name="cod" select="habilidades/habilidad[@cod='SAB']"/>
                                        <td class="progress-item">
                                            <progress max="10">
                                                <xsl:attribute name="value">
                                                    <xsl:value-of
                                                            select="$cod"/>
                                                </xsl:attribute>
                                            </progress>
                                        </td>
                                        <td>
                                            <xsl:value-of
                                                    select="$cod"/>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>CAR:</td>
                                        <xsl:variable name="cod" select="habilidades/habilidad[@cod='CAR']"/>
                                        <td class="progress-item">
                                            <progress max="10">
                                                <xsl:attribute name="value">
                                                    <xsl:value-of
                                                            select="$cod"/>
                                                </xsl:attribute>
                                            </progress>
                                        </td>
                                        <td>
                                            <xsl:value-of
                                                    select="$cod"/>
                                        </td>
                                    </tr>
                                </table>
                            </article>
                        </xsl:for-each>
                    </div>
                    <!-- #### Fin Sección secundaria #### -->
                    <!-- #### Sección estadísticas #### -->
                    <div class="content estadisticas">
                        <h1>Estadísticas</h1>
                        <div class="clasificacion">
                            <!-- se muestran los 5 miembros más fuertes del clan ordenados por la habilidad FUE de mayor a menor -->
                            <h2>Los 5 más fuertes</h2>
                            <ol>
                                <xsl:variable name="limite" select="5" />
                                <xsl:for-each select="jugador">
                                    <xsl:sort select="habilidades/habilidad[@cod='FUE']" order="descending"/>
                                    <xsl:if test="position() &lt;= $limite"> <!-- limitar a 5 -->
                                        <li>
                                            <xsl:value-of select="jugador_nombre"/>
                                            <xsl:text> - </xsl:text>
                                            <xsl:value-of select="habilidades/habilidad[@cod='FUE']"/>
                                        </li>
                                    </xsl:if>
                                </xsl:for-each>
                            </ol>
                        </div>
                        <div class="clasificacion">
                            <!-- se muestran los 5 miembros con más nivel del clan ordenados de mayor a menor nivel-->
                            <h2>Los 5 con más nivel</h2>
                            <ol>
                                <xsl:variable name="limite" select="5" />
                                <xsl:for-each select="jugador">
                                    <xsl:sort select="nivel" order="descending"/>
                                    <xsl:if test="position() &lt;= $limite"> <!-- limitar a 5 -->
                                        <li>
                                            <xsl:value-of select="jugador_nombre"/>
                                            <xsl:text> - </xsl:text>
                                            <xsl:value-of select="nivel"/>
                                        </li>
                                    </xsl:if>
                                </xsl:for-each>
                            </ol>
                        </div>

                    </div>
                </xsl:for-each>
                <!-- #### FIN Sección estadísticas #### -->
                <!-- #### Sección grupos #### -->
                <!-- Recorrer todos los grupos con foreach -->

                <div class="grupos">
                    <h1>Grupos</h1>
                    <!-- Almacenar el nombre del grupo en una variable-->

                    <xsl:for-each select="/clan/grupos/grupo">
                        <xsl:variable name="grupo" select="@nombre"/>

                        <div class="grupo">
                            <h2>
                                <xsl:value-of select="$grupo"/>
                            </h2>
                            <xsl:for-each select="integrante">
                                <xsl:variable name="integrante" select="."/>

                                <!-- Recorrer los jugadores del grupo -->
                                <article class="ficha miniatura">
                                    <xsl:for-each select="/clan/jugadores">
                                        <div class="picture">
                                            <img src="img/maqueta/img1.jpeg" alt="A1">
                                                <xsl:attribute name="src">
                                                    <xsl:value-of
                                                            select="jugador[@id=$integrante]/foto"/>
                                                </xsl:attribute>
                                            </img>
                                        </div>
                                        <h5>
                                            <xsl:value-of
                                                    select="jugador[@id=$integrante]/jugador_nombre"/>
                                        </h5>
                                    </xsl:for-each>
                                </article>

                            </xsl:for-each>
                        </div>

                    </xsl:for-each>
                </div>

                <!-- #### Fin Sección grupos #### -->
                <!-- #### Pié de página #### -->
                <footer>
                    <h5>P.LLuyot - 2023.</h5>
                </footer>
                <!-- #### Fin Pié de página #### -->

            </body>

        </html>


    </xsl:template>


</xsl:stylesheet>