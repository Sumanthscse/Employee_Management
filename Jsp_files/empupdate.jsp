<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Employee</title>
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
        .btn-crimson {
            background-color: #dc143c;
            border: none;
            padding: 10px 20px;
            font-weight: 500;
            color: white;
        }
        .btn-crimson:hover {
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
        .btn-warning-custom {
            background-color: #ffc107;
            color: #212529;
        }
        .btn-warning-custom:hover {
            background-color: #e0a800;
            color: #212529;
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
                <h2 class="text-center mb-4">Update Employee</h2>
                
                <form action="update" method="post">
                    <div class="mb-3">
                        <label for="empno" class="form-label">Employee Number</label>
                        <input type="number" class="form-control" id="empno" name="empno" required>
                    </div>
                    
                    <div class="mb-3">
                        <label for="empName" class="form-label">Employee Name</label>
                        <input type="text" class="form-control" id="empName" name="empName" required>
                    </div>
                    
                    <div class="mb-3">
                        <label for="doj" class="form-label">Date of Joining</label>
                        <input type="date" class="form-control" id="doj" name="doj" required>
                    </div>
                    
                    <div class="mb-3">
                        <label class="form-label">Gender</label>
                        <div>
                            <div class="form-check form-check-inline">
                                <input class="form-check-input" type="radio" name="gender" id="male" value="Male" required>
                                <label class="form-check-label" for="male">Male</label>
                            </div>
                            <div class="form-check form-check-inline">
                                <input class="form-check-input" type="radio" name="gender" id="female" value="Female">
                                <label class="form-check-label" for="female">Female</label>
                            </div>
                            <div class="form-check form-check-inline">
                                <input class="form-check-input" type="radio" name="gender" id="other" value="Other">
                                <label class="form-check-label" for="other">Other</label>
                            </div>
                        </div>
                    </div>
                    
                    <div class="mb-4">
                        <label for="bsalary" class="form-label">Basic Salary</label>
                        <input type="number" step="0.01" class="form-control" id="bsalary" name="bsalary" required>
                    </div>
                    
                    <div class="d-grid gap-2">
                        <button type="submit" class="btn btn-warning-custom btn-submit">
                            <i class="fas fa-edit me-2"></i>Update Employee
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