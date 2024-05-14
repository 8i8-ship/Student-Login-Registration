<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="jakarta.servlet.http.HttpSession" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>PresidencyUniversity</title>
<link rel="stylesheet" type="text/css" href="indexStyle.css">
</head>
<body>
<%
        // Retrieve the session object
        HttpSession session1 = request.getSession(false);

        // Check if the session is not null and the username attribute is set
        if (session != null && session1.getAttribute("username") != null) {
            // Get the username from the session
            String username = (String) session.getAttribute("username");
    %>

<div class="container">
    <h1>Welcome, <%= username %>!</h1>
    <p>Thank you for choosing our platform. We are pleased to welcome you to our vibrant community.</p>
    <h3>Discover Opportunities and Engage</h3>
    <p>Explore our extensive resources, learn at your own pace, and connect with like-minded individuals. Our platform is designed to support your growth and engagement.</p>
    <p>Should you decide to end your session, please <a href="logout.jsp" style="color: #0056b3; text-decoration: none;">log out</a> securely.</p>
</div>

    <%
        } else {
            // Redirect to the login page if the session is not valid
            response.sendRedirect("login.jsp");
        }
    %>
</body>
</html>