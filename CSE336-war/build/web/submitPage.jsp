<%-- 
    Document   : submitPage
    Created on : Apr 11, 2015, 1:08:40 AM
    Author     : Eric
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>After Submit</title>
    </head>
    <body>
        <h1>Congratulations</h1>
        
        <h2>Request Parameters</h2>
        <table>
            <tr>
                <th>Parameter Name</th>
                <th>Parameter Value</th>
            </tr>
            <c:forEach var="p" items="${param}">
                <tr>
                <td> <c:out value="${p.key}"/> </td>
                <td> <c:out value="${p.value}"/> </td>
                </tr>
            </c:forEach>
        </table>
    </body>
    
    <h3>Bean Viewer</h3>
        <%@ page import="java.lang.reflect.*" %>
        <jsp:useBean id="formData" class="developerWorks.beans.User" />
        <table>
            <tr>
                <th>Bean Name</th>
                <th>Bean Value</th>
            </tr>
            <%
                Class b = Class.forName("developerWorks.beans.User");
                Field[] fields = b.getDeclaredFields();
                for (Field f : fields) {
            %>
            <tr>
            <%
                    String name = f.getName();
                    String camelName = "get" +
                    (name.substring(0,1).toUpperCase() + name.substring(1));
                    if(name == "byEmail" || name == "byTelephoneOrPostalMail")
                        camelName = "is" + (name.substring(0,1).toUpperCase() + name.substring(1));
                    Method m = b.getMethod(camelName);
                    out.println("<td>" + name + "</td>");
                    out.println("<td>" + camelName + "</td>");
                }
            %>
            </tr>
        </table>
</html>
