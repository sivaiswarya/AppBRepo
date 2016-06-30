<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
  <head>  
    <title>AppB</title>  
    <style>
      .username.ng-valid {
          background-color: lightgreen;
      }
      .username.ng-dirty.ng-invalid-required {
          background-color: red;
      }
      .username.ng-dirty.ng-invalid-minlength {
          background-color: yellow;
      }

      .email.ng-valid {
          background-color: lightgreen;
      }
      .email.ng-dirty.ng-invalid-required {
          background-color: red;
      }
      .email.ng-dirty.ng-invalid-email {
          background-color: yellow;
      }

    </style>
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
     <link href="<c:url value='/static/css/app.css' />" rel="stylesheet"></link>
     
  </head>
  <body data-ng-app="myApp" class="ng-cloak">
      <div class="generic-container" data-ng-controller="UserController as ctrl">
     <div class="page-header"><h1>Welcome to AppB&nbsp;&nbsp;<small>Powered by Cogent</small></h1></div>
     <div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="glyphicon glyphicon-off" aria-hidden="true"></span><a href="<c:url value="/logout"/>">LOGOUT</a>
</div>
          <div class="panel panel-primary"> <!-- panel panel-default -->
              <div class="panel-heading"><span class="lead">Register users here ! </span>
              
              </div>
              <div class="formcontainer">
                  <form data-ng-submit="ctrl.submit()" name="myForm" class="form-horizontal">
                      <input type="hidden" data-ng-model="ctrl.user.id" />
                      
                      <div class="row">
                          <div class="form-group col-md-12">
                              <label class="col-md-2 control-lable" for="file">First Name</label>
                              <div class="col-md-7">
                                  <input type="text" data-ng-model="ctrl.user.firstName" name="firstName" class="form-control input-sm" placeholder="Enter firstname" />
                                  <div class="has-error" data-ng-show="myForm.$dirty">
                                      <span data-ng-show="myForm.firstName.$error.required">This is a required field</span>
                                      <span data-ng-show="myForm.firstName.$invalid">This field is invalid </span>
                                  </div>
                              </div>
                          </div>
                      </div>
                      
                      <div class="row">
                          <div class="form-group col-md-12">
                              <label class="col-md-2 control-lable" for="file">Last Name</label>
                              <div class="col-md-7">
                                  <input type="text" data-ng-model="ctrl.user.lastName" name="lastName" class="form-control input-sm" placeholder="Enter lastname" />
                                  <div class="has-error" data-ng-show="myForm.$dirty">
                                      <span data-ng-show="myForm.lastName.$error.required">This is a required field</span>
                                      <span data-ng-show="myForm.lastName.$invalid">This field is invalid </span>
                                  </div>
                              </div>
                          </div>
                      </div>
                      
                      <div class="row">
                          <div class="form-group col-md-12">
                              <label class="col-md-2 control-lable" for="file">Password</label>
                              <div class="col-md-7">
                                  <input type="text" data-ng-model="ctrl.user.password" name="password" class="form-control input-sm" placeholder="Enter password" required data-ng-minlength="3"/>
                                  <div class="has-error" data-ng-show="myForm.$dirty">
                                      <span data-ng-show="myForm.password.$error.required">This is a required field</span>
                                      <span data-ng-show="myForm.password.$error.minlength">Minimum length required is 3</span>
                                      <span data-ng-show="myForm.password.$invalid">This field is invalid </span>
                                  </div>
                              </div>
                          </div>
                      </div>
                      
                      <div class="row">
                          <div class="form-group col-md-12">
                              <label class="col-md-2 control-lable" for="file">Role</label>
                              <div class="col-md-7">
                                  <input type="text" data-ng-model="ctrl.user.role" name="role" class="form-control input-sm" placeholder="Enter role" />
                                  <div class="has-error" data-ng-show="myForm.$dirty">
                                      <span data-ng-show="myForm.role.$error.required">This is a required field</span>
                                      <span data-ng-show="myForm.role.$invalid">This field is invalid </span>
                                  </div>
                              </div>
                          </div>
                      </div>
                      
                        
                      
                      <div class="row">
                          <div class="form-group col-md-12">
                              <label class="col-md-2 control-lable" for="file">Address</label>
                              <div class="col-md-7">
                                  <input type="text" data-ng-model="ctrl.user.address" class="form-control input-sm" placeholder="Enter Address"/>
                              </div>
                          </div>
                      </div>

                      <div class="row">
                          <div class="form-group col-md-12">
                              <label class="col-md-2 control-lable" for="file">Email</label>
                              <div class="col-md-7">
                                  <input type="email" data-ng-model="ctrl.user.email" name="email" class="email form-control input-sm" placeholder="Enter Email" required/>
                                  <div class="has-error" data-ng-show="myForm.$dirty">
                                      <span data-ng-show="myForm.email.$error.required">This is a required field</span>
                                      <span data-ng-show="myForm.email.$invalid">This field is invalid </span>
                                  </div>
                              </div>
                          </div>
                      </div>

                      <div class="row">
                          <div class="form-actions"> <!-- form-actions floatRight -->
                              <input type="submit"  value="{{!ctrl.user.id ? 'Create' : 'Update'}}" class="btn btn-success btn-sm" data-ng-disabled="myForm.$invalid">
                              <button type="button" data-ng-click="ctrl.reset()" class="btn btn-success btn-sm" data-ng-disabled="myForm.$pristine">Reset</button>
                          </div>
                      </div>
                  </form>
              </div>
          </div>
          <div class="panel panel-warning">
                <!-- Default panel contents -->
              <div class="panel-heading"><span class="lead">All Users </span></div>
              <div class="table-responsive" >  <!-- class="tablecontainer" -->
                  <table class="table table-striped table-bordered"><!-- class="table table-hover" -->
                      <thead>
                          <tr>
                              <th>ID</th>
                              <th>First Name</th>
                              <th>Last Name</th>
                              <th>Password</th>
                              <th>Role</th>
                              <th>Address</th>
                              <th>Email</th>
                              <th width="70%">Action</th>
                          </tr>
                      </thead>
                      <tbody id="myTable">
                          <tr data-ng-repeat="u in ctrl.users">
                              <td><span data-ng-bind="u.id"></span></td>
                              <td><span data-ng-bind="u.firstName"></span></td>
                              <td><span data-ng-bind="u.lastName"></span></td>
                              <td><span data-ng-bind="u.password"></span></td>
                              <td><span data-ng-bind="u.role"></span></td>
                              <td><span data-ng-bind="u.address"></span></td>
                              <td><span data-ng-bind="u.email"></span></td>
                              <td>
                              <button type="button" data-ng-click="ctrl.edit(u.id)" class="btn btn-success custom-width"><span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>Update</button>  <button type="button" data-ng-click="ctrl.remove(u.id)" class="btn btn-danger custom-width"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span>Delete</button>
                              </td>
                          </tr>
                      </tbody>
                  </table>
              </div>
              
          </div>
      </div>
      
      <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.4/angular.js"></script>
      <script src="<c:url value='/static/js/app.js' />"></script>
      <script src="<c:url value='/static/js/service/user_service.js' />"></script>
      <script src="<c:url value='/static/js/controller/user_controller.js' />"></script>
      
  </body>
</html>