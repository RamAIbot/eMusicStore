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
            <h1>Customer</h1>

            <p class="lead">Customer Details</p>
        </div>

        <form:form commandName="order" class="form-horizontal">
            <h3>Basic Info</h3>

            <div class="form-group">
                <label for="name">Name</label>
                <form:input path="cart.customer.customerName" id="name" class="form-Control"/>
            </div>

            <div class="form-group">
                <label for="email">Email</label>
                <form:input path="cart.customer.customerEmail" id="email" class="form-Control"/>
            </div>

            <div class="form-group">
                <label for="phone">Phone</label>
                <form:input path="cart.customer.customerPhone" id="phone" class="form-Control"/>
            </div>


            <h3>Billing Address</h3>

            <div class="form-group">
                <label for="billingStreet">Street Name</label>
                <form:input path="cart.customer.billingAddress.streetName" id="billingStreet" class="form-Control"/>
            </div>

            <div class="form-group">
                <label for="billingApartmentNumber">Apartment Name</label>
                <form:input path="cart.customer.billingAddress.apartmentName" id="billingApartmentNumber" class="form-Control"/>
            </div>

            <div class="form-group">
                <label for="billingCity">City</label>
                <form:input path="cart.customer.billingAddress.city" id="billingCity" class="form-Control"/>
            </div>

            <div class="form-group">
                <label for="billingState">State</label>
                <form:input path="cart.customer.billingAddress.state" id="billingState" class="form-Control"/>
            </div>


            <div class="form-group">
                <label for="billingCountry">Country</label>
                <form:input path="cart.customer.billingAddress.country" id="billingCountry" class="form-Control"/>
            </div>

            <div class="form-group">
                <label for="billingzipcode">Zip Code</label>
                <form:input path="cart.customer.billingAddress.zipCode" id="billingzipcode" class="form-Control"/>
            </div>

            <input type="hidden" name="_flowExecutionKey"/>





            <br><br>

            <input type="submit" value="Next" class="btn btn-default" name="_eventId_customerInfoCollected"/>
            <button class="btn btn-default" name="_eventId_cancel">Cancel</button>

        </form:form>





        <%@include file="/WEB-INF/views/template/footer.jsp" %>



    </div>
</div>










