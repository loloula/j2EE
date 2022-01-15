<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
            	 <div class="cleaner h30"></div>
					<div class="col_w340 float_l"><img src="${contextPath}/resources/images/tooplate_image_01.jpg" alt="Image 01" /><span></span></div>
          
    			<div class="col_w340 float_r">
                <h4>Our Location</h4>
                <div id="map" class="image_wrapper"><span></span><a href="images/map_big.jpg" title="Our Location"><img width="300" height="200" src="${contextPath}/resources/images/map_thumb.jpg" alt="Our Location" class="image_wrapper" /></a></div>
                <div class="cleaner h20"></div>

                <h4>Mailing Address</h4>
                <h6>Company Name</h6>
                260-380 Duis lacinia dictum, <br />
                Curabitur volutpat, 10860<br />
                Nam rhoncus, diam a mollis tempor<br /><br />
				<b>Phone:</b> 010-020-1520<br />
            	<b>Email:</b> <a href="mailto:info@company.com">info@company.com</a>
                </div>

                <div class="cleaner"></div>
            </div>

            <div class="content_bottom content_cb"><a href="#top" class="gototop">Go To Top</a></div>
		</div>

        <div id="aboutus" class="content_top"></div>
    	<div class="content_box">
        	<div class="content_title content_ct"><h2>About Us</h2></div>
            <div class="content">
            	<div class="image_wrapper image_fr"><img src="${contextPath}/resources/images/tooplate_image_02.jpg" alt="Image 02" /><span></span></div>
            <p><em>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur volutpat enim nec dolor.</em></p>
                <p>Nunc euismod lectus eu neque ultrices laoreet. Aenean et velit tincidunt ante porttitor facilisis. Quisque in turpis vitae enim blandit vehicula bibendum ac nibh.</p>
                <p> Donec mollis pretium magna a dignissim. Morbi interdum cursus velit vel porttitor. In iaculis pellentesque nisl vel aliquet. Cras eget commodo diam.</p>
                <div class="cleaner h30"></div>
                <div class="col_w340 float_l">
                    <h3>Our Service Lists</h3>
                    <ul class="tooplate_list">
                        <li>Nulla facilisi. Maecenas ac odio ipsum donec cursus</li>
                        <li>Fusce risus tortor, interdum in malesuada pulvinar</li>
                        <li>Proin facilisis ullamcorper turpis, in placerat</li>
                        <li>Sed vel justo quis ligula blandit commodo molestie</li>
                        <li>Ut tristique sagittis arcu, vel laoreet turpis</li>
                    </ul>
          		</div>
                <div class="col_w340 float_r">
                    <h3>Testimonial</h3>
                    <blockquote>
                    <p>Fusce nec felis id lacus sollicitudin vulputate. Proin tincidunt, arcu id pellentesque accumsan, neque dolor imperdiet ligula, quis viverra tellus nulla a odio. Curabitur vitae enim risus, at placerat turpis. </p>
                    <cite>Hilton - <span>Web Designer</span></cite> </blockquote>

                </div>

                <div class="cleaner"></div>
            </div>

            <div class="content_bottom content_cb"><a href="#top" class="gototop">Go To Top</a></div>
		</div>

        <div id="blog" class="content_top"></div>
    	<div class="content_box">
        	<div class="content_title content_ct"><h2> Blog Posts</h2></div>
            <div class="content">
            	<p> In et nunc libero. Cras eget nibh ac tellus tincidunt congue. Nulla non condimentum odio. Morbi diam odio, condimentum sit amet volutpat pulvinar, interdum ac orci.</p>
                <div class="cleaner h30"></div>
                <div class="post_box float_l">
                    <img src="images/tooplate_image_07.jpg" alt="Image" />
                    <p class="post_meta"><span class="cat">Posted in <a href="#">Templates</a>, <a href="#">Freebie</a></span> | <a href="#">134 comments</a></p>
                    <h3>Suspendisse a nunc vel urna</h3>
                    <p>Vestibulum adipiscing tempus elit eu condimentum. Fusce at mi felis. Etiam sed velit nibh. Nunc bibendum justo nec eros elementum auctor. <a href="#">more...</a></p>
                    <div class="cleaner"></div>
          </div>
                <div class="post_box float_r">
                    <img src="images/tooplate_image_08.jpg" alt="Image" />
                    <p class="post_meta"><span class="cat">Posted in <a href="#">3D</a>, <a href="#">Animations</a></span> | <a href="#">214 comments</a></p>
                    <h3>Cum sociis natoque penatibus</h3>
                    <p>Donec mollis pretium magna a dignissim. Morbi interdum cursus velit vel porttitor. In iaculis pellentesque nisl vel aliquet. Cras eget commodo diam. <a href="#">more...</a></p>
                    <div class="cleaner"></div>
          </div>
                <div class="post_box float_l">
                    <img src="images/tooplate_image_05.jpg" alt="Image" />
                    <p class="post_meta"><span class="cat">Posted in <a href="#">Designs</a>, <a href="#">Templates</a></span> | <a href="#">142 comments</a></p>
                    <h3>Etiam auctor sapien dapibus </h3>
                    <p>Cras iaculis metus sit amet diam sagittis eu cursus risus luctus. Nulla facilisi. Morbi varius condimentum nulla id interdum.  <a href="#">more...</a></p>
                    <div class="cleaner"></div>
          </div>
                <div class="post_box float_r">
                    <img src="images/tooplate_image_06.jpg" alt="Image" />
                    <p class="post_meta"><span class="cat">Posted in <a href="#">Internet</a>, <a href="#">Marketing</a></span> | <a href="#">252 comments</a></p>
                    <h3>Vivamus felis eleifend  porta</h3>
                    <p>Curabitur volutpat sapien in dolor egestas ut lobortis mauris pretium. Maecenas fermentum, tellus in pulvinar posuere, urna elit blandit lectus. <a href="#">more...</a></p>
                    <div class="cleaner"></div>
                </div>
                <div class="cleaner"></div>
            </div>

            <div class="content_bottom content_cb"><a href="#top" class="gototop">Go To Top</a></div>
		</div>

        <div id="portfolio" class="content_top"></div>
    	<div class="content_box">
        	<div class="content_title content_ct"><h2>Portfolio</h2></div>
            <div class="content">

                <div class="cleaner"></div>
                <p>Cras condimentum lorem nec augue dictum pretium. Maecenas tincidunt aliquet vestibulum. Vivamus rutrum tellus eu tellus sagittis elementum. Quisque orci diam, vestibulum quis porttitor sit amet.</p>
                <div class="cleaner h30"></div>
                <div id="gallery">
                    <ul>
                        <li class="float_l"><a href="#" title=""><span></span><img src="images/gallery/image_01_s.jpg" alt="Image 01" /></a></li>
                      	<li class="float_r"><a href="#" title=""><span></span><img src="images/gallery/image_02_s.jpg" alt="Image 02" /></a></li>
                      	<li class="float_l"><a href="#" title=""><span></span><img src="images/gallery/image_03_s.jpg" alt="Image 03" /></a></li>
                      	<li class="float_r"><a href="#" title=""><span></span><img src="images/gallery/image_04_s.jpg" alt="Image 04" /></a></li>
                      	<li class="float_l"><a href="#" title=""><span></span><img src="images/gallery/image_05_s.jpg" alt="Image 05" /></a></li>
                        <li class="float_r"><a href="#" title=""><span></span><img src="images/gallery/image_06_s.jpg" alt="Image 06" /></a></li>
                  	</ul>
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
                <div >
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
