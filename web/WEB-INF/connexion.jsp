<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Connexion</title>
    <%@ include file="header.jsp" %>

</head>
<body>
    <div class="" id="placeMenu" style="width:100%">
        <%@ include file="menu.jsp" %>
    </div>
    <br><br>
    <div class="container" style="margin-top:5%;">
        <div class="row">
            <div class="col-md-12 col-xs-12">
                <h3>Connectez-vous !</h3>
            </div>
        </div>
        <br>
        <div class="row">
            <div class="col-md-12 col-xs-12">
                <div class="msgErreur" style="color:red">
                    <%
                        if(request.getAttribute("status") == null) { }
                        else if(!request.getAttribute("status").equals("ok")){
                    %>
                    <div class="alert alert-danger" role="alert">
                        <%= request.getAttribute("status") %>
                    </div>
                    <%
                        }
                    %>
                    <br>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-md-12 col-xs-12">
                <form method=post action="${pageContext.request.contextPath}/login">
                    <div class="row">
                        <div class="col-md-2">
                            <label>Identifiant : </label>
                        </div>
                        <div class="col-md-8">
                            <div class="form-group">
                                <input type="text" class="form-control" name="username"/>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-2">
                            <label>Mot de passe : </label>
                        </div>
                        <div class="col-md-8">
                            <div class="form-group">
                                <input type="password" class="form-control" name="password"/>
                            </div>
                        </div>
                    </div>

                    <br><br>
                    <div class="row">
                        <div class="col-md-8"></div>
                        <div class="col-md-2" style="float:right">
                            <input type="submit" class="btn btn-outline-dark" value="Se connecter" />
                        </div>
                    </div>
                </form>
            </div>
        </div>

    </div>
</body>
</html>
