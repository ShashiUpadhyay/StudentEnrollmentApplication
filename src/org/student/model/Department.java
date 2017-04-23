/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package org.student.model;

/**
 *
 * @author shashi.upadhyay
 */
public class Department {
    
    private String DEPTID;
    private String DEPARTMENT_NAME;
    private String BUILDING;
    private int DEPARTMENT_INTAKE;

    public Department(String DEPARTMENT_NAME, String BUILDING, int DEPARTMENT_INTAKE) {        
        this.DEPARTMENT_NAME = DEPARTMENT_NAME;
        this.BUILDING = BUILDING;
        this.DEPARTMENT_INTAKE = DEPARTMENT_INTAKE;
    }

    public String getBUILDING() {
        return BUILDING;
    }

    public void setBUILDING(String BUILDING) {
        this.BUILDING = BUILDING;
    }

    public int getDEPARTMENT_INTAKE() {
        return DEPARTMENT_INTAKE;
    }

    public void setDEPARTMENT_INTAKE(int DEPARTMENT_INTAKE) {
        this.DEPARTMENT_INTAKE = DEPARTMENT_INTAKE;
    }

    public String getDEPARTMENT_NAME() {
        return DEPARTMENT_NAME;
    }

    public void setDEPARTMENT_NAME(String DEPARTMENT_NAME) {
        this.DEPARTMENT_NAME = DEPARTMENT_NAME;
    }

    public String getDEPTID() {
        return DEPTID;
    }

    public void setDEPTID(String DEPTID) {
        this.DEPTID = DEPTID;
    }
    
    
}
