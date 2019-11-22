<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" isELIgnored="false"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css/mycss.css">

<title>Registration</title>


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
.registerbtn {
  background-color: #4CAF50;
  color: white;
  padding: 16px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
  opacity: 0.9;
}

.registerbtn:hover {
  opacity:1;
}

/* Add a blue text color to links */
a {
  color: dodgerblue;
}

/* Set a grey background color and center the text of the "sign in" section */
.signin {
  background-color: #f1f1f1;
  text-align: center;
}



</style>
</head>
<body>
<div class="header">
  <h1>Header</h1>
  <p>Resize the browser window to see the responsive effect.</p>
</div>

<div class="topnav">
  <%@include file="menu.html" %>
</div>

<!-- <div class="row">
<div class="column side1">
<img src="img/pic1.jpg" height="30%" width="30%">
<img src="img/pic2.jpg" height="30%" width="30%">
<br>
<img src="img/pic3.jpg" height="30%" width="30%">
<img src="img/pic4.jpg" height="30%" width="30%">
</div> -->

<div class="column side2">
    <center>Registration For User</center>
	<form id="basicScholarshipRegistration" modelAttribute="basicScholarshipRegistration" action="scholarshipRegister.do" method="post">

		<table align="center">
		
		
			<tr>
			<th>Student ID:</th>
				<td><input type="text" name="student_id" id="student_id" /></td>
			
			</tr>
			
			<tr>
			<th>Scholarship applied for:</th>
				<td><input type="text" name="scholarship_applied_for" id="scholarship_applied_for" /></td>
			
			</tr>
			
			
			
			
			<tr>
				<th>Aadhar Number</th>
				<td><input type="text" name="student_aadhar_number" id="student_aadhar_number" /></td>
			</tr>
			
			<tr>
						<th>Religion</th>
						<td><select id="input" name="student_religion" onchange="optionCheck()">
								<option value="">------------Select Religion------------</option>
								<option value="Hindu">Hindu</option>
								<option value="Muslim">Muslim</option>
								<option value="Christian">Christian</option>
						</select></td>
					</tr>
					
			<tr>
				<th>Caste</th>
				<td><input type="text" name="student_caste" id="student_caste" /></td>
			</tr>
			
			<tr>
				<th>Father Name</th>
				<td><input type="text" name="student_father_name" id="student_father_name" /></td>
			</tr>
			
			<tr>
				<th>Family Income</th>
				<td><input type="text" name="student_family_income" id="student_family_income" /></td>
			</tr>
			
			<tr>
				<th>IsDisabled</th>
				<td><input type="radio" name="student_is_disabled" value="yes">Yes</td>
				<td><input type="radio" name="student_is_disabled" value="no">No</td>
			</tr>
			
			 <tr>
				<th>Type disablitiy</th>
				<td><input type="text" name="student_type_disability" id="student_type_disability" /></td>
			</tr>
			
			
			<tr>
				<th>Percentage Disability</th>
				<td><input type="text" name="student_percentage_disability"
						id="student_percentage_disability" /></td>
			</tr>
			<tr>
				<th>Maritial Status</th>
				<td><input type="radio" name="student_martial_status" value="single">single</td>
				<td><input type="radio" name="student_martial_status" value="married">married</td>
			</tr>
			
			<tr>
				<th>Parents Profession</th>
				<td><input type="text" name="student_parents_profession"
						id="student_parents_profession" /></td>
			</tr>
			<%-- <tr>
				<td><form:label path="lastname">LastName</form:label></td>
				<td><form:input path="lastname" name="lastname" id="lastname" /></td>
			</tr>
			<tr>
				<td><form:label path="email">Email</form:label></td>
				<td><form:input path="email" name="email" id="email" /></td>
			</tr>
			<tr>
				<td><form:label path="address">Address</form:label></td>
				<td><form:input path="address" name="address" id="address" /></td>
			</tr>
			<tr>
				<td><form:label path="phone">Phone</form:label></td>
				<td><form:input path="phone" name="phone" id="phone" /></td>
			</tr>
			<tr>
				<td><form:label path="dob">Date of birth[dd-MMM-yyyy]</form:label></td>
				<td><input type="text" name="dob" id="dob" ></td>
			</tr>  
			<tr>
				<td></td> --%>
				<tr>
				<td><input type="submit" id="register" name="register">Register</td>
			</tr>
			<tr></tr> 
			<tr>
				
				
				<a href="index.jsp">Home</a></td>
			</tr>
		</table>
	</form>
</div>
</div>
<div class="footer">
  <p>Footer</p>
</div>

</body>
</html>