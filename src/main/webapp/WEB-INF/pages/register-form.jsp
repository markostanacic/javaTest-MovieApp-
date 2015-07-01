<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix='form' uri='http://www.springframework.org/tags/form' %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Cinema Plus - Registration</title>
    <link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon">
    <link href="<c:url value="/resources/css/bootstrap.css" />" rel="stylesheet">
    <link href="<c:url value="/resources/font-awesome/css/font-awesome.css" />" rel="stylesheet" type="text/css">
    <link href="<c:url value="/resources/css/animate.css" />" rel="stylesheet" />
    <link href="<c:url value="/resources/css/register-style.css" />" rel="stylesheet">
</head>
<body>
<!-- Preloader -->
<div id="preloader">
    <div id="load"></div>
</div>
<nav class="navbar navbar-custom" role="navigation">
    <div class="container">
        <div class="navbar-header page-scroll">
            <a class="navbar-brand" href="${pageContext.request.contextPath}/index.html">
                <h1>Cinema Plus</h1>
            </a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse navbar-right navbar-main-collapse">
            <form class="navbar-form navbar-right"action="${pageContext.request.contextPath}/user/auth.html">
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
            </form>
        </div>
        <!-- /.navbar-collapse -->
    </div>
    <!-- /.container -->
</nav>
<div class="container">
    <div class="row">
        <div class="col-md-6 col-md-offset-3">
            <form:form method="POST" commandName="user" class="form-horizontal" action="${pageContext.request.contextPath}/user/create.html">
                <div class="form-group">
                    <label class="col-sm-2 control-label">First name</label>
                    <div class="col-sm-8">
                        <form:input path="firstName" type="text" class="form-control" id="name" placeholder="First name"></form:input>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">Surname</label>
                    <div class="col-sm-8">
                        <form:input path="lastName" type="text" class="form-control" id="surname" placeholder="Surname"></form:input>
                    </div>
                </div>
                <div class="form-group">

                    <label class="col-sm-2 control-label">Email</label>
                    <div class="col-sm-8">
                        <form:errors path="email" cssstyle="color: red;"></form:errors>
                        <form:input path="email" class="form-control" placeholder="Email"></form:input>
                    </div>
                </div>
                <div class="form-group">

                    <label class="col-sm-2 control-label">Password</label>
                    <div class="col-sm-8">
                        <form:errors path="password" cssstyle="color: red;"></form:errors>
                        <form:input path="password" class="form-control" placeholder="Password"></form:input>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                        <div class="checkbox">
                            <label>
                            </label>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                        <button type="submit" class="btn btn-success">Sign up</button>
                    </div>
                </div>
            </form:form>
        </div>
    </div>
</div>

<script src="<c:url value="/resources/js/jquery-2.1.3.min.js"/>"></script>
<script src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>
<script src="<c:url value="/resources/js/wow.min.js"/>"></script>

</body>
</html>
