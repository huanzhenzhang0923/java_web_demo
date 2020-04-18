<%--
  Created by IntelliJ IDEA.
  User: huanzhenzhang
  Date: 3/21/20
  Time: 5:24 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>HomePage</title>
</head>
<body>
<h3>Training Portal</h3>
<%
    String favLang="Java";
    Cookie[] theCookies=request.getCookies();
    if(theCookies!=null){
        for(Cookie cookie:theCookies){
            if("myApp.favoriteLanguage".equals(cookie.getName())){
                favLang=cookie.getValue();
                break;
            }
        }
    }
%>
<h4>New Books for <%=favLang%></h4>
<ul>
    <li>Head first <%=favLang%></li>
    <li>Principal of <%=favLang%></li>
</ul>
<h4>New Jobs for <%=favLang%></h4>
<ul>
    <li>Full Stack in <%=favLang%></li>
    <li>Web in <%=favLang%></li>
</ul>

<br>
<a href="cookies-personalize-form.html">Personalize the page</a>
</body>
</html>
