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
        <form method="post" action="">
            <div class="row">
                <div class="col-md-2">
                    <label>Titre : </label>
                </div>
                <div class="col-md-8">
                    <input type="text" name="titre"/>
                </div>
            </div>
            <div class="row">
                <div class="col-md-2">
                    <label>Auteur : </label>
                </div>
                <div class="col-md-8">
                    <input type="text" name="auteur"/>
                </div>
            </div>
            <div class="row">
                <div class="col-md-2">
                    <label>Editeur : </label>
                </div>
                <div class="col-md-8">
                    <input type="text" name="editeur"/>
                </div>
            </div>
            <div class="row">
                <div class="col-md-2">
                    <label>Ann&eacute;e : </label>
                </div>
                <div class="col-md-8">
                    <input type="text" name="titre"/>
                </div>
            </div>
            <br><br>
            <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-8">
                    <button class="btn btn-default" id="saveNouveauLivre">Nouveau</button>
                </div>
            </div>
        </form>
    </div>
</body>
</html>
