package org.student.repository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;
import org.student.model.Courses;
import org.student.model.Department;
import org.student.model.Professor;
import org.student.model.StudentBean;
import org.student.util.DbUtil;

public class StudentRepository {

    private Connection dbConnection;

    public StudentRepository() {        
        dbConnection = DbUtil.getConnection();
        System.out.println("dbConnection");
    }

    public void save(String userName, String password, String firstName,
            String lastName, String dateOfBirth, String emailAddress) {
        if (dbConnection != null) {
            try {
                PreparedStatement prepStatement = 
                        dbConnection.prepareStatement("insert into student(ID, USERNAME, PASSWORD, FIRSTNAME, "
                        + "LASTNAME, DATEOFBIRTH, EMAILADDRESS) values ('B00'||LPAD(student_id_seq.nextval,6,0), ?, ?, ?, ?, ?, ?)");
                prepStatement.setString(1, userName);
                prepStatement.setString(2, password);
                prepStatement.setString(3, firstName);
                prepStatement.setString(4, lastName);
                prepStatement.setDate(5, new java.sql.Date(new SimpleDateFormat("MM/dd/yyyy").parse(dateOfBirth.substring(0, 10)).getTime()));
                prepStatement.setString(6, emailAddress);
                                
                prepStatement.executeUpdate();
                                
            } catch (SQLException e) {
                e.printStackTrace();
            } catch (ParseException e) {
                e.printStackTrace();
            }
        }
    }

    public boolean findByUserName(String userName) {
        if (dbConnection != null) {
            try {
                PreparedStatement prepStatement = dbConnection.prepareStatement("select count(*) from student where userName = ?");
                prepStatement.setString(1, userName);

                ResultSet result = prepStatement.executeQuery();
                if (result != null) {
                    while (result.next()) {
                        if (result.getInt(1) == 1) {
                            return true;
                        }
                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return false;
    }

    public boolean findByLogin(String userName, String password) {
        if (dbConnection != null) {
            try {
                System.out.println("Finding student by Login");
                PreparedStatement prepStatement = dbConnection.prepareStatement("select password from student where userName = ?");
                prepStatement.setString(1, userName);

                ResultSet result = prepStatement.executeQuery();
                if (result != null) {
                    if (result.next()) {
                        System.out.println("result.getString(1) --> " + result.getString(1));
                        System.out.println("password --> " + password);
                        if (result.getString(1).equals(password)) {
                            System.out.println("result.getString(1) --> " + result.getString(1));
                            return true;
                        }
                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return false;
    }        
            
    public List<StudentBean> findStudentDetails() {
        System.out.println("findStudentDetails repository");
        List<StudentBean> students = new ArrayList<StudentBean>();
        if (dbConnection != null) {
            try {
                PreparedStatement prepStatement = 
                        dbConnection.prepareStatement("select ID, FIRSTNAME, LASTNAME,DATEOFBIRTH, EMAILADDRESS  from student");                

                ResultSet result = prepStatement.executeQuery();
                if (result != null) {
                    while (result.next()) {
                        java.sql.Date dbSqlDate = result.getDate("DATEOFBIRTH");                        
                        students.add(new StudentBean(
                                result.getString("ID"), 
                                result.getString("FIRSTNAME"), 
                                result.getString("LASTNAME"), 
                                dbSqlDate,                                
                                result.getString("EMAILADDRESS")
                                ));
                    }
                }
                System.out.println("Student size --> " + students.size());
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return students;
    }
    
    public List<Courses> findCoursesDetails() {
        System.out.println("findCoursesDetails repository");
        List<Courses> courses_list = new ArrayList<Courses>();
        if (dbConnection != null) {
            try {
                PreparedStatement prepStatement = 
                        dbConnection.prepareStatement("select courseid, DEPTCODE, TITLE, COURSE_CREDIT, PREREQUISITECOURSEID, COURSEINTAKE  "
                        + "from courses");                

                ResultSet result = prepStatement.executeQuery();                
                if (result != null) {
                    while (result.next()) {                     
                        Courses course = new Courses(
                                result.getString("courseid"), 
                                result.getString("DEPTCODE"), 
                                result.getString("TITLE"), 
                                result.getInt("COURSE_CREDIT"),                                
                                result.getString("PREREQUISITECOURSEID"),
                                result.getInt("COURSEINTAKE")
                                );
                        courses_list.add(course);
                        System.out.println("" + course.toString());
                    }
                }
                System.out.println("Course size --> " + courses_list.size());
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return courses_list;
    }
    
    public List<Professor> findProfesssorDetails() {
        System.out.println("findProfesssorDetails repository");
        List<Professor> professor_list = new ArrayList<Professor>();
        if (dbConnection != null) {
            try {
                PreparedStatement prepStatement = 
                        dbConnection.prepareStatement("select FIRSTNAME, LASTNAME, DATEOFBIRTH, DEPT, COURSEID, EMAILADDRESS  "
                        + "from PROFESSOR");                

                ResultSet result = prepStatement.executeQuery();                
                if (result != null) {
                    while (result.next()) {     
                        java.sql.Date dbSqlDate = result.getDate("DATEOFBIRTH"); 
                        Professor professor = new Professor(
                                result.getString("FIRSTNAME"), 
                                result.getString("LASTNAME"), 
                                dbSqlDate, 
                                result.getString("DEPT"),                                
                                result.getString("COURSEID"),
                                result.getString("EMAILADDRESS")
                                );
                        professor_list.add(professor);
                        System.out.println("" + professor.toString());
                    }
                }
                System.out.println("Professor size --> " + professor_list.size());
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return professor_list;
    }
    
    public List<Department> findDepartmentDetails() {
        System.out.println("findDepartmentDetails repository");
        List<Department> department_list = new ArrayList<Department>();
        if (dbConnection != null) {
            try {
                PreparedStatement prepStatement = 
                        dbConnection.prepareStatement("select DEPARTMENT_NAME, BUILDING, DEPARTMENT_INTAKE from DEPARTMENT");                

                ResultSet result = prepStatement.executeQuery();                
                if (result != null) {
                    while (result.next()) {      
                        Department department = new Department(
                                result.getString("DEPARTMENT_NAME"), 
                                result.getString("BUILDING"), 
                                result.getInt("DEPARTMENT_INTAKE")                                
                                );
                        department_list.add(department);
                        System.out.println("" + department.toString());
                    }
                }
                System.out.println("Department size --> " + department_list.size());
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return department_list;
    }
    
}
