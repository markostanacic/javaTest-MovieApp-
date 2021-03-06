<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix='form' uri='http://www.springframework.org/tags/form' %>
<%@ taglib prefix='spring' uri='http://www.springframework.org/tags' %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <title>Login page</title>
    <link href="<c:url value="/resources/img/favicon.ico" />" rel="shortcut icon" type="image/x-icon">
    <link href="<c:url value="/resources/css/social-buttons-3.css"/>"  rel="stylesheet">
    <link href="<c:url value="/resources/css/bootstrap.css"/>"  rel="stylesheet">
    <link href="<c:url value="/resources/css/login-style.css"/>" rel="stylesheet">
    <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
</head>

<body>
<div class="page-header">
    <div class="container">
        <div class="row">
            <div class="col-lg-4 col-lg-offset-4">
                <div class="cloud">
                    <img src="${pageContext.request.contextPath}/resources/img/logo-big.png" alt=""/>
                    <h3>Cinema Plus</h3>
                </div>
            </div>
        </div>
    </div>
</div>
<!--
    If the user is anonymous (not logged in), show the login form
    and social sign in buttons.
-->

    <!-- Login form -->
    <section class="content">
        <div class="container">

            <p id="message">${message}</p>
            <form:form method="POST" commandName="user" action="${pageContext.request.contextPath}/user/auth.html">

                <div class="row">
                    <div id="form-group-email" class="form-group col-lg-4 col-lg-offset-4">
                        <label class="control-label">Email:</label>
                        <form:errors path="email" cssstyle="color: red;"></form:errors>
                        <form:input path="email" class="form-control" placeholder="Email"></form:input>
                    </div>
                </div>

                <div class="row">
                    <div id="form-group-password" class="form-group col-lg-4 col-lg-offset-4">
                        <label class="control-label">Password:</label>
                            <form:errors path="password" cssstyle="color: red;"></form:errors>
                            <form:input path="password" class="form-control" placeholder="Password"></form:input>
                    </div>
                </div>
                <div class="row">
                    <div class="form-group col-lg-4 col-lg-offset-4">
                        <!-- Add submit button -->
                        <button type="submit" class="btn btn-success">Login</button>
                    </div>
                </div>
            </form:form>


            <div class="row">
                <div class="form-group col-lg-4 col-lg-offset-4">
                    <!-- Add create user account link -->
                    <a href="${pageContext.request.contextPath}/user/create.html">create account</a>
                </div>
            </div>

        </div>
        <!-- Social Sign In Buttons -->
        <div class="container">
            <div class="panel-body">
                <div class="row social-button-row">
                    <div class="col-lg-4 col-lg-offset-4">
                        <!-- Add Facebook sign in button -->
                        <a href="<spring:url value='/connect'/>"><button class="btn btn-facebook"><i class="icon-facebook"></i> | Sign in with facebook</button></a>

                        <a href="<spring:url value='/connect'/>"><button class="btn btn-twitter"><i class="icon-twitter"></i> | Sign in with twitter</button></a>
                    </div>
                </div>
                <div class="row social-button-row">
                    <div class="col-lg-4 col-lg-offset-4">
                        <!-- Add Twitter sign in Button -->

                    </div>
                </div>
            </div>
        </div>
    </section>


</body>
</html>