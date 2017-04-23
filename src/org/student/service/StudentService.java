package org.student.service;

import java.util.ArrayList;
import java.util.List;
import org.student.model.Courses;
import org.student.model.Department;
import org.student.model.Professor;
import org.student.model.StudentBean;
import org.student.repository.StudentRepository;

public class StudentService {

    private StudentRepository studentRepository;

    public StudentService() {
        System.out.println("StudentService");
        studentRepository = new StudentRepository();
    }

    public String save(String userName, String password,
            String firstName, String lastName, String dateOfBirth,
            String emailAddress) {
        if (studentRepository != null) {
            if (studentRepository.findByUserName(userName)) {
                return "SignupFailure-UserNameExists";
            }
            studentRepository.save(userName, password, firstName, lastName,
                    dateOfBirth, emailAddress);
            System.out.println("SignupSuccess");
            return "SignupSuccess";
        } else {
            System.out.println("SignupFailure");
            return "SignupFailure";
        }
    }

    public String findByLogin(String userName, String password) {
        String result = "LoginFailure";
        if (studentRepository != null) {
            boolean status = studentRepository.findByLogin(userName, password);
            System.out.println("Ststus in findByLogin in Student Service " + status);
            if (status) {
                result = "LoginSuccess";
            }
        }
        System.out.println("Result --> " + result);
        return result;
    }

    public List<StudentBean> findStudentDetails() {
        System.out.println("findStudentDetails student service");
        List<StudentBean> students = new ArrayList<StudentBean>();
        students = studentRepository.findStudentDetails();
        System.out.println("students size in findByLogin in Student Service " + students.size());
        return students;
    }
    
    public List<Courses> findCoursesDetails() {
        System.out.println("findCoursesDetails course service");
        List<Courses> course = new ArrayList<Courses>();
        course = studentRepository.findCoursesDetails();
        System.out.println("Courses size in findByLogin in Student Service " + course.size());
        return course;
    }
    
     public List<Professor> findProfessorDetails() {
        System.out.println("findProfessorDetails course service");
        List<Professor> professor = new ArrayList<Professor>();
        professor = studentRepository.findProfesssorDetails();
        System.out.println("professor size in findByLogin in Student Service " + professor.size());
        return professor;
    }
     
     public List<Department> findDepartmentDetails() {
        System.out.println("findDepartmentDetails course service");
        List<Department> department = new ArrayList<Department>();
        department = studentRepository.findDepartmentDetails();
        System.out.println("professor size in findByLogin in Student Service " + department.size());
        return department;
    }
     
}
