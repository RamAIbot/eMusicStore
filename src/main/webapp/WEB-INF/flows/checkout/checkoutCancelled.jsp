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
        <section>
            <div class="jumbotron">
                <div class="container">
                    <h1 class="alert alert-danger">Check out cancelled!!!</h1>

                    <p>Your checkout process is cancelled! You may continue shopping</p>

                </div>
            </div>
        </section>
        <section class="container" >

            <p>
                <a href="<spring:url value="/product/productList"/>"class="btn btn-default">Products</a>
            </p>

        </section>

    </div>
</div>


<%@include file="/WEB-INF/views/template/footer.jsp" %>
