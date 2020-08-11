<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 14-12-2019
  Time: 13:43
  To change this template use File | Settings | File Templates.
--%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="/WEB-INF/views/template/header.jsp" %>







<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Register Customer</h1>

            <p class="lead">Please fill in your information below</p>
        </div>

        <form:form action="${pageContext.request.contextPath}/register" method="post" commandName="customer">
            <h3>Basic Info</h3>

            <div class="form-group">
                <label for="name">Name</label>
                <form:input path="customerName" id="name" class="form-Control"/>
            </div>

            <div class="form-group">
                <label for="email">Email</label><span style="color:#ff0000">${emailMsg}</span>
                <form:errors path="customerEmail" cssStyle="color:#ff0000"/>
                <form:input path="customerEmail" id="email" class="form-Control"/>
            </div>

            <div class="form-group">
                <label for="phone">Phone</label>
                <form:input path="customerPhone" id="phone" class="form-Control"/>
            </div>

            <div class="form-group">
                <label for="username">Username</label><span style="color:#ff0000">${usernameMsg}</span>
                <form:errors path="username" cssStyle="color:#ff0000"/>
                <form:input path="username" id="username" class="form-Control"/>
            </div>

            <div class="form-group">
                <label for="password">Password</label>
                <form:password path="password" id="password" class="form-Control"/>
            </div>
            <h3>Billing Address</h3>

            <div class="form-group">
                <label for="billingStreet">Street Name</label>
                <form:input path="billingAddress.streetName" id="billingStreet" class="form-Control"/>
            </div>

            <div class="form-group">
                <label for="billingApartmentNumber">Apartment Name</label>
                <form:input path="billingAddress.apartmentName" id="billingApartmentNumber" class="form-Control"/>
            </div>

            <div class="form-group">
                <label for="billingCity">City</label>
                <form:input path="billingAddress.city" id="billingCity" class="form-Control"/>
            </div>

            <div class="form-group">
                <label for="billingState">State</label>
                <form:input path="billingAddress.state" id="billingState" class="form-Control"/>
            </div>


            <div class="form-group">
                <label for="billingCountry">Country</label>
                <form:input path="billingAddress.country" id="billingCountry" class="form-Control"/>
            </div>

            <div class="form-group">
                <label for="billingzipcode">Zip Code</label>
                <form:input path="billingAddress.zipCode" id="billingzipcode" class="form-Control"/>
            </div>

            <h3>Shipping Address</h3>



            <div class="form-group">
                <label for="shippingStreet">Street Name</label>
                <form:input path="shippingAddress.streetName" id="shippingStreet" class="form-Control"/>
            </div>

            <div class="form-group">
                <label for="shippingApartmentNumber">Apartment Name</label>
                <form:input path="shippingAddress.apartmentName" id="shippingApartmentNumber" class="form-Control"/>
            </div>

            <div class="form-group">
                <label for="shippingCity">City</label>
                <form:input path="shippingAddress.city" id="shippingCity" class="form-Control"/>
            </div>

            <div class="form-group">
                <label for="shippingState">State</label>
                <form:input path="shippingAddress.state" id="shippingState" class="form-Control"/>
            </div>


            <div class="form-group">
                <label for="shippingCountry">Country</label>
                <form:input path="shippingAddress.country" id="shippingCountry" class="form-Control"/>
            </div>

            <div class="form-group">
                <label for="shippingzipcode">Zip Code</label>
                <form:input path="shippingAddress.zipCode" id="shippingzipcode" class="form-Control"/>
            </div>







            <br><br>

            <input type="submit" value="submit" class="btn btn-default">
            <a href="<c:url value="/"/>" class="btn btn-default">Cancel</a>
        </form:form>





        <%@include file="/WEB-INF/views/template/footer.jsp" %>



    </div>
</div>










