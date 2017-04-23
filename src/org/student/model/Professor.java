/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package org.student.model;

import java.sql.Date;

/**
 *
 * @author shashi.upadhyay
 */
public class Professor {
    
    private String PROFID;
    private String FIRSTNAME;
    private String LASTNAME;
    private Date DATEOFBIRTH;
    private String DEPT;
    private String COURSEID;
    private String EMAILADDRESS;

    public Professor(String FIRSTNAME, String LASTNAME, Date DATEOFBIRTH, String DEPT, String COURSEID, String EMAILADDRESS) {        
        this.FIRSTNAME = FIRSTNAME;
        this.LASTNAME = LASTNAME;
        this.DATEOFBIRTH = DATEOFBIRTH;
        this.DEPT = DEPT;
        this.COURSEID = COURSEID;
        this.EMAILADDRESS = EMAILADDRESS;
    }

    public String getCOURSEID() {
        return COURSEID;
    }

    public void setCOURSEID(String COURSEID) {
        this.COURSEID = COURSEID;
    }

    public Date getDATEOFBIRTH() {
        return DATEOFBIRTH;
    }

    public void setDATEOFBIRTH(Date DATEOFBIRTH) {
        this.DATEOFBIRTH = DATEOFBIRTH;
    }

    public String getDEPT() {
        return DEPT;
    }

    public void setDEPT(String DEPT) {
        this.DEPT = DEPT;
    }

    public String getEMAILADDRESS() {
        return EMAILADDRESS;
    }

    public void setEMAILADDRESS(String EMAILADDRESS) {
        this.EMAILADDRESS = EMAILADDRESS;
    }

    public String getFIRSTNAME() {
        return FIRSTNAME;
    }

    public void setFIRSTNAME(String FIRSTNAME) {
        this.FIRSTNAME = FIRSTNAME;
    }

    public String getLASTNAME() {
        return LASTNAME;
    }

    public void setLASTNAME(String LASTNAME) {
        this.LASTNAME = LASTNAME;
    }

    public String getPROFID() {
        return PROFID;
    }

    public void setPROFID(String PROFID) {
        this.PROFID = PROFID;
    }            
    
}
