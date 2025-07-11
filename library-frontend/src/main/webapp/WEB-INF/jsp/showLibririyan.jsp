<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Librarian Info</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f6f8;
            padding: 20px;
        }

        form {
            background-color: #fff;
            padding: 25px;
            border-radius: 10px;
            box-shadow: 0 5px 10px rgba(0,0,0,0.1);
            max-width: 600px;
            margin: 0 auto;
        }

        h2 {
            text-align: center;
            color: #333;
        }

        label {
            display: block;
            margin-top: 15px;
            font-weight: bold;
            color: #444;
        }

        input, select {
            width: 100%;
            padding: 8px;
            margin-top: 5px;
            border-radius: 5px;
            border: 1px solid #ccc;
        }

        .btn {
            margin-top: 20px;
            padding: 10px;
            width: 100%;
            font-size: 16px;
            font-weight: bold;
            background-color: #007bff;
            border: none;
            color: white;
            border-radius: 5px;
            cursor: pointer;
        }

        .btn:hover {
            background-color: #0056b3;
        }

        .delete-btn {
            background-color: #dc3545;
        }

        .delete-btn:hover {
            background-color: #b52a37;
        }
    </style>
</head>
<body>

<h2>Librarian Information</h2>

<!-- Update Form -->
<form action="/updateLibrarian" method="post">
    <input type="text" name="id" value="${librarian.id}" /> 

    <label>Username</label>
    <input type="text" name="username" value="${librarian.username}" required/>

    <label>Email</label>
    <input type="email" name="email" value="${librarian.email}" required/>

    <label>Phone Number</label>
    <input type="text" name="phoneNumber" value="${librarian.phoneNumber}" required/>

    <label>Password</label>
    <input type="text" name="password" value="${librarian.password}" required/>

    <label>Role</label>
    <select name="role">
        <option ${librarian.role == 'librarian' ? 'selected' : ''}>librarian</option>
        <option ${librarian.role == 'admin' ? 'selected' : ''}>admin</option>
    </select>

    <label>Full Name</label>
    <input type="text" name="fullName" value="${librarian.fullName}" />

    <label>Education</label>
    <input type="text" name="education" value="${librarian.education}" />

    <label>Qualification</label>
    <input type="text" name="qualification" value="${librarian.qualification}" />

    <label>Experience</label>
    <input type="text" name="experience" value="${librarian.experience}" />

    <label>Address</label>
    <input type="text" name="address" value="${librarian.address}" />

    <label>City</label>
    <input type="text" name="city" value="${librarian.city}" />

    <label>State</label>
    <input type="text" name="state" value="${librarian.state}" />

    <label>Country</label>
    <input type="text" name="country" value="${librarian.country}" />

    <label>Postal Code</label>
    <input type="text" name="postalCode" value="${librarian.postalCode}" />

    <label>Date of Birth</label>
    <input type="date" name="dateOfBirth" value="${librarian.dateOfBirth}" />

    <input type="submit" class="btn" value="Update"/>
</form>

<!-- Delete Form -->
<form action="/deleteLibrarian" method="post" style="max-width: 600px; margin: 20px auto;">
    <input type="hidden" name="id" value="${librarian.id}" />
    <input type="submit" class="btn delete-btn" value="Delete"/>
</form>

</body>
</html>
