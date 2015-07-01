<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Bohemia</title>
    <link href="<c:url value="/resources/img/favicon.ico" />" rel="shortcut icon" type="image/x-icon">
    <link href="<c:url value="/resources/css/bootstrap.css" />" rel="stylesheet">
    <link href="<c:url value="/resources/css/animate.css" />" rel="stylesheet">
    <link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">
    <link href="<c:url value="/resources/css/hall-style.css" />" rel="stylesheet">
    <link href="<c:url value="/resources/font-awesome/css/font-awesome.css" />" rel="stylesheet">
    <link href='http://fonts.googleapis.com/css?family=Pacifico' rel='stylesheet' type='text/css'>
</head>
<body id="page-top" data-spy="scroll" data-target=".navbar-custom">
<script src="<c:url value="/resources/js/jquery-2.1.3.min.js"/>"></script>
<script>
    $(document).ready(function() {

        var list = ${list};
        $.each(list, function( index, value ) {
            $('#' + value).parent().find('label').css('background','#ff1919');
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

        <div class="hall-name"><span>&laquo;Bohemia&raquo; hall</span></div>
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
                                <button type="button" class="btn btn-primary">50</button>
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
                            <form:checkbox id="1" cssClass="checkbox" path="ids" value="1"></form:checkbox>
                            <label></label>
                        </div>

                        <div class="wrapper">
                            <form:checkbox id="2" cssClass="checkbox" path="ids" value="2"></form:checkbox>
                            <label></label>
                        </div>
                        <div class="wrapper">
                            <form:checkbox id="3" cssClass="checkbox" path="ids" value="3"></form:checkbox>
                            <label></label>
                        </div>
                        <div class="wrapper">
                            <form:checkbox id="4" cssClass="checkbox" path="ids" value="4"></form:checkbox>
                            <label></label>
                        </div>
                        <div class="wrapper">
                            <form:checkbox id="5" cssClass="checkbox" path="ids" value="5"></form:checkbox>
                            <label></label>
                        </div>
                        <div class="wrapper">
                            <form:checkbox id="6" cssClass="checkbox" path="ids" value="6"></form:checkbox>
                            <label></label>
                        </div>
                        <div class="wrapper">
                            <form:checkbox id="7" cssClass="checkbox" path="ids" value="7"></form:checkbox>
                            <label></label>
                        </div>
                        <div class="wrapper">
                            <form:checkbox id="8" cssClass="checkbox" path="ids" value="8"></form:checkbox>
                            <label></label>
                        </div>
                        <div class="wrapper">
                            <form:checkbox id="9" cssClass="checkbox" path="ids" value="9"></form:checkbox>
                            <label></label>
                        </div>
                        <div class="wrapper">
                            <form:checkbox id="10" cssClass="checkbox" path="ids" value="10"></form:checkbox>
                            <label></label>
                        </div>
                        <div class="wrapper">
                            <form:checkbox id="11" cssClass="checkbox" path="ids" value="11"></form:checkbox>
                            <label></label>
                        </div>
                        <div class="wrapper">
                            <form:checkbox id="12" cssClass="checkbox" path="ids" value="12"></form:checkbox>
                            <label></label>
                        </div>

                        <p>line 1</p>

                    </div>

                    <%--line 2--%>
                    <div class="line line-bottom">
                        <div class="wrapper">
                            <form:checkbox id="13" cssClass="checkbox" path="ids" value="13"></form:checkbox>
                            <label></label>
                        </div>
                        <div class="wrapper">
                            <form:checkbox id="14" cssClass="checkbox" path="ids" value="14"></form:checkbox>
                            <label></label>
                        </div>
                        <div class="wrapper">
                            <form:checkbox id="15" cssClass="checkbox" path="ids" value="15"></form:checkbox>
                            <label></label>
                        </div>
                        <div class="wrapper">
                            <form:checkbox id="16" cssClass="checkbox" path="ids" value="16"></form:checkbox>
                            <label></label>
                        </div>
                        <div class="wrapper">
                            <form:checkbox id="17" cssClass="checkbox" path="ids" value="17"></form:checkbox>
                            <label></label>
                        </div>
                        <div class="wrapper">
                            <form:checkbox id="18" cssClass="checkbox" path="ids" value="18"></form:checkbox>
                            <label></label>
                        </div>
                        <div class="wrapper">
                            <form:checkbox id="19" cssClass="checkbox" path="ids" value="19"></form:checkbox>
                            <label></label>
                        </div>
                        <div class="wrapper">
                            <form:checkbox id="20" cssClass="checkbox" path="ids" value="20"></form:checkbox>
                            <label></label>
                        </div>
                        <div class="wrapper">
                            <form:checkbox id="21" cssClass="checkbox" path="ids" value="21"></form:checkbox>
                            <label></label>
                        </div>
                        <div class="wrapper">
                            <form:checkbox id="22" cssClass="checkbox" path="ids" value="22"></form:checkbox>
                            <label></label>
                        </div>
                        <div class="wrapper">
                            <form:checkbox id="23" cssClass="checkbox" path="ids" value="23"></form:checkbox>
                            <label></label>
                        </div>
                        <div class="wrapper">
                            <form:checkbox id="24" cssClass="checkbox" path="ids" value="24"></form:checkbox>
                            <label></label>
                        </div>

                        <p>line 2</p>

                    </div>

                    <%--line 3--%>

                    <div class="line line-center">
                        <div class="wrapper">
                            <form:checkbox id="25" cssClass="checkbox" path="ids" value="25"></form:checkbox>
                            <label></label>
                        </div>
                        <div class="wrapper">
                            <form:checkbox id="26" cssClass="checkbox" path="ids" value="26"></form:checkbox>
                            <label></label>
                        </div>
                        <div class="wrapper">
                            <form:checkbox id="27" cssClass="checkbox" path="ids" value="27"></form:checkbox>
                            <label></label>
                        </div>
                        <div class="wrapper">
                            <form:checkbox id="28" cssClass="checkbox" path="ids" value="28"></form:checkbox>
                            <label></label>
                        </div>
                        <div class="wrapper">
                            <form:checkbox id="29" cssClass="checkbox" path="ids" value="29"></form:checkbox>
                            <label></label>
                        </div>
                        <div class="wrapper">
                            <form:checkbox id="30" cssClass="checkbox" path="ids" value="30"></form:checkbox>
                            <label></label>
                        </div>
                        <div class="wrapper">
                            <form:checkbox id="31" cssClass="checkbox" path="ids" value="31"></form:checkbox>
                            <label></label>
                        </div>
                        <div class="wrapper">
                            <form:checkbox id="32" cssClass="checkbox" path="ids" value="32"></form:checkbox>
                            <label></label>
                        </div>
                        <div class="wrapper">
                            <form:checkbox id="33" cssClass="checkbox" path="ids" value="33"></form:checkbox>
                            <label></label>
                        </div>
                        <div class="wrapper">
                            <form:checkbox id="34" cssClass="checkbox" path="ids" value="34"></form:checkbox>
                            <label></label>
                        </div>
                        <div class="wrapper">
                            <form:checkbox id="35" cssClass="checkbox" path="ids" value="35"></form:checkbox>
                            <label></label>
                        </div>
                        <div class="wrapper">
                            <form:checkbox id="36" cssClass="checkbox" path="ids" value="36"></form:checkbox>
                            <label></label>
                        </div>

                        <p>line 3</p>

                    </div>

                    <%--line 4--%>

                    <div class="line line-center">
                        <div class="wrapper">
                            <form:checkbox id="37" cssClass="checkbox" path="ids" value="37"></form:checkbox>
                            <label></label>
                        </div>
                        <div class="wrapper">
                            <form:checkbox id="38" cssClass="checkbox" path="ids" value="38"></form:checkbox>
                            <label></label>
                        </div>
                        <div class="wrapper">
                            <form:checkbox id="39" cssClass="checkbox" path="ids" value="39"></form:checkbox>
                            <label></label>
                        </div>
                        <div class="wrapper">
                            <form:checkbox id="40" cssClass="checkbox" path="ids" value="40"></form:checkbox>
                            <label></label>
                        </div>
                        <div class="wrapper">
                            <form:checkbox id="41" cssClass="checkbox" path="ids" value="41"></form:checkbox>
                            <label></label>
                        </div>
                        <div class="wrapper">
                            <form:checkbox id="42" cssClass="checkbox" path="ids" value="42"></form:checkbox>
                            <label></label>
                        </div>
                        <div class="wrapper">
                            <form:checkbox id="43" cssClass="checkbox" path="ids" value="43"></form:checkbox>
                            <label></label>
                        </div>
                        <div class="wrapper">
                            <form:checkbox id="44" cssClass="checkbox" path="ids" value="44"></form:checkbox>
                            <label></label>
                        </div>
                        <div class="wrapper">
                            <form:checkbox id="45" cssClass="checkbox" path="ids" value="45"></form:checkbox>
                            <label></label>
                        </div>
                        <div class="wrapper">
                            <form:checkbox id="46" cssClass="checkbox" path="ids" value="46"></form:checkbox>
                            <label></label>
                        </div>
                        <div class="wrapper">
                            <form:checkbox id="47" cssClass="checkbox" path="ids" value="47"></form:checkbox>
                            <label></label>
                        </div>
                        <div class="wrapper">
                            <form:checkbox id="48" cssClass="checkbox" path="ids" value="48"></form:checkbox>
                            <label></label>
                        </div>

                        <p>line 4</p>

                    </div>

                    <%--line 5--%>
                    <div class="line line-center">
                        <div class="wrapper">
                            <form:checkbox id="49" cssClass="checkbox" path="ids" value="49"></form:checkbox>
                            <label></label>
                        </div>
                        <div class="wrapper">
                            <form:checkbox id="50" cssClass="checkbox" path="ids" value="50"></form:checkbox>
                            <label></label>
                        </div>
                        <div class="wrapper">
                            <form:checkbox id="51" cssClass="checkbox" path="ids" value="51"></form:checkbox>
                            <label></label>
                        </div>
                        <div class="wrapper">
                            <form:checkbox id="52" cssClass="checkbox" path="ids" value="52"></form:checkbox>
                            <label></label>
                        </div>
                        <div class="wrapper">
                            <form:checkbox id="53" cssClass="checkbox" path="ids" value="53"></form:checkbox>
                            <label></label>
                        </div>
                        <div class="wrapper">
                            <form:checkbox id="54" cssClass="checkbox" path="ids" value="54"></form:checkbox>
                            <label></label>
                        </div>
                        <div class="wrapper">
                            <form:checkbox id="55" cssClass="checkbox" path="ids" value="55"></form:checkbox>
                            <label></label>
                        </div>
                        <div class="wrapper">
                            <form:checkbox id="56" cssClass="checkbox" path="ids" value="56"></form:checkbox>
                            <label></label>
                        </div>
                        <div class="wrapper">
                            <form:checkbox id="57" cssClass="checkbox" path="ids" value="57"></form:checkbox>
                            <label></label>
                        </div>
                        <div class="wrapper">
                            <form:checkbox id="58" cssClass="checkbox" path="ids" value="58"></form:checkbox>
                            <label></label>
                        </div>
                        <div class="wrapper">
                            <form:checkbox id="59" cssClass="checkbox" path="ids" value="59"></form:checkbox>
                            <label></label>
                        </div>
                        <div class="wrapper">
                            <form:checkbox id="60" cssClass="checkbox" path="ids" value="60"></form:checkbox>
                            <label></label>
                        </div>

                        <p>line 5</p>

                    </div>



                    <%--line 6--%>
                    <div class="line line-center">
                        <div class="wrapper">
                            <form:checkbox id="61" cssClass="checkbox" path="ids" value="61"></form:checkbox>
                            <label></label>
                        </div>
                        <div class="wrapper">
                            <form:checkbox id="62" cssClass="checkbox" path="ids" value="62"></form:checkbox>
                            <label></label>
                        </div>
                        <div class="wrapper">
                            <form:checkbox id="63" cssClass="checkbox" path="ids" value="63"></form:checkbox>
                            <label></label>
                        </div>
                        <div class="wrapper">
                            <form:checkbox id="64" cssClass="checkbox" path="ids" value="64"></form:checkbox>
                            <label></label>
                        </div>
                        <div class="wrapper">
                            <form:checkbox id="65" cssClass="checkbox" path="ids" value="65"></form:checkbox>
                            <label></label>
                        </div>
                        <div class="wrapper">
                            <form:checkbox id="66" cssClass="checkbox" path="ids" value="66"></form:checkbox>
                            <label></label>
                        </div>
                        <div class="wrapper">
                            <form:checkbox id="67" cssClass="checkbox" path="ids" value="67"></form:checkbox>
                            <label></label>
                        </div>
                        <div class="wrapper">
                            <form:checkbox id="68" cssClass="checkbox" path="ids" value="68"></form:checkbox>
                            <label></label>
                        </div>
                        <div class="wrapper">
                            <form:checkbox id="69" cssClass="checkbox" path="ids" value="69"></form:checkbox>
                            <label></label>
                        </div>
                        <div class="wrapper">
                            <form:checkbox id="70" cssClass="checkbox" path="ids" value="70"></form:checkbox>
                            <label></label>
                        </div>
                        <div class="wrapper">
                            <form:checkbox id="71" cssClass="checkbox" path="ids" value="71"></form:checkbox>
                            <label></label>
                        </div>
                        <div class="wrapper">
                            <form:checkbox id="72" cssClass="checkbox" path="ids" value="72"></form:checkbox>
                            <label></label>
                        </div>

                        <p>line 6</p>

                    </div>

                    <%--line 7--%>
                    <div class="line line-top">
                        <div class="wrapper">
                            <form:checkbox id="73" cssClass="checkbox" path="ids" value="73"></form:checkbox>
                            <label></label>
                        </div>
                        <div class="wrapper">
                            <form:checkbox id="74" cssClass="checkbox" path="ids" value="74"></form:checkbox>
                            <label></label>
                        </div>
                        <div class="wrapper">
                            <form:checkbox id="75" cssClass="checkbox" path="ids" value="75"></form:checkbox>
                            <label></label>
                        </div>
                        <div class="wrapper">
                            <form:checkbox id="76" cssClass="checkbox" path="ids" value="76"></form:checkbox>
                            <label></label>
                        </div>
                        <div class="wrapper">
                            <form:checkbox id="77" cssClass="checkbox" path="ids" value="77"></form:checkbox>
                            <label></label>
                        </div>
                        <div class="wrapper">
                            <form:checkbox id="78" cssClass="checkbox" path="ids" value="78"></form:checkbox>
                            <label></label>
                        </div>
                        <div class="wrapper">
                            <form:checkbox id="79" cssClass="checkbox" path="ids" value="79"></form:checkbox>
                            <label></label>
                        </div>
                        <div class="wrapper">
                            <form:checkbox id="80" cssClass="checkbox" path="ids" value="80"></form:checkbox>
                            <label></label>
                        </div>
                        <div class="wrapper">
                            <form:checkbox id="81" cssClass="checkbox" path="ids" value="81"></form:checkbox>
                            <label></label>
                        </div>
                        <div class="wrapper">
                            <form:checkbox id="82" cssClass="checkbox" path="ids" value="82"></form:checkbox>
                            <label></label>
                        </div>
                        <div class="wrapper">
                            <form:checkbox id="83" cssClass="checkbox" path="ids" value="83"></form:checkbox>
                            <label></label>
                        </div>
                        <div class="wrapper">
                            <form:checkbox id="84" cssClass="checkbox" path="ids" value="84"></form:checkbox>
                            <label></label>
                        </div>

                        <p>line 7</p>

                    </div>

                    <%--line 8--%>
                    <div class="line line-top">
                        <div class="wrapper">
                            <form:checkbox id="85" cssClass="checkbox" path="ids" value="85"></form:checkbox>
                            <label></label>
                        </div>
                        <div class="wrapper">
                            <form:checkbox id="86" cssClass="checkbox" path="ids" value="86"></form:checkbox>
                            <label></label>
                        </div>
                        <div class="wrapper">
                            <form:checkbox id="87" cssClass="checkbox" path="ids" value="87"></form:checkbox>
                            <label></label>
                        </div>
                        <div class="wrapper">
                            <form:checkbox id="88" cssClass="checkbox" path="ids" value="88"></form:checkbox>
                            <label></label>
                        </div>
                        <div class="wrapper">
                            <form:checkbox id="89" cssClass="checkbox" path="ids" value="89"></form:checkbox>
                            <label></label>
                        </div>
                        <div class="wrapper">
                            <form:checkbox id="90" cssClass="checkbox" path="ids" value="90"></form:checkbox>
                            <label></label>
                        </div>
                        <div class="wrapper">
                            <form:checkbox id="91" cssClass="checkbox" path="ids" value="91"></form:checkbox>
                            <label></label>
                        </div>
                        <div class="wrapper">
                            <form:checkbox id="92" cssClass="checkbox" path="ids" value="92"></form:checkbox>
                            <label></label>
                        </div>
                        <div class="wrapper">
                            <form:checkbox id="93" cssClass="checkbox" path="ids" value="93"></form:checkbox>
                            <label></label>
                        </div>
                        <div class="wrapper">
                            <form:checkbox id="94" cssClass="checkbox" path="ids" value="94"></form:checkbox>
                            <label></label>
                        </div>
                        <div class="wrapper">
                            <form:checkbox id="95" cssClass="checkbox" path="ids" value="95"></form:checkbox>
                            <label></label>
                        </div>
                        <div class="wrapper">
                            <form:checkbox id="96" cssClass="checkbox" path="ids" value="96"></form:checkbox>
                            <label></label>
                        </div>

                        <p>line 8</p>

                    </div>

                    <%--line 9--%>
                    <div class="line line-love ">
                        <div class="wrapper">
                            <form:checkbox id="97" cssClass="checkbox" path="ids" value="97"></form:checkbox>
                            <label></label>
                        </div>
                        <div class="wrapper">
                            <form:checkbox id="98" cssClass="checkbox" path="ids" value="98"></form:checkbox>
                            <label></label>
                        </div>
                        <div class="wrapper">
                            <form:checkbox id="99" cssClass="checkbox" path="ids" value="99"></form:checkbox>
                            <label></label>
                        </div>
                        <div class="wrapper">
                            <form:checkbox id="100" cssClass="checkbox" path="ids" value="100"></form:checkbox>
                            <label></label>
                        </div>
                        <div class="wrapper">
                            <form:checkbox id="101" cssClass="checkbox" path="ids" value="101"></form:checkbox>
                            <label></label>
                        </div>
                        <div class="wrapper">
                            <form:checkbox id="102" cssClass="checkbox" path="ids" value="102"></form:checkbox>
                            <label></label>
                        </div>


                        <p>line 9</p>

                    </div>


                    <input type="submit" value="Next">

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




