package org.student.actions;

import com.opensymphony.xwork2.validator.annotations.RequiredStringValidator;
import com.opensymphony.xwork2.validator.annotations.StringLengthFieldValidator;
import com.opensymphony.xwork2.validator.annotations.ValidatorType;
import org.student.service.StudentService;

public class LoginAction {

    private String pageName;
    private String userName;
    private String password;

//    @Action("login-input")
    public String executelogin() throws Exception {
        System.out.println("executelogin");
        return "executelogin";
    }

//    @Action("login")    
    public String performLogin() throws Exception {
        String result = "";
        StudentService studentService = new StudentService();

        if (pageName != null && studentService != null) {
            if (pageName.equals("login")) {
                result = studentService.findByLogin(userName, password);
                System.out.println("Result in execute --> " + result);
                if (result.equals("LoginFailure")) {
                    System.out.println("loginfailure");
                    result =  "loginfailure";                    
                } else {                    
                    System.out.println("loginsuccessfull");                    
                    result =  "loginsuccessfull";
                }
            }
        } else{
            System.out.println("pageName is null and studentservice is null");            
            result =  "loginfailure";            
        }       
        System.out.println("result --> " + result);
        return result;
    }

    public String getPageName() {
        return pageName;
    }

    public void setPageName(String pageName) {
        this.pageName = pageName;
    }

    public String getUserName() {
        return userName;
    }

    @RequiredStringValidator(type = ValidatorType.FIELD, message = "UserName is a required field")
    @StringLengthFieldValidator(type = ValidatorType.FIELD, maxLength = "12", minLength = "6", message = "UserName must be of length between 6 and 12")
    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPassword() {
        return password;
    }

    @RequiredStringValidator(type = ValidatorType.FIELD, message = "Password is a required field")
    @StringLengthFieldValidator(type = ValidatorType.FIELD, maxLength = "12", minLength = "6", message = "Password must be of length between 6 and 12")
    public void setPassword(String password) {
        this.password = password;
    }
}
