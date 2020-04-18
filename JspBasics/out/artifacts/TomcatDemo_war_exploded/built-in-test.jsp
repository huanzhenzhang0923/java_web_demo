<%--
  Created by IntelliJ IDEA.
  User: huanzhenzhang
  Date: 3/21/20
  Time: 2:34 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<body>
<h3>JSP Built-in Objects</h3>
Request user agent: <%= request.getHeaders("User-Agent")%>
<br/>
Request language: <%=request.getLocale()%>
</body>
</html>
