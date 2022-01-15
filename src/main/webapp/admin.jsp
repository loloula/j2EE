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
<link rel="stylesheet" href="${contextPath}/resources/css/main.css" />
<!-- Arquivos utilizados pelo jQuery lightBox plugin -->
<script src="${contextPath}/resources/js/jquery.js"></script>
<script src="${contextPath}/resources/js/jquery.lightbox-0.5.js"></script>
<!-- / fim dos arquivos utilizados pelo jQuery lightBox plugin -->
<script src="${contextPath}/resources/js/jquery.lightbox-0.5.js"></script>
<script src="${contextPath}/resources/js/jquery.localscroll-min.js"></script>
<script src="${contextPath}/resources/js/jquery.scrollTo-min.js"></script>
<script src="${contextPath}/resources/js/jquery.min.js"></script>
 <!-- Scripts -->
<script src="${contextPath}/resources/js/jquery.min.js"></script>
<script src="${contextPath}/resources/js/jquery.scrolly.min.js"></script>
<script src="${contextPath}/resources/js/jquery.scrollex.min.js"></script>
<script src="${contextPath}/resources/js/browser.min.js"></script>
<script src="${contextPath}/resources/js/breakpoints.min.js"></script>
<script src="${contextPath}/resources/js/util.js"></script>
<script src="${contextPath}/resources/js/main.js"></script>
<!-- Ativando o jQuery lightBox plugin -->
<script type="text/javascript">
$(function() {
	$.localScroll();
    $('#map a').lightBox();
});
</script>
</head>
<body class="is-preload">
<div id="header">

				<div class="top">

					<!-- Logo -->
						<div id="logo">
							
							<h1 id="title">${pageContext.request.userPrincipal.name}</h1>
							
						</div>

					<!-- Nav -->
						<nav id="nav">
							<ul>
								<li><a href="${contextPath}/"><span class="icon solid fa-home">Accueil</span></a></li>
								<li><a href="#monument" id="top-link"><span class="icon solid fa-home">Monument</span></a></li>
								<li><a href="#celebrite" id="portfolio-link"><span class="icon solid fa-th">Celebrité</span></a></li>
								<li><a href="#lieu" id="about-link"><span class="icon solid fa-user">Lieu</span></a></li>
								<li><a href="#departement" id="contact-link"><span class="icon solid fa-envelope">Departement</span></a></li>
								<li><a href="#region" id="contact-link"><span class="icon solid fa-envelope">Region</span></a></li>
								<li><a href="#user" id="contact-link"><span class="icon solid fa-envelope">User</span></a></li>
							</ul>
						</nav>

				</div>

</div>
<!-- Main -->
<div id="main">

	<!-- Intro -->
	<section id="monument" class="one dark cover">
		<div class="container">
		
            <div class="col_w340 float_l">
	
        <form:form method="POST" modelAttribute="monumentForm" class="form-signin">
            <h2 class="form-signin-heading">Ajouter un monument </h2>
            <spring:bind path="codeM">
                <div class="form-group ${status.error ? 'has-error' : ''}">
                    <form:input type="text" path="codeM" class="form-control" placeholder="code Monument"
                                autofocus="true"></form:input>
                    <form:errors path="codeM"></form:errors>
                </div>
            </spring:bind>

            <spring:bind path="nomM">
                <div class="form-group ${status.error ? 'has-error' : ''}">
                    <form:input type="text" path="nomM" class="form-control" placeholder="Nom Monument"></form:input>
                    <form:errors path="nomM"></form:errors>
                </div>
            </spring:bind>

            <spring:bind path="proprietaire">
                <div class="form-group ${status.error ? 'has-error' : ''}">
                    <form:input type="text" path="proprietaire" class="form-control"
                                placeholder="proprietaire"></form:input>
                    <form:errors path="proprietaire"></form:errors>
                </div>
            </spring:bind>
              <spring:bind path="typeM">
                <div class="form-group ${status.error ? 'has-error' : ''}">
                    <form:input type="text" path="typeM" class="form-control"
                                placeholder="type Monument"></form:input>
                    <form:errors path="typeM"></form:errors>
                </div>
            </spring:bind>
              <spring:bind path="longitude">
                <div class="form-group ${status.error ? 'has-error' : ''}">
                    <form:input type="number" path="longitude" class="form-control"
                                placeholder="longitude"></form:input>
                    <form:errors path="longitude"></form:errors>
                </div>
            </spring:bind>
              <spring:bind path="latitude">
                <div class="form-group ${status.error ? 'has-error' : ''}">
                    <form:input type="number" path="latitude" class="form-control"
                                placeholder="latitude"></form:input>
                    <form:errors path="latitude"></form:errors>
                </div>
            </spring:bind>
              <spring:bind path="codelieu">
                <div class="form-group ${status.error ? 'has-error' : ''}">
                    <select id="codelieu" name="codelieu">
			    
					    <c:forEach items="${lieux}" var="title">
					        
					            <option value="${title.codelieu}" selected>${title.codelieu}</option>
					       
					        
					    </c:forEach>
					</select>
                    <form:errors path="codelieu"></form:errors>
                </div>
            </spring:bind>

            <button class="btn btn-lg btn-primary btn-block" type="submit">Ajouter Monument</button>
        </form:form>
        </div>
        <div class="col_w340 float_r">
        <c:url var="saveUrl" value="/admin2" />
        <form:form method="POST"  action="${saveUrl}" class="form-signin">
            <h2 class="form-signin-heading">Supprimer un monument </h2>
            <select id="titleInput" name="monument1">
			    
			    <c:forEach items="${monuments}" var="title">
			        
			            <option value="${title.codeM}" selected>${title.nomM}</option>
			       
			        
			    </c:forEach>
			</select>
           
            <button class="btn btn-lg btn-primary btn-block" type="submit">Supprimer Monument</button>
        </form:form>
       
        </div>
        </div>
      


					</section>
					<section id="celebrite" class="two">
					<div class="container">
		
            <div class="col_w340 float_l">
		<c:url var="saveUrl" value="/admincelebrite" />
        <form:form method="POST" modelAttribute="celebriteForm" action="${saveUrl}" class="form-signin">
            <h2 class="form-signin-heading">Ajouter une celebrité </h2>
            <spring:bind path="numcelebrite">
                <div class="form-group ${status.error ? 'has-error' : ''}">
                    <form:input type="integer" path="numcelebrite" class="form-control" placeholder="numcelebrite"
                                autofocus="true"></form:input>
                    <form:errors path="numcelebrite"></form:errors>
                </div>
            </spring:bind>

            <spring:bind path="nomC">
                <div class="form-group ${status.error ? 'has-error' : ''}">
                    <form:input type="text" path="nomC" class="form-control" placeholder="nomC"></form:input>
                    <form:errors path="nomC"></form:errors>
                </div>
            </spring:bind>

            <spring:bind path="nationalite">
                <div class="form-group ${status.error ? 'has-error' : ''}">
                    <form:input type="text" path="nationalite" class="form-control"
                                placeholder="nationalite"></form:input>
                    <form:errors path="nationalite"></form:errors>
                </div>
            </spring:bind>
              <spring:bind path="prenomC">
                <div class="form-group ${status.error ? 'has-error' : ''}">
                    <form:input type="text" path="prenomC" class="form-control"
                                placeholder="prenomC"></form:input>
                    <form:errors path="prenomC"></form:errors>
                </div>
            </spring:bind>
              <spring:bind path="epoque">
                <div class="form-group ${status.error ? 'has-error' : ''}">
                    <form:input type="text" path="epoque" class="form-control"
                                placeholder="epoque"></form:input>
                    <form:errors path="epoque"></form:errors>
                </div>
            </spring:bind>
              

            <button class="btn btn-lg btn-primary btn-block" type="submit">Ajouter Celebrite</button>
        </form:form>
        </div>
        <div class="col_w340 float_r">
        <c:url var="saveUrl" value="/admincelebritesupprimer" />
        <form:form method="POST"  action="${saveUrl}" class="form-signin">
            <h2 class="form-signin-heading">Supprimer une celebrite </h2>
            <select id="titleInput" name="celebrite1">
			    
			    <c:forEach items="${celebrite}" var="title">
			        
			            <option value="${title.numcelebrite}" selected>${title.nomC}</option>
			       
			        
			    </c:forEach>
			</select>
           
            <button class="btn btn-lg btn-primary btn-block" type="submit">Supprimer célébrité</button>
        </form:form>
         <c:if test="${supp != null}">
        
             ${supp}
        </c:if>
        </div>
        </div>
      


					</section>
					<section id="lieu" class="four">
					<div class="container">
            <div class="col_w340 float_l">
		<c:url var="saveUrl" value="/adminlieu" />
        <form:form method="POST" modelAttribute="lieuForm" action="${saveUrl}" class="form-signin">
            <h2 class="form-signin-heading">Ajouter un lieu </h2>
            <spring:bind path="codelieu">
                <div class="form-group ${status.error ? 'has-error' : ''}">
                    <form:input type="text" path="codelieu" class="form-control" placeholder="codelieu"
                                autofocus="true"></form:input>
                    <form:errors path="codelieu"></form:errors>
                </div>
            </spring:bind>

            <spring:bind path="dep">
                <div class="form-group ${status.error ? 'has-error' : ''}">
                    <select id="dep" name="dep">
			    
					    <c:forEach items="${departements}" var="title">
					        
					            <option value="${title.dep}" selected>${title.dep}</option>
					       
					        
					    </c:forEach>
					</select>
                    <form:errors path="dep"></form:errors>
                </div>
            </spring:bind>

            <spring:bind path="nomcom">
                <div class="form-group ${status.error ? 'has-error' : ''}">
                    <form:input type="text" path="nomcom" class="form-control"
                                placeholder="nomcom"></form:input>
                    <form:errors path="nomcom"></form:errors>
                </div>
            </spring:bind>
              <spring:bind path="longitude">
                <div class="form-group ${status.error ? 'has-error' : ''}">
                    <form:input type="number" path="longitude" class="form-control"
                                placeholder="longitude"></form:input>
                    <form:errors path="longitude"></form:errors>
                </div>
            </spring:bind>
              <spring:bind path="latitude">
                <div class="form-group ${status.error ? 'has-error' : ''}">
                    <form:input type="number" path="latitude" class="form-control"
                                placeholder="latitude"></form:input>
                    <form:errors path="latitude"></form:errors>
                </div>
            </spring:bind>
              

            <button class="btn btn-lg btn-primary btn-block" type="submit">Ajouter Lieu</button>
        </form:form>
        </div>

						</div>
					</section>
					<section id="departement" class="four">
					<div class="container">

							<header>
								<h2 class="alt">Hi! I'm <strong>Prologue</strong>, a <a href="http://html5up.net/license">free</a> responsive<br />
								site template designed by <a href="http://html5up.net">HTML5 UP</a>.</h2>
								<p>Ligula scelerisque justo sem accumsan diam quis<br />
								vitae natoque dictum sollicitudin elementum.</p>
							</header>

							<footer>
								<a href="#portfolio" class="button scrolly">Magna Aliquam</a>
							</footer>

						</div>
					</section>
					<section id="region" class="four">
					<div class="container">

							<header>
								<h2 class="alt">Hi! I'm <strong>Prologue</strong>, a <a href="http://html5up.net/license">free</a> responsive<br />
								site template designed by <a href="http://html5up.net">HTML5 UP</a>.</h2>
								<p>Ligula scelerisque justo sem accumsan diam quis<br />
								vitae natoque dictum sollicitudin elementum.</p>
							</header>

							<footer>
								<a href="#portfolio" class="button scrolly">Magna Aliquam</a>
							</footer>

						</div>
					</section>
					<section id="user" class="four">
					<div class="container">

							<header>
								<h2 class="alt">Hi! I'm <strong>Prologue</strong>, a <a href="http://html5up.net/license">free</a> responsive<br />
								site template designed by <a href="http://html5up.net">HTML5 UP</a>.</h2>
								<p>Ligula scelerisque justo sem accumsan diam quis<br />
								vitae natoque dictum sollicitudin elementum.</p>
							</header>

							<footer>
								<a href="#portfolio" class="button scrolly">Magna Aliquam</a>
							</footer>

						</div>
					</section>
					
</div>
<div id="tooplate_footer">

         Copyright © 2021-2022 <a href="#">GUEYE Fagaye Sarr</a>
      	<div class="cleaner"></div>

    </div>


   
</body>
</html>