<%@ page import="servlet.Login" %>


<nav class="navbar navbar-expand-lg navbar-light bg-light" style="width:100%">
    <div style="float:left">
        <a class="navbar-brand" href="#">Biblioth&egrave;que</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
    </div>


    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
                <a class="nav-link" href="liste.jsp">Livres <span class="sr-only">(current)</span></a>
            </li>
        </ul>
    </div>
    <div style="float:right">
        <%
            if(request.isUserInRole(Login.UserRoleAccepted) == true){
        %>
        <button class="btn btn-outline my-2 my-sm-0" ><a href="logout" style="color:black">D&eacute;connexion</a></button>
        <%
        }else{
        %>
        <button class="btn btn-outline my-2 my-sm-0"><a href="login" style="color:black">Connexion</a></button>
        <%
            }
        %>

    </div>
</nav>
