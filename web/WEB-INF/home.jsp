<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Welcome</title>
    <%@ include file="header.jsp" %>
    <style>
        p{
            text-align: justify;
        }
    </style>
</head>
<body>
<div class="" id="placeMenu" style="width:100%">
    <%@ include file="menu.jsp" %>
</div>
<br><br>
<div class="container">
    <div class="row">
        <div class="col-md-6" style="padding:5%">
            <h1>Bienvenue dans notre bibliothèque virtuelle</h1>
            <br>
            <div style="text-align:justify;">
                <p>
                    Un jour, Marion l'avait trouvé plongé dans un livre qui racontait ce genre d'histoires.
                    Ce jeune policier piquait constamment sa curiosité.
                    Il faisait tout à sa manière, personnelle, il avait quelque chose de vieillot et d’anachronique, ne parlait de lui, n'appréciait pas vraiment la ville et ne s'intéressait pas au présent sauf pour exprimer son agacement face à l'époque actuelle.
                    Buté, il faisait preuve d'une indépendance hors norme, n'éprouvait jamais le besoin de faire part de ses sentiments et passait son temps plongé dans son étrange passion, les récits de disparitions.
                </p>
                <br><br>
                <p>
                    Extrait de Le Lagon noir écrit par ARNALDUR INDRIDASON
                </p>
            </div>
        </div>
        <div class="col-md-6" style="padding:5%;">
            <img style="width:100%" src="./images/books.gif">

        </div>
    </div>
</div>
</body>
</html>
