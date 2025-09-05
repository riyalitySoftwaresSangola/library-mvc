<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Update Book</title>
    <style>
        body {
            font-family: 'Segoe UI', sans-serif;
            background: linear-gradient(to right, #ffecd2, #fcb69f);
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
            max-width: 700px;
        }

        h2 {
            text-align: center;
            color: #333;
            margin-bottom: 30px;
            font-size: 26px;
        }

        .form-grid {
            display: grid;
            grid-template-columns: 1fr 1fr;
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

        input {
            padding: 10px 12px;
            font-size: 15px;
            border: 1px solid #ccc;
            border-radius: 8px;
            outline: none;
            transition: all 0.2s ease-in-out;
        }

        input:focus {
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
    <h2>Update Book Information</h2>
    <form action="updateBook" method="post">
        <input type="hidden" name="id" value="${book.id}" />

        <div class="form-grid">
            <div class="form-group">
                <label>Title</label>
                <input type="text" name="title" value="${book.title}" required />
            </div>

            <div class="form-group">
                <label>Author</label>
                <input type="text" name="author" value="${book.author}" required />
            </div>

            <div class="form-group">
                <label>Edition</label>
                <input type="text" name="edition" value="${book.edition}" />
            </div>

            <div class="form-group">
                <label>Publisher</label>
                <input type="text" name="publisher" value="${book.publisher}" />
            </div>

            <div class="form-group">
                <label>Price</label>
                <input type="number" step="0.01" name="price" value="${book.price}" />
            </div>

            <div class="form-group">
                <label>Copies</label>
                <input type="number" name="copies" value="${book.copies}" />
            </div>

            <div class="form-group">
                <label>Category</label>
                <input type="text" name="categoryName" value="${book.categoryName}" />
            </div>
        </div>

        <div class="form-actions">
            <button type="submit">Save Changes</button>
        </div>
    </form>
</div>

</body>
</html>
