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

<script>
    $(document).ready(function(){


        $('.table').DataTable({
            "lengthMenu":[[1,2,3,5,10,-1],[1,2,3,5,10,"All"]]

        });
    });
</script>



<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Product Inventory</h1>

            <p class="lead">This is the product inventory page</p>
        </div>

        <table class="table table-striped table-hover">

            <thead>
            <tr class="bg-success">
                <th>Photo Thumb</th>
                <th>Product Name</th>
                <th>Category</th>
                <th>Condition</th>
                <th>Price</th>
                <th></th>
            </tr>
            </thead>

            <tr>
                <c:forEach items="${products}" var="product">
                <td><img src="<c:url value="/resources/images/${product.productId}.png"/>" alt="image" style="width:100%"/></td>
                <td>${product.productName}</td>
                <td>${product.productCategory}</td>
                <td>${product.productCondition}</td>
                <td>${product.productPrice} USD</td>
                <td><a href=" <spring:url value="/product/viewProduct/${product.productId}"/> "><span class="glyphicon glyphicon-info-sign"></span></a>
                    <a href=" <spring:url value="/admin/product/deleteProduct/${product.productId}"/> "><span class="glyphicon glyphicon-remove"></span></a>
                    <a href=" <spring:url value="/admin/product/editProduct/${product.productId}"/> "><span class="glyphicon glyphicon-pencil"></span></a>
                </td>





            </tr>
            </c:forEach>
        </table>




        <a href="<spring:url value="/admin/product/addProduct"/>" class="btn btn-primary">Add Product</a>

        <%@include file="/WEB-INF/views/template/footer.jsp" %>



