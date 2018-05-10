<%--
  Created by IntelliJ IDEA.
  User: delia
  Date: 09.05.2018
  Time: 14:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Connexion</title>
    <%@ include file="entete.jsp" %>
</head>
<body>
<div class="row" id="placeMenu" style="width:100%">
    <%@ include file="menu.jsp" %>
</div>
<br><br>
    <div class="container">
        <form method="post" action="">
            <div class="row">
                <div class="col-md-2">
                    <label>Identifiant : </label>
                </div>
                <div class="col-md-8">
                    <input type="text" name="username"/>
                </div>
            </div>
            <div class="row">
                <div class="col-md-2">
                    <label>Mot de passe : </label>
                </div>
                <div class="col-md-8">
                    <input type="text" name="password"/>
                </div>
            </div>

            <br><br>
            <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-8">
                    <button class="btn btn-default" id="connexion">Se connecter</button>
                </div>
            </div>
        </form>
    </div>
</body>
</html>
