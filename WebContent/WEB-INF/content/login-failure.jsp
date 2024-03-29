<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>

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
                background: url(assets/img/background.jpg);
                background-size: 1440px 800px;
                background-repeat: no-repeat;
                display: compact;
            }
        </style>
</head>
<body>       

<s:include value="/header.jsp"/>

<div class="panel panel-danger">
    <div class="panel-heading">
        <h3 class="panel-title">Student Enrollment Login failure</h3>
    </div>
    <div class="panel-body">
        <div class="alert alert-dismissable alert-danger">
            <button type="button" class="close" data-dismiss="alert">�</button>
            <strong>Oh snap!</strong> 
            Something is wrong. Change a few things up and try submitting again.
        </div>
        <div>
            <a class="btn btn-primary" href="login-input">Try again?</a>
        </div>
    </div>
    <div></div>

</div>

<script src="jquery-1.8.3.js">
		
</script>

<script src="bootstrap/js/bootstrap.js">
		
</script>
</body>
</html>