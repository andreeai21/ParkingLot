<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<t:pageTemplate pageTitle="addUser">
  <h1>Add Car</h1>
  <form class="needs-validation" novalidate method="POST" action="${pageContext.request.contextPath}/AddUser">
    <div class="row">
      <div class="col-md-6 mb-3">
        <label for="username">Username</label>
        <input type="text" class="form-control" id="username" name="username" placeholder="" value="" required>
        <div class="invalid-feedback">
          Username Required!
        </div>

        <label for="email">Email</label>
        <input type="email" class="form-control" id="email" name="email" placeholder="" value="" required>
        <div class="invalid-feedback">
          Email Required!
        </div>

        <label for="password">Password</label>
        <input type="password" class="form-control" id="password" name="password" placeholder="" value="" required>
        <div class="invalid-feedback">
          Password Required!
        </div>

        <label for="user_groups">Owner</label>
        <select class="custom-select d-block w-100" id="user_groups" name="user_groups" multiple>
          <c:forEach var="user_group" items="${userGroups}" varStatus="status">
            <option value="${user_group}">${user_group}</option>
          </c:forEach>
        </select>

        <button class="btn btn-primary btn-lg btn-block" type="submit">Save</button>
      </div>
    </div>
  </form>

</t:pageTemplate>