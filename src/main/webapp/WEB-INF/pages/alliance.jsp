<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Alliance</title>
    <link href="<c:url value="/resources/img/favicon.ico" />" rel="shortcut icon" type="image/x-icon">
    <link href="<c:url value="/resources/css/bootstrap.css" />" rel="stylesheet">
    <link href="<c:url value="/resources/css/animate.css" />" rel="stylesheet">
    <link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">
    <link href="<c:url value="/resources/css/hall-style.css" />" rel="stylesheet">
    <link href="<c:url value="/resources/css/alliance-style.css" />" rel="stylesheet">
    <link href="<c:url value="/resources/font-awesome/css/font-awesome.css" />" rel="stylesheet">
    <link href='http://fonts.googleapis.com/css?family=Pacifico' rel='stylesheet' type='text/css'>
</head>
<body id="page-top" data-spy="scroll" data-target=".navbar-custom">
<script src="<c:url value="/resources/js/jquery-2.1.3.min.js"/>"></script>
<script>
    $(document).ready(function() {

        var list = ${list};
        $.each(list, function( index, value ) {
            $('#' + value).parent().find('label').css('background','#0066ff');
            $('#' + value).remove();
        });

    });

</script>
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

<div class="hall-name"><span>&laquo;Alliance&raquo; hall</span></div>
<div class="hall">
<div class="screen">
    <span>Screen</span>
</div>
<div class="price-list">
    <div class="btn-toolbar">
        <div class="btn-group btn-group-xs">
            <span>Price(UAH)</span>
            <ul>
                <li>
                    <button type="button" class="btn btn-primary">20</button>
                </li>
                <li>
                    <button type="button" class="btn btn-primary">30</button>
                </li>
                <li>
                <button type="button" class="btn btn-primary">40</button>
                </li>
                <li>
                <button type="button" class="btn btn-primary">taken</button>
                </li>
            </ul>
        </div>
    </div>
</div>
<div class="btn-toolbar seats" role="toolbar">
    <div class="btn-group btn-group-xs">
        <form:form method="POST" commandName="order" action="${pageContext.request.contextPath}/details" cssClass="greatForm">

            <%--line 1--%>
            <div class="line line-bottom">
                <div class="wrapper">
                    <form:checkbox id="103" cssClass="checkbox" path="ids" value="103"></form:checkbox>
                    <label></label>
                </div>
                <div class="wrapper">
                    <form:checkbox id="104" cssClass="checkbox" path="ids" value="104"></form:checkbox>
                    <label></label>
                </div>
                <div class="wrapper">
                    <form:checkbox id="105" cssClass="checkbox" path="ids" value="105"></form:checkbox>
                    <label></label>
                </div>
                <div class="wrapper">
                    <form:checkbox id="106" cssClass="checkbox" path="ids" value="106"></form:checkbox>
                    <label></label>
                </div>
                <div class="wrapper">
                    <form:checkbox id="107" cssClass="checkbox" path="ids" value="107"></form:checkbox>
                    <label></label>
                </div>
                <div class="wrapper">
                    <form:checkbox id="108" cssClass="checkbox" path="ids" value="108"></form:checkbox>
                    <label></label>
                </div>
                <div class="wrapper">
                    <form:checkbox id="109" cssClass="checkbox" path="ids" value="109"></form:checkbox>
                    <label></label>
                </div>
                <div class="wrapper">
                    <form:checkbox id="110" cssClass="checkbox" path="ids" value="110"></form:checkbox>
                    <label></label>
                </div>
                <div class="wrapper">
                    <form:checkbox id="111" cssClass="checkbox" path="ids" value="111"></form:checkbox>
                    <label></label>
                </div>
                <div class="wrapper">
                    <form:checkbox id="112" cssClass="checkbox" path="ids" value="112"></form:checkbox>
                    <label></label>
                </div>
                <div class="wrapper">
                    <form:checkbox id="113" cssClass="checkbox" path="ids" value="113"></form:checkbox>
                    <label></label>
                </div>
                <div class="wrapper">
                    <form:checkbox id="114" cssClass="checkbox" path="ids" value="114"></form:checkbox>
                    <label></label>
                </div>

                <p>line 1</p>

            </div>

            <%--line 2--%>
            <div class="line line-bottom">
                <div class="wrapper">
                    <form:checkbox id="115" cssClass="checkbox" path="ids" value="115"></form:checkbox>
                    <label></label>
                </div>
                <div class="wrapper">
                    <form:checkbox id="116" cssClass="checkbox" path="ids" value="116"></form:checkbox>
                    <label></label>
                </div>
                <div class="wrapper">
                    <form:checkbox id="1171" cssClass="checkbox" path="ids" value="117"></form:checkbox>
                    <label></label>
                </div>
                <div class="wrapper">
                    <form:checkbox id="118" cssClass="checkbox" path="ids" value="118"></form:checkbox>
                    <label></label>
                </div>
                <div class="wrapper">
                    <form:checkbox id="119" cssClass="checkbox" path="ids" value="119"></form:checkbox>
                    <label></label>
                </div>
                <div class="wrapper">
                    <form:checkbox id="120" cssClass="checkbox" path="ids" value="120"></form:checkbox>
                    <label></label>
                </div>
                <div class="wrapper">
                    <form:checkbox id="121" cssClass="checkbox" path="ids" value="121"></form:checkbox>
                    <label></label>
                </div>
                <div class="wrapper">
                    <form:checkbox id="122" cssClass="checkbox" path="ids" value="122"></form:checkbox>
                    <label></label>
                </div>
                <div class="wrapper">
                    <form:checkbox id="123" cssClass="checkbox" path="ids" value="123"></form:checkbox>
                    <label></label>
                </div>
                <div class="wrapper">
                    <form:checkbox id="124" cssClass="checkbox" path="ids" value="124"></form:checkbox>
                    <label></label>
                </div>
                <div class="wrapper">
                    <form:checkbox id="125" cssClass="checkbox" path="ids" value="125"></form:checkbox>
                    <label></label>
                </div>
                <div class="wrapper">
                    <form:checkbox id="126" cssClass="checkbox" path="ids" value="126"></form:checkbox>
                    <label></label>
                </div>

                <p>line 2</p>

            </div>

            <%--line 3--%>

            <div class="line line-center">
                <div class="wrapper">
                    <form:checkbox id="127" cssClass="checkbox" path="ids" value="127"></form:checkbox>
                    <label></label>
                </div>
                <div class="wrapper">
                    <form:checkbox id="128" cssClass="checkbox" path="ids" value="128"></form:checkbox>
                    <label></label>
                </div>
                <div class="wrapper">
                    <form:checkbox id="129" cssClass="checkbox" path="ids" value="129"></form:checkbox>
                    <label></label>
                </div>
                <div class="wrapper">
                    <form:checkbox id="130" cssClass="checkbox" path="ids" value="130"></form:checkbox>
                    <label></label>
                </div>
                <div class="wrapper">
                    <form:checkbox id="131" cssClass="checkbox" path="ids" value="131"></form:checkbox>
                    <label></label>
                </div>
                <div class="wrapper">
                    <form:checkbox id="132" cssClass="checkbox" path="ids" value="132"></form:checkbox>
                    <label></label>
                </div>
                <div class="wrapper">
                    <form:checkbox id="133" cssClass="checkbox" path="ids" value="133"></form:checkbox>
                    <label></label>
                </div>
                <div class="wrapper">
                    <form:checkbox id="134" cssClass="checkbox" path="ids" value="134"></form:checkbox>
                    <label></label>
                </div>
                <div class="wrapper">
                    <form:checkbox id="135" cssClass="checkbox" path="ids" value="135"></form:checkbox>
                    <label></label>
                </div>
                <div class="wrapper">
                    <form:checkbox id="136" cssClass="checkbox" path="ids" value="136"></form:checkbox>
                    <label></label>
                </div>
                <div class="wrapper">
                    <form:checkbox id="137" cssClass="checkbox" path="ids" value="137"></form:checkbox>
                    <label></label>
                </div>
                <div class="wrapper">
                    <form:checkbox id="138" cssClass="checkbox" path="ids" value="138"></form:checkbox>
                    <label></label>
                </div>

                <p>line 3</p>

            </div>

            <%--line 4--%>

            <div class="line line-center">
                <div class="wrapper">
                    <form:checkbox id="139" cssClass="checkbox" path="ids" value="139"></form:checkbox>
                    <label></label>
                </div>
                <div class="wrapper">
                    <form:checkbox id="140" cssClass="checkbox" path="ids" value="140"></form:checkbox>
                    <label></label>
                </div>
                <div class="wrapper">
                    <form:checkbox id="141" cssClass="checkbox" path="ids" value="141"></form:checkbox>
                    <label></label>
                </div>
                <div class="wrapper">
                    <form:checkbox id="142" cssClass="checkbox" path="ids" value="142"></form:checkbox>
                    <label></label>
                </div>
                <div class="wrapper">
                    <form:checkbox id="143" cssClass="checkbox" path="ids" value="143"></form:checkbox>
                    <label></label>
                </div>
                <div class="wrapper">
                    <form:checkbox id="144" cssClass="checkbox" path="ids" value="144"></form:checkbox>
                    <label></label>
                </div>
                <div class="wrapper">
                    <form:checkbox id="145" cssClass="checkbox" path="ids" value="145"></form:checkbox>
                    <label></label>
                </div>
                <div class="wrapper">
                    <form:checkbox id="146" cssClass="checkbox" path="ids" value="146"></form:checkbox>
                    <label></label>
                </div>
                <div class="wrapper">
                    <form:checkbox id="147" cssClass="checkbox" path="ids" value="147"></form:checkbox>
                    <label></label>
                </div>
                <div class="wrapper">
                    <form:checkbox id="148" cssClass="checkbox" path="ids" value="148"></form:checkbox>
                    <label></label>
                </div>
                <div class="wrapper">
                    <form:checkbox id="149" cssClass="checkbox" path="ids" value="149"></form:checkbox>
                    <label></label>
                </div>
                <div class="wrapper">
                    <form:checkbox id="150" cssClass="checkbox" path="ids" value="150"></form:checkbox>
                    <label></label>
                </div>

                <p>line 4</p>

            </div>

            <%--line 5--%>
            <div class="line line-center">
                <div class="wrapper">
                    <form:checkbox id="151" cssClass="checkbox" path="ids" value="151"></form:checkbox>
                    <label></label>
                </div>
                <div class="wrapper">
                    <form:checkbox id="152" cssClass="checkbox" path="ids" value="152"></form:checkbox>
                    <label></label>
                </div>
                <div class="wrapper">
                    <form:checkbox id="153" cssClass="checkbox" path="ids" value="153"></form:checkbox>
                    <label></label>
                </div>
                <div class="wrapper">
                    <form:checkbox id="154" cssClass="checkbox" path="ids" value="154"></form:checkbox>
                    <label></label>
                </div>
                <div class="wrapper">
                    <form:checkbox id="155" cssClass="checkbox" path="ids" value="155"></form:checkbox>
                    <label></label>
                </div>
                <div class="wrapper">
                    <form:checkbox id="156" cssClass="checkbox" path="ids" value="156"></form:checkbox>
                    <label></label>
                </div>
                <div class="wrapper">
                    <form:checkbox id="157" cssClass="checkbox" path="ids" value="157"></form:checkbox>
                    <label></label>
                </div>
                <div class="wrapper">
                    <form:checkbox id="158" cssClass="checkbox" path="ids" value="158"></form:checkbox>
                    <label></label>
                </div>
                <div class="wrapper">
                    <form:checkbox id="159" cssClass="checkbox" path="ids" value="159"></form:checkbox>
                    <label></label>
                </div>
                <div class="wrapper">
                    <form:checkbox id="160" cssClass="checkbox" path="ids" value="160"></form:checkbox>
                    <label></label>
                </div>
                <div class="wrapper">
                    <form:checkbox id="161" cssClass="checkbox" path="ids" value="161"></form:checkbox>
                    <label></label>
                </div>
                <div class="wrapper">
                    <form:checkbox id="162" cssClass="checkbox" path="ids" value="162"></form:checkbox>
                    <label></label>
                </div>

                <p>line 5</p>

            </div>



            <%--line 6--%>
            <div class="line line-center">
                <div class="wrapper">
                    <form:checkbox id="163" cssClass="checkbox" path="ids" value="163"></form:checkbox>
                    <label></label>
                </div>
                <div class="wrapper">
                    <form:checkbox id="164" cssClass="checkbox" path="ids" value="164"></form:checkbox>
                    <label></label>
                </div>
                <div class="wrapper">
                    <form:checkbox id="165" cssClass="checkbox" path="ids" value="165"></form:checkbox>
                    <label></label>
                </div>
                <div class="wrapper">
                    <form:checkbox id="166" cssClass="checkbox" path="ids" value="166"></form:checkbox>
                    <label></label>
                </div>
                <div class="wrapper">
                    <form:checkbox id="167" cssClass="checkbox" path="ids" value="167"></form:checkbox>
                    <label></label>
                </div>
                <div class="wrapper">
                    <form:checkbox id="168" cssClass="checkbox" path="ids" value="168"></form:checkbox>
                    <label></label>
                </div>
                <div class="wrapper">
                    <form:checkbox id="169" cssClass="checkbox" path="ids" value="169"></form:checkbox>
                    <label></label>
                </div>
                <div class="wrapper">
                    <form:checkbox id="170" cssClass="checkbox" path="ids" value="170"></form:checkbox>
                    <label></label>
                </div>
                <div class="wrapper">
                    <form:checkbox id="171" cssClass="checkbox" path="ids" value="171"></form:checkbox>
                    <label></label>
                </div>
                <div class="wrapper">
                    <form:checkbox id="172" cssClass="checkbox" path="ids" value="172"></form:checkbox>
                    <label></label>
                </div>
                <div class="wrapper">
                    <form:checkbox id="173" cssClass="checkbox" path="ids" value="173"></form:checkbox>
                    <label></label>
                </div>
                <div class="wrapper">
                    <form:checkbox id="174" cssClass="checkbox" path="ids" value="174"></form:checkbox>
                    <label></label>
                </div>

                <p>line 6</p>

            </div>

            <%--line 7--%>
            <div class="line line-top">
                <div class="wrapper">
                    <form:checkbox id="175" cssClass="checkbox" path="ids" value="175"></form:checkbox>
                    <label></label>
                </div>
                <div class="wrapper">
                    <form:checkbox id="176" cssClass="checkbox" path="ids" value="176"></form:checkbox>
                    <label></label>
                </div>
                <div class="wrapper">
                    <form:checkbox id="177" cssClass="checkbox" path="ids" value="177"></form:checkbox>
                    <label></label>
                </div>
                <div class="wrapper">
                    <form:checkbox id="178" cssClass="checkbox" path="ids" value="178"></form:checkbox>
                    <label></label>
                </div>
                <div class="wrapper">
                    <form:checkbox id="179" cssClass="checkbox" path="ids" value="179"></form:checkbox>
                    <label></label>
                </div>
                <div class="wrapper">
                    <form:checkbox id="180" cssClass="checkbox" path="ids" value="180"></form:checkbox>
                    <label></label>
                </div>
                <div class="wrapper">
                    <form:checkbox id="181" cssClass="checkbox" path="ids" value="181"></form:checkbox>
                    <label></label>
                </div>
                <div class="wrapper">
                    <form:checkbox id="182" cssClass="checkbox" path="ids" value="182"></form:checkbox>
                    <label></label>
                </div>
                <div class="wrapper">
                    <form:checkbox id="183" cssClass="checkbox" path="ids" value="183"></form:checkbox>
                    <label></label>
                </div>
                <div class="wrapper">
                    <form:checkbox id="184" cssClass="checkbox" path="ids" value="184"></form:checkbox>
                    <label></label>
                </div>
                <div class="wrapper">
                    <form:checkbox id="185" cssClass="checkbox" path="ids" value="185"></form:checkbox>
                    <label></label>
                </div>
                <div class="wrapper">
                    <form:checkbox id="186" cssClass="checkbox" path="ids" value="186"></form:checkbox>
                    <label></label>
                </div>

                <p>line 7</p>

            </div>

            <%--line 8--%>
            <div class="line line-top">
                <div class="wrapper">
                    <form:checkbox id="187" cssClass="checkbox" path="ids" value="187"></form:checkbox>
                    <label></label>
                </div>
                <div class="wrapper">
                    <form:checkbox id="188" cssClass="checkbox" path="ids" value="188"></form:checkbox>
                    <label></label>
                </div>
                <div class="wrapper">
                    <form:checkbox id="189" cssClass="checkbox" path="ids" value="189"></form:checkbox>
                    <label></label>
                </div>
                <div class="wrapper">
                    <form:checkbox id="190" cssClass="checkbox" path="ids" value="190"></form:checkbox>
                    <label></label>
                </div>
                <div class="wrapper">
                    <form:checkbox id="191" cssClass="checkbox" path="ids" value="191"></form:checkbox>
                    <label></label>
                </div>
                <div class="wrapper">
                    <form:checkbox id="192" cssClass="checkbox" path="ids" value="192"></form:checkbox>
                    <label></label>
                </div>
                <div class="wrapper">
                    <form:checkbox id="193" cssClass="checkbox" path="ids" value="193"></form:checkbox>
                    <label></label>
                </div>
                <div class="wrapper">
                    <form:checkbox id="194" cssClass="checkbox" path="ids" value="194"></form:checkbox>
                    <label></label>
                </div>
                <div class="wrapper">
                    <form:checkbox id="195" cssClass="checkbox" path="ids" value="195"></form:checkbox>
                    <label></label>
                </div>
                <div class="wrapper">
                    <form:checkbox id="196" cssClass="checkbox" path="ids" value="196"></form:checkbox>
                    <label></label>
                </div>
                <div class="wrapper">
                    <form:checkbox id="197" cssClass="checkbox" path="ids" value="197"></form:checkbox>
                    <label></label>
                </div>
                <div class="wrapper">
                    <form:checkbox id="198" cssClass="checkbox" path="ids" value="198"></form:checkbox>
                    <label></label>
                </div>

                <p>line 8</p>

            </div>

            <input type="submit" value="Chosen">

        </form:form>

    <%--end btn-group--%>
    </div>

<!-- end seats -->
</div>


<%--end hall--%>
</div>
<%-- end container--%>
</div>

</section>

<footer id="footer">
    <p><small>Relax with us - cinema-plus.ua</small></p>
</footer>



<script src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>
<script src="<c:url value="/resources/js/jquery.easing.min.js"/>"></script>
<script src="<c:url value="/resources/js/jquery.scrollTo.js"/>"></script>
<script src="<c:url value="/resources/js/wow.min.js"/>"></script>
<script src="<c:url value="/resources/js/custom.js"/>"></script>

</body>
</html>




