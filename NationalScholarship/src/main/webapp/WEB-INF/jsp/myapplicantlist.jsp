<%@page import="com.NationalScholarship.model.basicScholarshipRegistration"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<style>

#applicants {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

#applicants td, #applicants th {
  border: 1px solid #ddd;
  padding: 8px;
}

#applicants tr:nth-child(even){background-color: #f2f2f2;}

#applicants tr:hover {background-color: #ddd;}

#applicants th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #4CAF50;
  color: white;
}

</style>
</head>
<body>
<table id="applicants">
 <tr>
 <th>  <b>student_username</th>
 	<th>  <b>student_name Applied</th>	
 	<th><b>student_gender</th>	
 	<th><b><b>student_state_domicile</th>
 	<th><b>student_district</th>
 	<th><b>student_dob</th>
 	<th><b>student_mobile_number</th>
 	<th><b>student_email</th>
 	<th><b>institute</th>
 	
 	<th><b>student_aadhar_number</th>
 	<th><b>status</th>
 	<th><b>Documents</b>
 	
 	</tr>
 <c:forEach items="${userlist}" var="bsr">
      <div>      
 	 <tr>
    <td><c:out value="${bsr.student_username}"/></td>

 	 
    <td><c:out value="${bsr.student_name}"/></td>
  
 	 
    <td><c:out value="${bsr.student_gender}"/></td>
  
    <td><c:out value="${bsr.student_state_domicile}"/></td>
  
    <td><c:out value="${bsr.student_district}"/></td>
  
    <td><c:out value="${bsr.student_dob}"/></td>
  
    <td><c:out value="${bsr.student_mobile_number}"/></td>
  
    <td><c:out value="${bsr.student_email}"/></td>
  
    <td><c:out value="${bsr.institute.inst_name}"/></td>
 
    <td><c:out value="${bsr.student_aadhar_number}"/></td>

    
    <td><c:out value="${bsr.status}"/></td>
   <form action="updateStatus.do">
    <td><input type="button" onclick="" value="Check Documents">
    <td><input type="button" name="status_approve" id="status_approve" value="Y" >Approve
    
    </form>
    
    <form action="updateStatus.do">
    <input type="button" name="status_reject" id="status_reject" value="N" >Reject
    </form>
  </tr>

</c:forEach>
<form action="approve.do">
Username:<input type="text" name="username" id="username">
Status: <input type="text" name="status">
<input type="submit"  name="approve" id="approve" value="Y"> 


</form>
</body>
</html>