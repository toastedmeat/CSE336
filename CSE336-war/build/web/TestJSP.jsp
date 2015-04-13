<%-- 
    Document   : TestJSP
    Created on : Apr 11, 2015, 8:31:56 PM
    Author     : Jessica
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Test Page</title>
    </head>
    <body>
        <style>
            table, th, td {
                border: 1px solid black;
            }
        </style>
        <h2>Session Objects</h2>
        <table>
            <tr>
                <th>Session Name</th>
                <th>Session Value</th>
            </tr>
            <c:forEach var="s" items="${sessionScope}">
                <tr>
                    <td><c:out value="${s.key}"/></td>
                    <td><c:out value="${s.value}"/></td>
                </tr>
            </c:forEach>
        </table>
        
        <h2>ServletContext Objects</h2>
        <table>
            <tr>
                <th>ServletContext Name</th>
                <th>ServletContext Value</th>
            </tr>
            <c:forEach var="p" items="${applicationScope}">
                <tr>
                    <td><c:out value='${p.key}'/></td>
                    <td><c:out value='${p.key}'/></td>
                </tr>
            </c:forEach>
        </table>
        
        <h2>Request Objects</h2>
        <table>
            <tr>
                <th>Request Name</th>
                <th>Request Value</th>
            </tr>
            <c:forEach var="r" items="${requestScope}">
                <tr>
                    <td><c:out value="${r.key}"/></td>
                    <td><c:out value="${r.value}"/></td>
                </tr>
            </c:forEach>
        </table>
        
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
        
        <h2>Http Headers</h2>
        <table>
            <tr>
                <th>Header Name</th>
                <th>Header Value</th>
            </tr>
            <c:forEach var="h" items="${header}">
                <tr>
                    <td> ${h.key} </td>
                    <td> ${h.value} </td>
                </tr>
            </c:forEach>
        </table>
        
        <h3>Bean Viewer</h3>
        <%@ page import="java.lang.reflect.*" %>
        <jsp:useBean scope="request" id="formData" class="developerWorks.beans.User" />
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
                    out.println("<td>" + m.invoke(formData) + "</td>");
                }
            %>
            </tr>
        </table>
    </body>
</html>
