<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 16-12-2019
  Time: 07:27
  To change this template use File | Settings | File Templates.
--%>
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
            <h1>Administration Page</h1>

            <p class="lead">This is the administrator page</p>
        </div>
        <c:if test="${pageContext.request.userPrincipal.name !=null}">
        <h2>
            Welcome: ${pageContext.request.userPrincipal.name} | <a href="<c:url value="/j_spring_security_logout"/>">Logout</a>
        </h2>
        </c:if>
        <h3>
            <a href="<c:url value="/admin/productInventory"/>">Product Inventory</a>
        </h3>

        <p>Here you can view, check and modify the product inventory</p>

        <br/>

        <h3>
            <a href="<c:url value="/admin/customer"/>">Customer Management</a>
        </h3>

        <p>Here you can view the customer information!</p>






    <%@include file="/WEB-INF/views/template/footer.jsp" %>



