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
            .container{
                display:inline-block;
                width:20px;
            }
        </style>
    </head>
    <body>        
        <s:include value="/gotohomepage.jsp"/>        

        <div class="col-lg-6 col-lg-offset-3" style="width:800px; height: 80px; text-align: left" align="center">
            <div class="well">
                <div class="container">
                    <div>
                        <h3><strong>Student Enrollment Login Portal</strong></h3>                    
                    </div>
                </div>                
            </div>
        </div>                              

        <div class="col-lg-6 col-lg-offset-3" style="width:800px;" align="center">
            <div class="well">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-6">
                            <s:form id="myForm" action="signup" theme="bootstrap"
                                    validate="true" cssClass="bs-example form-horizontal"
                                    method="post">
                                <fieldset>
                                    <legend>Pick your choice of operation</legend>
                                    <a style="width: 600px; color: #ffffff; background-color: #298537" class="btn btn-primary" href="studentInfo">Student Information</a>  
                                    <br/>
                                    <br/>
                                    <a style="width: 600px; color: #ffffff; background-color: #298537" class="btn btn-primary" href="courseInfo">Course Information</a>                                    
                                    <br/>                                   
                                    <br/>   
                                    <a style="width: 600px; color: #ffffff; background-color: #298537" class="btn btn-primary" href="deptInfo">Department Information</a>                                   
                                    <br/>
                                    <br/>
                                    <a style="width: 600px; color: #ffffff; background-color: #298537" class="btn btn-primary" href="profInfo">Professor Information</a>
                                    <br/>
                                    <br/>
                                    <a style="width: 600px; color: #ffffff; background-color: #298537" class="btn btn-primary" href="login-input">Login as different user?</a>

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