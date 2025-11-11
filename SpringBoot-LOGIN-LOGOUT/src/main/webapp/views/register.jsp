<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Register</title>
</head>
<body>
   <h4>Register here</h4>
   <c:if test="${not empty successMsg}">
	<h4 style = color:"green">${successMsg}</h4>
	</c:if>
	<c:if test="${not empty errorMsg}">
		<h4 style = color:"red">${errorMsg}</h4>
		</c:if>
   <form action ="regForm" method="post">
	Name: <input type="text" name ="name"/><br /><br/>
	Email: <input type="text" name ="email"/><br /><br/>
	Password: <input type="password" name ="password"/><br /><br/>
	Phone Number: <input type="text" name ="phoneno"/><br /><br/>
	<input type="Submit" value="Register"/>   
   </form>
	
   <br/><br/>
   If already registered... <a href="loginPage"><b>Click Here </b></a>   
</body>
</html>