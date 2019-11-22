<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<b>Hello</b>


	
	<form id="12thAcademicRegistration" modelAttribute="student12thDetails" action="Register12th.do" method="post">

		<table align="center">
		
		
			<tr>
			<th>12th Roll no:</th>
				<td><input type="text" name="student_12_roll_number" id="student_12_roll_number" /></td>
			
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