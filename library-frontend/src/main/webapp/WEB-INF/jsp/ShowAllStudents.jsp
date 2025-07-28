<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>All Students</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            padding: 20px;
            background-color: #f7f7f7;
        }

        h2 {
            text-align: center;
            margin-bottom: 30px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            background: #fff;
        }

        th, td {
            border: 1px solid #ddd;
            padding: 8px;
            font-size: 14px;
        }

        th {
            background-color: #f2f2f2;
        }

        tr:hover {
            background-color: #f1f1f1;
        }

        .actions {
            display: flex;
            gap: 10px;
        }

        .btn {
            padding: 5px 10px;
            border: none;
            color: white;
            cursor: pointer;
            border-radius: 5px;
        }

        .btn-update {
            background-color: #28a745;
        }

        .btn-delete {
            background-color: #dc3545;
        }
    </style>
</head>
<body>

<h2>All Student Records</h2>

<table>
    <thead>
        <tr>
            <th>ID</th>
            <th>Username</th>
            <th>Email</th>
            <th>Phone</th>
            <th>Password</th>
            <th>Role</th>
            <th>Full Name</th>
            <th>Education</th>
            <th>Qualification</th>
            <th>Experience</th>
            <th>Address</th>
            <th>City</th>
            <th>State</th>
            <th>Country</th>
            <th>Postal Code</th>
            <th>DOB</th>
            <th>Gender</th>
            <th>Aadhar</th>
            <th>University</th>
            <th>Year</th>
            <th>Bank Account</th>
            <th>IFSC</th>
            <th>PAN</th>
            <th>Salary</th>
            <th>Payment Mode</th>
            <th>Actions</th>
        </tr>
    </thead>
    <tbody>
        <c:forEach var="student" items="${student}">
            <tr>
                <td>${student.id}</td>
                <td>${student.username}</td>
                <td>${student.email}</td>
                <td>${student.phoneNumber}</td>
                <td>${student.password}</td>
                <td>${student.role}</td>
                <td>${student.fullName}</td>
                <td>${student.education}</td>
                <td>${student.qualification}</td>
                <td>${student.experience}</td>
                <td>${student.address}</td>
                <td>${student.city}</td>
                <td>${student.state}</td>
                <td>${student.country}</td>
                <td>${student.postalCode}</td>
                <td>${student.dateOfBirth}</td>
                <td>${student.gender}</td>
                <td>${student.aadhar}</td>
                <td>${student.university}</td>
                <td>${student.yearOfPassing}</td>
                <td>${student.bankAccount}</td>
                <td>${student.ifsc}</td>
                <td>${student.pan}</td>
                <td>${student.salary}</td>
                <td>${student.paymentMode}</td>
                <td class="actions">
                    <form action="getid" method="get" style="display:inline;">
                        <input type="hidden" name="id" value="${student.id}">
                        <button type="submit" class="btn btn-update">Update</button>
                    </form>
                    <form action="deletestudent" method="post" style="display:inline;">
                        <input type="hidden" name="id" value="${student.id}">
                        <button type="submit" class="btn btn-delete">Delete</button>
                    </form>
                </td>
            </tr>
        </c:forEach>
    </tbody>
</table>

</body>
</html>