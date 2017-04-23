/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package org.student.model;

/**
 *
 * @author shashi.upadhyay
 */
public class Courses {
    
    private String courseid;
    private String DEPTCODE;
    private String TITLE;
    private int COURSE_CREDIT;
    private String PREREQUISITECOURSEID;
    private int COURSEINTAKE;   

    public Courses(String courseid, String DEPTCODE, String TITLE, int COURSE_CREDIT, String PREREQUISITECOURSEID, int COURSEINTAKE) {
        this.courseid = courseid;
        this.DEPTCODE = DEPTCODE;
        this.TITLE = TITLE;
        this.COURSE_CREDIT = COURSE_CREDIT;
        this.PREREQUISITECOURSEID = PREREQUISITECOURSEID;
        this.COURSEINTAKE = COURSEINTAKE;
    }

    public int getCOURSEINTAKE() {
        return COURSEINTAKE;
    }

    public void setCOURSEINTAKE(int COURSEINTAKE) {
        this.COURSEINTAKE = COURSEINTAKE;
    }

    public int getCOURSE_CREDIT() {
        return COURSE_CREDIT;
    }

    public void setCOURSE_CREDIT(int COURSE_CREDIT) {
        this.COURSE_CREDIT = COURSE_CREDIT;
    }

    public String getDEPTCODE() {
        return DEPTCODE;
    }

    public void setDEPTCODE(String DEPTCODE) {
        this.DEPTCODE = DEPTCODE;
    }

    public String getPREREQUISITECOURSEID() {
        return PREREQUISITECOURSEID;
    }

    public void setPREREQUISITECOURSEID(String PREREQUISITECOURSEID) {
        this.PREREQUISITECOURSEID = PREREQUISITECOURSEID;
    }

    public String getTITLE() {
        return TITLE;
    }

    public void setTITLE(String TITLE) {
        this.TITLE = TITLE;
    }

    public String getCourseid() {
        return courseid;
    }

    public void setCourseid(String courseid) {
        this.courseid = courseid;
    }        
    
     @Override
    public String toString() {
        return "Courses{" + "courseid=" + courseid + ", DEPTCODE=" + DEPTCODE + ", TITLE=" + TITLE + ", COURSE_CREDIT=" + COURSE_CREDIT + ", PREREQUISITECOURSEID=" + PREREQUISITECOURSEID + ", COURSEINTAKE=" + COURSEINTAKE + '}';
    }
     
}
