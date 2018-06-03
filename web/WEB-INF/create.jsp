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
                <h3>Ajoutez un nouveau livre !</h3>
            </div>
        </div>
        <br>
        <div class="msgErreur" style="color:red">
            <%
                if(request.getAttribute("status") == "created") {
            %>
                <div class="alert alert-success" role="alert">
                    Le livre a &eacute;t&eacute; ajout&eacute; avec succ&egrave;s !
                </div>
            <%
            } else  if(request.getAttribute("status") == "failed") {
            %>
                <div class="alert alert-danger" role="alert">
                    Un probl&egrave;me est survenu. Veuillez contacter votre administrateur !
                </div>
            <%
                }
            %>
            <br>
        </div>
        <form method="post" action="create">
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
                        <input type="text" class="form-control" name="year" onkeyup="verificationAnnee(this);"/>
                    </div>
                </div>
            </div>
            <br><br>
            <input type="submit" class="btn btn-outline-success" value="create" id="saveNouveauLivre">
        </form>
    </div>
</body>

<script>
    <% if (request.getAttribute("status") == "created") { %>
        var delay = 2000;
        setTimeout(function(){ window.location = "books"; }, delay);
    <%
        }
    %>

    function verificationAnnee(champ) {
        var chiffres = new RegExp("[0-9]");
        var verif;
        for(x = 0; x < champ.value.length; x++)
        {
            verif = chiffres.test(champ.value.charAt(x));
            if(champ.value.length>4){
                verif=false;
            }

            if(verif == false){
                champ.value = champ.value.substr(0,x) + champ.value.substr(x+1,champ.value.length-x+1); x--;
            }
        }
    }
</script>
</html>
