<%@page import="com.db.DBConnect, java.sql.Connection" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Mental Health Management</title>
<%@include file="component/allcss.jsp"%>

<style type="text/css">
body {
    background-color: #eef5f9; /* Light blue-gray background for calmness */
    font-family: 'Poppins', sans-serif;
}
.navbar {
    background-color: #006d77; /* Calm teal for navbar */
    box-shadow: 0 2px 5px rgba(0, 0, 0, 0.2);
}
.navbar-brand, .nav-link {
    color: #ffffff !important; /* White text for navbar links */
    font-weight: bold;
}
.navbar-brand:hover, .nav-link:hover {
    color: #ffddd2 !important; /* Soft coral hover effect */
}
.paint-card {
    box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
    border: 1px solid #dfe6e9; /* Soft gray border */
    border-radius: 8px;
    background-color: #ffffff; /* Clean white background */
    transition: transform 0.2s, box-shadow 0.2s;
}
.paint-card:hover {
    transform: scale(1.05);
    box-shadow: 0 8px 20px rgba(0, 0, 0, 0.2);
}
.carousel-item img {
    border-radius: 8px;
}
.container p {
    color: #006d77; /* Teal for titles */
    font-weight: bold;
}
.card-body p {
    color: #333333;
}
.card-body p.fs-5 {
    color: #118ab2; /* Calm blue for subheadings */
}
.text-center p {
    color: #023047; /* Darker blue for team roles */
}
footer {
    background-color: #006d77;
    color: white;
    padding: 20px 0;
    text-align: center;
    margin-top: 20px;
}
</style>
</head>
<body>

<%@ include file="component/navbar.jsp"%>

<div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
    <div class="carousel-indicators">
        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
    </div>
    <div class="carousel-inner">
        <div class="carousel-item active">
            <img src="https://media.istockphoto.com/id/1295918934/photo/uses-laptop-while-talking-with-patient-stock-photo.jpg?s=612x612&w=0&k=20&c=L5IgeW4gtl_qYa_WtcQOqPtkh3EuDNhjDqS3Xhu6TEg=" class="d-block w-100" alt="..." height="500px">
        </div>
        <div class="carousel-item">
            <img src="https://media.istockphoto.com/id/1298800629/photo/portrait-of-confident-male-doctor-looking-at-camera.jpg?s=612x612&w=0&k=20&c=CB3h3a-0yUBgaZHhF2Kd5ibfDv25Qcjsca-ia5gIWUM=" class="d-block w-100" alt="..." height="500px">
        </div>
        <div class="carousel-item">
            <img src="https://media.istockphoto.com/id/962094932/photo/doctor-surgeon-analyzing-patient-brain-testing-result-and-human-anatomy-on-technological.jpg?s=612x612&w=0&k=20&c=zua4ItlfF2x3algUfhHXgmuw32DmXYENbwX5mfqrh1k=" class="d-block w-100" alt="..." height="500px">
        </div>
    </div>
    <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Previous</span>
    </button>
    <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Next</span>
    </button>
</div>

<div class="container p-3">
    <p class="text-center fs-2">Key Features of Student Mental Health Management</p>
    <div class="row">
        <div class="col-md-8 p-5">
            <div class="row">
                <div class="col-md-6">
                    <div class="card paint-card">
                        <div class="card-body">
                            <p class="fs-5">Counseling Services</p>
                            <p>One-on-one sessions with licensed counselors to support student mental health and well-being.</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="card paint-card">
                        <div class="card-body">
                            <p class="fs-5">Safe Space</p>
                            <p>Providing a non-judgmental environment where students can express their concerns freely.</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 mt-2">
                    <div class="card paint-card">
                        <div class="card-body">
                            <p class="fs-5">Workshops</p>
                            <p>Interactive sessions on stress management, mindfulness, and emotional intelligence.</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 mt-2">
                    <div class="card paint-card">
                        <div class="card-body">
                            <p class="fs-5">Online Support</p>
                            <p>24/7 access to mental health resources and support through our online portal.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-4 mt-4">
            <img alt="" height="300px" width="300px" src="https://media.istockphoto.com/id/176796285/photo/smiling-female-doctor.jpg?s=612x612&w=0&k=20&c=Ml-QmWAinZPjVqo6-9DY8st1zBHpwhynr8IM3XifEKE=">
        </div>
    </div>
    <hr>

    <div class="container p-2">
        <p class="text-center fs-2">Our Mental Health Team</p>
        <div class="row">
            <!-- Repeated team member structure -->
        </div>
    </div>

<%@include file="component/footer.jsp"%>
</body>
</html>
