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

<span id="top"></span>
<div id="tooplate_body_wrapper">
<div id="tooplate_wrapper">
	<div id="tooplate_header">
        <div id="site_title">
            <h1><a href="#">GUIDE tourisme</a></h1>
        </div>
        <div id="tooplate_menu">
            <ul>
               <li><a href="${contextPath}/">Accueil</a></li>
                <li><a href="${contextPath}/ListMonument">Monuments</a></li>
                <li><a href="#blog">Espaces Sportifs</a></li>
                <li><a href="#portfolio">Espaces culturels</a></li>
                 <li><a href="${contextPath}/ListDepartement">Lieu</a></li>
                <li><a href="${contextPath}/recherche">Recherche</a></li>
                <li ><a href="${contextPath}/admin">Administrateur</a></li>
                
            </ul>
        </div> <!-- end of tooplate_menu -->
	</div> <!-- end of header -->
  <div id="tooplate_main">

		<div id="home" class="content_top"></div>
    	<div class="content_box">
        	<div class="content_title content_ct">
        		<c:if test="${pageContext.request.userPrincipal.name != null}">
        <form id="logoutForm" method="POST" action="${contextPath}/logout">
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
        </form>

        <h2>Bienvenue ${pageContext.request.userPrincipal.name} | <a onclick="document.forms['logoutForm'].submit()">Logout</a></h2>
    </c:if>
        
        	</div>
        	 
            <div class="content">
         <div style="width: 50%; display: inline-block;">
<h1 id="titre2">Recherche Monument</h1>

<form method="POST" action="${contextPath}/rechercher" class="form-signin">   
     <input type="text" class="form-control" name="ville"/>
     <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
    <input type="submit" value="Submit">
</form>
 <div class="content">
 
 <c:if test="${monumentschercher != null}">
<table style="border: 1px solid black;">
<thead>
<tr>
<td>nomCommune</td>
<td>NomMonument</td>
<td>Proriétaire</td>
<td>TypeMonument</td>
<td>Longitude</td>
<td>Latitude</td>
</tr>

</thead>

<tbody>
<c:forEach var="chercher" items="${monumentschercher}">
	<tr>
		<td ><a href="${contextPath}/">${chercher[0]}</a></td>
		<td ><a href="${contextPath}/">${chercher[1]}</a></td>
		<td ><a href="${contextPath}/">${chercher[2]}</a></td>
		<td ><a href="${contextPath}/">${chercher[3]}</a></td>
		<td ><a href="${contextPath}/">${chercher[4]}</a></td>
		<td ><a href="${contextPath}/">${chercher[5]}</a></td>
		<td ><a href="${contextPath}/">${chercher[6]}</a></td>
		
		
	</tr>
</c:forEach>
</tbody>
</table>
 </c:if>
</div>
</div>
				
			  <div class="cleaner"></div>
        </div>

            <div class="content_bottom content_cb"><a href="#top" class="gototop">Go To Top</a></div>
		</div>
		

        <div id="contactus" class="content_top"></div>
    	<div class="content_box">
        	<div class="content_title content_ct"><h2>Contact Information</h2></div>
            <div class="content">

                <p>Nullam a tortor est, congue fermentum nisi. Maecenas nulla nulla, lobortis eu volutpat euismod, scelerisque ut dui. Integer luctus tellus ac mi malesuada dignissim. Sed id diam dui. In ut nunc urna. Validate <a href="http://validator.w3.org/check?uri=referer" rel="nofollow"><strong>XHTML</strong></a> and <a href="http://jigsaw.w3.org/css-validator/check/referer" rel="nofollow"><strong>CSS</strong></a>.</p>

                <div class="cleaner h30"></div>
                <div class="col_w340 float_l">
                <h4>Quick Contact Form</h4>
                <div id="contact_form">
                <form method="post" name="contact" action="#">

						<label for="author">Name:</label> <input type="text" id="author" name="author" class="required input_field" />
						<div class="cleaner h10"></div>

						<label for="email">Email:</label> <input type="text" class="validate-email required input_field" name="email" id="email" />
						<div class="cleaner h10"></div>

						<label for="subject">Subject:</label> <input type="text" class="validate-subject required input_field" name="subject" id="subject"/>
						<div class="cleaner h10"></div>

						<label for="text">Message:</label> <textarea id="text" name="text" rows="0" cols="0" class="required"></textarea>
						<div class="cleaner h10"></div>

						<input type="submit" value="Send" id="submit" name="submit" class="submit_btn float_l" />
						<input type="reset" value="Reset" id="reset" name="reset" class="submit_btn float_r" />

                </form>

                </div>
                </div>


                <div class="cleaner"></div>
            </div>

            <div class="content_bottom content_cbf"><a href="#top" class="gototop">Go To Top</a></div>
		</div>
    </div>

    <div id="tooplate_footer">

         Copyright © 2021-2022 <a href="#">GUEYE Fagaye Sarr</a>
      	<div class="cleaner"></div>

    </div>

</div> <!-- end of warpper -->
</div> <!-- end of body wrapper -->

</body>
</html>
