<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Blue Spark Template</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<!--
Template 2050 Blue Spark
http://www.tooplate.com/view/2050-blue-spark
-->

<link href="${contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
<link href="${contextPath}/resources/css/common.css" rel="stylesheet">
<link href="${contextPath}/resources/css/tooplate_style.css" rel="stylesheet">
<link href="${contextPath}/resources/css/jquery.lightbox-0.5.css" rel="stylesheet">
<!-- Arquivos utilizados pelo jQuery lightBox plugin -->
<script src="${contextPath}/resources/js/jquery.js"></script>
<script src="${contextPath}/resources/js/jquery.lightbox-0.5.js"></script>
<!-- / fim dos arquivos utilizados pelo jQuery lightBox plugin -->
<script src="${contextPath}/resources/js/jquery.lightbox-0.5.js"></script>
<script src="${contextPath}/resources/js/jquery.localscroll-min.js"></script>
<script src="${contextPath}/resources/js/jquery.scrollTo-min.js"></script>
<script src="${contextPath}/resources/js/jquery.min.js"></script>
<!-- Ativando o jQuery lightBox plugin -->
<script type="text/javascript">
$(function() {
	$.localScroll();
    $('#map a').lightBox();
});
</script>

</head>
<body>
    <div class="container">

        <form:form method="POST" modelAttribute="userForm" class="form-signin">
            <h2 class="form-signin-heading">Creer votre compte </h2>
            <spring:bind path="username">
                <div class="form-group ${status.error ? 'has-error' : ''}">
                    <form:input type="text" path="username" class="form-control" placeholder="Nom Utilisateur"
                                autofocus="true"></form:input>
                    <form:errors path="username"></form:errors>
                </div>
            </spring:bind>

            <spring:bind path="password">
                <div class="form-group ${status.error ? 'has-error' : ''}">
                    <form:input type="password" path="password" class="form-control" placeholder="Mot de passe"></form:input>
                    <form:errors path="password"></form:errors>
                </div>
            </spring:bind>

            <spring:bind path="passwordConfirm">
                <div class="form-group ${status.error ? 'has-error' : ''}">
                    <form:input type="password" path="passwordConfirm" class="form-control"
                                placeholder="Confirmer votre mot de passe"></form:input>
                    <form:errors path="passwordConfirm"></form:errors>
                </div>
            </spring:bind>

            <button class="btn btn-lg btn-primary btn-block" type="submit">S'inscrire</button>
        </form:form>
         <div class="container">
   
        <form id="logoutForm" method="POST" action="${contextPath}/logout">
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
        </form>

        <h2 style="color: white; margin-left: 450px;">Se| <a style="color: white;"  onclick="document.forms['logoutForm'].submit()">Connecter</a></h2>
   
  </div>

    </div>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script src="${contextPath}/resources/js/bootstrap.min.js"></script>
    <div id="tooplate_footer">

         Copyright © 2021-2022 <a href="#">GUEYE Fagaye Sarr</a>
      	<div class="cleaner"></div>

    </div>
  </body>
</html>
