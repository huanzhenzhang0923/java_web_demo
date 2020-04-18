<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: huanzhenzhang
  Date: 3/21/20
  Time: 3:47 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<body>
<form action="index.jsp">
    Add new item: <input type="text" name="theItem"/>
    <input type="submit" value="Submit" />
</form>


<%
    List<String> items=(List<String>) session.getAttribute("myToDoList");
    if(items==null){
        items=new ArrayList<String>();
        session.setAttribute("myToDoList",items);
    }
    String theItem=request.getParameter("theItem");
    if(theItem!=null && !theItem.equals("")){
        items.add(theItem);
    }
%>
<hr>
<b>To List Items:</b> <br>
<ol>
    <%
        for(String item:items){
            out.println("<li>"+item+"</li>");
        }
    %>
</ol>
</body>
</html>
