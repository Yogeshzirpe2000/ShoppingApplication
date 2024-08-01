<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="CSS/style.css">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<style>
#ownerFields {
	display: none;
}
</style>
</head>
<body>
	<div class="registerwrapper">
		<div class="form-div">
		<form name='frm' id='register' action='register' method="post">
		<h3>Registration Form</h3>
		<div class="form-group">
			<input type="text" name="name" id="name" class="form-control mt-2"
				id="exampleInputEmail1" aria-describedby="emailHelp"
				placeholder="Enter Your Name">
		</div>
		<div class="form-group">
			<input type="text" name="email" id="email" class="form-control mt-2"
				id="exampleInputEmail1" aria-describedby="emailHelp"
				placeholder="Enter Your Email">
		</div>
		<div class="form-group">
			<input type="text" name="contact" id="contact"
				class="form-control mt-2" id="exampleInputEmail1"
				aria-describedby="emailHelp" placeholder="Enter Your Contact">
		</div>
		<div class="form-group">
			<input type="text" name="username" id="username" class="form-control mt-2"
				id="exampleInputEmail1" aria-describedby="emailHelp"
				placeholder="Enter Your Username">
		</div><div class="form-group">
			<input type="password" name="password" id="password" class="form-control mt-2"
				id="exampleInputEmail1" aria-describedby="emailHelp"
				placeholder="Enter Your Password">
		</div>
		<button type="submit" class="btn btn-primary" id='btn'>Add</button>
	</form>
	</div>
	</div>
	<script type="text/javascript" src="JS/script.js"></script>
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js"
		integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js"
		integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
		crossorigin="anonymous"></script>
</body>
</html>