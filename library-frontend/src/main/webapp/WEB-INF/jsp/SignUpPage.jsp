<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
	


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Signup Page</title>

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

#btn-sub {
    width: 100%;
    padding: 5px;
    background-color: #007bff;
    color: white;
    font-weight: bold;
    border: none;
    border-radius: 5px;
    cursor: pointer;
}

.role {
    padding-bottom: 15px;
}

#btn-sub:hover {
    background-color: #0056b3;
}

.alert-box {
    background-color: #ffe5e5;
    color: red;
    padding: 10px;
    margin-bottom: 15px;
    border: 1px solid red;
    border-radius: 5px;
    text-align: center;
    font-weight: bold;
}
</style>
</head>
<body>



<!-- ✅ Signup form -->
<form class="row g-3" action="signup" method="post">
    <div class="col-md-6">
        <label for="input1" class="form-label">User Name</label>
        <input type="text" name="username" class="form-control" id="input1" placeholder="Enter User Name">
    </div>
    
    <div class="col-md-6">
        <label for="input2" class="form-label">Email</label>
        <input type="text" name="email" class="form-control" id="input2" placeholder="Enter Email">
    </div>
    
    <div class="col-md-6">
        <label for="input3" class="form-label">Phone Number</label>
        <input type="text" name="phone_number" class="form-control" id="input3" placeholder="Enter Phone Number">
    </div>
    
    <div class="col-md-6">
        <label for="input4" class="form-label">Password</label>
        <input type="password" name="passwoard" class="form-control" id="input4" placeholder="Enter Password">
    </div>
    
    <div class="col-md-12 role">
        <label for="input5" class="form-label">Role</label>
        <select id="input5" name="role" class="form-select">
            <option selected disabled>Select Role</option>
            <option value="admin">Admin</option>
            <option value="user">User</option>
            <option value="librarian">Librarian</option>
        </select>
    </div>
    
    <div class="col-md-12">
        <button type="submit" class="btn btn-primary px-4" id="btn-sub">Submit</button>
        <p style="text-align:center;">Already have an account? <a href="loginPage">Login here</a></p>
    </div>
</form>

</body>
</html>
