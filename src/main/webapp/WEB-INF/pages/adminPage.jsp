<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Admin panel</title>
    <link href="<c:url value="/resources/img/favicon.ico" />" rel="shortcut icon" type="image/x-icon">
    <link href="<c:url value="/resources/css/bootstrap.css" />" rel="stylesheet">
    <link href="<c:url value="/resources/css/admin-style.css" />" rel="stylesheet">
</head>
<body>
    <div class="about-header">
        <h1>Cinema plus</h1>
        <p>Admin panel</p>
        <div class="link">
            <a href="${pageContext.request.contextPath}/index">Home</a>
        </div>
    </div>
    <div class="nav">
        <div class="wrapper">
            <form:form method="POST" commandName="statistics" action="${pageContext.request.contextPath}/chosenDate">
                <span>Choose date for analysis</span>
                <form:select path="date" items="${calendar}"></form:select>
                <input class="btn btn-warning ok-btn" type="submit" value="OK"/>
            </form:form>
        </div>
    </div>

    <c:if test="${statistics.filled == true}">
        <table border="1px" cellpadding="0" cellspacing="0" >
            <thead>
            <tr>
                <th width="15%">Profit(UAH)</th><th width="10%">Showtime</th><th width="10%">Film name</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="innerList" items="${statistics.rows}">
                <tr>
                    <c:forEach var="cell" items="${innerList}">
                        <td><c:out value="${cell}"></c:out></td>
                    </c:forEach>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </c:if>

    <script src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>
</body>
</html>
