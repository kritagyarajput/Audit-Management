<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page import="java.util.Date"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css"
	integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l"
	crossorigin="anonymous">
<title>Audit Questions</title>
<style>
body {
	background-image:url("https://images.unsplash.com/photo-1497633762265-9d179a990aa6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1173&q=80");
	background-repeat:no-repeat;
	background-size:cover;
	/* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
}

form {
	background: #FFF;
}

h3 {
	color: black;
}
</style>
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
			<img style="width:65px; height:45px;" src="https://img.freepik.com/free-vector/character-illustration-people-holding-user-account-icons_53876-43022.jpg?t=st=1656269563~exp=1656270163~hmac=c8963138da8aa42b5dbaf2dff0ac0927368b07dac1e18b3cd3ad9992a59a79c9&w=900">
	
		<a class="navbar-brand"><strong>Audit Management System</strong></a>

			<span class="navbar-text ml-auto"> <a href="/logout"><strong>Logout</strong></a>
			</span>
		
	</nav>
	<div class="container pt-5">

		
		
		<form:form action="/questions" method="post"
			modelAttribute="questions" class="px-5 py-4 border rounded">
			<h3 class="display-4 text-center"><strong>${auditType.getAuditType()} Audit Questions</strong></h3>
			<c:forEach var="emp" items="${questions.questionsEntity}"
				varStatus="status">
				<h5 class="mt-3">${emp.question}</h5>
				<form:hidden path="questionsEntity[${status.index}].questionId"
					value="${emp.questionId }" />
				<form:hidden path="questionsEntity[${status.index}].question"
					value="${emp.question }" />
				<form:hidden path="questionsEntity[${status.index}].auditType"
					value="${emp.auditType }" />
				<div class="input-group">
				<div class="input-group-prepend">
							<div class="input-group-text">
								<form:radiobutton path="questionsEntity[${status.index}].response"
									value="yes" required="required"/>
							</div>
				</div>
				<form:label class="form-control" path="questionsEntity[${status.index}].response">Yes</form:label>
				
				<div class="input-group-prepend">
							<div class="input-group-text">
								<form:radiobutton path="questionsEntity[${status.index}].response"
								value="no" />
							</div>
				</div>
				<form:label class="form-control" path="questionsEntity[${status.index}].response">No</form:label>

				
				</div>

			</c:forEach>
			<input type="Submit" value="Submit" class="btn btn-primary btn-block mt-3"  style="background-color:#0B539F;"/>

		</form:form>
	</div>




	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
		integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
		integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.min.js"
		integrity="sha384-+YQ4JLhjyBLPDQt//I+STsc9iw4uQqACwlvpslubQzn4u2UU2UFM80nGisd026JF"
		crossorigin="anonymous"></script>

</body>
</html>






