<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Payment form</title>
    <link href="<c:url value="/resources/img/favicon.ico" />" rel="shortcut icon" type="image/x-icon">
    <link href="<c:url value="/resources/css/bootstrap.css" />" rel="stylesheet">
    <link href="<c:url value="/resources/css/animate.css" />" rel="stylesheet">
    <link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">
    <link href="<c:url value="/resources/css/payment-style.css" />" rel="stylesheet">
    <link href="<c:url value="/resources/font-awesome/css/font-awesome.css" />" rel="stylesheet">
    <link href="http://fonts.googleapis.com/css?family=Pacifico" rel="stylesheet" type="text/css">
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
        <p style="color: red">${message}</p>
        <form:form method="post" commandName="order" action="print.html">
            <form>
                <figure class="theCardFront">
                    <div class="instructionsCards">
                        <div class="variousCards">
                            <img class="visa cardImg" src="http://ivanthevariable.com/misc/codepen-credit-card/visa.jpg"/>
                            <img class="mastercard cardImg" src="http://ivanthevariable.com/misc/codepen-credit-card/mastercard.jpg"/>
                        </div>
                    </div>
                    <br class="clear" />
                    <div class="cardNumber">Card Number:<br/>
                            <input class="firstfour" placeholder="1111" maxlength="4" pattern="\d*" required/>
                            <input placeholder="2222" maxlength="4" pattern="\d*" required/>
                            <input placeholder="3333" maxlength="4" pattern="\d*" required/>
                            <input placeholder="4444" maxlength="4" pattern="\d*" required/>
                    </div>
                    <div class="cardExpiration">Expiration Date:<br/>
                            <input type="number" min="1" max="12" class="month" placeholder="Mo" maxlength="2" required/> /
                            <input type="number" min="2015" max="2025" class="year" placeholder="Year" maxlength="4" required/>
                    </div>
                    <div class="cardSecurity">Security Code:<br/>
                            <input type="text" class="csc" placeholder="CVV2 " maxlength="3" pattern="\d*" required>
                            <small><span class="tips">What's this?</span><span class="help">Last 3 number on the back of your card</span></small>
                    </div>
                    <br class="clear">
                        <form:checkbox cssClass="ch-box hidden" path="paid" value="true"></form:checkbox>
                        <input type="submit" class="pay" value="Pay Now">
                </figure>
            </form>
        </form:form>
    </div>
</section>


<script src="<c:url value="/resources/js/jquery-2.1.3.min.js"/>"></script>
<script src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>
<script src="<c:url value="/resources/js/wow.min.js"/>"></script>
<script src="<c:url value="/resources/js/payment.js"/>"></script>
<script src="<c:url value="/resources/js/custom.js"/>"></script>

</body>
</html>
