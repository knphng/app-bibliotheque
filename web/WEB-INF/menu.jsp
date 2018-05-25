<%@ page import="ch.hesge.programmation.servlet.LoginServlet" %>

<!--<nav class="navbar navbar-expand-md navbar-light bg-primary" style="color:white">
<%--<nav class="navbar navbar-expand-md navbar-dark bg-primary">--%>
    <div class="d-flex w-50">
        <a class="navbar-brand mr-0" href="#">Biblioth&egrave;que</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsingNavbar">
            <span class="navbar-toggler-icon"></span>
        </button>
    </div>
    <div class="navbar-collapse collapse justify-content-center" id="collapsingNavbar">
        <ul class="navbar-nav">
            <li class="nav-item">
                <a class="nav-link" href="listeLivres"><b>Livres</b></a>
            </li>
        </ul>
    </div>
    <span class="navbar-text small text-truncate mt-1 w-50 text-right">
        <%
            if(request.isUserInRole(LoginServlet.UserRoleAccepted) == true){
        %>
            <%--<button class="btn btn-outline my-2 my-sm-0" ><a href="logout" style="color:black">D&eacute;connexion</a></button>--%>
            <a href="logout"><input type="submit" class="btn btn-outline-dark" value="D&eacute;connexion"></a>
        <%
        }else{
        %>
            <%--<button class="btn btn-outline my-2 my-sm-0"><a href="login" style="color:black">Connexion</a></button>--%>
            <a href="login"><input type="submit" class="btn btn-outline-light" value="Connexion"></a>
        <%
            }
        %>
    </span>
</nav>
-->

<nav class="navbar navbar-light navbar-expand-md bg-faded justify-content-center">
    <a href="/" class="navbar-brand d-flex w-50 mr-auto">Biblioth&egrave;que</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsingNavbar3">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="navbar-collapse collapse w-100" id="collapsingNavbar3">
        <ul class="navbar-nav w-100 justify-content-center">
            <li class="nav-item active">
                <a class="nav-link" href="listeLivres">Livres</a>
            </li>
        </ul>
        <ul class="nav navbar-nav ml-auto w-100 justify-content-end">
            <li class="nav-item">
                <%
                    if(request.isUserInRole(Login.UserRoleAccepted) == true){
                %>
                <%--<button class="btn btn-outline my-2 my-sm-0" ><a href="logout" style="color:black">D&eacute;connexion</a></button>--%>
                    <a href="logout"><input type="submit" class="btn btn-outline-dark" value="D&eacute;connexion"></a>
                <%
                    }else{
                %>
                    <%--<button class="btn btn-outline my-2 my-sm-0"><a href="login" style="color:black">Connexion</a></button>--%>
                    <a href="login"><input type="submit" class="btn btn-outline-dark" value="Connexion"></a>
                <%
                    }
                %>
            </li>
        </ul>
    </div>
</nav>