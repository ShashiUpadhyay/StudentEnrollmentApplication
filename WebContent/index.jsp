<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sb" uri="/struts-bootstrap-tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <sb:head includeScripts="false" includeScriptsValidation="false"
                 includeStylesResponsive="true" />
        <link href="bootstrap/css/bootstrap.css" rel="stylesheet" />
        <link href="assets/css/bootstrap-united.css" rel="stylesheet" />
        <link href="assets/css/bootstrap-united.css" rel="stylesheet" />
        <link href="bootstrap/css/bootstrap-responsive.css" rel="stylesheet" />
        <style>
            body {
                height: 100%;
                margin: 0;
                background: url(assets/img/university.jpg);
                background-size: 1440px 800px;
                background-repeat: no-repeat;
                display: compact;
            }
        </style>
    </head>
    <body>
        <s:include value="/header.jsp"/>

        <div class="container">
            <div class="jumbotron">
                <div>
                    <h1>Welcome to Online Student Enrollment!</h1>
                    <p>To get started, you need to enter your details to enroll.</p>
                    <p>Or login to access your details, if you are already enrolled.</p>
                </div>

                <a class="btn btn-primary" href="signup-input">Signup » </a> 
                <a class="btn btn-primary" href="login-input">Login » </a>
            </div>

            <div></div>
        </div>
        <script src="jquery-1.8.3.js">
        </script>

        <script src="bootstrap/js/bootstrap.js">
        </script>

    </body>
</html>
