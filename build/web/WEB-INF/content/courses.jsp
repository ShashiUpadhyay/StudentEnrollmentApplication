<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sb" uri="/struts-bootstrap-tags"%>
<%@taglib prefix="display" uri="http://displaytag.sf.net"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <sb:head includeScripts="false" includeScriptsValidation="false"
                 includeStylesResponsive="true" />
        <link href="bootstrap/css/bootstrap.css" rel="stylesheet" />
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
        <style type="text/css">

            /* for hiding the page banner */
            .pagebanner 
            {
                display: none;
            }
            /* for customizing page links */
            .pagelinks 
            {
                color: maroon;
                margin: 20px 0px 20px 50px;
            }
            /* for shifting all the Export options*/
            .exportlinks 
            {
                margin: 20px 0px 20px 30px;
            }
            /* For changing the spaces between export link */
            .export 
            {
                margin-left: 30px;
            }
            /* For Table css */
            table 
            {
                border: 1px solid #666;
                width: 60%;
                margin: 20px 0 20px 0px;
            }
            /* For odd and even row decoration */
            tr.odd 
            {
                background-color: #fff
            }
            tr.tableRowEven,tr.even 
            {
                background-color: #CCCCCC
            }
            /* Css for table elements */
            th,td 
            {
                padding: 2px 4px 2px 4px;
                text-align: left;
                vertical-align: top;
            }
            thead tr 
            {
                background-color: #999999;
            }
            /* For changing the background colour while sorting */
            th.sorted 
            {
                background-color: #CCCCCC;
            }
            th.sorted a,th.sortable a 
            {
                background-position: right;
                display: block;
                width: 100%;
            }
            th a:hover 
            {
                text-decoration: underline;
                color: black;
            }
            th a,th a:visited 
            {
                color: black;
            }
        </style> 

    </head>
    <body>   
        <s:include value="/gotohomepage.jsp"/>
        <br/>
        <br/>
        <br/>

        <div class="col-lg-6 col-lg-offset-3" style="width:900px; height: 100px; text-align: left" align="center">
            <div class="well">
                <div class="container">
                    <div>
                        <h3><strong>Course Information</strong>></h3>                    
                </div>
                </div>                
            </div>
        </div>

        <div class="col-lg-6 col-lg-offset-3" style="width:900px;" align="center">
            <div class="well">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-6">                            

                            <display:table export="true" id="courseslist" name="courseslist" pagesize="10" style="width:750px" 
                                           requestURI="" sort = "list">
                                <display:column property="courseid" title="Course ID" sortable="true"/>
                                <display:column property="TITLE" title="Course" sortable="true"/>
                                <display:column property="DEPTCODE" title="Department" sortable="true"/>
                                <display:column property="COURSE_CREDIT" title="Course Credit" sortable="true"/>
                                <display:column property="PREREQUISITECOURSEID" title="PreRequisite Course" sortable="true"/>
                                <display:column property="COURSEINTAKE" title="Course Intake" sortable="true"/>
                            </display:table>                            
                            <br/>                            
                            <div class="col-lg-9 col-lg-offset-3">
                                <a class="btn btn-primary" href="visithomepage">Click! If want to Explore more » </a>                                        
                            </div>
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
