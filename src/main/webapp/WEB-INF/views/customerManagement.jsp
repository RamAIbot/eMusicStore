<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 14-12-2019
  Time: 12:56
  To change this template use File | Settings | File Templates.
--%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="/WEB-INF/views/template/header.jsp" %>




<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Customer Management</h1>

            <p class="lead">This is the customer management page.</p>
        </div>

        <table class="table table-striped table-hover">

            <thead>
            <tr class="bg-success">
                <th>Name</th>
                <th>Email</th>
                <th>Phone</th>
                <th>Username</th>
                <th>Enabled</th>

            </tr>
            </thead>

            <tr>
                <c:forEach items="${customerList}" var="customer">

                <td>${customer.customerName}</td>
                <td>${customer.customerEmail}</td>
                <td>${customer.customerPhone}</td>
                <td>${customer.username}</td>
                <td>${customer.enabled}</td>






            </tr>
            </c:forEach>
        </table>






        <%@include file="/WEB-INF/views/template/footer.jsp" %>



