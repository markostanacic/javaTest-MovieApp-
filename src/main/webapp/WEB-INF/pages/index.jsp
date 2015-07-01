<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta firstName="viewport" content="width=device-width, initial-scale=1.0">
    <meta firstName="description" content="Cinema plus - cinema">
    <meta firstName="author" content="Kucheriavenko">
    <title> | Cinema Plus</title>
    <link href="<c:url value="/resources/img/favicon.ico" />" rel="shortcut icon" type="image/x-icon">
    <link href="<c:url value="/resources/css/bootstrap.css" />" rel="stylesheet">
    <link href="<c:url value="/resources/css/animate.css" />" rel="stylesheet">
    <link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">
    <link href="<c:url value="/resources/css/blue.css" />" rel="stylesheet">
    <link href="<c:url value="/resources/font-awesome/css/font-awesome.css" />" rel="stylesheet">
    <link href='http://fonts.googleapis.com/css?family=Pacifico' rel='stylesheet' type='text/css'>
</head>
<body id="page-top" data-spy="scroll" data-target=".navbar-custom">
<!-- Preloader -->
<div id="preloader">
    <div id="load"></div>
</div>
<nav class="navbar navbar-custom navbar-fixed-top" role="navigation">
    <div class="container">
        <div class="row">
            <div class="col-md-4">
                <div class="navbar-header page-scroll">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-main-collapse">
                        <i class="fa fa-bars"></i>
                    </button>
                    <a class="navbar-brand" href="index.html">
                        <img src="${pageContext.request.contextPath}/resources/img/logo.png" alt="">
                    </a>
                    <h2></h2>
                </div>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->

            <div class="collapse navbar-collapse navbar-main-collapse">

                <div class="col-md-2 right col-md-offset-2">
                    <c:choose>
                        <c:when test="${user.isAuthenticated}">
                            <p class="mail">${user.email}<i class="setting fa fa-cog"></i></p>
                            <div id="menu">
                                <div id="arrow"></div>
                                <div id="logout">
                                    <a href="${pageContext.request.contextPath}/user/logout">Log out</a><br>
                                    <c:if test="${user.role == 'ROLE_ADMIN'}">
                                            <a href="${pageContext.request.contextPath}/admin0564044">Admin panel</a>
                                    </c:if>
                                </div>
                            </div>
                        </c:when>
                        <c:otherwise>
                            <a href="${pageContext.request.contextPath}/user/auth.html">
                                <button class="btn btn-danger log-btn">Log in</button>
                            </a>
                        </c:otherwise>
                    </c:choose>
                </div>
                <div class="col-md-4 right ">
                    <ul class="list nav navbar-nav ">
                        <li><a href="${pageContext.request.contextPath}/index.html">Home</a></li>
                        <li><a href="#">Soon</a></li>
                        <li><a href="#">News</a></li>
                        <li><a href="#">Trailers</a></li>
                    </ul>
                </div>
            </div>

            <!-- /.navbar-collapse -->
        </div>
        <!-- /.row -->
    </div>
    <!-- /.container -->
</nav>

<!-- Section: intro -->
<section id="intro" class="intro">

    <div class="slogan">
        <h2>Cinema plus</h2>
        <h4>Relax with us</h4>
    </div>
    <div class="page-scroll">
        <a href="${pageContext.request.contextPath}/user/create.html" class="btn btn-circle">
            <p class="animated">Sign up</p>
            <i class="fa fa-angle-double-down fa-2x animated"></i>
        </a>
    </div>
</section>
<!-- /Section: intro -->


<!-- Section: services -->
<section id="service" class="home-section text-center bg-gray">
    <div class="heading-about">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2">
                    <div class="wow bounceInDown" data-wow-delay="0.4s">
                        <div class="section-heading">
                            <h3>Today</h3>
                            <i class="fa fa-2x fa-angle-down"></i>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="container">

        <div class="col-md-12">

            <div class="carousel slide" id="myCarousel">
                <div class="carousel-inner">
                    <div class="item active">
                        <ul class="thumbnails">
                            <li class="col-sm-3">
                                <div class="fff">
                                    <div class="thumbnail">
                                        <img src="${pageContext.request.contextPath}/resources/img/poster1.jpg" alt="#">
                                    </div>
                                    <div class="caption">
                                        <h4><a href="#">Jurassic world</a></h4>
                                        <p>Twenty-two years after the events of Jurassic Park, Isla Nublar now features a fully...</p>
                                        <form:form method="POST" commandName="order" action="${pageContext.request.contextPath}/index/jurassic-world">
                                                <form:select path="date" items="${calendar}"></form:select><br><br>
                                                <input class="btn btn-warning" type="submit" value="Buy ticket"/>
                                        </form:form>

                                    </div>
                                </div>
                            </li>
                            <li class="col-sm-3">
                                <div class="fff">
                                    <div class="thumbnail">
                                        <img src="${pageContext.request.contextPath}/resources/img/poster2.jpg" alt="#">
                                    </div>
                                    <div class="caption">
                                        <h4><a href="#">Insidious: chapter 3</a></h4>
                                        <p>A prequel set before the haunting of the Lambert family that reveals how gifted psychic Elise Rainier...</p>
                                        <form:form method="POST" commandName="order" action="${pageContext.request.contextPath}/index/insidious: chapter 3">
                                            <form:select path="date" items="${calendar}"></form:select><br><br>
                                            <input class="btn btn-warning" type="submit" value="Buy ticket"/>
                                        </form:form>
                                    </div>
                                </div>
                            </li>
                            <li class="col-sm-3">
                                <div class="fff">
                                    <div class="thumbnail">
                                        <img src="${pageContext.request.contextPath}/resources/img/poster3.jpg" alt="">
                                    </div>
                                    <div class="caption">
                                        <h4><a href="#">Spy</a></h4>
                                        <p>A desk-bound CIA analyst volunteers to go undercover to infiltrate the world of a deadly...</p>
                                        <form:form method="POST" commandName="order" action="${pageContext.request.contextPath}/index/spy">
                                            <form:select path="date" items="${calendar}"></form:select><br><br>
                                            <input class="btn btn-warning" type="submit" value="Buy ticket"/>
                                        </form:form>
                                    </div>
                                </div>
                            </li>
                            <li class="col-sm-3">
                                <div class="fff">
                                    <div class="thumbnail">
                                        <img src="${pageContext.request.contextPath}/resources/img/poster4.jpg" alt="">
                                    </div>
                                    <div class="caption">
                                        <h4><a href="#">Inside out</a></h4>
                                        <p>After young Riley is uprooted from her Midwest life and moved to San Francisco, her emotions - Joy</p>
                                        <form:form method="POST" commandName="order" action="${pageContext.request.contextPath}/index/inside out">
                                            <form:select path="date" items="${calendar}"></form:select><br><br>
                                            <input class="btn btn-warning" type="submit" value="Buy ticket"/>
                                        </form:form>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div><!-- /Slide1 -->
                    <div class="item">
                        <ul class="thumbnails">
                            <li class="col-sm-3">
                                <div class="fff">
                                    <div class="thumbnail">
                                        <a href="#"><img src="${pageContext.request.contextPath}/resources/img/soon.png" alt=""></a>
                                    </div>
                                    <div class="caption">
                                        <h4><a href="#">Out of the dark</a></h4>
                                        <p>A couple and their daughter move to Colombia to take over a family manufacturing plant...</p>
                                    </div>
                                </div>
                            </li>
                            <li class="col-sm-3">
                                <div class="fff">
                                    <div class="thumbnail">
                                        <a href="#"><img src="${pageContext.request.contextPath}/resources/img/soon.png" alt=""></a>
                                    </div>
                                    <div class="caption">
                                        <h4><a href="#">TED 2</a></h4>
                                        <p>Newlywed couple Ted and Tami-Lynn want to have a baby, but in order to qualify to be a paren...</p>
                                    </div>
                                </div>
                            </li>
                            <li class="col-sm-3">
                                <div class="fff">
                                    <div class="thumbnail">
                                        <a href="#"><img src="${pageContext.request.contextPath}/resources/img/soon.png" alt=""></a>
                                    </div>
                                    <div class="caption">
                                        <h4><a href="#">Terminator Genisys</a></h4>
                                        <p>When John Connor, leader of the human resistance, sends Sgt. Kyle Reese back to 1984 to protect...</p>
                                    </div>
                                </div>
                            </li>
                            <li class="col-sm-3">
                                <div class="fff">
                                    <div class="thumbnail">
                                        <a href="#"><img src="${pageContext.request.contextPath}/resources/img/soon.png" alt=""></a>
                                    </div>
                                    <div class="caption">
                                        <h4><a href="#">Ant-Man</a></h4>
                                        <p>Armed with a super-suit with the astonishing ability to shrink in scale but increase in strength...</p>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div><!-- /Slide2 -->
                </div>


                <nav>
                    <ul class="control-box pager">
                        <li><a data-slide="prev" href="#myCarousel" class=""><i class="fa fa-chevron-left"></i></a></li>
                        <li><a data-slide="next" href="#myCarousel" class=""><i class="fa fa-chevron-right"></i></a></li>
                    </ul>
                </nav>
                <!-- /.control-box -->

            </div><!-- /#myCarousel -->

        </div><!-- /.col-xs-12 -->



    </div>
</section>
<!-- /Section: services -->

<!-- Section: contact -->
<section id="contact" class="home-section text-center">
    <div class="heading-contact">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2">
                    <div class="wow bounceInDown" data-wow-delay="0.4s">
                        <div class="section-heading">
                            <h2>Get in touch</h2>
                            <i class="fa fa-2x fa-angle-down"></i>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="container">

        <div class="row">
            <div class="col-lg-2 col-lg-offset-5">
                <hr class="marginbot-50">
            </div>
        </div>
        <div class="row">
            <div class="col-lg-8">
                <div class="boxed-grey">
                    <form id="contact-form">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="firstName">
                                        Name</label>
                                    <input type="text" class="form-control" id="firstName" placeholder="Enter firstName" required="required" />
                                </div>
                                <div class="form-group">
                                    <label for="email">
                                        Email Address</label>
                                    <div class="input-group">
													<span class="input-group-addon"><span class="glyphicon glyphicon-envelope"></span>
												</span>
                                        <input type="email" class="form-control" id="email" placeholder="Enter email" required="required" /></div>
                                </div>
                                <div class="form-group">
                                    <label for="subject">
                                        Subject</label>
                                    <input type="text" class="form-control" id="subject" placeholder="Enter subject" />
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="firstName">
                                        Message</label>
                                    <textarea firstName="message" id="message" class="form-control" rows="9" cols="25" required="required"
                                              placeholder="Message"></textarea>
                                </div>
                            </div>
                            <div class="col-md-12">
                                <button type="submit" class="btn btn-skin pull-right" id="btnContactUs">
                                    Send Message</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>

            <div class="col-lg-4">
                <div class="widget-contact">
                    <h5>Main Office</h5>

                    <address>
                        <strong>MedVed Inc.</strong><br>
                        Krivoy Rog, Ukraine<br>
                        <i class="fa fa-skype"> ivan.kucheriavenko</i><br>
                    </address>

                    <address>
                        <strong>Email</strong><br>
                        <a href="mailto:#">kucheriavenkoi@gmail.com</a>
                    </address>
                    <address>
                        <strong>We're on social networks</strong><br>
                        <ul class="company-social">
                            <li class="social-facebook"><a href="#" target="_blank"><i class="fa fa-facebook"></i></a></li>
                            <li class="social-twitter"><a href="#" target="_blank"><i class="fa fa-twitter"></i></a></li>
                            <li class="social-dribble"><a href="#" target="_blank"><i class="fa fa-dribbble"></i></a></li>
                            <li class="social-google"><a href="#" target="_blank"><i class="fa fa-google-plus"></i></a></li>
                        </ul>
                    </address>

                </div>
            </div>
        </div>

    </div>
</section>
<!-- /Section: contact -->

<footer>
    <div class="container">
        <div class="row">
            <div class="col-md-12 col-lg-12">
                <div class="wow shake" data-wow-delay="0.4s">
                    <div class="page-scroll marginbot-30">
                        <a href="#intro" id="totop" class="btn btn-circle">
                            <i class="fa fa-angle-double-up animated"></i>
                        </a>
                    </div>
                </div>
                <p>&copy;Copyright 2015 - Ivan Kucheriavenko. All rights reserved.</p>
            </div>
        </div>
    </div>
</footer>

<!-- Core JavaScript Files -->
<script src="<c:url value="/resources/js/jquery-2.1.3.min.js"/>"></script>
<script src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>
<script src="<c:url value="/resources/js/jquery.easing.min.js"/>"></script>
<script src="<c:url value="/resources/js/jquery.scrollTo.js"/>"></script>
<script src="<c:url value="/resources/js/wow.min.js"/>"></script>
<!-- Custom Theme JavaScript -->
<script src="<c:url value="/resources/js/custom.js"/>"></script>





</body>

</html>




































