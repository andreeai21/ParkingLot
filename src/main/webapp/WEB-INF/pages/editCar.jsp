<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<t:pageTemplate pageTitle="editCar">
  <h1>Edit Car</h1>
  <form class="needs-validation" novalidate method="POST" action="${pageContext.request.contextPath}/EditCar">
    <div class="row">
      <div class="col-md-6 mb-3">
        <label for="license_plate">License Plate</label>
        <input type="text" class="form-control" id="license_plate" name="license_plate" placeholder="" value="${car.licensePlate}" required>
        <div class="invalid-feedback">
          License Plate Required!
        </div>

        <label for="parking_spot">Parking Spot</label>
        <input type="text" class="form-control" id="parking_spot" name="parking_spot" placeholder="" value="${car.parkingSpot}" required>
        <div class="invalid-feedback">
          Parking Spot Required!
        </div>

        <label for="owner_id">Owner</label>
        <select class="form-select" id="owner_id" name="owner_id" required>
          <option value="">Choose...</option>
          <c:forEach var="user" items="${users}" varStatus="status">
            <option value="${user.id}">${car.ownerName eq user.username ? 'selected' : ''}</option>
          </c:forEach>
        </select>
        <div class="invalid-feedback">
          Please select an owner!
        </div>
      </div>
      <hr class="mb-4">
      <input type="hidden" name="car_id" value="${car.id}">
      <button class="btn btn-primary btn-lg" type="submit">Save</button>
    </div>
  </form>

</t:pageTemplate>