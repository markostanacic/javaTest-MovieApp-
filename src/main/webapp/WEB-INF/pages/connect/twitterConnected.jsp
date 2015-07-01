<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Twitter congratulations!</title>
</head>
<body>
<h2>You've done it!</h2>

    <div id="info">
        <p>You are connected to Twitter!</p>
        <a href="${pageContext.request.contextPath}/user/authWithTwitter">Go home!</a>
    </div>

</body>
</html>
