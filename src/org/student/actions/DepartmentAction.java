/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package org.student.actions;

import java.util.ArrayList;
import java.util.List;
import org.student.model.Department;
import org.student.service.StudentService;

/**
 *
 * @author shashi.upadhyay
 */
public class DepartmentAction{
    
    private static final long serialVersionUID = 1L;
    private List<Department> departmentlist = new ArrayList<Department>();
    
    public String displayDepartmentList() throws Exception {
        System.out.println("displayDepartmentList ");        
        StudentService studentService = new StudentService();       
        departmentlist = studentService.findDepartmentDetails();
        System.out.println("Department count in Action CLass --> " + departmentlist.size());
        return "success";
    }

    public List<Department> getDepartmentlist() {
        return departmentlist;
    }

    public void setDepartmentlist(List<Department> departmentlist) {
        this.departmentlist = departmentlist;
    }        

    
    
}
