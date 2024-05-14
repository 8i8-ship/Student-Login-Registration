<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>

<%
        // Retrieve the session object
        HttpSession session1 = request.getSession(false);
			if(session!=null)
			{
				session.invalidate();
			}

            response.sendRedirect("index.html");
       
    %>

</body>
</html>