<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Have a good time</title>
    <link href="<c:url value="/resources/img/favicon.ico" />" rel="shortcut icon" type="image/x-icon">
    <link href="<c:url value="/resources/css/bootstrap.css" />" rel="stylesheet">
    <link href="<c:url value="/resources/css/animate.css" />" rel="stylesheet">
    <link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">
    <link href="<c:url value="/resources/css/ticket-style.css" />" rel="stylesheet">
    <link href="<c:url value="/resources/font-awesome/css/font-awesome.css" />" rel="stylesheet">
    <link href='http://fonts.googleapis.com/css?family=Pacifico' rel='stylesheet' type='text/css'>
</head>
<body>
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
                </div>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->

            <div class="collapse navbar-collapse navbar-main-collapse">

                <div class="col-md-1 right col-md-offset-3">
                    <c:choose>
                        <c:when test="${user.isAuthenticated}">
                            <p class="mail">${user.email}<i class="setting fa fa-cog"></i></p>
                            <div id="menu">
                                <div id="arrow"></div>
                                <div id="logout">
                                    <a href="${pageContext.request.contextPath}/user/logout">Log out</a>
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
                        <li><a href="index.html">Home</a></li>
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
<section>
    <div class="container">
        <div class="cardWrap">
            <div class="card cardLeft">
                <h1>Cinema <span>plus</span></h1>
                <div class="title">
                    <h2>${order.film}</h2>
                    <span>movie</span>
                </div>
                <div class="cinema-name">
                    <h2>${order.hall}</h2>
                    <span>hall</span>
                </div>
                <div class="seat">
                    <h2>${order.date}</h2>
                    <span>date</span>
                </div>
                <div class="time">
                    <h2>${order.showtime}</h2>
                    <span>time</span>
                </div>
            </div>

            <div class="card cardRight">
                <div class="eye"></div>
                <div class="place clearfix">
                    <div class="number">
                        <span>seat</span>
                        <c:forEach var="seat" items="${order.seats}">
                            <h3>${seat}</h3>
                        </c:forEach>
                    </div>
                    <div class="str">
                        <span>line</span>
                        <c:forEach var="line" items="${order.lines}">
                            <h3>${line}</h3>
                        </c:forEach>
                    </div>
                </div>
                <div class="barcode"></div>
            </div>

        </div>
    <%--container--%>
    </div>
</section>

<script src="<c:url value="/resources/js/jquery-2.1.3.min.js"/>"></script>
<script src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>
<script src="<c:url value="/resources/js/wow.min.js"/>"></script>
<script src="<c:url value="/resources/js/custom.js"/>"></script>

</body>
</html>
