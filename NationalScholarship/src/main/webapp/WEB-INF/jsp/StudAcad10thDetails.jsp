<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<style>
* {box-sizing: border-box}

/* Add padding to containers */
.container {
  padding: 16px;
}

/* Full-width input fields */
input[type=text], input[type=password] {
  width: 100%;
  padding: 15px;
  margin: 5px 0 22px 0;
  display: inline-block;
  border: none;
  background: #f1f1f1;
}

input[type=text]:focus, input[type=password]:focus {
  background-color: #ddd;
  outline: none;
}

/* Overwrite default styles of hr */
hr {
  border: 1px solid #f1f1f1;
  margin-bottom: 25px;
}

/* Set a style for the submit/register button */
input[type=submit] {
  background-color: #4CAF50;
  color: white;
  padding: 16px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
  opacity: 0.9;
}

input[type=submit] {
  opacity:1;
}

/* Add a blue text color to links */
a {
  color: dodgerblue;
}

/* Set a grey background color and center the text of the "sign in" section */
input[type=submit]{
  background-color: #f1f1f1;
  text-align: center;
}



</style>
</head>
<body>
<b>Hello</b>


	
	<form id="10thAcademicRegistration" modelAttribute="student10thDetails" action="Register10th.do" method="post">

		<table align="center">
		
		
			<tr>
			<th>10th Roll no:</th>
				<td><input type="text" name="student_10_roll_number" id="student_10_roll_number" /></td>
			
			</tr>
			
			<tr>
			<th>Board Name:</th>
				<td><input type="text" name="student_board_name" id="student_board_name" /></td>
			
			</tr>
			
			
			
			
			<tr>
				<th>Passing Year:</th>
				<td><input type="text" name="student_passing_year" id="student_passing_year" /></td>
			</tr>
			
				<tr>
				<th>Student Percentage:</th>
				<td><input type="text" name="student_percentage" id="student_percentage" /></td>
			</tr>
			
<tr>
				<td><input type="submit" id="register" name="register" value="Save and go ahead"></td>
			</tr>


</body>
</html>