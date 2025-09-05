<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>All Books</title>
    <style>
        body {
            font-family: 'Segoe UI', sans-serif;
            background: linear-gradient(to right, #83a4d4, #b6fbff);
            margin: 0;
            padding: 0;
        }
        .container {
            margin: 40px auto;
            width: 95%;
            max-width: 1100px;
            background: #fff;
            padding: 20px;
            border-radius: 12px;
            box-shadow: 0 6px 20px rgba(0, 0, 0, 0.15);
        }
        h2 {
            text-align: center;
            margin-bottom: 20px;
            color: #333;
        }
        table {
            width: 100%;
            border-collapse: collapse;
        }
        th, td {
            padding: 12px 15px;
            border: 1px solid #ddd;
            text-align: center;
        }
        th {
            background-color: #007bff;
            color: white;
        }
        tr:nth-child(even) {
            background-color: #f9f9f9;
        }
        tr:hover {
            background-color: #f1f1f1;
        }
        a {
            padding: 6px 12px;
            border-radius: 6px;
            text-decoration: none;
            font-size: 14px;
            font-weight: bold;
            color: white;
        }
        .edit-btn {
            background-color: #28a745;
        }
        .delete-btn {
            background-color: #dc3545;
        }
        .extra-btn {
            background-color: #ffc107;
            color: #000;
        }
    </style>
</head>
<body>

<div class="container">
    <h2>All Books</h2>

    <table>
        <thead>
            <tr>
                <th>ID</th>
                <th>Title</th>
                <th>Author</th>
                <th>Edition</th>
                <th>Publisher</th>
                <th>Price</th>
                <th>Copies</th>
                <th>Category</th>
                <th>Update</th>
                <th>Delete</th>
                <th>Another</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="book" items="${book}">
                <tr>
                    <td>${book.id}</td>
                    <td>${book.title}</td>
                    <td>${book.author}</td>
                    <td>${book.edition}</td>
                    <td>${book.publisher}</td>
                    <td>${book.price}</td>
                    <td>${book.copies}</td>
                    <td>${book.categoryName}</td>
                    <td><a href="getbookbyid/${book.id}" class="edit-btn">Update</a></td>
                    <td><a href="deleteBook?id=${book.id}" class="delete-btn">Delete</a></td>
                    <td><a href="extraAction?id=${book.id}" class="extra-btn">Another</a></td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</div>

</body>
</html>