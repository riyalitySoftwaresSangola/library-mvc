<jsp:include page="modules/header.jsp"/>	

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Librarian</title>

<style type="text/css">
  body {
    font-family: Arial, sans-serif;
    background-color: #f0f2f5;
    display: flex;
    justify-content: center;
    align-items: flex-start;
    padding-top: 50px;
    min-height: 100vh;
}

form {
    background-color: white;
    padding: 25px;
    border-radius: 10px;
    box-shadow: 0 5px 15px rgba(0,0,0,0.1);
    width: 600px;
    margin: 50px auto; /* Centers the form horizontally and adds vertical spacing */
}

label {
    display: block;
    margin-bottom: 5px;
    color: #444;
}

input, select {
    width: 100%;
    padding: 8px;
    margin-bottom: 15px;
    border: 1px solid #ccc;
    border-radius: 5px;
}

#btn-sub {
    width: 100%;
    padding: 10px;
    background-color: #007bff;
    color: white;
    font-weight: bold;
    border: none;
    border-radius: 5px;
    cursor: pointer;
}

#btn-sub:hover {
    background-color: #0056b3;
}

h4 {
    margin-top: 30px;
    color: #333;
    text-align: center;
}
</style>

</head>
<body>
<form action="addLibrarian" method="post"> 

    <!-- Basic Info -->
    <label>User Name</label>
    <input type="text" name="username" placeholder="Enter User Name">

    <label>Email</label>
    <input type="text" name="email" placeholder="Enter Email">

    <label>Phone Number</label>
    <input type="text" name="phone_number" placeholder="Enter Phone Number">

    <label>Password</label>
    <input type="text" name="password" placeholder="Enter Password">

    <label>Role</label>
    <select name="role">
        <option>librarian</option>
    </select>

    <!-- Submit Button -->
    <button type="submit" id="btn-sub">Submit</button>

    <!-- Separator -->
    <hr style="margin-top: 30px; margin-bottom: 30px;">

    <!-- Additional Librarian Details -->
    <h4>Additional Librarian Information</h4>

    <!-- Personal Details -->
    <label>Date of Birth</label>
    <input type="date" name="dob">

    <label>Gender</label>
    <select name="gender">
        <option>Male</option>
        <option>Female</option>
        <option>Other</option>
    </select>

    <label>Address</label>
    <input type="text" name="address" placeholder="Full Address">

    <label>Aadhar Number</label>
    <input type="text" name="aadhar" placeholder="Aadhar Number">

    <!-- Education -->
    <label>Highest Qualification</label>
    <input type="text" name="qualification" placeholder="e.g. M.Lib, B.Ed.">

    <label>University</label>
    <input type="text" name="university" placeholder="University Name">

    <label>Year of Passing</label>
    <input type="text" name="yearOfPassing" placeholder="e.g. 2022">

    <!-- Payment -->
    <label>Bank Account Number</label>
    <input type="text" name="bankAccount">

    <label>IFSC Code</label>
    <input type="text" name="ifsc">

    <label>PAN Number</label>
    <input type="text" name="pan">

    <label>Monthly Salary</label>
    <input type="text" name="salary" placeholder="₹">

    <label>Payment Mode</label>
    <select name="paymentMode">
        <option>Bank Transfer</option>
        <option>Cash</option>
        <option>Cheque</option>
    </select>

</form>
</body>
</html>

<jsp:include page="modules/footer.jsp"/>	
