<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Update Student</title>
    <style>
        body {
            font-family: 'Segoe UI', sans-serif;
            background: linear-gradient(to right, #83a4d4, #b6fbff);
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: flex-start;
            min-height: 100vh;
        }

        .container {
            background: #ffffff;
            margin-top: 40px;
            padding: 30px;
            border-radius: 16px;
            box-shadow: 0 6px 20px rgba(0, 0, 0, 0.15);
            width: 95%;
            max-width: 900px;
        }

        h2 {
            text-align: center;
            color: #333;
            margin-bottom: 30px;
            font-size: 28px;
        }

        .form-grid {
            display: grid;
            grid-template-columns: repeat(2, 1fr);
            gap: 20px;
        }

        .form-group {
            display: flex;
            flex-direction: column;
        }

        label {
            margin-bottom: 6px;
            font-weight: 600;
            color: #333;
        }

        input, select {
            padding: 10px 12px;
            font-size: 15px;
            border: 1px solid #ccc;
            border-radius: 8px;
            outline: none;
            transition: all 0.2s ease-in-out;
        }

        input:focus, select:focus {
            border-color: #007bff;
            box-shadow: 0 0 5px rgba(0,123,255,0.4);
        }

        .form-actions {
            margin-top: 30px;
            text-align: center;
        }

        button {
            padding: 12px 30px;
            font-size: 16px;
            font-weight: bold;
            border: none;
            background-color: #007bff;
            color: #fff;
            border-radius: 8px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        button:hover {
            background-color: #0056b3;
        }

        @media (max-width: 768px) {
            .form-grid {
                grid-template-columns: 1fr;
            }
        }
    </style>
</head>
<body>

<div class="container">
    <h2>Update Student Information</h2>
    <form action="updateStudent" method="post">
        <input type="hidden" name="id" value="${student.id}" />
        <div class="form-grid">

            <div class="form-group">
                <label>Username</label>
                <input type="text" name="username" value="${student.username}" required />
            </div>

            <div class="form-group">
                <label>Email</label>
                <input type="email" name="email" value="${student.email}" required />
            </div>

            <div class="form-group">
                <label>Phone Number</label>
                <input type="text" name="phoneNumber" value="${student.phoneNumber}" required />
            </div>

            <div class="form-group">
                <label>Password</label>
                <input type="text" name="password" value="${student.password}" required />
            </div>

            <div class="form-group">
                <label>Role</label>
                <input type="text" name="role" value="${student.role}" readonly />
            </div>

            <div class="form-group">
                <label>Full Name</label>
                <input type="text" name="fullName" value="${student.fullName}" />
            </div>

            <div class="form-group">
                <label>Education</label>
                <input type="text" name="education" value="${student.education}" />
            </div>

            <div class="form-group">
                <label>Qualification</label>
                <input type="text" name="qualification" value="${student.qualification}" />
            </div>

            <div class="form-group">
                <label>Experience</label>
                <input type="text" name="experience" value="${student.experience}" />
            </div>

            <div class="form-group">
                <label>Address</label>
                <input type="text" name="address" value="${student.address}" />
            </div>

            <div class="form-group">
                <label>City</label>
                <input type="text" name="city" value="${student.city}" />
            </div>

            <div class="form-group">
                <label>State</label>
                <input type="text" name="state" value="${student.state}" />
            </div>

            <div class="form-group">
                <label>Country</label>
                <input type="text" name="country" value="${student.country}" />
            </div>

            <div class="form-group">
                <label>Postal Code</label>
                <input type="text" name="postalCode" value="${student.postalCode}" />
            </div>

            <div class="form-group">
                <label>Date of Birth</label>
                <input type="date" name="dateOfBirth" value="${student.dateOfBirth}" />
            </div>

            <div class="form-group">
                <label>Gender</label>
                <select name="gender">
                    <option value="Male" ${student.gender == 'Male' ? 'selected' : ''}>Male</option>
                    <option value="Female" ${student.gender == 'Female' ? 'selected' : ''}>Female</option>
                    <option value="Other" ${student.gender == 'Other' ? 'selected' : ''}>Other</option>
                </select>
            </div>

            <div class="form-group">
                <label>Aadhar</label>
                <input type="text" name="aadhar" value="${student.aadhar}" />
            </div>

            <div class="form-group">
                <label>University</label>
                <input type="text" name="university" value="${student.university}" />
            </div>

            <div class="form-group">
                <label>Year of Passing</label>
                <input type="text" name="yearOfPassing" value="${student.yearOfPassing}" />
            </div>

            <div class="form-group">
                <label>Bank Account</label>
                <input type="text" name="bankAccount" value="${student.bankAccount}" />
            </div>

            <div class="form-group">
                <label>IFSC</label>
                <input type="text" name="ifsc" value="${student.ifsc}" />
            </div>

            <div class="form-group">
                <label>PAN</label>
                <input type="text" name="pan" value="${student.pan}" />
            </div>

            <div class="form-group">
                <label>Salary</label>
                <input type="text" name="salary" value="${student.salary}" />
            </div>

            <div class="form-group">
                <label>Payment Mode</label>
                <input type="text" name="paymentMode" value="${student.paymentMode}" />
            </div>

        </div>

        <div class="form-actions">
            <button type="submit">Save Changes</button>
        </div>
    </form>
</div>

</body>
</html>