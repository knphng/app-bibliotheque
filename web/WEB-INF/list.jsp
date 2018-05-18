<%@ page import="java.util.List" %>
<%@ page import="ch.hesge.programmation.Domain.Book" %>
<%@ page import="ch.hesge.programmation.servlet.LoginServlet" %><%--
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
                <table class="table table-striped">
                    <thead>
                    <tr>
                        <th>Titre</th>
                        <th>Auteur(s)</th>
                        <th>Editeur</th>
                        <th>Ann&eacute;e</th>
                        <%
                            if(request.isUserInRole(LoginServlet.UserRoleAccepted) == true){
                        %>
                            <th></th>
                        <%
                            }
                        %>
                    </tr>
                    </thead>
                    <tbody>
                        <%
                            List<Book> listBooks = (List<Book>)request.getAttribute("listeLivre");
                            for (int i = 0; i < listBooks.size(); i++){
                                int id = listBooks.get(i).getId();
                                String title = listBooks.get(i).getTitle();
                                String author = listBooks.get(i).getAuthor();
                                String editor = listBooks.get(i).getEditor();
                                int year = listBooks.get(i).getYear();
                        %>
                            <tr>
                                <td> <%= title %></td>
                                <td> <%= author %></td>
                                <td> <%= editor %></td>
                                <td> <%= year %></td>
                                <%
                                    if(request.isUserInRole(LoginServlet.UserRoleAccepted) == true){
                                %>
                                <th>
                                    <%--<button type="button" class="btn btn-default" aria-label="Right Align">--%>
                                        <%--<span class="glyphicon glyphicon-trash" aria-hidden="true"></span>--%>
                                    <%--</button>--%>
                                        <button type="button" class="btn btn-outline-danger" aria-label="Left Align" value="<%= id %>"><a href="newBook">
                                            <i class="fas fa-trash-alt"></i>
                                        </a></button>
                                </th>
                                <%
                                    }
                                %>
                            </tr>
                        <% } %>
                    </tbody>
                </table>
            </div>
        </div>
        <br><br>
        <div class="row">
            <div class="col-md-11"></div>
            <div class="col-md-1" style="float:right">
                <%
                    if(request.isUserInRole(LoginServlet.UserRoleAccepted) == true){
                %>
                    <%--<button class="btn btn-outline-info" id="ouvrirModalNouveauLivre">Nouveau</button>--%>
                    <a href="newBook"><input type="submit" class="btn btn-outline-info" value="Nouveau" id="nouveauLivre"></a>
                <%
                    }
                %>
            </div>
        </div>
    </div>

    <%--<div class="modal fade" id="newBookModal" tabindex="-1" role="dialog" aria-labelledby="newBookModal" aria-hidden="true">--%>
        <%--<div class="modal-dialog">--%>
            <%--<div class="modal-content">--%>
                <%--<div class="modal-header">--%>
                    <%--<h3 class="modal-title" id="newBookModalTitle"> Ajouter un livre</h3>--%>
                    <%--<button type="button" class="close" data-dismiss="modal" aria-label="Close">--%>
                        <%--<span aria-hidden="true">&times;</span>--%>
                    <%--</button>--%>
                <%--</div>--%>
                <%--<form method="post" action="">--%>
                    <%--<div class="modal-body">--%>
                        <%--<div class="row">--%>
                            <%--<div class="col-md-3">--%>
                                <%--<label>Titre : </label>--%>
                            <%--</div>--%>
                            <%--<div class="col-md-8">--%>
                                <%--<div class="form-group">--%>
                                    <%--<input type="text" class="form-control" name="title"/>--%>
                                <%--</div>--%>
                            <%--</div>--%>
                        <%--</div>--%>
                        <%--<div class="row">--%>
                            <%--<div class="col-md-3">--%>
                                <%--<label>Auteur : </label>--%>
                            <%--</div>--%>
                            <%--<div class="col-md-8">--%>
                                <%--<div class="form-group">--%>
                                    <%--<input type="text" class="form-control" name="author"/>--%>
                                <%--</div>--%>
                            <%--</div>--%>
                        <%--</div>--%>
                        <%--<div class="row">--%>
                            <%--<div class="col-md-3">--%>
                                <%--<label>Editeur : </label>--%>
                            <%--</div>--%>
                            <%--<div class="col-md-8">--%>
                                <%--<div class="form-group">--%>
                                    <%--<input type="text" class="form-control" name="editor"/>--%>
                                <%--</div>--%>
                            <%--</div>--%>
                        <%--</div>--%>
                        <%--<div class="row">--%>
                            <%--<div class="col-md-3">--%>
                                <%--<label>Ann&eacute;e : </label>--%>
                            <%--</div>--%>
                            <%--<div class="col-md-8">--%>
                                <%--<div class="form-group">--%>
                                    <%--<input type="text" class="form-control" name="year"/>--%>
                                <%--</div>--%>
                            <%--</div>--%>
                        <%--</div>--%>
                        <%--<br><br>--%>
                    <%--</div>--%>
                    <%--<div class="modal-footer">--%>
                        <%--<input type="submit" class="btn btn-outline-secondary" data-dismiss="modal" value="Fermer" >--%>
                        <%--<a href="newBook"><input type="submit" class="btn btn-outline-success" value="Cr&eacute;er" id="saveNouveauLivre"></a>--%>
                    <%--</div>--%>
                <%--</form>--%>
            <%--</div>--%>
        <%--</div>--%>
    <%--</div>--%>

    <script type="text/javascript">
        // $(document).ready( function(){
        //     $("#ouvrirModalNouveauLivre").on('click', function(){
        //         $('#newBookModal').modal('show');
        //     });
        // } );
    </script>
</body>
</html>
