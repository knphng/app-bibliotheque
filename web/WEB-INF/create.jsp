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
        <div class="message" style="display: none">
            <div class="alertMsg alert" role="alert">
                Le livre a &eacute;t&eacute; ajout&eacute; avec succ&egrave;s !
            </div>
            <br>
        </div>
        <form method="post" action="create" id="createBookForm">
            <div class="row">
                <div class="col-md-2">
                    <label>Titre : </label>
                </div>
                <div class="col-md-10">
                    <div class="form-group">
                        <input id="title" type="text" class="form-control" name="title"/>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-2">
                    <label>Auteur : </label>
                </div>
                <div class="col-md-10">
                    <div class="form-group">
                        <input id="author" type="text" class="form-control" name="author"/>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-2">
                    <label>Editeur : </label>
                </div>
                <div class="col-md-10">
                    <div class="form-group">
                        <input id="editor" type="text" class="form-control" name="editor"/>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-2">
                    <label>Ann&eacute;e : </label>
                </div>
                <div class="col-md-10">
                    <div class="form-group">
                        <input id="year" type="text" class="form-control" name="year"/>
                    </div>
                </div>
            </div>
            <br><br>
            <div class="row">
                <div class="col-md-12" >
                    <input type="submit" class="btn btn-outline-success" value="Cr&eacute;er" id="saveNouveauLivre" style="float:right">
                </div>
            </div>
        </form>
    </div>
</body>

<script>
    $(document).ready(function(){
        $('#title').focus();
    })

    <% if(request.getAttribute("status") == "created") { %>
        $('.alertMsg').text("Le livre a été modifié avec succès !");
        $('.alertMsg').addClass('alert-success');
        $(".message").fadeIn( 1500 );
        setTimeout(function(){
            $(".message").fadeOut(1500);
        }, 3000);
        var delay = 3000;
        setTimeout(function(){ window.location = "books"; }, delay);
    <% } else if(request.getAttribute("status") == "failed") { %>
        $('.alertMsg').text("Un problème est survenu. Veuillez contacter votre administrateur !");
        $('.alertMsg').addClass('alert-danger');
        $(".message").fadeIn( 1500 );
        setTimeout(function(){
            $(".message").fadeOut(1000);
        }, 1500);
    <% } %>

    $('#createBookForm').on('submit', function(){
        var validate = false;
        var inputYear = $('#year').val();

        var currentYear = (new Date).getFullYear();
        if ($.isNumeric(inputYear)==false) {
            validate = false;
        } else {
            if(inputYear.length != 4) {
                validate = false;
            } else {
                validate = true;
            }

            if(inputYear > currentYear+1){
                validate = false;
            }
        }


        if(validate == false){
            $('#year').css('color', 'red');
            $('#year').css('border-color', 'red');
        } else {
            $('#year').css('color', '#495057');
            $('#year').css('border-color', '#ced4da');
        }
        return validate;
    })

</script>
</html>
