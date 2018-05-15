<%--
  Created by IntelliJ IDEA.
  User: delia
  Date: 09.05.2018
  Time: 14:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Liste des livres</title>
    <%@ include file="entete.jsp" %>
</head>
<body>
    <div class="" id="placeMenu" style="width:100%">
        <%@ include file="menu.jsp" %>
    </div>
    <br><br>
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <table class="table table-striped">
                    <thead>
                    <tr>
                        <th>Titre</th>
                        <th>Auteur(s)</th>
                        <th>Editeur</th>
                        <th>Ann&eacute;e</th>
                        <th></th>
                    </tr>
                    </thead>
                </table>
            </div>
        </div>
        <br><br>
        <div class="row">
            <div class="col-md-11"></div>
            <div class="col-md-1" style="float:right">
                <button class="btn btn-default" id="ouvrirModalNouveauLivre">Nouveau</button>
            </div>
        </div>
    </div>
</body>
</html>
