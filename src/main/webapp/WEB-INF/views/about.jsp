<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 29-12-2019
  Time: 17:09
  To change this template use File | Settings | File Templates.
--%>
<%@include file="/WEB-INF/views/template/header.jsp" %>
<div class="container-wrapper">
    <div class="container">
       <div class="page-header">
           <h1>About Us</h1>
           <p>We are a humble team who are passionate about helping our customer to get the best experience on
           music instrument and stuffs. We are determined to provide the best products and services.</p>
       </div>
        <img src="<c:url value="/resources/images/showroom.jpg"/>" alt="showroom">


    </div>
</div>


<%@include file="/WEB-INF/views/template/footer.jsp" %>
