<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>403</title>
    <%@ include file="../header.jsp" %>
    <style>
        .container{
            min-height: 1000px;
            background-image: url('./images/403.png');
            background-repeat: no-repeat;
            background-size: contain;
            margin-top:-5%;
        }
        .row {
            height:1000px;
        }
        .col-md-12{
            text-align: center;
            margin-top:65%;
            margin-left:3%;
        }
        a{
            margin-top:50%;
        }
    </style>
</head>
<body>
<div class="container" >
    <div class="row">
        <div class="col-md-12 col-xs-12"
        >
                <a href="login"><input type="submit" class="btn btn-primary btn-lg active" value="Connexion"></a>
        </div>
    </div>
</div>

</body>
</html>
