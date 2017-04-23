/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package org.student.actions;

/**
 *
 * @author shashi.upadhyay
 */
import java.util.ArrayList;
import java.util.List;
import org.student.model.Courses;
import org.student.service.StudentService;


public class CoursesAction {

    private static final long serialVersionUID = 1L;
    private List<Courses> courseslist = new ArrayList<Courses>();

public String displayCourseList() throws Exception {
        System.out.println("displayCourseList ");        
        StudentService studentService = new StudentService();       
        courseslist = studentService.findCoursesDetails();
        System.out.println("Courses count in Action CLass --> " + courseslist.size());
        return "success";
    }

    public List<Courses> getCourseslist() {
        return courseslist;
    }

    public void setCourseslist(List<Courses> courseslist) {
        this.courseslist = courseslist;
    }


}
