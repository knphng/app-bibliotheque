<%@ page import="java.util.List" %>
<%@ page import="ch.hesge.programmation.domain.Book" %>
<%@ page import="ch.hesge.programmation.servlet.LoginServlet" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page pageEncoding="UTF-8"%>
<html>
<head>
    <title>Liste des livres</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
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
                        <%
                            if(request.isUserInRole(LoginServlet.UserRoleAccepted) == true){
                        %>
                            <th></th>
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
                                <%
                                    if(request.isUserInRole(LoginServlet.UserRoleAccepted) == true){
                                %>
                                    <form action="update" method="post">
                                        <td>
                                            <div class="form-group">
                                                <input type="text" class="form-control" name="titleInput" value="<%= title %>"/>
                                            </div>
                                        </td>
                                        <td>
                                            <div class="form-group">
                                                <input type="text" class="form-control" name="authorInput" value="<%= author %>"/>
                                            </div>
                                        </td>
                                        <td>
                                            <div class="form-group">
                                                <input type="text" class="form-control" name="editorInput" value="<%= editor %>"/>
                                            </div>
                                        </td>
                                        <td>
                                            <div class="form-group">
                                                <input type="text" class="form-control" name="yearInput" value="<%= year %>"/>
                                                <input type="hidden" class="form-control" name="idInput" value="<%= id %>"/>
                                            </div>
                                        </td>
                                        <td>
                                            <button class="btn btn-outline-info" aria-label="Left Align" value="<%= id %>">
                                                <i class="far fa-edit"></i>
                                            </button>
                                        </td>
                                    </form>
                                    <td>
                                        <form method="post" action="delete">
                                            <input type="hidden" name="bookId" value="<%= id %>"/>
                                            <button type="submit" class="btn btn-outline-danger" aria-label="Left Align" value="<%= id %>">
                                                <i class="fas fa-trash-alt"></i>
                                            </button>
                                        </form>
                                    </td>
                                <%
                                    } else {
                                %>
                                    <td> <%= title %></td>
                                    <td> <%= author %></td>
                                    <td> <%= editor %></td>
                                    <td> <%= year %></td>
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
                <a href="create"><input type="submit" class="btn btn-outline-info" value="Nouveau" id="nouveauLivre"></a>
                <%
                    }
                %>
            </div>
        </div>
    </div>


    <script type="text/javascript">

        <% if (request.getAttribute("errorDelete") == "Ok") { %>
        var delay = 2000;
        setTimeout(function(){ window.location = "listeLivres"; }, delay);
        <%
            }
        %>

    </script>
</body>
</html>
