<%@ page import="ch.hesge.programmation.servlet.LoginServlet" %>
<nav class="navbar navbar-light navbar-expand-md bg-faded justify-content-center">
    <a href="${pageContext.request.contextPath}/" class="navbar-brand d-flex w-50 mr-auto">Biblioth&egrave;que</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsingNavbar3">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="navbar-collapse collapse w-100" >
        <ul class="navbar-nav w-100 justify-content-center">
            <li class="nav-item active">
                <a class="btn btn-outline-default" role="button" href="${pageContext.request.contextPath}/books">Livres</a>
            </li>
        </ul>
        <ul class="nav navbar-nav ml-auto w-100 justify-content-end">
            <li class="nav-item">
                <%  if  (request.isUserInRole(LoginServlet.UserRoleAccepted) && session.getAttribute("status") == "ok") { %>
                    <a href="${pageContext.request.contextPath}/logout" role="button" class="btn btn-outline-dark">D&eacute;connexion</a>
                <% }else{ %>
                    <a href="${pageContext.request.contextPath}/login" role="button" class="btn btn-outline-dark">Connexion</a>
                <% } %>
            </li>
        </ul>
    </div>
</nav>


