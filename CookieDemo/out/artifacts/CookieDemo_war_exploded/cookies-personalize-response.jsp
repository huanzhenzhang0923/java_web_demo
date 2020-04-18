<%--
  Created by IntelliJ IDEA.
  User: huanzhenzhang
  Date: 3/21/20
  Time: 5:17 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Confirmation</title>
</head>
<%
    String favLang=request.getParameter("favoriteLanguage");
    Cookie cookie=new Cookie("myApp.favoriteLanguage",favLang);
    cookie.setMaxAge(60*60);
    response.addCookie(cookie);
%>
<body>

Thanks! We set your favorite languages to: ${param.favoriteLanguage}
<br/>
<a href="cookies-homepage.jsp">Return to HomePage</a>

</body>
</html>
