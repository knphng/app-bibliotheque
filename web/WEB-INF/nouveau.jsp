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
    <%@ include file="../entete.jsp" %>
</head>
<body>
    <div class="" id="placeMenu" style="width:100%">
        <%@ include file="menu.jsp" %>
    </div>
    <br><br>
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h3>Ajoutez un nouveau livre !</h3>
            </div>
        </div>
        <br>
        <div class="msgErreur" style="color:red">
            <%
                if(request.getAttribute("error")  == null){
            %>
            <%
                } else  if(request.getAttribute("error") == "Ok") {
            %>
                <div class="alert alert-success" role="alert">
                    Le livre a &eacute;t&eacute; ajout&eacute; avec succ&egrave;s !
                </div>
            <%
            } else  if(request.getAttribute("error") == "Fail") {
            %>
                <div class="alert alert-danger" role="alert">
                    Un probl&egrave;me est survenu. Veuillez contacter votre administrateur !
                </div>
            <%
                }
            %>
            <br>
        </div>
        <form method="post" action="">
            <div class="row">
                <div class="col-md-3">
                    <label>Titre : </label>
                </div>
                <div class="col-md-8">
                    <div class="form-group">
                        <input type="text" class="form-control" name="title"/>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-3">
                    <label>Auteur : </label>
                </div>
                <div class="col-md-8">
                    <div class="form-group">
                        <input type="text" class="form-control" name="author"/>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-3">
                    <label>Editeur : </label>
                </div>
                <div class="col-md-8">
                    <div class="form-group">
                        <input type="text" class="form-control" name="editor"/>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-3">
                    <label>Ann&eacute;e : </label>
                </div>
                <div class="col-md-8">
                    <div class="form-group">
                        <input type="text" class="form-control" name="year"/>
                    </div>
                </div>
            </div>
            <br><br>
            <a href="newBook"><input type="submit" class="btn btn-outline-success" value="Cr&eacute;er" id="saveNouveauLivre"></a>
        </form>
    </div>
</body>

<script>
    <% if (request.getAttribute("error") == "Ok") { %>
        var delay = 2000;
        setTimeout(function(){ window.location = "listeLivres"; }, delay);
    <%
        }
    %>
</script>
</html>
