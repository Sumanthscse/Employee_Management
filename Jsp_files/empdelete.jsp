<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Delete Employee</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <style>
        body {
            background-color: #f8f9fa;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }
        .navbar {
            background-color: #dc143c !important; /* Crimson Red */
        }
        .navbar-brand {
            font-weight: 700;
            color: white !important;
        }
        .nav-link {
            color: rgba(255, 255, 255, 0.85) !important;
        }
        .nav-link:hover {
            color: white !important;
        }
        .card {
            border-radius: 15px;
            box-shadow: 0 6px 10px rgba(0,0,0,0.08);
            border: none;
        }
        .form-container {
            max-width: 600px;
            margin: 0 auto;
        }
        .btn-danger-custom {
            background-color: #dc143c;
            border: none;
            padding: 10px 20px;
            font-weight: 500;
            color: white;
        }
        .btn-danger-custom:hover {
            background-color: #b01030;
            color: white;
        }
        h2 {
            color: #dc143c;
            font-weight: 600;
        }
        .form-label {
            font-weight: 500;
        }
        .back-link {
            color: #dc143c;
        }
        .back-link:hover {
            color: #b01030;
            text-decoration: underline;
        }
        .warning-message {
            color: #dc143c;
            font-weight: 500;
            text-align: center;
            margin-bottom: 20px;
        }
    </style>
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-dark">
        <div class="container">
            <a class="navbar-brand" href="index.jsp">Employee_Management_System</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="index.jsp">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="display">View Employees</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="reports">Reports</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <div class="container my-5">
        <div class="form-container">
            <div class="card p-4">
                <h2 class="text-center mb-4">Delete Employee</h2>
                <p class="warning-message">
                    <i class="fas fa-exclamation-triangle me-2"></i>
                    Warning: This action cannot be undone
                </p>
                
                <form action="delete" method="post">
                    <div class="mb-4">
                        <label for="empno" class="form-label">Employee Number</label>
                        <input type="number" class="form-control" id="empno" name="empno" required>
                        <div class="form-text text-danger">Enter the employee number to permanently delete the record</div>
                    </div>
                    
                    <div class="d-grid gap-2">
                        <button type="submit" class="btn btn-danger-custom">
                            <i class="fas fa-trash-alt me-2"></i>Confirm Delete
                        </button>
                    </div>
                </form>
                
                <div class="mt-3 text-center">
                    <a href="index.jsp" class="back-link text-decoration-none">
                        <i class="fas fa-arrow-left me-2"></i>Back to Home
                    </a>
                </div>
            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>