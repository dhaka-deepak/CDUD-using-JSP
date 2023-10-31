<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Customer</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
</head>
<body>
	<header>
		<nav class="navbar navbar-expand-md navbar-dark"
			style="background-color: blue">
			<div>
				<a href="https://www.xadmin.net" class="navbar-brand"> User Management Application </a>
			</div>

			<ul class="navbar-nav">
				<li><a href="<%=request.getContextPath()%>/list"
					class="nav-link">Users</a></li>
			</ul>
		</nav>
	</header>
	<br>
	<div class="container col-md-5">
		<div class="card">
			<div class="card-body">
				<c:if test="${user != null}">
					<form action="update" method="post">
				</c:if>
				<c:if test="${user == null}">
					<form action="insert" method="post">
				</c:if>

				<caption>
					<h2>
						<c:if test="${user != null}">
            			Edit User
            		</c:if>
						<c:if test="${user == null}">
            			Add New User
            		</c:if>
					</h2>
				</caption>


                    <input type="hidden" name="Firstname" value="<c:out value='${user.Firstname}' />" />

                   <fieldset class="form-group">
                        <label>FirstName</label>
                        <input type="text" value="${user.Firstname}" class="form-control" name="firstname" required="required">
                    </fieldset>

                    <fieldset class="form-group">
                        <label>LastName</label>
                        <input type="text" value="${user.Lastname}" class="form-control" name="lastname" required="required">
                    </fieldset>

                    <fieldset class="form-group">
                        <label>Address</label>
                        <input type="text" value="${user.Address}" class="form-control" name="address">
                    </fieldset>

                    <fieldset class="form-group">
                        <label>City</label>
                        <input type="text" value="${user.City}" class="form-control" name="city">
                    </fieldset>

                    <fieldset class="form-group">
                        <label>State</label>
                        <input type="text" value="${user.State}" class="form-control" name="state">
                    </fieldset>

                    <fieldset class="form-group">
                        <label>Email</label>
                        <input type="text" value="${user.Email}" class="form-control" name="email">
                    </fieldset>

                    <fieldset class="form-group">
                        <label>Phone</label>
                        <input type="text" value="${user.Phone}" class="form-control" name="phone">
                    </fieldset>

                    <button type="submit" class="btn btn-success">Save</button>
                </form>
            </div>
        </div>
    </div>
</body>
</html>