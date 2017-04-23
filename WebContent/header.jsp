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
    </head>
    <body>
        <div class="navbar navbar-default">

            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse"
                        data-target=".navbar-responsive-collapse">
                    <span class="icon-bar"></span> <span class="icon-bar"></span> <span
                        class="icon-bar"></span>
                </button>
            </div>

            <div class="navbar-collapse collapse navbar-responsive-collapse">                
                <ul class="nav navbar-nav navbar-left">                    
                    <li class="active"><a href="${pageContext.request.contextPath}">Home</a></li>
                    <li><a href="signup-input">Signup</a></li>
                    <li><a href="login-input">Login</a></li>
                    
                </ul>
            </div>

        </div>

    </body>
</html>
