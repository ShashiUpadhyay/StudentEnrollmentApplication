/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package org.student.actions;

import java.util.ArrayList;
import java.util.List;
import org.student.model.Professor;
import org.student.service.StudentService;

/**
 *
 * @author shashi.upadhyay
 */
public class ProfessorAction{
    
    private static final long serialVersionUID = 1L;
    private List<Professor> professorlist = new ArrayList<Professor>();
    
    public String displayProfessorList() throws Exception {
        System.out.println("displayProfessorList ");        
        StudentService studentService = new StudentService();       
        professorlist = studentService.findProfessorDetails();
        System.out.println("Professor count in Action CLass --> " + professorlist.size());
        return "success";
    }

    public List<Professor> getProfessorlist() {
        return professorlist;
    }

    public void setProfessorlist(List<Professor> professorlist) {
        this.professorlist = professorlist;
    }

    
    
}
