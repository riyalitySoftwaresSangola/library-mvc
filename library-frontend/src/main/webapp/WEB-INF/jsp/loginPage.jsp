<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style type="text/css">
  body {
    font-family: Arial, sans-serif;
    background-color: #f0f2f5;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
}

form {
    background-color: white;
    padding: 25px;
    border-radius: 10px;
    box-shadow: 0 5px 15px rgba(0,0,0,0.1);
    width: 300px;
}

label {
    display: block;
    margin-bottom: 5px;
    color: #444;
}

input {
    width: 100%;
    padding: 8px;
    margin-bottom: 15px;
    border: 1px solid #ccc;
    border-radius: 5px;
}

#btn-sub{
    width: 100%;
    padding: 5px;
    background-color: #007bff;
    color: white;
    font-weight: bold;
    border: none;
    border-radius: 5px;
    cursor: pointer;
}


button:hover {
    background-color: #0056b3;
}

p {
    text-align: center;
    color: green;
    font-weight: bold;
}


</style>
</head>
<body>
<form class="row g-3" action="login" method="post"> 
			<div class="col-md-6">
				<label for="input1" class="form-label">User Name</label>
				<input type="text" name="username" class="form-control" id="input1" placeholder="Enter User Name">
			</div>
			<div class="col-md-6">
				<label for="input2" class="form-label">password</label>
				<input type="text" name="password" class="form-control" id="input2" placeholder=" Enter Passwords">
			</div>

				<div class="col-md-12">
					<div class="d-md-flex d-grid align-items-center gap-3">
						<button type="submit" class="btn btn-primary px-4" id="btn-sub">Submit</button>
						<p>Don't have an account? <a href="SignUpPage" >Sign up here</a></p>
					</div>
				</div>
				<p> <a href="#">Forgot Password</a></p>
					
			
		
	</form>


</body>
</html>