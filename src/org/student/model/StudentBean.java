/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package org.student.model;

/**
 *
 * @author shashi.upadhyay
 */
public class StudentBean {

    private String ID;
    private java.sql.Date DATEOFBIRTH;
    private String EMAILADDRESS;
    private String FIRSTNAME;
    private String LASTNAME;
    private String USERNAME;

    public StudentBean(String ID, String FIRSTNAME, String LASTNAME, java.sql.Date DATEOFBIRTH, String EMAILADDRESS) {
        this.ID = ID;
        this.FIRSTNAME = FIRSTNAME;
        this.LASTNAME = LASTNAME;
        this.DATEOFBIRTH = DATEOFBIRTH;
        this.EMAILADDRESS = EMAILADDRESS;
    }

    public java.sql.Date getDATEOFBIRTH() {
        return DATEOFBIRTH;
    }

    public void setDATEOFBIRTH(java.sql.Date DATEOFBIRTH) {
        this.DATEOFBIRTH = DATEOFBIRTH;
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

    public String getID() {
        return ID;
    }

    public void setID(String ID) {
        this.ID = ID;
    }

    public String getLASTNAME() {
        return LASTNAME;
    }

    public void setLASTNAME(String LASTNAME) {
        this.LASTNAME = LASTNAME;
    }

    public String getUSERNAME() {
        return USERNAME;
    }

    public void setUSERNAME(String USERNAME) {
        this.USERNAME = USERNAME;
    }
}
