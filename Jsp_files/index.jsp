<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Employee Management System</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <style>
        body {
            background-color: #f8f9fa;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }
        .navbar {
            background-color: #dc143c !important;
        }
        .navbar-brand {
            font-weight: 700;
            font-size: 1.8rem;
            color: white !important;
        }
        .nav-link {
            color: rgba(255, 255, 255, 0.85) !important;
        }
        .nav-link:hover {
            color: white !important;
        }
        .card-container {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(350px, 1fr)); /* Larger cards */
            gap: 30px;
        }
        .card {
            border-radius: 12px;
            box-shadow: 0 6px 10px rgba(0,0,0,0.08);
            margin-bottom: 20px;
            border: none;
            min-height: 320px;
            transition: transform 0.3s;
        }
        .card:hover {
            transform: translateY(-5px);
        }
        .card-body {
            display: flex;
            flex-direction: column;
            justify-content: space-between;
            padding: 30px;
        }
        .card-icon {
            font-size: 3rem;
            margin-bottom: 20px;
        }
        .card-title {
            font-weight: 600;
            font-size: 1.3rem;
            margin-bottom: 12px;
        }
        .card-description {
            color: #6c757d;
            font-size: 1rem;
            margin-bottom: 25px;
        }
        .btn-crimson {
            background-color: #dc143c;
            color: white;
            border: none;
        }
        .btn-crimson:hover {
            background-color: #b01030;
            color: white;
        }
        .text-crimson {
            color: #dc143c !important;
        }
        .btn-action {
            min-width: 100px;
            font-weight: 500;
            width: 100%;
        }
        .status-message {
            position: fixed;
            top: 20px;
            right: 20px;
            z-index: 1000;
            animation: fadeInOut 3s ease-in-out;
        }
        @keyframes fadeInOut {
            0% {opacity: 0;}
            10% {opacity: 1;}
            90% {opacity: 1;}
            100% {opacity: 0;}
        }
        h1 {
            color: #dc143c;
            font-weight: 700;
            margin-bottom: 40px;
        }
    </style>
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-dark">
        <div class="container">
            <a class="navbar-brand" href="#">Employee_Management_System</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item">
                        <a class="nav-link active" href="index.jsp">Home</a>
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
        <h1 class="text-center">Employee Management System</h1>
        
        <div class="card-container">
            <div class="card">
                <div class="card-body">
                    <div>
                        <i class="fas fa-user-gear card-icon text-crimson"></i>
                        <h5 class="card-title">Add Employee</h5>
                        <p class="card-description">Add a new employee to the database</p>
                    </div>
                    <a href="empadd.jsp" class="btn btn-crimson btn-action">
                        <i class="fas fa-plus me-2"></i>Add
                    </a>
                </div>
            </div>

            <div class="card">
                <div class="card-body">
                    <div>
                        <i class="fas fa-user-pen card-icon text-warning"></i>
                        <h5 class="card-title">Update Employee</h5>
                        <p class="card-description">Update existing employee details</p>
                    </div>
                    <a href="empupdate.jsp" class="btn btn-warning text-white btn-action">
                        <i class="fas fa-pen me-2"></i>Update
                    </a>
                </div>
            </div>

            <div class="card">
                <div class="card-body">
                    <div>
                        <i class="fas fa-user-xmark card-icon text-danger"></i>
                        <h5 class="card-title">Delete Employee</h5>
                        <p class="card-description">Remove an employee from the database</p>
                    </div>
                    <a href="empdelete.jsp" class="btn btn-danger btn-action">
                        <i class="fas fa-trash me-2"></i>Delete
                    </a>
                </div>
            </div>

            <div class="card">
                <div class="card-body">
                    <div>
                        <i class="fas fa-address-book card-icon text-success"></i>
                        <h5 class="card-title">View Employees</h5>
                        <p class="card-description">View all employee records</p>
                    </div>
                    <a href="display" class="btn btn-success btn-action">
                        <i class="fas fa-list me-2"></i>View All
                    </a>
                </div>
            </div>
        </div>
    </div>

    <c:if test="${param.status == 'success'}">
        <div class="status-message alert alert-success alert-dismissible fade show" role="alert">
            <strong>Success!</strong> Operation completed successfully.
            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
        </div>
    </c:if>
    
    <c:if test="${param.status == 'error'}">
        <div class="status-message alert alert-danger alert-dismissible fade show" role="alert">
            <strong>Error!</strong> Something went wrong. Please try again.
            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
        </div>
    </c:if>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <script>
        // Auto-close alerts after 3 seconds
        setTimeout(() => {
            const alerts = document.querySelectorAll('.alert');
            alerts.forEach(alert => {
                new bootstrap.Alert(alert).close();
            });
        }, 3000);
    </script>
</body>
</html>
