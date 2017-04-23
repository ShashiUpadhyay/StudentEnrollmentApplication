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
                background: url(assets/img/background.jpg);
                background-size: 1440px 800px;
                background-repeat: no-repeat;
                display: compact;
            }
        </style>
        <style>
            .error {
                color: #ff0000;
                font-size: 0.9em;
                font-weight: bold;
            }

            .errorblock {
                color: #000;
                background-color: #ffEEEE;
                border: 3px solid #ff0000;
                padding: 8px;
                margin: 16px;
            }

            input[type="text"],input[type="password"] {
                height: 40px;
            }
        </style>
    </head>
    <body>
        <s:include value="/header.jsp"/>

        <div class="container" style="width: 800px">
            <div class="jumbotron">
                <div>
                    <h3><strong>Online Student Enrollment </strong></h3>                    
                </div>
            </div>

            <div></div>
        </div>

        <div class="col-lg-6 col-lg-offset-3">
            <div class="well">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-6">
                            <s:form id="myForm" action="login" theme="bootstrap"
                                    validate="true" cssClass="bs-example form-horizontal"
                                    method="post">
                                <fieldset>
                                    <legend>Student Enrollment Login Form</legend>

                                    <s:textfield label="User Name" name="userName"
                                                 cssClass="col-lg-12" placeholder="User Name" />

                                    <s:password label="Password" name="password"
                                                cssClass="col-lg-12" placeholder="Password" />

                                    <div class="col-lg-9 col-lg-offset-3">
                                        <s:submit cssClass="btn btn-default" value="Cancel" />
                                        <s:submit cssClass="btn btn-primary" value="Login" />
                                    </div>
                                    <s:hidden name="pageName" value="login" />
                                </fieldset>
                            </s:form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <script src="jquery-1.8.3.js">
        </script>

        <script src="bootstrap/js/bootstrap.js">
        </script>

    </body>
</html>
