<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Connection to Twitter</title>
</head>
<body>
    <h2>Start connection</h2>
    <form action="<spring:url value="/connect/twitter"/>" method="post">
        <div id="info">
            <p>You aren't connected to Twitter yet. Click the button to connect this application with
                your Twitter account.
            </p>
            <button type="submit">Yes, sure</button>
        </div>
    </form>
</body>
</html>
