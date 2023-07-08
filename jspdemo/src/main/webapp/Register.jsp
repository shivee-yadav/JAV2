<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="" method="post">  
Enter Name <input type="text" name="fname" /><br/>  
Enter Age <input type="text" name="age"/><br/>
Enter Email <input type="text" name="email" />  
Enter Password <input type="password" name="password" /><br/>  
Gender: <input type="radio" name="gender" value="female"/>Female 
&nbsp;&nbsp;&nbsp;&nbsp;
<input type="radio" name="gender" value="male"/>Male
&nbsp;&nbsp;&nbsp;&nbsp;
<input type="radio" name="gender" value="prefer not to say"/>Prefer not to say <br/> 
Hobbies: <input type="checkbox" name="hobby" value="Reading"/>Reading
&nbsp;&nbsp;&nbsp;&nbsp;
 <input type="checkbox" name="hobby" value="Browsing"/>Browsing
 &nbsp;&nbsp;&nbsp;&nbsp;
   <input type="checkbox" name="hobby" value="Gaming"/>Gaming
   &nbsp;&nbsp;&nbsp;&nbsp;
      <input type="checkbox" name="hobby" value="Cooking"/>Cooking<br/>
      
Country:<select name="country">
  <option value="select">Select Country </option>
  <option value="India">India</option>
  <option value="USA">USA</option>
  <option value="UK">UK</option>
  <option value="others">Others</option>
  </select><br/>
  <input type="submit"  name="register" value="Register Details" /> 





</form>  


<% 
if(request.getParameter("register")!=null){%>
<jsp:useBean id="user" class="com.to.User" scope="request"></jsp:useBean>
<jsp:setProperty property="*" name="user"/>	
<jsp:forward page="RegisterServlet"></jsp:forward>	
	<%} %>


























</body>
</html>