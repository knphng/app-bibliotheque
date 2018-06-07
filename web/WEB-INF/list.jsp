<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="ch.hesge.programmation.domain.Book" %>
<%@ page import="ch.hesge.programmation.servlet.LoginServlet" %>
<%@ page import="sun.rmi.runtime.Log" %>
<html>
<head>
    <title>Liste des livres</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <%@ include file="header.jsp" %>
</head>
<body>
    <div class="" id="placeMenu" style="width:100%">
        <%@ include file="menu.jsp" %>
    </div>
    <br><br>
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="message" style="display: none">
                    <div class="alertMsg alert alert-success" role="alert">
                    </div>
                </div>
            </div>
        </div>
        <br>
        <div class="row">
            <div class="col-md-12">
                <table class="table table-striped">
                    <thead>
                    <tr>
                        <th>Titre</th>
                        <th>Auteur(s)</th>
                        <th>Editeur</th>
                        <th>Ann&eacute;e</th>
                        <% if(request.isUserInRole(LoginServlet.UserRoleAccepted) == true && session.getAttribute("status") == "ok"){ %>
                            <th></th>
                            <th></th>
                        <% } %>
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
                                <% if(request.isUserInRole(LoginServlet.UserRoleAccepted) == true && session.getAttribute("status") == "ok"){ %>
                                    <form method="post" action="${pageContext.request.contextPath}/update" class="updateBookForm" data-id="<%= id %>">
                                        <td>
                                            <div class="form-group">
                                                <input id="titleInput" autofocus type="text" class="form-control title<%= id %>" name="titleInput" value="<%= title %>"/>
                                            </div>
                                        </td>
                                        <td>
                                            <div class="form-group">
                                                <input id="authorInput" autofocus type="text" class="form-control author<%= id %>" name="authorInput" value="<%= author %>"/>
                                            </div>
                                        </td>
                                        <td>
                                            <div class="form-group">
                                                <input id="editorInput" autofocus type="text" class="form-control editor<%= id %>" name="editorInput" value="<%= editor %>"/>
                                            </div>
                                        </td>
                                        <td>
                                            <div class="form-group">
                                                <input autofocus id="yearInput<%= id %>" type="number" class="form-control year<%= id %>" name="yearInput" value="<%= year %>"/>
                                                <input type="hidden" class="form-control" name="idInput" value="<%= id %>"/>
                                            </div>
                                        </td>
                                        <td>
                                            <button type="submit" class="btn btn-outline-info btnUpdateBook" aria-label="Left Align" value="<%= id %>">
                                                <i class="far fa-edit"></i>
                                            </button>
                                        </td>
                                    </form>
                                    <td>
                                        <form method="post" action="${pageContext.request.contextPath}/delete">
                                            <input type="hidden" name="bookId" value="<%= id %>"/>
                                            <button type="submit" class="btn btn-outline-danger" aria-label="Left Align" value="<%= id %>">
                                                <i class="fas fa-trash-alt"></i>
                                            </button>
                                        </form>
                                    </td>
                                <% } else { %>
                                    <td> <%= title %></td>
                                    <td> <%= author %></td>
                                    <td> <%= editor %></td>
                                    <td> <%= year %></td>
                                <% } %>
                            </tr>
                        <% } %>
                    </tbody>
                </table>
            </div>
        </div>
        <br><br>
        <div class="row">
            <div class="col-md-12" >
                <% if(request.isUserInRole(LoginServlet.UserRoleAccepted) == true && session.getAttribute("status") == "ok"){ %>
                    <a href="${pageContext.request.contextPath}/create" style="float:right"><input type="submit" class="btn btn-outline-primary" value="Nouveau" id="nouveauLivre"></a>
                <% } %>
            </div>
        </div>

        <div class="alertBottom alert alert-success" style="display:none;position: fixed;bottom: 5px;left:2%;width: 96%;">
            <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
            Votre livre a &eacute;t&eacute; mis &agrave; jour.
        </div>
    </div>


    <script type="text/javascript">
        $(document).ready(function() {

            $('.updateBookForm').on('submit', function () {
                var id = $(this).attr("data-id");
                var validate = false;
                var inputYear = $('#yearInput'+id).val();

                var currentYear = (new Date).getFullYear();
                if ($.isNumeric(inputYear) == false) {
                    validate = false;
                } else {
                    if (inputYear.length != 4) {
                        validate = false;
                    } else {
                        validate = true;
                    }

                    if (inputYear > currentYear + 1) {
                        validate = false;
                    }
                }

                if (validate == false) {
                    $('#yearInput'+id).css('color', 'red');
                    $('#yearInput'+id).css('border-color', 'red');
                } else {
                    $('#yearInput'+id).css('color', '#495057');
                    $('#yearInput'+id).css('border-color', '#ced4da');
                }
                return validate;
            })
        });


       function getUrlParameter(sParam) {
           var sPageURL = decodeURIComponent(window.location.search.substring(1)),
               sURLVariables = sPageURL.split('&'),
               sParameterName,
               i;

           for (i = 0; i < sURLVariables.length; i++) {
               sParameterName = sURLVariables[i].split('=');

               if (sParameterName[0] === sParam) {
                   return sParameterName[1] === undefined ? true : sParameterName[1];
               }
           }
       };

        var status = getUrlParameter("status");

        if(status !=""){
            if(status == "updated"){
                $('.alertMsg').text("Le livre a été modifié avec succès !");
                $(".message").fadeIn( 1500 );
                setTimeout(function(){
                    $(".message").fadeOut(1500);
                }, 3000);
                window.history.pushState({}, document.title, "/" + "books");
            } else if (status == "deleted"){
                $('.alertMsg').text("Le livre a été supprimé avec succès !");
                $(".message").fadeIn(1500);
                setTimeout(function(){
                    $(".message").fadeOut(1500);
                }, 3000);
                window.history.pushState({}, document.title, "/" + "books");
            } else if(status == "created") {
                $('.alertMsg').text("Le livre a été créé avec succès !");
                $(".message").fadeIn(1500);
                setTimeout(function(){
                    $(".message").fadeOut(1500);
                }, 3000);
                window.history.pushState({}, document.title, "/" + "books");
            }
        }

    </script>
</body>
</html>
