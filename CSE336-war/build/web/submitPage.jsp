<%-- 
    Document   : TestJSP
    Created on : Apr 11, 2015, 8:31:56 PM
    Author     : Jessica
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.lang.reflect.*" %>
<jsp:useBean scope="session" id="formData" class="developerWorks.beans.User" />
<!DOCTYPE html>
<%@taglib prefix="t" uri = "/WEB-INF/tlds/myTLD" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Submit Page</title>
        <!--  -->
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
        
        <table>
            <tr>
                <th>Header Name</th>
                <th>Header Value</th>
            </tr>
            <t:UserBeaner userbean="${requestScope['formData']}">
                <tr>
                    <td>${name}</td>
                    <td>${value}</td>
                </tr>
            </t:UserBeaner>
        </table>
    </body>
</html>
