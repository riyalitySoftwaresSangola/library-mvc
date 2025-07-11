<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add Librarian</title>
    <style>
        body {
            font-family: 'Segoe UI', sans-serif;
            background: #f5f7fa;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: flex-start;
            min-height: 100vh;
        }

        .container {
            background: #fff;
            margin-top: 40px;
            padding: 30px;
            border-radius: 12px;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1);
            width: 90%;
            max-width: 850px;
        }

        h2 {
            text-align: center;
            color: #333;
            margin-bottom: 25px;
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
            margin-bottom: 5px;
            font-weight: 500;
            color: #333;
        }

        input, select {
            padding: 8px 10px;
            font-size: 14px;
            border: 1px solid #ccc;
            border-radius: 6px;
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
    <h2>Add Librarian</h2>
    <form action="Librarian" method="post">
        <div class="form-grid">
            <div class="form-group">
                <label>User Name</label>
                <input type="text" name="username" required>
            </div>

            <div class="form-group">
                <label>Email</label>
                <input type="email" name="email" required>
            </div>

            <div class="form-group">
                <label>Phone Number</label>
                <input type="text" name="phoneNumber" required>
            </div>

            <div class="form-group">
                <label>Password</label>
                <input type="text" name="password" required>
            </div>

            <div class="form-group">
                <label>Role</label>
                <input type="text" name="role" value="Librarian" readonly>
            </div>

            <div class="form-group">
                <label>Full Name</label>
                <input type="text" name="fullName">
            </div>

            <div class="form-group">
                <label>Education</label>
                <input type="text" name="education">
            </div>

            <div class="form-group">
                <label>Qualification</label>
                <input type="text" name="qualification">
            </div>

            <div class="form-group">
                <label>Experience</label>
                <input type="text" name="experience">
            </div>

            <div class="form-group">
                <label>Address</label>
                <input type="text" name="address">
            </div>

            <div class="form-group">
                <label>City</label>
                <input type="text" name="city">
            </div>

            <div class="form-group">
                <label>State</label>
                <input type="text" name="state">
            </div>

            <div class="form-group">
                <label>Country</label>
                <input type="text" name="country">
            </div>

            <div class="form-group">
                <label>Postal Code</label>
                <input type="text" name="postalCode">
            </div>

            <div class="form-group">
                <label>Date of Birth</label>
                <input type="date" name="dateOfBirth">
            </div>

            <div class="form-group">
                <label>Gender</label>
                <select name="gender">
                    <option>Male</option>
                    <option>Female</option>
                    <option>Other</option>
                </select>
            </div>

            <div class="form-group">
                <label>Aadhar Number</label>
                <input type="text" name="aadhar">
            </div>

            <div class="form-group">
                <label>University</label>
                <input type="text" name="university">
            </div>

            <div class="form-group">
                <label>Year of Passing</label>
                <input type="text" name="yearOfPassing">
            </div>

            <div class="form-group">
                <label>Bank Account Number</label>
                <input type="text" name="bankAccount">
            </div>

            <div class="form-group">
                <label>IFSC Code</label>
                <input type="text" name="ifsc">
            </div>

            <div class="form-group">
                <label>PAN Number</label>
                <input type="text" name="pan">
            </div>

            <div class="form-group">
                <label>Monthly Salary</label>
                <input type="text" name="salary">
            </div>

            <div class="form-group">
                <label>Payment Mode</label>
                <input type="text" name="paymentMode">
            </div>
        </div>

        <div class="form-actions">
            <button type="submit">Add Librarian</button>
        </div>
    </form>
</div>

</body>
</html>
