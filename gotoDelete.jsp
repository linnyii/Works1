<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>CodeGym</title>
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
</head>
<body>

	<div class="container">
		<center><h1>CodeGym 資料庫設計＿刪除操作</h1></center>
		<form method="post" action="DeleteEmployees">
			<div class="form-group col-md-6">
			  <label for="example-text-input" class="col-2 col-form-label">Last Name</label>
			  <div class="col-10">
			    <input class="form-control" type="text" value="" name="lastname" placeholder="Last Name">
			  </div>
			  
			  <label for="example-text-input" class="col-2 col-form-label">First Name</label>
			  <div class="col-10">
			    <input class="form-control" type="text" value="" name="firstname" placeholder="First Name">
			  </div>
			  
			  <label for="example-date-input" class="col-2 col-form-label">Birth Date</label>
			  <div class="col-10">
			    <input class="form-control" type="date" value="2017-10-20"  name="birthdate">
			  </div>
			  
			  <div class="col-sm-">		        
		        <button type="submit" class="btn btn-primary">刪除</button>
		        <input type="button" class="btn btn-primary" value="前往新增" onclick="relocate_insert()">
               <script>
               function relocate_insert()
               {
                  location.href = "http://localhost:8080/webDemo/index.jsp";
                } 
                </script> 
                <input type="button" class="btn btn-primary" value="前往修改" onclick="relocate_update()">
               <script>
               function relocate_update()
               {
                  location.href = "http://localhost:8080/webDemo/gotoUpdate.jsp";
                } 
                </script> 
		      </div> 		      
			</div>
		</form>
		
		<table class="table table-hover table-responsive-sm">
			<thead class="thead-dark">
			      <tr>
			        <th scope="col">ID</th>
			        <th scope="col">Last Name</th>
			        <th scope="col">First Name</th>
			        <th scope="col">Birth Date</th>
			      </tr>
			</thead>
			<tbody>
			      <c:forEach var="employee" items="${requestScope.list}">
			      	<tr>
			      		<td scope="row">${employee[0]}</td>
			      		<td>${employee[1]}</td>
			      		<td>${employee[2]}</td>
			      		<td>${employee[3]}</td>
			      	</tr>
			      </c:forEach>
			</tbody>
		</table>
	</div>
	
</body>
</html>