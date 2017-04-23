/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package org.student.actions;

/**
 *
 * @author shashi.upadhyay
 */
import com.opensymphony.xwork2.ActionSupport;
import java.util.ArrayList;
import java.util.List;
import org.student.model.StudentBean;
import org.student.service.StudentService;


public class StudentAction extends ActionSupport {
private static final long serialVersionUID = 1L;
private List<StudentBean> students = new ArrayList<StudentBean>();

public String displayStudentList() throws Exception {
        System.out.println("displayStudentList ");        
        StudentService studentService = new StudentService();
        students = studentService.findStudentDetails();
        System.out.println("Student in Student Action --> " + students.size());
        return SUCCESS;
    }

public String visitHomePage(){
    return SUCCESS;
}

public List<StudentBean> getStudents() 
{
        return students;
}

public void setStudents(List<StudentBean> students) 
{
        this.students = students;
}
}
